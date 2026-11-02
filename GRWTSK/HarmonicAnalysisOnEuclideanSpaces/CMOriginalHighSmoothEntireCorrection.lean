/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMOriginalHighSmoothSquarefreeCutoff
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMOriginalHighSmoothPositiveHalfplane
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv
import Mathlib.Tactic

/-!
# The fixed-bank genuine signed high-smooth correction is a Dirichlet POLYNOMIAL

The preceding squarefree result proves an explicit FINITE source cutoff for
every nonzero actual moebiusReal n appearing in any original highSmoothBlock.
Beyond that cutoff the high block may contain squareful indices, but their
original coefficient is exactly zero.

Therefore the previously constructed highDirichletSeries is a finite sum
for EVERY complex z, not just a locally uniformly convergent series on
Re(z)>0. In fact this holds for ANY fixed complex multiplier c(n), since
no multiplier can turn a literal zero Mobius coefficient into a nonzero term.
Thus original Dirichlet character twists and L-family inverses are covered
without a character-average or independence premise.

The same finite cutoff stabilizes the original unsmoothed high causal wave
at a fixed finite set of integer labels, independent of observation horizon.
No assertion about low-sector cancellation, zero-free regions, or RH.

All proofs remain SOURCE PROOF CANDIDATES pending exact pinned Lean replay.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothEntireCorrection

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveHighSmoothAllShell
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothDirectEnergy
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothFiniteComplement
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothSquarefreeCutoff
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothPositiveHalfplane

/-- The FINITE support certificate uses only original positive integer labels.
Squareful indices may be included, but their source coefficient is zero. -/
def highFiniteSupport (B : PrimeBand) : Finset ℕ :=
  (Finset.Icc 1 (highFiniteCutoff B)).filter (highGlobalIndex B)

/-- Every genuine high-smooth original n beyond the fixed bank's cutoff
has mu(n)=0, independent of observation time or complex frequency. -/
theorem highGlobal_moebius_zero_outside_finite_support
    (B : PrimeBand) {n : ℕ}
    (houtside : n ∉ highFiniteSupport B)
    (hhigh : highGlobalIndex B n) :
    moebiusReal n = 0 := by
  obtain ⟨s, hns⟩ := hhigh
  by_contra hmu
  have hmem := highGlobal_nonzero_mem_finite_cutoff B ⟨s, hns⟩ hmu
  apply houtside
  exact Finset.mem_filter.mpr ⟨hmem, ⟨s, hns⟩⟩

theorem originalHighShellWave_zero_after_finite_cutoff
    (B : PrimeBand) (s : ℕ) (hs : highFiniteCutoff B ≤ s)
    (u : ℝ) : originalHighShellWave B s u = 0 := by
  unfold originalHighShellWave
  apply Finset.sum_eq_zero
  intro n hn
  have hlarge : highFiniteCutoff B < n := by
    calc
      highFiniteCutoff B ≤ s := hs
      _ < 2 ^ s := Nat.lt_two_pow_self
      _ < n := highShell_gt_lower B s n hn
  have hmu := original_high_mu_zero_above_cutoff B hn hlarge
  simp [originalSignedAtom, hmu]

/-- Although the finite label set highSmoothBlock can continue to grow,
the ORIGINAL signed high waveform stabilizes at one fixed finite shell
cutoff depending solely on B, not on j or physical time u. -/
theorem originalHighWave_stabilizes (B : PrimeBand) (j : ℕ)
    (hj : highFiniteCutoff B ≤ j) (u : ℝ) :
    originalHighWave B j u =
      originalHighWave B (highFiniteCutoff B) u := by
  unfold originalHighWave
  symm
  apply Finset.sum_subset (Finset.range_mono hj)
  intro s hs hnot
  have hslarge : highFiniteCutoff B ≤ s := by
    have hns : ¬ s < highFiniteCutoff B := by
      simpa only [Finset.mem_range] using hnot
    omega
  exact originalHighShellWave_zero_after_finite_cutoff B s hslarge u

/-- All coefficients of the fixed-bank original high series live in one
explicit finite index set, even when a complex twisting multiplier is used. -/
def highTwistedDirichletTerm
    (B : PrimeBand) (c : ℕ → ℂ) (z : ℂ) (n : ℕ) : ℂ :=
  if highGlobalIndex B n then
    (((moebiusReal n : ℝ) : ℂ) * c n) * (n : ℂ) ^ (-z)
  else 0

def highTwistedDirichletSeries
    (B : PrimeBand) (c : ℕ → ℂ) (z : ℂ) : ℂ :=
  ∑' n : ℕ, highTwistedDirichletTerm B c z n

def highFiniteTwistedPolynomial
    (B : PrimeBand) (c : ℕ → ℂ) (z : ℂ) : ℂ :=
  ∑ n ∈ highFiniteSupport B,
    (((moebiusReal n : ℝ) : ℂ) * c n) * (n : ℂ) ^ (-z)

theorem highTwistedTerm_zero_outside
    (B : PrimeBand) (c : ℕ → ℂ) (z : ℂ)
    {n : ℕ} (hn : n ∉ highFiniteSupport B) :
    highTwistedDirichletTerm B c z n = 0 := by
  by_cases hsel : highGlobalIndex B n
  · have hmu : moebiusReal n = 0 :=
      highGlobal_moebius_zero_outside_finite_support B hn hsel
    simp [highTwistedDirichletTerm, hsel, hmu]
  · simp [highTwistedDirichletTerm, hsel]

/-- Exact finite Dirichlet-polynomial return for ANY complex multiplier c(n).
This includes the true Dirichlet characters, with no modulus restriction. -/
theorem highTwistedDirichletSeries_eq_finite
    (B : PrimeBand) (c : ℕ → ℂ) (z : ℂ) :
    highTwistedDirichletSeries B c z =
      highFiniteTwistedPolynomial B c z := by
  classical
  calc
    highTwistedDirichletSeries B c z =
        ∑ n ∈ highFiniteSupport B, highTwistedDirichletTerm B c z n := by
      unfold highTwistedDirichletSeries
      exact tsum_eq_sum (s := highFiniteSupport B)
        (fun n hn => highTwistedTerm_zero_outside B c z hn)
    _ = highFiniteTwistedPolynomial B c z := by
      unfold highFiniteTwistedPolynomial
      apply Finset.sum_congr rfl
      intro n hn
      have hsel : highGlobalIndex B n := (Finset.mem_filter.mp hn).2
      simp [highTwistedDirichletTerm, hsel]

/-- The source's original UNTWISTED globally defined high Dirichlet series
is the special case c=1 and is therefore itself FINITE on all of C. -/
theorem highDirichletSeries_eq_finite
    (B : PrimeBand) (z : ℂ) :
    highDirichletSeries B z =
      highFiniteTwistedPolynomial B (fun _ => 1) z := by
  classical
  have heq :
      (fun n : ℕ => highDirichletTerm B z n) =
        (fun n : ℕ => highTwistedDirichletTerm B (fun _ => 1) z n) := by
    funext n
    simp [highDirichletTerm, highTwistedDirichletTerm]
  calc
    highDirichletSeries B z =
        highTwistedDirichletSeries B (fun _ => 1) z := by
      unfold highDirichletSeries highTwistedDirichletSeries
      rw [heq]
    _ = highFiniteTwistedPolynomial B (fun _ => 1) z :=
      highTwistedDirichletSeries_eq_finite B (fun _ => 1) z

/-- The genuine selected support has no n=0; complex power of its
positive natural integer is differentiable for every complex z. -/
theorem highFiniteTwistedPolynomial_differentiable
    (B : PrimeBand) (c : ℕ → ℂ) :
    Differentiable ℂ (highFiniteTwistedPolynomial B c) := by
  classical
  have hsum (S : Finset ℕ) :
      (∀ n ∈ S, 0 < n) →
      Differentiable ℂ
        (fun z : ℂ => ∑ n ∈ S,
          (((moebiusReal n : ℝ) : ℂ) * c n) * (n : ℂ) ^ (-z)) := by
    induction S using Finset.induction_on with
    | empty =>
        intro _
        simpa using
          (differentiable_const : Differentiable ℂ (fun _ : ℂ => (0 : ℂ)))
    | @insert n S hn ih =>
        intro hS
        have hnpos : 0 < n := hS n (Finset.mem_insert_self n S)
        have hnC : (n : ℂ) ≠ 0 := by
          exact_mod_cast (Nat.ne_of_gt hnpos)
        have hS' : ∀ m ∈ S, 0 < m := by
          intro m hm
          exact hS m (Finset.mem_insert_of_mem hm)
        have hpow : Differentiable ℂ (fun z : ℂ => (n : ℂ) ^ (-z)) :=
          (differentiable_id.neg).const_cpow (Or.inl hnC)
        have hterm : Differentiable ℂ
            (fun z : ℂ =>
              (((moebiusReal n : ℝ) : ℂ) * c n) * (n : ℂ) ^ (-z)) :=
          hpow.const_mul _
        simpa only [Finset.sum_insert hn] using hterm.add (ih hS')
  unfold highFiniteTwistedPolynomial
  apply hsum (highFiniteSupport B)
  intro n hn
  have hpositive : 1 ≤ n :=
    (Finset.mem_Icc.mp (Finset.mem_filter.mp hn).1).1
  omega

/-- Entire on the FULL complex plane, not merely Re(z)>0.
This uses the exact finite support and pinned Mathlib's const_cpow
differentiability, not any conditional zeta-zero hypothesis. -/
theorem highTwistedDirichletSeries_entire
    (B : PrimeBand) (c : ℕ → ℂ) :
    Differentiable ℂ (highTwistedDirichletSeries B c) := by
  have heq : highTwistedDirichletSeries B c =
      highFiniteTwistedPolynomial B c := by
    funext z
    exact highTwistedDirichletSeries_eq_finite B c z
  rw [heq]
  exact highFiniteTwistedPolynomial_differentiable B c

theorem highDirichletSeries_entire (B : PrimeBand) :
    Differentiable ℂ (highDirichletSeries B) := by
  have heq : highDirichletSeries B =
      highFiniteTwistedPolynomial B (fun _ => 1) := by
    funext z
    exact highDirichletSeries_eq_finite B z
  rw [heq]
  exact highFiniteTwistedPolynomial_differentiable B (fun _ => 1)

/-- Discharge the previously OPEN weaker proposition on Re(z)>0, now
from a FINITE signed Möbius Dirichlet polynomial on all of C. -/
theorem highPositiveHalfplaneHolomorphy_proof :
    HighPositiveHalfplaneHolomorphy := by
  intro B
  exact (highDirichletSeries_entire B).differentiableOn


/-- EXACT original low-source coefficient, independently of a finite
horizon; its complement is the genuine fixed-bank high-shell carrier. -/
def originalLowMoebiusCoefficient (B : PrimeBand) (n : ℕ) : ℝ :=
  if highGlobalIndex B n then 0 else moebiusReal n

/-- Above the fixed bank's explicit cutoff, the genuine LOW coefficient
is LITERALLY the original Möbius coefficient. Thus the high/low split
does not remove even an infinite sequence of nonzero source atoms. -/
theorem originalLowMoebiusCoefficient_eq_original_above
    (B : PrimeBand) {n : ℕ} (hn : highFiniteCutoff B < n) :
    originalLowMoebiusCoefficient B n = moebiusReal n := by
  unfold originalLowMoebiusCoefficient
  by_cases hsel : highGlobalIndex B n
  · obtain ⟨s, hs⟩ := hsel
    have hmu : moebiusReal n = 0 :=
      original_high_mu_zero_above_cutoff B hs hn
    simp [hsel, hmu]
  · simp [hsel]

/-- The same eventual literal identity holds after ANY complex
Dirichlet multiplier, including every genuine Dirichlet character.
This is not a claim about cancellation in the surviving LOW source. -/
theorem twistedLowMoebiusTerm_eq_original_above
    (B : PrimeBand) (c : ℕ → ℂ) (z : ℂ)
    {n : ℕ} (hn : highFiniteCutoff B < n) :
    (((originalLowMoebiusCoefficient B n : ℝ) : ℂ) * c n) *
        (n : ℂ) ^ (-z) =
      (((moebiusReal n : ℝ) : ℂ) * c n) * (n : ℂ) ^ (-z) := by
  rw [originalLowMoebiusCoefficient_eq_original_above B hn]

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothEntireCorrection
