/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSmoothBirthGramRegularization
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointDenseLongGapSource
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Arbitrary signed original-source sectors and bounded smoothing transport

The original Gram, integer indices, finite birth window and ordered
pair orientations are unchanged. An arbitrary finite ordered sector is
compared with exactly its smooth-birth image, preserving a signed
original-minus-regularized defect, not an unbounded free remainder.

The uniform numeric envelope for the concrete smooth cutoff is proved
analytically in the accompanying review, not formalized in this file.
The formal good-scale return consumes that quantitative envelope as an
EXPLICIT premise; it neither assumes nor proves RH cancellation.
-/

namespace GRWTSK.NumberTheory.Moebius.SmoothBirthSectorTransport

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.SmoothBirthGramRegularization
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting

/-- Exact source values on ANY original-integer ordered edge set.
To represent a current-time subpacket, select edges from
(endpointIndex T).product (endpointIndex T). -/
def originalOrderedSector (E : Finset (ℕ × ℕ)) (T : ℝ) : ℝ :=
  ∑ e ∈ E,
    if e.1 ≠ e.2 then
      moebiusReal e.1 * moebiusReal e.2 *
        pickupResponseGram T e.1 e.2
    else 0

/-- The same original coefficient and integer pair, smoothed only
in the real observation-time response. -/
def smoothOrderedSector (eta : ℝ → ℝ) (κ : ℝ)
    (E : Finset (ℕ × ℕ)) (T : ℝ) : ℝ :=
  ∑ e ∈ E,
    if e.1 ≠ e.2 then
      moebiusReal e.1 * moebiusReal e.2 *
        smoothBirthGram eta κ T e.1 e.2
    else 0

/-- Complete actual signed sector defect; no diagonal, zero symbol
or ordered pair is silently removed. -/
def signedOrderedSectorDefect (eta : ℝ → ℝ) (κ : ℝ)
    (E : Finset (ℕ × ℕ)) (T : ℝ) : ℝ :=
  ∑ e ∈ E,
    if e.1 ≠ e.2 then
      moebiusReal e.1 * moebiusReal e.2 *
        (pickupResponseGram T e.1 e.2 -
          smoothBirthGram eta κ T e.1 e.2)
    else 0

/-- The arbitrary sector has a literal source-preserving return. -/
theorem originalOrderedSector_eq_smooth_add_defect
    (eta : ℝ → ℝ) (κ : ℝ)
    (E : Finset (ℕ × ℕ)) (T : ℝ) :
    originalOrderedSector E T =
      smoothOrderedSector eta κ E T +
        signedOrderedSectorDefect eta κ E T := by
  classical
  unfold originalOrderedSector smoothOrderedSector
    signedOrderedSectorDefect
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro e he
  by_cases h : e.1 ≠ e.2
  · simp only [if_pos h]
    ring
  · simp [h]

/-- Elementary unsigned envelope for ANY selected ordered pair set.
No positivity is assumed of the signed coefficients themselves.
This is a finite analytic inequality, not an RH bound. -/
theorem arbitrary_signed_sector_envelope
    (E : Finset (ℕ × ℕ)) (c : ℕ → ℝ)
    (d : ℕ → ℕ → ℝ)
    (hc : ∀ n : ℕ, |c n| ≤ 1)
    (hd : ∀ m n : ℕ, 0 ≤ d m n) :
    |∑ e ∈ E, c e.1 * c e.2 * d e.1 e.2| ≤
      ∑ e ∈ E, d e.1 e.2 := by
  calc
    |∑ e ∈ E, c e.1 * c e.2 * d e.1 e.2| ≤
        ∑ e ∈ E, |c e.1 * c e.2 * d e.1 e.2| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ e ∈ E, d e.1 e.2 := by
      apply Finset.sum_le_sum
      intro e he
      have hcoef : |c e.1| * |c e.2| ≤ (1 : ℝ) := by
        calc
          |c e.1| * |c e.2| ≤ 1 * |c e.2| :=
            mul_le_mul_of_nonneg_right (hc e.1) (abs_nonneg _)
          _ ≤ 1 * 1 :=
            mul_le_mul_of_nonneg_left (hc e.2) (by norm_num)
          _ = 1 := by ring
      calc
        |c e.1 * c e.2 * d e.1 e.2| =
            (|c e.1| * |c e.2|) * d e.1 e.2 := by
          rw [abs_mul, abs_mul, abs_of_nonneg (hd e.1 e.2)]
        _ ≤ 1 * d e.1 e.2 :=
          mul_le_mul_of_nonneg_right hcoef (hd e.1 e.2)
        _ = d e.1 e.2 := one_mul _

/-- Original additive-gap packet with ONLY its response regularized.
No arithmetic gap, prime, residue, index or sign is changed. -/
def smoothGapSetCross (eta : ℝ → ℝ) (κ : ℝ)
    (A : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ Nat.dist m n ∈ A then
      moebiusReal m * moebiusReal n * smoothBirthGram eta κ T m n
    else 0

/-- Literal complete source-minus-smooth gap error. -/
def signedGapSmoothDefect (eta : ℝ → ℝ) (κ : ℝ)
    (A : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ Nat.dist m n ∈ A then
      moebiusReal m * moebiusReal n *
        (pickupResponseGram T m n - smoothBirthGram eta κ T m n)
    else 0

theorem gapSetCross_eq_smooth_add_defect
    (eta : ℝ → ℝ) (κ : ℝ) (A : Finset ℕ) (T : ℝ) :
    endpointGapSetCross A T =
      smoothGapSetCross eta κ A T +
        signedGapSmoothDefect eta κ A T := by
  classical
  unfold endpointGapSetCross smoothGapSetCross signedGapSmoothDefect
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : m ≠ n ∧ Nat.dist m n ∈ A
  · simp only [if_pos h]
    ring
  · simp [h]

/-- Exact smooth image of the previously defined dense long-distance
source. The SAME rate-dependent gap set is removed; no new G is chosen. -/
def smoothDenseLongGapSource (eta : ℝ → ℝ) (κ ε T : ℝ) : ℝ :=
  smoothBirthCross eta κ T -
    smoothGapSetCross eta κ (putnamRateGapSet ε T) T

/-- Exact original-minus-smooth dense return, with BOTH the complete
cross defect and the sparse-band defect paid. -/
theorem denseLongGapSource_eq_smooth_add_defects
    (eta : ℝ → ℝ) (κ ε T : ℝ) :
    denseLongGapSource ε T =
      smoothDenseLongGapSource eta κ ε T +
        (signedSmoothBirthDefect eta κ T -
          signedGapSmoothDefect eta κ (putnamRateGapSet ε T) T) := by
  unfold denseLongGapSource smoothDenseLongGapSource
  rw [pickupCross_eq_smoothBirthCross_add_defect,
    gapSetCross_eq_smooth_add_defect]
  ring

/-- Rate-dependent upper estimates on ONE fixed set G.
No affine coverage or arithmetic witness is bundled into this type. -/
def AllPositiveRateOn (f : ℝ → ℝ → ℝ) (G : Set ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, T ∈ G → R ≤ T →
        f ε T ≤ C * Real.exp (ε * T)

/-- A bounded one-sided error transfers all positive rates without
modifying G or selecting epsilon-dependent covering regions. -/
theorem allPositiveRateOn_transport
    {f g : ℝ → ℝ → ℝ} {G : Set ℝ}
    {K : ℝ} (hK : 0 ≤ K)
    (hfg : ∀ ε T : ℝ, 0 < ε → 0 ≤ T →
      g ε T ≤ f ε T + K)
    (hf : AllPositiveRateOn f G) :
    AllPositiveRateOn g G := by
  intro ε hε
  obtain ⟨C, R, hC, hR, hb⟩ := hf ε hε
  refine ⟨C + K, R, add_nonneg hC hK, hR, ?_⟩
  intro T hG hTR
  have hT : 0 ≤ T := hR.trans hTR
  have he : (1 : ℝ) ≤ Real.exp (ε * T) := by
    have hh : 0 ≤ ε * T := mul_nonneg hε.le hT
    simpa only [Real.exp_zero] using
      (Real.exp_le_exp.mpr hh)
  have hKe : K ≤ K * Real.exp (ε * T) :=
    le_mul_of_one_le_right hK he
  calc
    g ε T ≤ f ε T + K := hfg ε T hε hT
    _ ≤ C * Real.exp (ε * T) + K :=
      add_le_add_right (hb T hG hTR) K
    _ ≤ (C + K) * Real.exp (ε * T) := by
      rw [add_mul]
      linarith

/-- Any UNIFORMLY bounded signed error gives an equivalence, not
an unconditional all-positive-rate arithmetic estimate. -/
theorem allPositiveRateOn_iff_of_uniform_error
    {f g : ℝ → ℝ → ℝ} {G : Set ℝ}
    {K : ℝ} (hK : 0 ≤ K)
    (herror : ∀ ε T : ℝ, 0 < ε → 0 ≤ T →
      |f ε T - g ε T| ≤ K) :
    AllPositiveRateOn f G ↔ AllPositiveRateOn g G := by
  constructor
  · intro hf
    apply allPositiveRateOn_transport hK
      (f := f) (g := g)
    · intro ε T hε hT
      have h := (abs_le.mp (herror ε T hε hT)).1
      linarith
    · exact hf
  · intro hg
    apply allPositiveRateOn_transport hK
      (f := g) (g := f)
    · intro ε T hε hT
      have h := (abs_le.mp (herror ε T hε hT)).2
      linarith
    · exact hg

def SmoothDenseLongGapAllRateOn
    (eta : ℝ → ℝ) (κ : ℝ) (G : Set ℝ) : Prop :=
  AllPositiveRateOn (smoothDenseLongGapSource eta κ) G

/-- A quantitative source-bound smoothing interface. BOTH uniform
bounds must be established for the ACTUAL cutoff and original Gram;
they are explicit hypotheses, not false general statements about eta. -/
theorem denseLongGapAllRateOn_iff_smooth
    (eta : ℝ → ℝ) (κ K : ℝ) (G : Set ℝ)
    (hK : 0 ≤ K)
    (hfull : ∀ T : ℝ, 0 ≤ T →
      |signedSmoothBirthDefect eta κ T| ≤ K)
    (hgap : ∀ (A : Finset ℕ) (T : ℝ), 0 ≤ T →
      |signedGapSmoothDefect eta κ A T| ≤ K) :
    DenseLongGapAllRateOn G ↔
      SmoothDenseLongGapAllRateOn eta κ G := by
  change AllPositiveRateOn (fun ε T => denseLongGapSource ε T) G ↔
    AllPositiveRateOn (smoothDenseLongGapSource eta κ) G
  apply allPositiveRateOn_iff_of_uniform_error (K := 2 * K)
    (by positivity)
  intro ε T hε hT
  have hd := denseLongGapSource_eq_smooth_add_defects eta κ ε T
  have hdiff :
      denseLongGapSource ε T - smoothDenseLongGapSource eta κ ε T =
        signedSmoothBirthDefect eta κ T -
          signedGapSmoothDefect eta κ (putnamRateGapSet ε T) T := by
    linarith
  rw [hdiff]
  calc
    |signedSmoothBirthDefect eta κ T -
        signedGapSmoothDefect eta κ (putnamRateGapSet ε T) T| ≤
      |signedSmoothBirthDefect eta κ T| +
        |signedGapSmoothDefect eta κ (putnamRateGapSet ε T) T| :=
      abs_sub_le _ _
    _ ≤ K + K :=
      add_le_add (hfull T hT)
        (hgap (putnamRateGapSet ε T) T hT)
    _ = 2 * K := by ring

end GRWTSK.NumberTheory.Moebius.SmoothBirthSectorTransport
