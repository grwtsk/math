/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #881. Parent: draft PR #878 at 76b5ee6898a04cad7c8f0bc53a0f49a080721769.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingAffineChowlaVarianceDefect

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Signed off-diagonal covariance of integer-center amplitudes at square
modulus d^2. -/
def parityCenteredIntegerCoordinateOffDiagonalCovariance
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  4 * ∑ c₁ ∈ Finset.range (b + 1),
    ∑ c₂ ∈ Finset.range (b + 1),
      if c₁ ≡ c₂ [MOD d * d] ∧ c₁ ≠ c₂ then
        parityCenteredIntegerCoordinateAmplitude b r H c₁ *
          parityCenteredIntegerCoordinateAmplitude b r H c₂
      else 0

/-- The off-diagonal center covariance is exactly the existing centered
quartic wrap surface. -/
theorem parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_wrap
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityCenteredIntegerCoordinateOffDiagonalCovariance b d r H =
      parityHalfIndexSignedQuarticWrap b d r H := by
  classical
  unfold parityCenteredIntegerCoordinateOffDiagonalCovariance
    parityCenteredIntegerCoordinateAmplitude
    parityZeroWindingShiftFiberCorrelation
    parityHalfIndexSignedQuarticWrap
  rw [← mul_sum]
  apply congrArg (fun x : ℝ => 4 * x)
  simp_rw [Finset.sum_mul, Finset.mul_sum]
  rw [Finset.sum_comm]
  simp_rw [Finset.sum_comm (s := Finset.range (b + 1))]
  rw [Finset.sum_comm]
  simp_rw [Finset.sum_comm (s := H)]
  apply Finset.sum_congr rfl
  intro h hh
  apply Finset.sum_congr rfl
  intro g hg
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  let c₁ := halfIndexZeroWindingCoordinate m h
  let c₂ := halfIndexZeroWindingCoordinate n g
  have hc₁ : c₁ < b + 1 := halfIndexZeroWindingCoordinate_lt_endpoint hm
  have hc₂ : c₂ < b + 1 := halfIndexZeroWindingCoordinate_lt_endpoint hn
  rw [Finset.sum_eq_single c₁]
  · rw [Finset.sum_eq_single c₂]
    · by_cases hmod : c₁ ≡ c₂ [MOD d * d]
      · by_cases hne : c₁ ≠ c₂
        · simp [hmod, hne, c₁, c₂,
            zeroWindingHalfIndexFromCoordinate_eq]
        · simp [hmod, hne, c₁, c₂]
      · simp [hmod, c₁, c₂]
    · intro c hc hne
      simp [hne]
    · exact Finset.mem_range.mpr hc₂
  · intro c hc hne
    simp [hne]
  · exact Finset.mem_range.mpr hc₁

/-- The affine-Chowla spectral variance defect is purely off-diagonal. -/
theorem parityAffineChowlaVarianceDefect_even_eq_offDiagonalCovariance
    (b d r : ℕ) [NeZero d] (hr : r < 2) :
    parityAffineChowlaVarianceDefect
        b d r (positiveEndpointEvenShiftSet b) =
      parityCenteredIntegerCoordinateOffDiagonalCovariance
        b d r (positiveEndpointEvenShiftSet b) := by
  rw [parityAffineChowlaVarianceDefect_even_eq_wrap b d r hr]
  exact
    (parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_wrap
      b d r (positiveEndpointEvenShiftSet b)).symm

theorem parityAffineChowlaVarianceDefect_odd_eq_offDiagonalCovariance
    (b d r : ℕ) [NeZero d] (hr : r < 2) :
    parityAffineChowlaVarianceDefect
        b d r (positiveEndpointOddShiftSet b) =
      parityCenteredIntegerCoordinateOffDiagonalCovariance
        b d r (positiveEndpointOddShiftSet b) := by
  rw [parityAffineChowlaVarianceDefect_odd_eq_wrap b d r hr]
  exact
    (parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_wrap
      b d r (positiveEndpointOddShiftSet b)).symm

/-- Covariance at one positive center lag ell. -/
def parityCenteredIntegerCoordinatePositiveLagCovariance
    (b r ell : ℕ)
    (H : Finset ℕ) : ℝ :=
  ∑ c ∈ Finset.range (b + 1),
    if c + ell < b + 1 then
      parityCenteredIntegerCoordinateAmplitude b r H c *
        parityCenteredIntegerCoordinateAmplitude b r H (c + ell)
    else 0

/-- Symmetric covariance at the square-modulus winding lag z*d^2. -/
def parityCenteredIntegerCoordinateWindingLagCovariance
    (b d r z : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  8 * parityCenteredIntegerCoordinatePositiveLagCovariance
    b r (z * (d * d)) H

/-- Positive winding radii index all positive nonzero congruent center
separations. -/
def parityCenteredIntegerCoordinateWindingLagSum
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  ∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
    parityCenteredIntegerCoordinateWindingLagCovariance b d r z H

/-- A positive congruent separation is a positive multiple of d^2 and its
quotient lies in the exact winding-radius interval. -/
theorem positiveCongruentCenterDifference_has_windingLag
    (b d c₁ c₂ : ℕ) [NeZero d]
    (hc₁ : c₁ < b + 1)
    (hc₂ : c₂ < b + 1)
    (hlt : c₁ < c₂)
    (hmod : c₁ ≡ c₂ [MOD d * d]) :
    ∃ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
      c₂ = c₁ + z * (d * d) := by
  have hqpos : 0 < d * d := by positivity
  have hdiv : d * d ∣ c₂ - c₁ := by
    exact (Nat.modEq_iff_dvd' hlt.le).mp hmod.symm
  obtain ⟨z, hz⟩ := hdiv
  have hdiffpos : 0 < c₂ - c₁ := Nat.sub_pos_of_lt hlt
  have hzpos : 0 < z := by
    by_contra hz0
    have : z = 0 := Nat.eq_zero_of_not_pos hz0
    simp [this] at hz
    omega
  have hdiffle : c₂ - c₁ ≤ b := by omega
  have hzmul : z * (d * d) ≤ b := by simpa [hz] using hdiffle
  have hzrad : z ≤ centeredWindingRadius b d := by
    unfold centeredWindingRadius
    exact (Nat.le_div_iff_mul_le hqpos).2 hzmul
  refine ⟨z, Finset.mem_Icc.mpr ⟨hzpos, hzrad⟩, ?_⟩
  omega

/-- Conversely, every positive winding lag that stays inside the endpoint
range gives a distinct congruent center pair. -/
theorem windingLag_gives_congruentCenters
    (d c z : ℕ) [NeZero d] :
    c ≡ c + z * (d * d) [MOD d * d] := by
  exact Nat.ModEq.add_fac _ _ _

/-- Source-level lag partition statement.  This is the finite bijection needed
to turn the off-diagonal covariance into the positive-lag sum. -/
def CenteredWindingLagPartitionStatement : Prop :=
  ∀ b d c₁ c₂ : ℕ, ∀ _hd : NeZero d,
    c₁ < b + 1 →
    c₂ < b + 1 →
    c₁ < c₂ →
    c₁ ≡ c₂ [MOD d * d] →
    ∃ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
      c₂ = c₁ + z * (d * d)

theorem centeredWindingLagPartitionStatement :
    CenteredWindingLagPartitionStatement := by
  intro b d c₁ c₂ hd hc₁ hc₂ hlt hmod
  letI : NeZero d := hd
  exact positiveCongruentCenterDifference_has_windingLag
    b d c₁ c₂ hc₁ hc₂ hlt hmod

/-- Canonical winding-lag covariance, retaining the ordered center-pair
surface but making the positive winding lag existentially explicit.  The
partition theorem above proves this predicate is exactly the old congruence
predicate. -/
def parityCenteredIntegerCoordinateLagPartitionCovariance
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  4 * ∑ c₁ ∈ Finset.range (b + 1),
    ∑ c₂ ∈ Finset.range (b + 1),
      if (∃ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
            (c₂ = c₁ + z * (d * d) ∨ c₁ = c₂ + z * (d * d))) then
        parityCenteredIntegerCoordinateAmplitude b r H c₁ *
          parityCenteredIntegerCoordinateAmplitude b r H c₂
      else 0

/-- Exact finite reindexing: unequal congruent center pairs are precisely the
two orientations of a positive winding lag. -/
theorem parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_lagPartition
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityCenteredIntegerCoordinateOffDiagonalCovariance b d r H =
      parityCenteredIntegerCoordinateLagPartitionCovariance b d r H := by
  classical
  unfold parityCenteredIntegerCoordinateOffDiagonalCovariance
    parityCenteredIntegerCoordinateLagPartitionCovariance
  apply congrArg (fun x : ℝ => 4 * x)
  apply Finset.sum_congr rfl
  intro c₁ hc₁
  apply Finset.sum_congr rfl
  intro c₂ hc₂
  have hc₁b : c₁ < b + 1 := Finset.mem_range.mp hc₁
  have hc₂b : c₂ < b + 1 := Finset.mem_range.mp hc₂
  by_cases hold : c₁ ≡ c₂ [MOD d * d] ∧ c₁ ≠ c₂
  · have hor : c₁ < c₂ ∨ c₂ < c₁ := by omega
    have hex :
        ∃ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
          (c₂ = c₁ + z * (d * d) ∨ c₁ = c₂ + z * (d * d)) := by
      rcases hor with hlt | hgt
      · obtain ⟨z, hz, heq⟩ :=
          positiveCongruentCenterDifference_has_windingLag
            b d c₁ c₂ hc₁b hc₂b hlt hold.1
        exact ⟨z, hz, Or.inl heq⟩
      · obtain ⟨z, hz, heq⟩ :=
          positiveCongruentCenterDifference_has_windingLag
            b d c₂ c₁ hc₂b hc₁b hgt hold.1.symm
        exact ⟨z, hz, Or.inr heq⟩
    simp [hold, hex]
  · have hnex :
        ¬ ∃ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
          (c₂ = c₁ + z * (d * d) ∨ c₁ = c₂ + z * (d * d)) := by
      intro hex
      obtain ⟨z, hz, heq⟩ := hex
      have hzpos : 0 < z := (Finset.mem_Icc.mp hz).1
      apply hold
      rcases heq with hforward | hbackward
      · constructor
        · rw [hforward]
          exact windingLag_gives_congruentCenters d c₁ z
        · omega
      · constructor
        · rw [hbackward]
          exact (windingLag_gives_congruentCenters d c₂ z).symm
        · omega
    simp [hold, hnex]

/-- The exact lag partition is the wrap surface and therefore the affine-Chowla
variance defect. -/
theorem parityCenteredIntegerCoordinateLagPartitionCovariance_eq_wrap
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityCenteredIntegerCoordinateLagPartitionCovariance b d r H =
      parityHalfIndexSignedQuarticWrap b d r H := by
  rw [← parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_lagPartition]
  exact parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_wrap b d r H

/-- Four-family absolute off-diagonal covariance at one modulus. -/
def regularCenteredWindingOffDiagonalCovarianceAtModulus
    (b d : ℕ) [NeZero d] : ℝ :=
  |parityCenteredIntegerCoordinateOffDiagonalCovariance
      b d 0 (positiveEndpointEvenShiftSet b)| +
  |parityCenteredIntegerCoordinateOffDiagonalCovariance
      b d 0 (positiveEndpointOddShiftSet b)| +
  |parityCenteredIntegerCoordinateOffDiagonalCovariance
      b d 1 (positiveEndpointEvenShiftSet b)| +
  |parityCenteredIntegerCoordinateOffDiagonalCovariance
      b d 1 (positiveEndpointOddShiftSet b)|

theorem regularCenteredWindingOffDiagonalCovarianceAtModulus_eq_residue
    (b d : ℕ) [NeZero d] :
    regularCenteredWindingOffDiagonalCovarianceAtModulus b d =
      regularCenteredWindingResidueDispersionAtModulus b d := by
  unfold regularCenteredWindingOffDiagonalCovarianceAtModulus
    regularCenteredWindingResidueDispersionAtModulus
  rw [parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_wrap,
    parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_wrap,
    parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_wrap,
    parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_wrap,
    parityCenteredWindingResidueDispersion_eq_wrap,
    parityCenteredWindingResidueDispersion_eq_wrap,
    parityCenteredWindingResidueDispersion_eq_wrap,
    parityCenteredWindingResidueDispersion_eq_wrap]

def regularCenteredWindingOffDiagonalCovarianceEndpoint (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      regularCenteredWindingOffDiagonalCovarianceAtModulus b d
    else 0

theorem regularCenteredWindingOffDiagonalCovarianceEndpoint_eq_residue
    (b : ℕ) :
    regularCenteredWindingOffDiagonalCovarianceEndpoint b =
      regularCenteredWindingResidueDispersionEndpoint b := by
  unfold regularCenteredWindingOffDiagonalCovarianceEndpoint
    regularCenteredWindingResidueDispersionEndpoint
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos : 0 < d :=
    (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  letI : NeZero d := ⟨ne_of_gt hdpos⟩
  exact regularCenteredWindingOffDiagonalCovarianceAtModulus_eq_residue b d

def RegularCenteredWindingOffDiagonalCovarianceEnvelope
    (E : ℕ → ℝ) : Prop :=
  ∀ b : ℕ, regularCenteredWindingOffDiagonalCovarianceEndpoint b ≤ E b

theorem regularCenteredWindingOffDiagonalCovarianceEnvelope_iff_residue
    (E : ℕ → ℝ) :
    RegularCenteredWindingOffDiagonalCovarianceEnvelope E ↔
      RegularCenteredWindingResidueDispersionEnvelope E := by
  constructor
  · intro h b
    rw [← regularCenteredWindingOffDiagonalCovarianceEndpoint_eq_residue]
    exact h b
  · intro h b
    rw [regularCenteredWindingOffDiagonalCovarianceEndpoint_eq_residue]
    exact h b

structure RegularCenteredWindingOffDiagonalCovarianceSourceData where
  theoremStatement : Prop
  integerCenterAmplitudesMatched : Prop
  congruentCenterPairsMatched : Prop
  diagonalRemovedExactly : Prop
  offDiagonalCovarianceMatched : Prop
  positiveWindingLagCoordinatesMatched : Prop
  bothOrientationsMatched : Prop
  evenOddHalfShiftFamiliesMatched : Prop
  bothEndpointParitiesMatched : Prop
  effectiveModulusAggregationMatched : Prop
  residueDispersionExactlyMatched : Prop
  analyticEnvelopeExplicit : Prop

def RegularCenteredWindingOffDiagonalCovarianceSource
    (d : RegularCenteredWindingOffDiagonalCovarianceSourceData) : Prop :=
  d.theoremStatement ∧
  d.integerCenterAmplitudesMatched ∧
  d.congruentCenterPairsMatched ∧
  d.diagonalRemovedExactly ∧
  d.offDiagonalCovarianceMatched ∧
  d.positiveWindingLagCoordinatesMatched ∧
  d.bothOrientationsMatched ∧
  d.evenOddHalfShiftFamiliesMatched ∧
  d.bothEndpointParitiesMatched ∧
  d.effectiveModulusAggregationMatched ∧
  d.residueDispersionExactlyMatched ∧
  d.analyticEnvelopeExplicit

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_wrap
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.regularCenteredWindingOffDiagonalCovarianceEndpoint_eq_residue
