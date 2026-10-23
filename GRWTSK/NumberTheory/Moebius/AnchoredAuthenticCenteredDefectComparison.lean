/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib and GRWTSK declarations retain their original attribution.
Owner: grwtsk/math #942. SOURCE_DRAFT / NOT_ELABORATED / NOT_KERNEL_CHECKED.
-/
import GRWTSK.NumberTheory.Moebius.AnchoredPairPositiveShiftBoundary
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingZeroModeVariance
import Mathlib.Tactic

/-!
# Source-faithful anchored-to-authentic centered amplitude with signed defects

This single finite comparison binds the existing parity-anchored Möbius pairs
to the *actual* zeroWindingCenteredShiftSet and
parityCenteredIntegerCoordinateAmplitude, without identifying a single
Möbius pair coefficient with the whole summed centered amplitude.

For a positive factor a <= b the anchored (r,c,h) satisfies all visible
endpoint and parity guards in the genuine centered support. Thus its
membership is equivalent to h ∈ H. If it is included, the actual center
amplitude is its signed coefficient PLUS a precisely named sum over the
other admissible shifts at that center.

On the exact Green target X < n <= 2X this yields an equality of the
already-defined positive-shift anchored divisor transform with (i) a
source-matched authentic centered amplitude MINUS its other-shift defect
for included factors and (ii) an omitted-factor defect for excluded shifts.
The inherited a=1,2 logarithmic boundary is kept as a third correction.

The resulting finite Green and Fourier coordinates are exactly the existing
ones. None of the three correction channels is assumed to be small,
nonnegative or orthogonal. This does NOT supply any centered-energy bound,
Weil positivity, Chowla uniformity or an RH theorem.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open GRWTSK.RiemannHypothesis

/-- The repository's anchored center and left endpoint agree after solving
the centered parity coordinate. Valid for every natural anchor index. -/
theorem anchored_center_sub_shift_add_parity_eq_left (a : ℕ) :
    (anchoredMobiusPair a).center - (anchoredMobiusPair a).h +
        (anchoredMobiusPair a).r = (anchoredMobiusPair a).left := by
  unfold CenteredAdditiveMobiusPair.center CenteredAdditiveMobiusPair.left
  omega

/-- The symmetric right endpoint is literally the original pair endpoint. -/
theorem anchored_center_add_shift_add_parity_eq_right (a : ℕ) :
    (anchoredMobiusPair a).center + (anchoredMobiusPair a).h +
        (anchoredMobiusPair a).r = (anchoredMobiusPair a).right := by
  unfold CenteredAdditiveMobiusPair.center CenteredAdditiveMobiusPair.right
  omega

/-- Complete genuine-support criterion for an anchored source factor:
all visible center, parity, left and right guards are derived from the
source, leaving ONLY membership of the specified shift family H. -/
theorem anchored_shift_mem_authentic_centered_iff
    {b a : ℕ} (ha : 0 < a) (hab : a ≤ b)
    (H : Finset ℕ) :
    (anchoredMobiusPair a).h ∈
        zeroWindingCenteredShiftSet b (anchoredMobiusPair a).r
          (anchoredMobiusPair a).center H ↔
      (anchoredMobiusPair a).h ∈ H := by
  classical
  simp only [zeroWindingCenteredShiftSet, Finset.mem_filter]
  constructor
  · intro hm
    exact hm.1
  · intro hm
    refine ⟨hm, ?_, ?_, ?_, ?_⟩
    · unfold CenteredAdditiveMobiusPair.center
      omega
    · unfold CenteredAdditiveMobiusPair.center
      omega
    · rw [anchored_center_sub_shift_add_parity_eq_left]
      have hl := anchoredMobiusPair_left a
      rw [hl]
      split_ifs <;> omega
    · rw [anchored_center_add_shift_add_parity_eq_right,
        anchoredMobiusPair_right ha]
      exact hab

/-- The centered symmetric summand at the selected anchor agrees with the
actual coefficient inherited from the centered-pair carrier. -/
theorem anchored_symmetric_centered_coefficient_eq (a : ℕ) :
    moebiusReal ((anchoredMobiusPair a).center -
        (anchoredMobiusPair a).h + (anchoredMobiusPair a).r) *
      moebiusReal ((anchoredMobiusPair a).center +
        (anchoredMobiusPair a).h + (anchoredMobiusPair a).r) =
          (anchoredMobiusPair a).coefficient := by
  rw [anchored_center_sub_shift_add_parity_eq_left,
    anchored_center_add_shift_add_parity_eq_right]
  rfl

/-- The name used by the actual centered zero-mode/second-moment source
is an alias for the zero-winding fiber correlation, which the existing
source already identifies with the explicit centered-support sum. -/
theorem authentic_integer_center_amplitude_eq_centered_sum
    (b r c : ℕ) (H : Finset ℕ) :
    parityCenteredIntegerCoordinateAmplitude b r H c =
      parityZeroWindingCenteredMobiusCorrelation b r c H := by
  change parityZeroWindingShiftFiberCorrelation b r c H =
    parityZeroWindingCenteredMobiusCorrelation b r c H
  rw [parityZeroWindingShiftFiberCorrelation_eq_symmetric,
    parityZeroWindingSymmetricMobiusCorrelation_eq_centered]

/-- The signed, multiplicity-visible sum of *other* genuine centered
shifts at exactly the same center. It is not a positive error or
an absolute-value majorant. -/
def anchoredAuthenticOtherShiftDefect
    (b a : ℕ) (H : Finset ℕ) : ℝ :=
  ∑ g ∈ (zeroWindingCenteredShiftSet b
      (anchoredMobiusPair a).r (anchoredMobiusPair a).center H).erase
        (anchoredMobiusPair a).h,
    moebiusReal ((anchoredMobiusPair a).center - g +
      (anchoredMobiusPair a).r) *
    moebiusReal ((anchoredMobiusPair a).center + g +
      (anchoredMobiusPair a).r)

/-- The central *actual source* identity: one anchored coefficient is
exactly one summand of the summed authentic centered amplitude when its
shift belongs to the specified family H. All other shifts are retained
in an explicit signed remainder. When absent, the selected summand is
exactly zero and the whole authentic amplitude is the defect. -/
theorem authentic_center_amplitude_eq_anchor_add_other_shift
    {b a : ℕ} (ha : 0 < a) (hab : a ≤ b)
    (H : Finset ℕ) :
    parityCenteredIntegerCoordinateAmplitude b
        (anchoredMobiusPair a).r H (anchoredMobiusPair a).center =
      (if (anchoredMobiusPair a).h ∈ H then
        (anchoredMobiusPair a).coefficient else 0) +
        anchoredAuthenticOtherShiftDefect b a H := by
  classical
  rw [authentic_integer_center_amplitude_eq_centered_sum]
  let s := zeroWindingCenteredShiftSet b
    (anchoredMobiusPair a).r (anchoredMobiusPair a).center H
  let f : ℕ → ℝ := fun g =>
    moebiusReal ((anchoredMobiusPair a).center - g +
        (anchoredMobiusPair a).r) *
      moebiusReal ((anchoredMobiusPair a).center + g +
        (anchoredMobiusPair a).r)
  change (∑ g ∈ s, f g) =
    (if (anchoredMobiusPair a).h ∈ H then
      (anchoredMobiusPair a).coefficient else 0) +
      (∑ g ∈ s.erase (anchoredMobiusPair a).h, f g)
  have hmem := anchored_shift_mem_authentic_centered_iff ha hab H
  have hf : f (anchoredMobiusPair a).h =
      (anchoredMobiusPair a).coefficient :=
    anchored_symmetric_centered_coefficient_eq a
  by_cases hH : (anchoredMobiusPair a).h ∈ H
  · have hs : (anchoredMobiusPair a).h ∈ s := hmem.mpr hH
    rw [if_pos hH, ← hf]
    exact (Finset.add_sum_erase s f hs).symm
  · have hs : (anchoredMobiusPair a).h ∉ s := by
      intro h
      exact hH (hmem.mp h)
    rw [if_neg hH, zero_add, Finset.erase_eq_of_notMem hs]

/-- Positive factors have a unique anchored centered triple (r,c,h):
equality of all three source coordinates recovers the original a. -/
theorem anchored_center_coordinates_injective
    {a a' : ℕ} (ha : 0 < a) (ha' : 0 < a')
    (hr : (anchoredMobiusPair a).r = (anchoredMobiusPair a').r)
    (hc : (anchoredMobiusPair a).center = (anchoredMobiusPair a').center)
    (hh : (anchoredMobiusPair a).h = (anchoredMobiusPair a').h) :
    a = a' := by
  have hright : (anchoredMobiusPair a).right =
        (anchoredMobiusPair a').right := by
    calc
      (anchoredMobiusPair a).right =
          (anchoredMobiusPair a).center + (anchoredMobiusPair a).h +
            (anchoredMobiusPair a).r :=
        (anchored_center_add_shift_add_parity_eq_right a).symm
      _ = (anchoredMobiusPair a').center + (anchoredMobiusPair a').h +
            (anchoredMobiusPair a').r := by rw [hc, hh, hr]
      _ = (anchoredMobiusPair a').right :=
        anchored_center_add_shift_add_parity_eq_right a'
  rw [anchoredMobiusPair_right ha, anchoredMobiusPair_right ha'] at hright
  exact hright

/-- Exact membership reconciliation on a literal Green divisor
antidiagonal, with b = 2X. This proves the index/endpoint guards
rather than assuming an abstract source-preserving map. -/
theorem anchored_green_factor_mem_authentic_iff
    {X n : ℕ} (hn : n ∈ centeredGreenWindow X)
    {p : ℕ × ℕ} (hp : p ∈ n.divisorsAntidiagonal)
    (H : Finset ℕ) :
    (anchoredMobiusPair p.1).h ∈
        zeroWindingCenteredShiftSet (2 * X)
          (anchoredMobiusPair p.1).r
          (anchoredMobiusPair p.1).center H ↔
      (anchoredMobiusPair p.1).h ∈ H := by
  have hpos : 0 < p.1 := by
    have hzero := Nat.left_ne_zero_of_mem_divisorsAntidiagonal hp
    omega
  have hbound : p.1 ≤ 2 * X :=
    (Finset.mem_Icc.mp (anchoredFactor_mem_source hn hp)).2
  exact anchored_shift_mem_authentic_centered_iff hpos hbound H

/-- The source-matched part of the literal anchored positive-shift transform.
The genuine centered amplitude is used only with the exact OTHER-shift
defect subtracted: no single coefficient is identified with a whole sum. -/
def anchoredAuthenticMatchedDivisor
    (X n : ℕ) (H : Finset ℕ) : ℝ :=
  ∑ p ∈ n.divisorsAntidiagonal,
    if p.1 ∈ anchoredDyadicSourceIndices X then
      if 0 < (anchoredMobiusPair p.1).h then
        if (anchoredMobiusPair p.1).h ∈
            zeroWindingCenteredShiftSet (2 * X)
              (anchoredMobiusPair p.1).r
              (anchoredMobiusPair p.1).center H then
          (anchoredPairSign p.1 *
            (parityCenteredIntegerCoordinateAmplitude (2 * X)
                (anchoredMobiusPair p.1).r H
                (anchoredMobiusPair p.1).center -
              anchoredAuthenticOtherShiftDefect (2 * X) p.1 H)) *
                (ArithmeticFunction.log p.2 : ℝ)
        else 0
      else 0
    else 0

/-- The omitted-shift defect of the same finite Green divisor packet:
factors whose anchored shift is positive but absent from the actual
selected centered family. This is a signed real coefficient sum. -/
def anchoredAuthenticOmittedDivisor
    (X n : ℕ) (H : Finset ℕ) : ℝ :=
  ∑ p ∈ n.divisorsAntidiagonal,
    if p.1 ∈ anchoredDyadicSourceIndices X then
      if 0 < (anchoredMobiusPair p.1).h then
        if (anchoredMobiusPair p.1).h ∉
            zeroWindingCenteredShiftSet (2 * X)
              (anchoredMobiusPair p.1).r
              (anchoredMobiusPair p.1).center H then
          (anchoredPairSign p.1 *
            (anchoredMobiusPair p.1).coefficient) *
              (ArithmeticFunction.log p.2 : ℝ)
        else 0
      else 0
    else 0

/-- The single finite support-and-multiplicity-preserving comparison:
every positive-shift anchored factor is classified either as a genuine
centered-family term with its other-shift defect removed, or as an
omitted-family factor. Nothing is duplicated or discarded. -/
theorem anchoredPositiveDivisor_eq_authentic_matched_add_omitted
    {X n : ℕ} (hn : n ∈ centeredGreenWindow X)
    (H : Finset ℕ) :
    anchoredPositiveShiftDivisorTransform X n
        (fun a => (anchoredMobiusPair a).coefficient) =
      anchoredAuthenticMatchedDivisor X n H +
        anchoredAuthenticOmittedDivisor X n H := by
  classical
  unfold anchoredPositiveShiftDivisorTransform
    anchoredAuthenticMatchedDivisor anchoredAuthenticOmittedDivisor
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p hp
  by_cases hsource : p.1 ∈ anchoredDyadicSourceIndices X
  · by_cases hpositive : 0 < (anchoredMobiusPair p.1).h
    · by_cases hcenter :
        (anchoredMobiusPair p.1).h ∈
          zeroWindingCenteredShiftSet (2 * X)
            (anchoredMobiusPair p.1).r
            (anchoredMobiusPair p.1).center H
      · have hpos : 0 < p.1 := by
          have hnotzero := Nat.left_ne_zero_of_mem_divisorsAntidiagonal hp
          omega
        have hbound : p.1 ≤ 2 * X :=
          (Finset.mem_Icc.mp (anchoredFactor_mem_source hn hp)).2
        have hH : (anchoredMobiusPair p.1).h ∈ H :=
          (anchored_shift_mem_authentic_centered_iff hpos hbound H).mp hcenter
        have hlocal :=
          authentic_center_amplitude_eq_anchor_add_other_shift
            hpos hbound H
        have hdiff :
            parityCenteredIntegerCoordinateAmplitude (2 * X)
                (anchoredMobiusPair p.1).r H
                (anchoredMobiusPair p.1).center -
              anchoredAuthenticOtherShiftDefect (2 * X) p.1 H =
                (anchoredMobiusPair p.1).coefficient := by
          simp only [if_pos hH] at hlocal
          linarith
        simp [hsource, hpositive, hcenter, hdiff]
      · simp [hsource, hpositive, hcenter]
    · simp [hsource, hpositive]
  · simp [hsource]

/-- Preserve the already-proved a=1,2 correction EXACTLY. The new centered
support comparison supplies no estimate for either correction channel. -/
theorem vonMangoldt_eq_authentic_matched_add_all_defects
    {X n : ℕ} (hn : n ∈ centeredGreenWindow X)
    (H : Finset ℕ) :
    ArithmeticFunction.vonMangoldt n =
      anchoredAuthenticMatchedDivisor X n H +
        anchoredAuthenticOmittedDivisor X n H +
          (Real.log (n : ℝ) -
            (if 2 ∣ n then
              Real.log ((n / 2 : ℕ) : ℝ) else 0)) := by
  rw [vonMangoldt_eq_positiveAnchored_add_boundary hn,
    anchoredPositiveDivisor_eq_authentic_matched_add_omitted hn H]
  ring

/-- The Green observable rebuilt from genuine centered-family amplitudes
and the COMPLETE signed source defects, with no change of window, 1/n,
complex scalar embedding or test-location convention. -/
def authenticCorrectedGreenPrimeCoordinate
    (X : ℕ) (H : Finset ℕ) (φ : ℝ → ℂ) : ℂ :=
  ∑ n ∈ centeredGreenWindow X,
    (((anchoredAuthenticMatchedDivisor X n H +
      anchoredAuthenticOmittedDivisor X n H +
      (Real.log (n : ℝ) -
        (if 2 ∣ n then
          Real.log ((n / 2 : ℕ) : ℝ) else 0))) / (n : ℝ) : ℝ) : ℂ) *
        φ (centeredGreenLocation X n)

/-- Exact consumer equality, not an analytic upper bound. -/
theorem centeredGreenPrimeCoordinate_eq_authentic_corrected
    (X : ℕ) (H : Finset ℕ) (φ : ℝ → ℂ) :
    centeredGreenPrimeCoordinate X φ =
      authenticCorrectedGreenPrimeCoordinate X H φ := by
  unfold centeredGreenPrimeCoordinate authenticCorrectedGreenPrimeCoordinate
  apply Finset.sum_congr rfl
  intro n hn
  unfold centeredGreenArithmeticCoefficient
  rw [vonMangoldt_eq_authentic_matched_add_all_defects hn H]
  rfl

/-- The original historical Fourier coordinate consumes the exact identity
with its continuum background kept separate. No L², RH-scale, or Weil-form
positivity claim is imported. -/
theorem thinGreenArithmeticFourierCoordinate_eq_authentic_corrected
    (X : ℕ) (H : Finset ℕ) (k : ℤ) :
    thinGreenArithmeticFourierCoordinate X k =
      greenFourierBackgroundCoordinate k -
        authenticCorrectedGreenPrimeCoordinate X H (fourierModeValue k) := by
  unfold thinGreenArithmeticFourierCoordinate
  rw [centeredGreenPrimeCoordinate_eq_authentic_corrected]

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.anchored_shift_mem_authentic_centered_iff
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.authentic_center_amplitude_eq_anchor_add_other_shift
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.anchoredPositiveDivisor_eq_authentic_matched_add_omitted
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.vonMangoldt_eq_authentic_matched_add_all_defects
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.thinGreenArithmeticFourierCoordinate_eq_authentic_corrected
