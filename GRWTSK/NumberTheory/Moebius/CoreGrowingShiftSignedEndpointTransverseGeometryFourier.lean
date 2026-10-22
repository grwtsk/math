/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #927. Parent: draft PR #922 at
`8ff42f7da358d7bb49567e1fa3d2fd83277332e7`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointTransverseFrequencySplitFourier

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The elementary Jordan lower scale attached to one transverse frequency. -/
def coreGrowingShiftEndpointTransverseJordanLowerScale
    (j : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℝ :=
  4 *
      (coreGrowingShiftEndpointTransverseCircularDistance j u : ℝ) /
    (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ)

/-- Jordan's inequality converts the exact sine formula from #915 into an
explicit lower bound for the transverse finite-difference multiplier. -/
theorem coreGrowingShiftEndpointTransverseMultiplier_norm_lowerBound
    (j : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseJordanLowerScale j u ≤
      ‖coreGrowingShiftEndpointTransverseMultiplier j u‖ := by
  let d := coreGrowingShiftEndpointTransverseCircularDistance j u
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  let x : ℝ := Real.pi * (d : ℝ) / (Q : ℝ)
  have hQnat : 0 < Q := by
    unfold Q coreGrowingShiftEndpointDoubledFourierModulus
      coreGrowingShiftEndpointFourierModulus
    positivity
  have hQ : (0 : ℝ) < (Q : ℝ) := by
    exact_mod_cast hQnat
  have hdQnat : 2 * d ≤ Q := by
    simpa [d, Q] using
      coreGrowingShiftEndpointTransverseCircularDistance_two_mul_le j u
  have hdQ : (d : ℝ) ≤ (Q : ℝ) / 2 := by
    have hcast : (2 : ℝ) * (d : ℝ) ≤ (Q : ℝ) := by
      exact_mod_cast hdQnat
    linarith
  have hx0 : 0 ≤ x := by
    dsimp [x]
    positivity
  have hxhalf : x ≤ Real.pi / 2 := by
    dsimp [x]
    calc
      Real.pi * (d : ℝ) / (Q : ℝ) ≤
          Real.pi * ((Q : ℝ) / 2) / (Q : ℝ) := by
            gcongr
      _ = Real.pi / 2 := by
        field_simp [ne_of_gt hQ]
        ring
  have hxpi : x ≤ Real.pi := by
    linarith [Real.pi_pos]
  have hsin : 0 ≤ Real.sin x :=
    Real.sin_nonneg_of_nonneg_of_le_pi hx0 hxpi
  have hJordan : 2 / Real.pi * x ≤ Real.sin x :=
    Real.mul_le_sin hx0 hxhalf
  have hscaled :
      4 * (d : ℝ) / (Q : ℝ) ≤ 2 * Real.sin x := by
    calc
      4 * (d : ℝ) / (Q : ℝ) =
          2 * (2 / Real.pi * x) := by
            dsimp [x]
            field_simp [Real.pi_ne_zero, ne_of_gt hQ]
            ring
      _ ≤ 2 * Real.sin x := by
        gcongr
  rw [coreGrowingShiftEndpointTransverseMultiplier_norm_eq_sineDistance]
  have hnorm :
      ‖(2 : ℝ) * Real.sin x‖ = 2 * Real.sin x := by
    rw [Real.norm_eq_abs, abs_of_nonneg]
    positivity
  simpa [coreGrowingShiftEndpointTransverseJordanLowerScale, d, Q, x,
    hnorm] using hscaled

/-- A nonzero transverse mode has the exact reciprocal-distance scalar
resolvent bound.  This is not a Fourier-sum estimate. -/
theorem coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_distance
    {j : ℕ}
    {u : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hu : u ≠ 0) :
    ‖(coreGrowingShiftEndpointTransverseMultiplier j u)⁻¹‖ ≤
      (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (4 *
          (coreGrowingShiftEndpointTransverseCircularDistance j u : ℝ)) := by
  let d := coreGrowingShiftEndpointTransverseCircularDistance j u
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  have hd0 : d ≠ 0 := by
    intro hd
    exact hu
      ((coreGrowingShiftEndpointTransverseCircularDistance_eq_zero_iff j u).mp
        hd)
  have hd : (0 : ℝ) < (d : ℝ) := by
    exact_mod_cast Nat.pos_of_ne_zero hd0
  have hQnat : 0 < Q := by
    unfold Q coreGrowingShiftEndpointDoubledFourierModulus
      coreGrowingShiftEndpointFourierModulus
    positivity
  have hQ : (0 : ℝ) < (Q : ℝ) := by
    exact_mod_cast hQnat
  have hscale :
      0 < 4 * (d : ℝ) / (Q : ℝ) := by
    positivity
  have hlower :
      4 * (d : ℝ) / (Q : ℝ) ≤
        ‖coreGrowingShiftEndpointTransverseMultiplier j u‖ := by
    simpa [coreGrowingShiftEndpointTransverseJordanLowerScale, d, Q] using
      coreGrowingShiftEndpointTransverseMultiplier_norm_lowerBound j u
  have hrecip := one_div_le_one_div_of_le hscale hlower
  rw [norm_inv]
  calc
    ‖coreGrowingShiftEndpointTransverseMultiplier j u‖⁻¹ ≤
        (4 * (d : ℝ) / (Q : ℝ))⁻¹ := by
          simpa [one_div] using hrecip
    _ = (Q : ℝ) / (4 * (d : ℝ)) := by
      field_simp [ne_of_gt hQ, ne_of_gt hd]
      ring

/-- Uniform scalar envelope for regular transverse frequencies beyond cutoff
`L`. -/
def coreGrowingShiftEndpointTransverseRegularResolventEnvelope
    (j L : ℕ) : ℝ :=
  (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
    (4 * ((L + 1 : ℕ) : ℝ))

/-- The regular scalar envelope is nonnegative. -/
theorem coreGrowingShiftEndpointTransverseRegularResolventEnvelope_nonneg
    (j L : ℕ) :
    0 ≤ coreGrowingShiftEndpointTransverseRegularResolventEnvelope j L := by
  unfold coreGrowingShiftEndpointTransverseRegularResolventEnvelope
  positivity

/-- Every frequency in the regular set has inverse multiplier bounded by the
cutoff envelope. -/
theorem coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_regularEnvelope
    {j L : ℕ}
    {u : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hu : u ∈ coreGrowingShiftEndpointTransverseRegularFrequencySet j L) :
    ‖(coreGrowingShiftEndpointTransverseMultiplier j u)⁻¹‖ ≤
      coreGrowingShiftEndpointTransverseRegularResolventEnvelope j L := by
  let d := coreGrowingShiftEndpointTransverseCircularDistance j u
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  have hu0 : u ≠ 0 :=
    coreGrowingShiftEndpointTransverseRegularFrequencySet_ne_zero hu
  have hLd : L < d := by
    simpa [d] using
      mem_coreGrowingShiftEndpointTransverseRegularFrequencySet_iff.mp hu
  have hsucc : (L + 1 : ℕ) ≤ d := Nat.succ_le_iff.mpr hLd
  have hsuccReal : ((L + 1 : ℕ) : ℝ) ≤ (d : ℝ) := by
    exact_mod_cast hsucc
  have hden :
      (4 : ℝ) * ((L + 1 : ℕ) : ℝ) ≤ 4 * (d : ℝ) := by
    gcongr
  have hrecip :
      1 / (4 * (d : ℝ)) ≤
        1 / (4 * ((L + 1 : ℕ) : ℝ)) :=
    one_div_le_one_div_of_le (by positivity) hden
  calc
    ‖(coreGrowingShiftEndpointTransverseMultiplier j u)⁻¹‖ ≤
        (Q : ℝ) / (4 * (d : ℝ)) := by
          simpa [d, Q] using
            coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_distance
              hu0
    _ = (Q : ℝ) * (1 / (4 * (d : ℝ))) := by
      rw [div_eq_mul_inv, one_div]
    _ ≤ (Q : ℝ) * (1 / (4 * ((L + 1 : ℕ) : ℝ))) := by
      exact mul_le_mul_of_nonneg_left hrecip (by positivity)
    _ = coreGrowingShiftEndpointTransverseRegularResolventEnvelope j L := by
      unfold coreGrowingShiftEndpointTransverseRegularResolventEnvelope
      rw [div_eq_mul_inv, one_div]

/-- Positive ordinary representatives of length at most `L`, cast into the
doubled transverse group. -/
def coreGrowingShiftEndpointTransversePositiveArcFrequencySet
    (j L : ℕ) :
    Finset (CoreGrowingShiftEndpointDoubledFourierIndex j) :=
  (Finset.Icc 1 L).image fun n =>
    (n : CoreGrowingShiftEndpointDoubledFourierIndex j)

/-- Negative ordinary representatives of length at most `L`, cast into the
doubled transverse group. -/
def coreGrowingShiftEndpointTransverseNegativeArcFrequencySet
    (j L : ℕ) :
    Finset (CoreGrowingShiftEndpointDoubledFourierIndex j) :=
  (Finset.Icc 1 L).image fun n =>
    -(n : CoreGrowingShiftEndpointDoubledFourierIndex j)

/-- Every low transverse frequency lies on one of the two ordinary arcs.  The
arcs may overlap at an antipodal point, so only a containment is asserted. -/
theorem coreGrowingShiftEndpointTransverseLowFrequencySet_subset_arcUnion
    (j L : ℕ) :
    coreGrowingShiftEndpointTransverseLowFrequencySet j L ⊆
      coreGrowingShiftEndpointTransversePositiveArcFrequencySet j L ∪
        coreGrowingShiftEndpointTransverseNegativeArcFrequencySet j L := by
  classical
  intro u hu
  have hu0 : u ≠ 0 :=
    coreGrowingShiftEndpointTransverseLowFrequencySet_ne_zero hu
  have hdL :
      coreGrowingShiftEndpointTransverseCircularDistance j u ≤ L :=
    (mem_coreGrowingShiftEndpointTransverseLowFrequencySet_iff.mp hu).2
  unfold coreGrowingShiftEndpointTransverseCircularDistance at hdL
  by_cases hside : u.val ≤ (-u).val
  · have huvL : u.val ≤ L := by
      simpa [min_eq_left hside] using hdL
    have huv1 : 1 ≤ u.val := by
      exact Nat.one_le_iff_ne_zero.mpr
        ((ZMod.val_eq_zero u).not.mpr hu0)
    apply Finset.mem_union_left
    unfold coreGrowingShiftEndpointTransversePositiveArcFrequencySet
    refine Finset.mem_image.mpr ⟨u.val, ?_, ?_⟩
    · simp [huv1, huvL]
    · exact ZMod.natCast_zmod_val u
  · have hnegside : (-u).val ≤ u.val := Nat.le_of_not_ge hside
    have hnegL : (-u).val ≤ L := by
      simpa [min_eq_right hnegside] using hdL
    have hneg0 : -u ≠ 0 := neg_ne_zero.mpr hu0
    have hneg1 : 1 ≤ (-u).val := by
      exact Nat.one_le_iff_ne_zero.mpr
        ((ZMod.val_eq_zero (-u)).not.mpr hneg0)
    apply Finset.mem_union_right
    unfold coreGrowingShiftEndpointTransverseNegativeArcFrequencySet
    refine Finset.mem_image.mpr ⟨(-u).val, ?_, ?_⟩
    · simp [hneg1, hnegL]
    · rw [ZMod.natCast_zmod_val]
      simp

/-- The positive arc has at most `L` points, even if the cast wraps for a
noncanonical oversized cutoff. -/
theorem coreGrowingShiftEndpointTransversePositiveArcFrequencySet_card_le
    (j L : ℕ) :
    (coreGrowingShiftEndpointTransversePositiveArcFrequencySet j L).card ≤ L := by
  classical
  unfold coreGrowingShiftEndpointTransversePositiveArcFrequencySet
  calc
    ((Finset.Icc 1 L).image fun n =>
        (n : CoreGrowingShiftEndpointDoubledFourierIndex j)).card ≤
        (Finset.Icc 1 L).card := Finset.card_image_le
    _ = L := by
      simp [Finset.card_Icc]

/-- The negative arc has at most `L` points. -/
theorem coreGrowingShiftEndpointTransverseNegativeArcFrequencySet_card_le
    (j L : ℕ) :
    (coreGrowingShiftEndpointTransverseNegativeArcFrequencySet j L).card ≤ L := by
  classical
  unfold coreGrowingShiftEndpointTransverseNegativeArcFrequencySet
  calc
    ((Finset.Icc 1 L).image fun n =>
        -(n : CoreGrowingShiftEndpointDoubledFourierIndex j)).card ≤
        (Finset.Icc 1 L).card := Finset.card_image_le
    _ = L := by
      simp [Finset.card_Icc]

/-- Unconditional low-mode cardinality bound.  No equality is claimed because
positive and negative arcs can overlap. -/
theorem coreGrowingShiftEndpointTransverseLowFrequencySet_card_le_two_mul
    (j L : ℕ) :
    (coreGrowingShiftEndpointTransverseLowFrequencySet j L).card ≤ 2 * L := by
  classical
  have hsubset :=
    coreGrowingShiftEndpointTransverseLowFrequencySet_subset_arcUnion j L
  have hpos :=
    coreGrowingShiftEndpointTransversePositiveArcFrequencySet_card_le j L
  have hneg :=
    coreGrowingShiftEndpointTransverseNegativeArcFrequencySet_card_le j L
  calc
    (coreGrowingShiftEndpointTransverseLowFrequencySet j L).card ≤
        (coreGrowingShiftEndpointTransversePositiveArcFrequencySet j L ∪
          coreGrowingShiftEndpointTransverseNegativeArcFrequencySet j L).card :=
      Finset.card_le_card hsubset
    _ ≤
        (coreGrowingShiftEndpointTransversePositiveArcFrequencySet j L).card +
          (coreGrowingShiftEndpointTransverseNegativeArcFrequencySet j L).card :=
      Finset.card_union_le
    _ ≤ L + L := Nat.add_le_add hpos hneg
    _ = 2 * L := by omega

/-- Canonical low-frequency count at the logarithmic threshold. -/
theorem coreGrowingShiftEndpointCanonicalTransverseLowFrequencySet_card_le
    (j : ℕ) :
    (coreGrowingShiftEndpointTransverseLowFrequencySet j
      (coreGrowingShiftEndpointCanonicalTransverseFrequencyCutoff j)).card ≤
      2 * logarithmicShiftThreshold j := by
  simpa [coreGrowingShiftEndpointCanonicalTransverseFrequencyCutoff] using
    coreGrowingShiftEndpointTransverseLowFrequencySet_card_le_two_mul
      j (logarithmicShiftThreshold j)

/-- Pointwise regular resolved-kernel estimate.  The interior increment and
right-window boundary remain together in the numerator. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2_norm_le_regularEnvelope
    {j L : ℕ}
    {u s : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hu : u ∈ coreGrowingShiftEndpointTransverseRegularFrequencySet j L) :
    ‖coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2 j u s‖ ≤
      coreGrowingShiftEndpointTransverseRegularResolventEnvelope j L *
        ‖coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementDFT2
            j u s +
          coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryDFT2
            j u s‖ := by
  unfold coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2
  rw [norm_mul]
  exact mul_le_mul_of_nonneg_right
    (coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_regularEnvelope
      hu)
    (norm_nonneg _)

/-- Canonical regular resolved-kernel estimate at the logarithmic cutoff. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2_norm_le_canonicalEnvelope
    {j : ℕ}
    {u s : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hu : u ∈ coreGrowingShiftEndpointTransverseRegularFrequencySet j
      (coreGrowingShiftEndpointCanonicalTransverseFrequencyCutoff j)) :
    ‖coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2 j u s‖ ≤
      coreGrowingShiftEndpointTransverseRegularResolventEnvelope j
          (logarithmicShiftThreshold j) *
        ‖coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementDFT2
            j u s +
          coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryDFT2
            j u s‖ := by
  simpa [coreGrowingShiftEndpointCanonicalTransverseFrequencyCutoff] using
    coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2_norm_le_regularEnvelope
      hu

/-- The canonical packet retained after adding geometric bounds.  Its formula
still keeps the signed zero mode, low modes, and regular modes separate. -/
def coreGrowingShiftSignedEndpointTransverseGeometryFourierPacketComplex
    (j : ℕ) : ℂ :=
  coreGrowingShiftSignedEndpointTransverseZeroModeJointFourierPacketComplex j -
    coreGrowingShiftSignedEndpointTransverseLowClippingFourierPacketComplex j
      (coreGrowingShiftEndpointCanonicalTransverseFrequencyCutoff j) -
    coreGrowingShiftSignedEndpointTransverseRegularClippingFourierPacketComplex j
      (coreGrowingShiftEndpointCanonicalTransverseFrequencyCutoff j)

/-- Adding the finite geometric bounds changes no complex endpoint packet. -/
theorem coreGrowingShiftSignedEndpointTransverseGeometryFourierPacketComplex_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointTransverseGeometryFourierPacketComplex j =
      coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacketComplex j := by
  unfold coreGrowingShiftSignedEndpointTransverseGeometryFourierPacketComplex
    coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacketComplex
    coreGrowingShiftSignedEndpointTransverseFrequencySplitAtCutoffFourierPacketComplex
  rfl

/-- The geometry packet remains real only after the complete signed mode
combination. -/
theorem coreGrowingShiftSignedEndpointTransverseGeometryFourierPacketComplex_im
    (j : ℕ) :
    (coreGrowingShiftSignedEndpointTransverseGeometryFourierPacketComplex j).im = 0 := by
  rw [coreGrowingShiftSignedEndpointTransverseGeometryFourierPacketComplex_eq_parent,
    coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacketComplex_im]

/-- Real endpoint packet after adjoining the deterministic transverse geometry
layer. -/
def coreGrowingShiftSignedEndpointTransverseGeometryFourierPacket
    (j : ℕ) : ℝ :=
  (coreGrowingShiftSignedEndpointTransverseGeometryFourierPacketComplex j).re

/-- Exact equality with the parent real transverse-frequency split packet. -/
theorem coreGrowingShiftSignedEndpointTransverseGeometryFourierPacket_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointTransverseGeometryFourierPacket j =
      coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket j := by
  unfold coreGrowingShiftSignedEndpointTransverseGeometryFourierPacket
    coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket
  rw [coreGrowingShiftSignedEndpointTransverseGeometryFourierPacketComplex_eq_parent]

/-- Exact RH-facing return through the geometrically controlled packet. -/
theorem coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointTransverseGeometryFourier
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j =
      2 * coreGrowingShiftSignedEndpointTransverseGeometryFourierPacket j := by
  rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointTransverseFrequencySplitFourier,
    ← coreGrowingShiftSignedEndpointTransverseGeometryFourierPacket_eq_parent]

/-- Source-facing all-scale condition on the unchanged complete signed packet. -/
def SubpolynomialCoreGrowingShiftSignedEndpointTransverseGeometryFourierPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftSignedEndpointTransverseGeometryFourierPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the parent transverse-frequency split source. -/
theorem subpolynomialCoreGrowingShiftSignedEndpointTransverseGeometryFourierPacket_iff_parent :
    SubpolynomialCoreGrowingShiftSignedEndpointTransverseGeometryFourierPacket ↔
      SubpolynomialCoreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket := by
  constructor
  · intro hGeometry δ hδ
    obtain ⟨C, hC, hbound⟩ := hGeometry δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftSignedEndpointTransverseGeometryFourierPacket_eq_parent]
    exact hbound j
  · intro hParent δ hδ
    obtain ⟨C, hC, hbound⟩ := hParent δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftSignedEndpointTransverseGeometryFourierPacket_eq_parent]
    exact hbound j

/-- Conditional RH endpoint stated on the unchanged packet with finite
transverse geometry exposed. -/
theorem riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointTransverseGeometryFourierPacket
    (hGeometry :
      SubpolynomialCoreGrowingShiftSignedEndpointTransverseGeometryFourierPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket
    (subpolynomialCoreGrowingShiftSignedEndpointTransverseGeometryFourierPacket_iff_parent.mp
      hGeometry)

/-- Source profile for a future arithmetic theorem after deterministic
transverse geometry has been discharged. -/
structure SignedEndpointTransverseGeometryFourierSource where
  sourceStatement : Prop
  jordanMultiplierGeometry : Prop
  nonzeroScalarResolventControl : Prop
  lowModeCardinalityControl : Prop
  transversePartitionPreservation : Prop
  directZeroModePreservation : Prop
  lowModeArithmeticControl : Prop
  regularNumeratorControl : Prop
  rightWindowBoundaryPreservation : Prop
  lowAnchorPreservation : Prop
  jointSignedBulkClipCancellation : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

/-- Proof-producing boundary for a future estimate of the complete packet.
The scalar regular envelope and low-mode count are not themselves packet
estimates. -/
structure ToCoreGrowingShiftSignedEndpointTransverseGeometryFourierPacket
    (d : SignedEndpointTransverseGeometryFourierSource) : Type where
  toTransverseGeometry :
    d.sourceStatement →
      d.jordanMultiplierGeometry →
      d.nonzeroScalarResolventControl →
      d.lowModeCardinalityControl →
      d.transversePartitionPreservation →
      d.directZeroModePreservation →
      d.lowModeArithmeticControl →
      d.regularNumeratorControl →
      d.rightWindowBoundaryPreservation →
      d.lowAnchorPreservation →
      d.jointSignedBulkClipCancellation →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftSignedEndpointTransverseGeometryFourierPacket

/-- Generic conditional endpoint through an explicitly constructed transverse
geometry adapter. -/
theorem riemannHypothesis_of_signedEndpointTransverseGeometryFourierAdapter
    (d : SignedEndpointTransverseGeometryFourierSource)
    (bridge : ToCoreGrowingShiftSignedEndpointTransverseGeometryFourierPacket d)
    (hsource : d.sourceStatement)
    (hJordan : d.jordanMultiplierGeometry)
    (hresolvent : d.nonzeroScalarResolventControl)
    (hcard : d.lowModeCardinalityControl)
    (hpartition : d.transversePartitionPreservation)
    (hzero : d.directZeroModePreservation)
    (hlow : d.lowModeArithmeticControl)
    (hregular : d.regularNumeratorControl)
    (hboundary : d.rightWindowBoundaryPreservation)
    (hanchor : d.lowAnchorPreservation)
    (hjoint : d.jointSignedBulkClipCancellation)
    (huniform : d.allScaleUniformity)
    (hsmall : d.finiteSmallScaleControl) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointTransverseGeometryFourierPacket
    (bridge.toTransverseGeometry hsource hJordan hresolvent hcard hpartition
      hzero hlow hregular hboundary hanchor hjoint huniform hsmall)

/-- Hostile control: a two-point support bound alone places no upper bound on a
signed Fourier numerator. -/
theorem transverseGeometry_cardinalityAlone_hostileWitness
    (M : ℝ) :
    (Finset.univ : Finset (Fin 2)).card = 2 ∧
      (∑ _k : Fin 2, M) = 2 * M := by
  constructor
  · simp
  · simp

/-- Hostile control: the direct transverse zero mode remains noninvertible. -/
theorem transverseGeometry_zeroMultiplier_hostileWitness :
    coreGrowingShiftEndpointTransverseMultiplier 0
      (0 : CoreGrowingShiftEndpointDoubledFourierIndex 0) = 0 := by
  simp [coreGrowingShiftEndpointTransverseMultiplier]

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointTransverseMultiplier_norm_lowerBound
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_regularEnvelope
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointTransverseLowFrequencySet_card_le_two_mul
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2_norm_le_regularEnvelope
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedEndpointTransverseGeometryFourierPacketComplex_eq_parent
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointTransverseGeometryFourierPacket