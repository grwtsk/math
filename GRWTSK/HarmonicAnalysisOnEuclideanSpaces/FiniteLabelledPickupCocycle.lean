/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.ResidueCircleSourceCausalShear
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicSignedResidueWaveform
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Topology.Algebra.Module.FiniteDimension
import Mathlib.Tactic

/-!
# Actual integer-labelled Möbius pickup as a finite Hilbert response cocycle

The SOURCE inventory is precisely n = 1,...,2^j (including squareful zeros,
nonunits, BOTH parity sectors, every source sign and each terminal birth).
Each label survives as its own coordinate in EuclideanSpace ℂ (Fin (2^j)).
Its unchanging latent value is the original `moebiusReal n`; the literal
`pickupResponse n u` multiplies each coordinate at physical time u.

The diagonal source observation is complex-linear and bounded because its
DOMAIN is explicitly finite dimensional. The shear of this diagonal family
on the full positive Hilbert product is an exact two-time cocycle, with
identity, inverse, time composition and exact labelled source-graph return.

No division by a possibly zero pickupResponse is performed. The causal
birth obstruction of the scalar packet is resolved by preserving latent
source data, NOT by claiming an invertible evolution on observed data alone.
No all-scale uniform bound, original-wave semigroup or RH theorem is proved.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.FiniteLabelledPickupCocycle

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
open GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.SourceCausalShear

/-- Actual integer labels: coordinate i represents the original n=i+1.
No arithmetic residue quotient is applied before time evolution. -/
abbrev SourceLabels (j : ℕ) := Fin (2 ^ j)

/-- Positive finite-dimensional ℓ² source Hilbert space. -/
abbrev SourceHilbert (j : ℕ) := EuclideanSpace ℂ (SourceLabels j)

/-- All original finite-inventory signed source amplitudes, including zeros. -/
def actualMoebiusLabels (j : ℕ) : SourceHilbert j :=
  WithLp.toLp 2 (fun i : SourceLabels j => (moebiusReal (i.val + 1) : ℂ))

/-- The original real causal pickup response as a labelwise diagonal
complex-linear operator. No inverse response or parameter-dependent
source coefficient is hidden in this definition. -/
def actualPickupDiagonalLM (j : ℕ) (u : ℝ) :
    SourceHilbert j →ₗ[ℂ] SourceHilbert j where
  toFun x := WithLp.toLp 2
    (fun i : SourceLabels j => (pickupResponse (i.val + 1) u : ℂ) * x i)
  map_add' x y := by
    apply PiLp.ext
    intro i
    simp only [PiLp.toLp_apply, PiLp.add_apply, mul_add]
  map_smul' c x := by
    apply PiLp.ext
    intro i
    simp only [PiLp.toLp_apply, PiLp.smul_apply, smul_eq_mul]
    ring

/-- Finite-dimensionality supplies genuine boundedness, with no appeal to
an unproved uniform-in-j estimate. -/
def actualPickupDiagonal (j : ℕ) (u : ℝ) :
    SourceHilbert j →L[ℂ] SourceHilbert j :=
  LinearMap.toContinuousLinearMap (actualPickupDiagonalLM j u)

@[simp] theorem actualPickupDiagonal_apply (j : ℕ) (u : ℝ)
    (x : SourceHilbert j) (i : SourceLabels j) :
    actualPickupDiagonal j u x i =
      (pickupResponse (i.val + 1) u : ℂ) * x i := rfl

/-- Every sign and every zero from the unchanged Möbius source is retained. -/
def actualLabelResponse (j : ℕ) (u : ℝ) : SourceHilbert j :=
  actualPickupDiagonal j u (actualMoebiusLabels j)

@[simp] theorem actualLabelResponse_apply (j : ℕ) (u : ℝ)
    (i : SourceLabels j) :
    actualLabelResponse j u i =
      (moebiusReal (i.val + 1) * pickupResponse (i.val + 1) u : ℂ) := by
  simp [actualLabelResponse, actualMoebiusLabels, actualPickupDiagonal_apply,
    Complex.ofReal_mul, mul_comm]

/-- Bounded finite-coherent readout of the entire original label inventory;
finite-dimensionality guarantees continuity without a false infinite sum. -/
def originalReadoutLM (j : ℕ) : SourceHilbert j →ₗ[ℂ] ℂ where
  toFun x := ∑ i : SourceLabels j, x i
  map_add' x y := by
    simp only [PiLp.add_apply, Finset.sum_add_distrib]
  map_smul' c x := by
    simp only [PiLp.smul_apply, Finset.smul_sum]

def originalReadout (j : ℕ) : SourceHilbert j →L[ℂ] ℂ :=
  LinearMap.toContinuousLinearMap (originalReadoutLM j)

@[simp] theorem originalReadout_apply (j : ℕ) (x : SourceHilbert j) :
    originalReadout j x = ∑ i : SourceLabels j, x i := rfl

/-- Elementary exact reindexing of all integer labels, without omissions.
The `j=0` inventory has one label. -/
private theorem sum_shifted_range_eq_Icc (N : ℕ) (f : ℕ → ℝ) :
    (∑ i ∈ Finset.range N, f (i + 1)) =
      ∑ n ∈ Finset.Icc 1 N, f n := by
  induction N with
  | zero => simp
  | succ N ih =>
      have hset : Finset.Icc 1 (N + 1) =
          insert (N + 1) (Finset.Icc 1 N) := by
        ext n
        simp only [Finset.mem_Icc, Finset.mem_insert]
        omega
      have hnot : N + 1 ∉ Finset.Icc 1 N := by simp
      rw [Finset.sum_range_succ, hset, Finset.sum_insert hnot, ih]
      abel

/-- Source-exact signed scalar readout before any absolute value or square.
This is literally the old originalFixedWave with original n, u and weights. -/
theorem originalReadout_actualLabelResponse (j : ℕ) (u : ℝ) :
    originalReadout j (actualLabelResponse j u) =
      (originalFixedWave j u : ℂ) := by
  change (∑ i : SourceLabels j,
      (moebiusReal (i.val + 1) * pickupResponse (i.val + 1) u : ℂ)) = _
  rw [Finset.sum_fin_eq_sum_range]
  unfold originalFixedWave indices
  have h := congrArg (fun v : ℝ => (v : ℂ))
    (sum_shifted_range_eq_Icc (2 ^ j)
      (fun n => moebiusReal n * pickupResponse n u))
  simpa only [map_sum] using h

/-- Existing source theorem identifies the unchanged wholePickup on each
closed physical dyadic window. No new time-window normalization. -/
theorem originalPickup_eq_labelledReadout (j : ℕ) {u : ℝ}
    (hu : 0 ≤ u) (huT : u ≤ dyadicTime j) :
    (wholePickup u : ℂ) = originalReadout j (actualLabelResponse j u) := by
  calc
    (wholePickup u : ℂ) = (completeWave j 1 u : ℂ) :=
      congrArg (fun r : ℝ => (r : ℂ))
        (wholePickup_eq_completeWave j 1 hu huT)
    _ = (originalFixedWave j u : ℂ) :=
      congrArg (fun r : ℝ => (r : ℂ))
        (completeWave_eq_originalFixedWave j 1 u)
    _ = originalReadout j (actualLabelResponse j u) :=
      (originalReadout_actualLabelResponse j u).symm

/-- Actual original scalar energy, including ALL signed pair cross terms.
No unjustified Hilbert packet norm replaces the coherent observation square. -/
theorem originalPickupEnergy_labelled (j : ℕ) :
    pickupEnergy (dyadicTime j) =
      ∫ u in (0 : ℝ)..dyadicTime j,
        ((originalReadout j (actualLabelResponse j u)).re) ^ 2 := by
  rw [← completeResidueEnergy_eq_pickupEnergy j 1]
  unfold completeResidueEnergy
  apply intervalIntegral.integral_congr
  intro u _
  have h := originalReadout_actualLabelResponse j u
  rw [h, Complex.ofReal_re, ← completeWave_eq_originalFixedWave j 1 u]

/-- Every original positive-integer response vanishes at physical time zero,
including n=1, whose closed birth has zero amplitude. -/
theorem actual_pickupResponse_zero {n : ℕ} (hn : 1 ≤ n) :
    pickupResponse n 0 = 0 := by
  by_cases h : n = 1
  · subst n
    simp [pickupResponse]
  · have hn1 : (1 : ℝ) < (n : ℝ) := by
      exact_mod_cast (show 1 < n by omega)
    have hlog : 0 < Real.log (n : ℝ) := Real.log_pos hn1
    simp [pickupResponse, not_le.mpr hlog]

/-- A genuine SOURCE birth: the n=1 response has literal amplitude one at
u = 2 log 2. This fixes the normalization and contains no asymptotics. -/
theorem actual_pickupResponse_one_at_two_log_two :
    pickupResponse 1 (2 * Real.log (2 : ℝ)) = 1 := by
  have ht : (0 : ℝ) ≤ 2 * Real.log (2 : ℝ) := by
    positivity
  have he : Real.exp (-(2 * Real.log (2 : ℝ)) / 2) = (1 / 2 : ℝ) := by
    have hh : -(2 * Real.log (2 : ℝ)) / 2 = -Real.log (2 : ℝ) := by ring
    rw [hh, Real.exp_neg, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
    norm_num
  simp [pickupResponse, ht, he]

/-- The entire labelled signed observation starts at the zero vector.
The latent source, by contrast, has not vanished. -/
theorem actualLabelResponse_at_zero (j : ℕ) :
    actualLabelResponse j 0 = 0 := by
  apply PiLp.ext
  intro i
  rw [actualLabelResponse_apply]
  have hn : 1 ≤ i.val + 1 := by omega
  simp [actual_pickupResponse_zero hn]

/-- The real source is NOT identically zero at later time: the original
Moebius coefficient of n=1 is 1 and its response at 2 log 2 is 1. -/
theorem actualLabelResponse_later_nonzero (j : ℕ) :
    actualLabelResponse j (2 * Real.log (2 : ℝ)) ≠ 0 := by
  intro hz
  have he := congrArg (fun x : SourceHilbert j => x (0 : SourceLabels j)) hz
  have hone : actualLabelResponse j (2 * Real.log (2 : ℝ))
      (0 : SourceLabels j) = (1 : ℂ) := by
    simp [actualLabelResponse_apply, moebiusReal,
      actual_pickupResponse_one_at_two_log_two]
  rw [hone, PiLp.zero_apply] at he
  norm_num at he

/-- UNCONDITIONAL obstruction on the literal original arithmetic packet:
any linear operator maps zero to zero. No linear observed-only evolution
can map the genuine initial packet to the later nonzero packet. -/
theorem no_unaugmented_linear_birth (j : ℕ) :
    ¬ ∃ T : SourceHilbert j →L[ℂ] SourceHilbert j,
      T (actualLabelResponse j 0) =
        actualLabelResponse j (2 * Real.log (2 : ℝ)) := by
  rintro ⟨T, hT⟩
  rw [actualLabelResponse_at_zero, map_zero] at hT
  exact actualLabelResponse_later_nonzero j hT.symm

/-- The literal labelled observation family is a bounded map at every time. -/
def actualLabelObservationFamily (j : ℕ) : ObservationFamily (SourceHilbert j) :=
  fun u => actualPickupDiagonal j u

/-- Genuine positive-complete-Hilbert source+response state for all labels. -/
abbrev LabelledState (j : ℕ) := SourceState (SourceHilbert j)

/-- A nonautonomous but genuinely composable evolution on ALL labelled states. -/
def actualLabelTwoTime (j : ℕ) (s t : ℝ) :
    LabelledState j →L[ℂ] LabelledState j :=
  causalStep (actualLabelObservationFamily j) s t

theorem actualLabelTwoTime_comp (j : ℕ) (s t u : ℝ) :
    (actualLabelTwoTime j t u).comp (actualLabelTwoTime j s t) =
      actualLabelTwoTime j s u :=
  causalStep_comp (actualLabelObservationFamily j) s t u

theorem actualLabelTwoTime_self (j : ℕ) (s : ℝ) :
    actualLabelTwoTime j s s = ContinuousLinearMap.id ℂ (LabelledState j) :=
  causalStep_self (actualLabelObservationFamily j) s

theorem actualLabelTwoTime_inverse (j : ℕ) (s t : ℝ) :
    (actualLabelTwoTime j t s).comp (actualLabelTwoTime j s t) =
      ContinuousLinearMap.id ℂ (LabelledState j) :=
  causalStep_left_inverse (actualLabelObservationFamily j) s t

/-- Both the original signed coefficients and their current responses are
stored in the actual full Hilbert state. -/
def originalLabelledState (j : ℕ) (u : ℝ) : LabelledState j :=
  sourceGraph (actualLabelObservationFamily j) u (actualMoebiusLabels j)

/-- The source signs survive and the actual response changes exactly. -/
theorem originalLabelledState_transport (j : ℕ) (s t : ℝ) :
    actualLabelTwoTime j s t (originalLabelledState j s) =
      originalLabelledState j t :=
  causalStep_graph (actualLabelObservationFamily j) s t (actualMoebiusLabels j)

/-- The two separate complete-state components: latent original arithmetic
signs, and actual time-dependent responses, even through birth events. -/
theorem originalLabelledState_latent (j : ℕ) (u : ℝ) :
    (originalLabelledState j u).fst = actualMoebiusLabels j := rfl

theorem originalLabelledState_observed (j : ℕ) (u : ℝ) :
    (originalLabelledState j u).snd = actualLabelResponse j u := rfl

/-- Exact source readout after transporting its latent data to time t. -/
theorem transported_labelled_source_readout (j : ℕ) (s t : ℝ) :
    originalReadout j
      ((actualLabelTwoTime j s t (originalLabelledState j s)).snd) =
        (originalFixedWave j t : ℂ) := by
  rw [originalLabelledState_transport, originalLabelledState_observed]
  exact originalReadout_actualLabelResponse j t

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.FiniteLabelledPickupCocycle
