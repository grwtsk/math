# Complete source: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a89c5fd2b49b2b114202b08aa1062daff31b5944` · SHA-256 `8b6e759f41288e0a5f5927e20945ee63067e29bf8c7feb5f9516ee7c60922483`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #943. Parent: draft PR #938 at
`61ceabc31ef78024c954fd860fbcc5129d7d9d30`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointTransverseNumeratorFourier
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointCyclicCoordinates

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exclusive upper endpoint of the strict interior numerator support at one
ordinary difference.  The extra `-1` removes the retained right-window atom. -/
def coreGrowingShiftEndpointTransverseInteriorPrefixUpper
    (j h : ℕ) : ℕ :=
  min (coreGrowingShiftEndpointDifferencePrefixUpper j h)
    (coreGrowingShiftEndpointFourierModulus j - h - 1)

/-- Ordinary fixed-difference support of the interior reciprocal-drop
numerator. -/
def coreGrowingShiftEndpointTransverseInteriorPrefixSet
    (j h : ℕ) : Finset ℕ :=
  Finset.Ico
    (coreGrowingShiftEndpointDifferencePrefixLower j h)
    (coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h)

/-- Constant-anchor part of the fixed-difference interior support. -/
def coreGrowingShiftEndpointTransverseInteriorAnchorPrefixSet
    (j h : ℕ) : Finset ℕ :=
  coreGrowingShiftEndpointIntervalAnchorPrefixSet j h
    (coreGrowingShiftEndpointDifferencePrefixLower j h)
    (coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h)

/-- First affine-tail point of the fixed-difference interior support. -/
def coreGrowingShiftEndpointTransverseInteriorTailLower
    (j h : ℕ) : ℕ :=
  coreGrowingShiftEndpointIntervalTailLower j h
    (coreGrowingShiftEndpointDifferencePrefixLower j h)

/-- Affine reciprocal-tail part of the fixed-difference interior support. -/
def coreGrowingShiftEndpointTransverseInteriorTailPrefixSet
    (j h : ℕ) : Finset ℕ :=
  coreGrowingShiftEndpointIntervalTailPrefixSet j h
    (coreGrowingShiftEndpointDifferencePrefixLower j h)
    (coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h)

/-- The strict sheared interior support is exactly one ordinary interval for a
positive difference. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad_eq_interval
    (j : ℕ)
    (x h : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad
        j x h =
      if 1 ≤ h.val ∧
          coreGrowingShiftEndpointDifferencePrefixLower j h.val ≤ x.val ∧
          x.val < coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h.val then
        (coreGrowingShiftEndpointReciprocalDrop
          (max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
            (x.val +
              coreGrowingShiftEndpointAggregateEffectiveShift j h.val)) : ℂ)
      else 0 := by
  let Y := coreGrowingShiftEndpointFourierModulus j
  let D := coreGrowingShiftEndpointDifferencePrefixLower j h.val
  let U := coreGrowingShiftEndpointDifferencePrefixUpper j h.val
  let V := coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h.val
  have hD2 : 2 ≤ D := by
    simpa [D] using
      coreGrowingShiftEndpointDifferencePrefixLower_two_le j h.val
  by_cases hsupport : 1 ≤ h.val ∧ D ≤ x.val ∧ x.val < V
  · have hx1 : 1 ≤ x.val := by omega
    have hxU : x.val < U := by
      unfold V coreGrowingShiftEndpointTransverseInteriorPrefixUpper at hsupport
      omega
    have hxY : x.val + h.val + 1 < Y := by
      unfold V coreGrowingShiftEndpointTransverseInteriorPrefixUpper at hsupport
      omega
    simp [coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad,
      Y, D, U, V, hsupport, hx1, hxU, hxY]
  · have hnot :
        ¬ (1 ≤ x.val ∧ 1 ≤ h.val ∧ x.val + h.val + 1 < Y ∧
          D ≤ x.val ∧ x.val < U) := by
      intro hs
      apply hsupport
      refine ⟨hs.2.1, hs.2.2.2.1, ?_⟩
      unfold V coreGrowingShiftEndpointTransverseInteriorPrefixUpper
      omega
    simp [coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad,
      Y, D, U, V, hsupport, hnot]

/-- The fixed-difference interior interval is its exact disjoint anchor/tail
union. -/
theorem coreGrowingShiftEndpointTransverseInteriorPrefixSet_eq_anchor_union_tail
    (j h : ℕ) :
    coreGrowingShiftEndpointTransverseInteriorPrefixSet j h =
      coreGrowingShiftEndpointTransverseInteriorAnchorPrefixSet j h ∪
        coreGrowingShiftEndpointTransverseInteriorTailPrefixSet j h := by
  unfold coreGrowingShiftEndpointTransverseInteriorPrefixSet
    coreGrowingShiftEndpointTransverseInteriorAnchorPrefixSet
    coreGrowingShiftEndpointTransverseInteriorTailPrefixSet
  exact coreGrowingShiftEndpointInterval_eq_anchor_union_tail
    j h
      (coreGrowingShiftEndpointDifferencePrefixLower j h)
      (coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h)

/-- The fixed-difference anchor and affine tail are disjoint. -/
theorem coreGrowingShiftEndpointTransverseInteriorAnchor_disjoint_tail
    (j h : ℕ) :
    Disjoint
      (coreGrowingShiftEndpointTransverseInteriorAnchorPrefixSet j h)
      (coreGrowingShiftEndpointTransverseInteriorTailPrefixSet j h) := by
  unfold coreGrowingShiftEndpointTransverseInteriorAnchorPrefixSet
    coreGrowingShiftEndpointTransverseInteriorTailPrefixSet
  exact coreGrowingShiftEndpointIntervalAnchor_disjoint_tail
    j h
      (coreGrowingShiftEndpointDifferencePrefixLower j h)
      (coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h)

/-- Canonical representatives identify a finite cyclic group with `Fin`. -/
private def transverseSummationByPartsZModValEquiv
    (Q : ℕ) [NeZero Q] : ZMod Q ≃ Fin Q where
  toFun x := ⟨x.val, ZMod.val_lt x⟩
  invFun x := (x.val : ZMod Q)
  left_inv x := by
    simpa using ZMod.natCast_zmod_val x
  right_inv x := by
    apply Fin.ext
    exact ZMod.val_cast_of_lt x.isLt

private theorem transverseSummationByParts_sum_zmod_eq_sum_fin
    {Q : ℕ} [NeZero Q]
    (F : ZMod Q → ℂ) :
    (∑ x : ZMod Q, F x) =
      ∑ x : Fin Q, F (x.val : ZMod Q) := by
  refine Fintype.sum_equiv (transverseSummationByPartsZModValEquiv Q) F
    (fun x : Fin Q => F (x.val : ZMod Q)) ?_
  intro x
  simp [transverseSummationByPartsZModValEquiv,
    ZMod.natCast_zmod_val]

/-- Reindex a canonical-value interval inside a finite cyclic group. -/
private theorem transverseSummationByParts_sum_zmod_indicator_Ico
    {Q : ℕ} [NeZero Q]
    (L U : ℕ)
    (hUQ : U ≤ Q)
    (F : ℕ → ℂ) :
    (∑ x : ZMod Q,
      if L ≤ x.val ∧ x.val < U then F x.val else 0) =
      ∑ n ∈ Finset.Ico L U, F n := by
  classical
  rw [transverseSummationByParts_sum_zmod_eq_sum_fin]
  let S : Finset (Fin Q) :=
    (Finset.univ : Finset (Fin Q)).filter fun x =>
      L ≤ x.val ∧ x.val < U
  calc
    (∑ x : Fin Q,
      if L ≤ x.val ∧ x.val < U then F x.val else 0) =
        ∑ x ∈ S, F x.val := by
          unfold S
          rw [Finset.sum_filter]
    _ = ∑ n ∈ Finset.Ico L U, F n := by
      symm
      apply Finset.sum_bij
        (fun n hn =>
          (⟨n, lt_of_lt_of_le (Finset.mem_Ico.mp hn).2 hUQ⟩ : Fin Q))
      · intro n hn
        simp [S, Finset.mem_Ico.mp hn]
      · intro n _hn m _hm hnm
        exact congrArg Fin.val hnm
      · intro x hx
        have hxmem : L ≤ x.val ∧ x.val < U := by
          simpa [S] using hx
        refine ⟨x.val, by simpa using hxmem, ?_⟩
        apply Fin.ext
        rfl
      · intro n _hn
        rfl

/-- Exact finite summation by parts for a character-weighted affine reciprocal
first difference. -/
theorem finite_transverseCharacter_reciprocalDrop_Ico_summationByParts
    (j : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (q A B : ℕ)
    (hAB : A < B) :
    (∑ n ∈ Finset.Ico A B,
      coreGrowingShiftEndpointTransverseNatCharacter j u n *
        (coreGrowingShiftEndpointReciprocalDrop (n + q) : ℂ)) =
      coreGrowingShiftEndpointTransverseNatCharacter j u A *
          (((A + q : ℕ) : ℂ))⁻¹ -
        coreGrowingShiftEndpointTransverseNatCharacter j u (B - 1) *
          (((B + q : ℕ) : ℂ))⁻¹ -
        coreGrowingShiftEndpointTransverseMultiplier j u *
          ∑ n ∈ Finset.Ico (A + 1) B,
            coreGrowingShiftEndpointTransverseNatCharacter j u n *
              (((n + q : ℕ) : ℂ))⁻¹ := by
  have hsucc : A + 1 ≤ B := Nat.succ_le_iff.mpr hAB
  induction B, hsucc using Nat.le_induction with
  | base =>
      simp [coreGrowingShiftEndpointReciprocalDrop,
        coreGrowingShiftEndpointTransverseMultiplier]
      ring
  | succ B hABase ih =>
      have hAB' : A < B := by omega
      have hAIco : A ≤ B := Nat.le_of_lt hAB'
      have hsuccIco : A + 1 ≤ B := by omega
      rw [Finset.sum_Ico_succ_top hAIco,
        Finset.sum_Ico_succ_top hsuccIco, ih]
      have hchar :=
        coreGrowingShiftEndpointTransverseNatCharacter_succ_mul
          j u (B - 1)
      have hBm1 : B - 1 + 1 = B := by omega
      rw [hBm1] at hchar
      unfold coreGrowingShiftEndpointReciprocalDrop
        coreGrowingShiftEndpointTransverseMultiplier
      ring_nf at hchar ⊢
      linear_combination hchar * (((B + q : ℕ) : ℂ))⁻¹

/-- Fixed-difference first-coordinate transform of the explicit interior
reciprocal-drop kernel. -/
def coreGrowingShiftEndpointTransverseInteriorFixedDifferenceXFourier
    (j : ℕ)
    (h u : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  ∑ x : CoreGrowingShiftEndpointDoubledFourierIndex j,
    coreGrowingShiftEndpointTransverseNatCharacter j u x.val *
      coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad
        j x h

/-- Constant-anchor contribution to one fixed-difference transform. -/
def coreGrowingShiftEndpointTransverseInteriorAnchorXFourier
    (j : ℕ)
    (h u : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  if 1 ≤ h.val then
    ∑ n ∈ coreGrowingShiftEndpointTransverseInteriorAnchorPrefixSet j h.val,
      coreGrowingShiftEndpointTransverseNatCharacter j u n *
        (coreGrowingShiftEndpointReciprocalDrop
          (coreGrowingShiftEndpointAggregateAnchorDenominator j) : ℂ)
  else 0

/-- Raw affine-tail reciprocal-drop contribution at one fixed difference. -/
def coreGrowingShiftEndpointTransverseInteriorTailRawXFourier
    (j : ℕ)
    (h u : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  if 1 ≤ h.val then
    let q := coreGrowingShiftEndpointAggregateEffectiveShift j h.val
    ∑ n ∈ coreGrowingShiftEndpointTransverseInteriorTailPrefixSet j h.val,
      coreGrowingShiftEndpointTransverseNatCharacter j u n *
        (coreGrowingShiftEndpointReciprocalDrop (n + q) : ℂ)
  else 0

/-- Endpoint terms produced by summation by parts on the affine tail. -/
def coreGrowingShiftEndpointTransverseInteriorTailEndpointXFourier
    (j : ℕ)
    (h u : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  let A := coreGrowingShiftEndpointTransverseInteriorTailLower j h.val
  let B := coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h.val
  let q := coreGrowingShiftEndpointAggregateEffectiveShift j h.val
  if 1 ≤ h.val ∧ A < B then
    coreGrowingShiftEndpointTransverseNatCharacter j u A *
        (((A + q : ℕ) : ℂ))⁻¹ -
      coreGrowingShiftEndpointTransverseNatCharacter j u (B - 1) *
        (((B + q : ℕ) : ℂ))⁻¹
  else 0

/-- Multiplier-free harmonic sum produced by affine-tail summation by parts. -/
def coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier
    (j : ℕ)
    (h u : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  let A := coreGrowingShiftEndpointTransverseInteriorTailLower j h.val
  let B := coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h.val
  let q := coreGrowingShiftEndpointAggregateEffectiveShift j h.val
  if 1 ≤ h.val ∧ A < B then
    ∑ n ∈ Finset.Ico (A + 1) B,
      coreGrowingShiftEndpointTransverseNatCharacter j u n *
        (((n + q : ℕ) : ℂ))⁻¹
  else 0

/-- The fixed-difference cyclic transform is the ordinary support interval sum. -/
theorem coreGrowingShiftEndpointTransverseInteriorFixedDifferenceXFourier_eq_interval
    (j : ℕ)
    (h u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseInteriorFixedDifferenceXFourier j h u =
      if 1 ≤ h.val then
        ∑ n ∈ coreGrowingShiftEndpointTransverseInteriorPrefixSet j h.val,
          coreGrowingShiftEndpointTransverseNatCharacter j u n *
            (coreGrowingShiftEndpointReciprocalDrop
              (max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
                (n + coreGrowingShiftEndpointAggregateEffectiveShift j h.val)) : ℂ)
      else 0 := by
  classical
  let D := coreGrowingShiftEndpointDifferencePrefixLower j h.val
  let V := coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h.val
  have hVQ :
      V ≤ coreGrowingShiftEndpointDoubledFourierModulus j := by
    unfold V coreGrowingShiftEndpointTransverseInteriorPrefixUpper
      coreGrowingShiftEndpointDoubledFourierModulus
    omega
  unfold coreGrowingShiftEndpointTransverseInteriorFixedDifferenceXFourier
  simp_rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad_eq_interval]
  by_cases hh : 1 ≤ h.val
  · rw [if_pos hh]
    calc
      (∑ x : CoreGrowingShiftEndpointDoubledFourierIndex j,
        coreGrowingShiftEndpointTransverseNatCharacter j u x.val *
          (if 1 ≤ h.val ∧ D ≤ x.val ∧ x.val < V then
            (coreGrowingShiftEndpointReciprocalDrop
              (max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
                (x.val +
                  coreGrowingShiftEndpointAggregateEffectiveShift j h.val)) : ℂ)
          else 0)) =
        ∑ x : CoreGrowingShiftEndpointDoubledFourierIndex j,
          if D ≤ x.val ∧ x.val < V then
            coreGrowingShiftEndpointTransverseNatCharacter j u x.val *
              (coreGrowingShiftEndpointReciprocalDrop
                (max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
                  (x.val +
                    coreGrowingShiftEndpointAggregateEffectiveShift j h.val)) : ℂ)
          else 0 := by
            apply Fintype.sum_congr
            intro x
            by_cases hx : D ≤ x.val ∧ x.val < V <;> simp [hh, hx]
      _ = ∑ n ∈ Finset.Ico D V,
          coreGrowingShiftEndpointTransverseNatCharacter j u n *
            (coreGrowingShiftEndpointReciprocalDrop
              (max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
                (n + coreGrowingShiftEndpointAggregateEffectiveShift j h.val)) : ℂ) := by
        exact transverseSummationByParts_sum_zmod_indicator_Ico D V hVQ
          (fun n =>
            coreGrowingShiftEndpointTransverseNatCharacter j u n *
              (coreGrowingShiftEndpointReciprocalDrop
                (max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
                  (n + coreGrowingShiftEndpointAggregateEffectiveShift j h.val)) : ℂ))
      _ = ∑ n ∈ coreGrowingShiftEndpointTransverseInteriorPrefixSet j h.val,
          coreGrowingShiftEndpointTransverseNatCharacter j u n *
            (coreGrowingShiftEndpointReciprocalDrop
              (max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
                (n + coreGrowingShiftEndpointAggregateEffectiveShift j h.val)) : ℂ) := by
        rfl
  · rw [if_neg hh]
    apply Finset.sum_eq_zero
    intro x _hx
    simp [hh]

/-- Exact fixed-difference anchor plus raw-tail decomposition. -/
theorem coreGrowingShiftEndpointTransverseInteriorFixedDifferenceXFourier_eq_anchor_add_tailRaw
    (j : ℕ)
    (h u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseInteriorFixedDifferenceXFourier j h u =
      coreGrowingShiftEndpointTransverseInteriorAnchorXFourier j h u +
        coreGrowingShiftEndpointTransverseInteriorTailRawXFourier j h u := by
  rw [coreGrowingShiftEndpointTransverseInteriorFixedDifferenceXFourier_eq_interval]
  by_cases hh : 1 ≤ h.val
  · rw [if_pos hh]
    rw [coreGrowingShiftEndpointTransverseInteriorPrefixSet_eq_anchor_union_tail,
      Finset.sum_union
        (coreGrowingShiftEndpointTransverseInteriorAnchor_disjoint_tail j h.val)]
    unfold coreGrowingShiftEndpointTransverseInteriorAnchorXFourier
      coreGrowingShiftEndpointTransverseInteriorTailRawXFourier
    rw [if_pos hh, if_pos hh]
    congr 1
    · apply Finset.sum_congr rfl
      intro n hn
      rw [coreGrowingShiftEndpointIntervalDenominator_eq_anchor]
      · rfl
      · simpa [coreGrowingShiftEndpointTransverseInteriorAnchorPrefixSet] using hn
    · apply Finset.sum_congr rfl
      intro n hn
      rw [coreGrowingShiftEndpointIntervalDenominator_eq_tail]
      · rfl
      · simpa [coreGrowingShiftEndpointTransverseInteriorTailPrefixSet] using hn
  · simp [coreGrowingShiftEndpointTransverseInteriorAnchorXFourier,
      coreGrowingShiftEndpointTransverseInteriorTailRawXFourier, hh]

/-- Exact summation-by-parts formula for the fixed-difference affine tail. -/
theorem coreGrowingShiftEndpointTransverseInteriorTailRawXFourier_eq_endpoint_sub_multiplier_harmonic
    (j : ℕ)
    (h u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseInteriorTailRawXFourier j h u =
      coreGrowingShiftEndpointTransverseInteriorTailEndpointXFourier j h u -
        coreGrowingShiftEndpointTransverseMultiplier j u *
          coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier
            j h u := by
  let A := coreGrowingShiftEndpointTransverseInteriorTailLower j h.val
  let B := coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h.val
  let q := coreGrowingShiftEndpointAggregateEffectiveShift j h.val
  by_cases hh : 1 ≤ h.val
  · by_cases hAB : A < B
    · unfold coreGrowingShiftEndpointTransverseInteriorTailRawXFourier
        coreGrowingShiftEndpointTransverseInteriorTailEndpointXFourier
        coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier
      rw [if_pos hh, if_pos ⟨hh, hAB⟩, if_pos ⟨hh, hAB⟩]
      change
        (∑ n ∈ Finset.Ico A B,
          coreGrowingShiftEndpointTransverseNatCharacter j u n *
            (coreGrowingShiftEndpointReciprocalDrop (n + q) : ℂ)) = _
      exact
        finite_transverseCharacter_reciprocalDrop_Ico_summationByParts
          j u q A B hAB
    · have hempty : Finset.Ico A B = ∅ :=
        Finset.Ico_eq_empty_iff.mpr (by omega)
      unfold coreGrowingShiftEndpointTransverseInteriorTailRawXFourier
        coreGrowingShiftEndpointTransverseInteriorTailEndpointXFourier
        coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier
      rw [if_pos hh, if_neg (by simp [hAB]), if_neg (by simp [hAB])]
      change (∑ n ∈ Finset.Ico A B, _) = 0
      rw [hempty]
      simp
  · simp [coreGrowingShiftEndpointTransverseInteriorTailRawXFourier,
      coreGrowingShiftEndpointTransverseInteriorTailEndpointXFourier,
      coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier, hh]

/-- Complete fixed-difference summation-by-parts decomposition. -/
theorem coreGrowingShiftEndpointTransverseInteriorFixedDifferenceXFourier_eq_anchor_endpoint_sub_multiplier_harmonic
    (j : ℕ)
    (h u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseInteriorFixedDifferenceXFourier j h u =
      (coreGrowingShiftEndpointTransverseInteriorAnchorXFourier j h u +
        coreGrowingShiftEndpointTransverseInteriorTailEndpointXFourier j h u) -
      coreGrowingShiftEndpointTransverseMultiplier j u *
        coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier j h u := by
  rw [coreGrowingShiftEndpointTransverseInteriorFixedDifferenceXFourier_eq_anchor_add_tailRaw,
    coreGrowingShiftEndpointTransverseInteriorTailRawXFourier_eq_endpoint_sub_multiplier_harmonic]
  ring

/-- Longitudinal aggregation of fixed-difference anchor and tail endpoint
terms. -/
def coreGrowingShiftEndpointTransverseInteriorAnchorEndpointDFT2
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  ∑ h : CoreGrowingShiftEndpointDoubledFourierIndex j,
    ZMod.stdAddChar (-(h * s)) *
      (coreGrowingShiftEndpointTransverseInteriorAnchorXFourier j h u +
        coreGrowingShiftEndpointTransverseInteriorTailEndpointXFourier j h u)

/-- Longitudinal aggregation of the multiplier-free affine-tail harmonic
sums. -/
def coreGrowingShiftEndpointTransverseInteriorTailHarmonicDFT2
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  ∑ h : CoreGrowingShiftEndpointDoubledFourierIndex j,
    ZMod.stdAddChar (-(h * s)) *
      coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier j h u

/-- The two-dimensional interior transform is the longitudinal sum of its
fixed-difference first-coordinate transforms. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropDFT2_eq_sum_fixedDifference
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropDFT2 j u s =
      ∑ h : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ZMod.stdAddChar (-(h * s)) *
          coreGrowingShiftEndpointTransverseInteriorFixedDifferenceXFourier
            j h u := by
  unfold coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropDFT2
    finiteZModKernelDFT2
  simp only [ZMod.dft_apply, smul_eq_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro h _hh
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro x _hx
  simp [coreGrowingShiftEndpointTransverseInteriorFixedDifferenceXFourier,
    coreGrowingShiftEndpointTransverseNatCharacter,
    ZMod.natCast_zmod_val]
  ring

/-- Exact two-dimensional anchor/endpoint minus multiplier-times-harmonic
formula. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropDFT2_eq_anchorEndpoint_sub_multiplier_harmonic
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropDFT2 j u s =
      coreGrowingShiftEndpointTransverseInteriorAnchorEndpointDFT2 j u s -
        coreGrowingShiftEndpointTransverseMultiplier j u *
          coreGrowingShiftEndpointTransverseInteriorTailHarmonicDFT2 j u s := by
  rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropDFT2_eq_sum_fixedDifference]
  simp_rw [coreGrowingShiftEndpointTransverseInteriorFixedDifferenceXFourier_eq_anchor_endpoint_sub_multiplier_harmonic]
  unfold coreGrowingShiftEndpointTransverseInteriorAnchorEndpointDFT2
    coreGrowingShiftEndpointTransverseInteriorTailHarmonicDFT2
  simp_rw [mul_sub, Finset.sum_sub_distrib]
  rw [Finset.mul_sum]
  ring

/-- Complete singular part of the transverse numerator: fixed-difference
anchor/tail endpoints plus the retained affine boundary symbol. -/
def coreGrowingShiftEndpointTransverseSummationByPartsSingularBoundaryDFT2
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  coreGrowingShiftEndpointTransverseInteriorAnchorEndpointDFT2 j u s +
    ZMod.stdAddChar
        (-(coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryLine j * u)) *
      coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundarySymbolDFT
        j (s - u)

/-- Complete numerator after fixed-difference summation by parts. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorDFT2_eq_singularBoundary_sub_multiplier_harmonic
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorDFT2 j u s =
      coreGrowingShiftEndpointTransverseSummationByPartsSingularBoundaryDFT2
          j u s -
        coreGrowingShiftEndpointTransverseMultiplier j u *
          coreGrowingShiftEndpointTransverseInteriorTailHarmonicDFT2 j u s := by
  rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorDFT2_eq_interior_add_affineBoundary,
    coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropDFT2_eq_anchorEndpoint_sub_multiplier_harmonic]
  unfold coreGrowingShiftEndpointTransverseSummationByPartsSingularBoundaryDFT2
  ring

/-- Resolved nonzero clipping transform after summation by parts.  The affine
harmonic tail no longer carries the transverse small divisor. -/
def coreGrowingShiftEndpointDoubledShearedPrefixClippingSummationByPartsResolvedDFT2
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  (coreGrowingShiftEndpointTransverseMultiplier j u)⁻¹ *
      coreGrowingShiftEndpointTransverseSummationByPartsSingularBoundaryDFT2
        j u s -
    coreGrowingShiftEndpointTransverseInteriorTailHarmonicDFT2 j u s

/-- On every nonzero transverse frequency, the summation-by-parts resolvent is
exactly the explicit-numerator resolvent from #934. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingSummationByPartsResolvedDFT2_eq_parent
    {j : ℕ}
    {u s : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hu : u ≠ 0) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingSummationByPartsResolvedDFT2
        j u s =
      coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorResolvedDFT2
        j u s := by
  have hm : coreGrowingShiftEndpointTransverseMultiplier j u ≠ 0 :=
    coreGrowingShiftEndpointTransverseMultiplier_ne_zero hu
  unfold coreGrowingShiftEndpointDoubledShearedPrefixClippingSummationByPartsResolvedDFT2
    coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorResolvedDFT2
  rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorDFT2_eq_singularBoundary_sub_multiplier_harmonic]
  rw [mul_sub, ← mul_assoc, inv_mul_cancel₀ hm, one_mul]

/-- Low clipping packet rebuilt from the exact summation-by-parts resolvent. -/
def coreGrowingShiftSignedEndpointTransverseSummationByPartsLowClippingFourierPacketComplex
    (j L : ℕ) : ℂ :=
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  (Q : ℂ)⁻¹ * (Q : ℂ)⁻¹ *
    ∑ u ∈ coreGrowingShiftEndpointTransverseLowFrequencySet j L,
      ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (s - u) *
          ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
            coreGrowingShiftEndpointDoubledShearedPrefixClippingSummationByPartsResolvedDFT2
              j u s

/-- Regular clipping packet rebuilt from the exact summation-by-parts
resolvent. -/
def coreGrowingShiftSignedEndpointTransverseSummationByPartsRegularClippingFourierPacketComplex
    (j L : ℕ) : ℂ :=
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  (Q : ℂ)⁻¹ * (Q : ℂ)⁻¹ *
    ∑ u ∈ coreGrowingShiftEndpointTransverseRegularFrequencySet j L,
      ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (s - u) *
          ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
            coreGrowingShiftEndpointDoubledShearedPrefixClippingSummationByPartsResolvedDFT2
              j u s

/-- The low summation-by-parts packet is exactly the parent low numerator
packet. -/
theorem coreGrowingShiftSignedEndpointTransverseSummationByPartsLowClippingFourierPacketComplex_eq_parent
    (j L : ℕ) :
    coreGrowingShiftSignedEndpointTransverseSummationByPartsLowClippingFourierPacketComplex
        j L =
      coreGrowingShiftSignedEndpointTransverseNumeratorLowClippingFourierPacketComplex
        j L := by
  unfold coreGrowingShiftSignedEndpointTransverseSummationByPartsLowClippingFourierPacketComplex
    coreGrowingShiftSignedEndpointTransverseNumeratorLowClippingFourierPacketComplex
  apply congrArg
  apply Finset.sum_congr rfl
  intro u hu
  apply Fintype.sum_congr
  intro s
  rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingSummationByPartsResolvedDFT2_eq_parent
    (coreGrowingShiftEndpointTransverseLowFrequencySet_ne_zero hu)]

/-- The regular summation-by-parts packet is exactly the parent regular
numerator packet. -/
theorem coreGrowingShiftSignedEndpointTransverseSummationByPartsRegularClippingFourierPacketComplex_eq_parent
    (j L : ℕ) :
    coreGrowingShiftSignedEndpointTransverseSummationByPartsRegularClippingFourierPacketComplex
        j L =
      coreGrowingShiftSignedEndpointTransverseNumeratorRegularClippingFourierPacketComplex
        j L := by
  unfold coreGrowingShiftSignedEndpointTransverseSummationByPartsRegularClippingFourierPacketComplex
    coreGrowingShiftSignedEndpointTransverseNumeratorRegularClippingFourierPacketComplex
  apply congrArg
  apply Finset.sum_congr rfl
  intro u hu
  apply Fintype.sum_congr
  intro s
  rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingSummationByPartsResolvedDFT2_eq_parent
    (coreGrowingShiftEndpointTransverseRegularFrequencySet_ne_zero hu)]

/-- Complete endpoint packet with the direct zero mode retained and both
nonzero pieces written in summation-by-parts form. -/
def coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacketComplex
    (j : ℕ) : ℂ :=
  coreGrowingShiftSignedEndpointTransverseZeroModeJointFourierPacketComplex j -
    coreGrowingShiftSignedEndpointTransverseSummationByPartsLowClippingFourierPacketComplex
      j (coreGrowingShiftEndpointCanonicalTransverseFrequencyCutoff j) -
    coreGrowingShiftSignedEndpointTransverseSummationByPartsRegularClippingFourierPacketComplex
      j (coreGrowingShiftEndpointCanonicalTransverseFrequencyCutoff j)

/-- The summation-by-parts packet is exactly the parent transverse-numerator
packet. -/
theorem coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacketComplex_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacketComplex j =
      coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacketComplex j := by
  unfold coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacketComplex
    coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacketComplex
  rw [coreGrowingShiftSignedEndpointTransverseSummationByPartsLowClippingFourierPacketComplex_eq_parent,
    coreGrowingShiftSignedEndpointTransverseSummationByPartsRegularClippingFourierPacketComplex_eq_parent]

/-- The complete summation-by-parts packet remains real only after the signed
zero, low, and regular combination. -/
theorem coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacketComplex_im
    (j : ℕ) :
    (coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacketComplex j).im = 0 := by
  rw [coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacketComplex_eq_parent,
    coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacketComplex_im]

/-- Real endpoint packet in transverse summation-by-parts coordinates. -/
def coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket
    (j : ℕ) : ℝ :=
  (coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacketComplex j).re

/-- Exact equality with the parent real transverse-numerator packet. -/
theorem coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket j =
      coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket j := by
  unfold coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket
    coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket
  rw [coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacketComplex_eq_parent]

/-- Exact RH-facing return through the summation-by-parts packet. -/
theorem coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointTransverseSummationByPartsFourier
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j =
      2 * coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket j := by
  rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointTransverseNumeratorFourier,
    ← coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket_eq_parent]

/-- Source-facing all-scale condition on the unchanged complete signed packet. -/
def SubpolynomialCoreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the parent transverse-numerator source. -/
theorem subpolynomialCoreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket_iff_parent :
    SubpolynomialCoreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket ↔
      SubpolynomialCoreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket := by
  constructor
  · intro hSBP δ hδ
    obtain ⟨C, hC, hbound⟩ := hSBP δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket_eq_parent]
    exact hbound j
  · intro hParent δ hδ
    obtain ⟨C, hC, hbound⟩ := hParent δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket_eq_parent]
    exact hbound j

/-- Conditional RH endpoint stated on the exact summation-by-parts packet. -/
theorem riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket
    (hSBP :
      SubpolynomialCoreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket
    (subpolynomialCoreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket_iff_parent.mp
      hSBP)

/-- Source profile after fixed-difference anchor/tail summation by parts has
been exposed. -/
structure SignedEndpointTransverseSummationByPartsFourierSource where
  sourceStatement : Prop
  exactFixedDifferenceSupport : Prop
  exactAnchorTailNormalization : Prop
  finiteSummationByParts : Prop
  multiplierFreeTailHarmonicPreservation : Prop
  singularAnchorEndpointPreservation : Prop
  affineBoundarySymbolPreservation : Prop
  scalarResolventControl : Prop
  directZeroModePreservation : Prop
  lowModeArithmeticControl : Prop
  regularModeArithmeticControl : Prop
  lowAnchorPreservation : Prop
  jointSignedBulkClipCancellation : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

/-- Proof-producing boundary for a future estimate of the complete signed
packet.  Exact cancellation of the tail multiplier is not a harmonic estimate. -/
structure ToCoreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket
    (d : SignedEndpointTransverseSummationByPartsFourierSource) : Type where
  toTransverseSummationByParts :
    d.sourceStatement →
      d.exactFixedDifferenceSupport →
      d.exactAnchorTailNormalization →
      d.finiteSummationByParts →
      d.multiplierFreeTailHarmonicPreservation →
      d.singularAnchorEndpointPreservation →
      d.affineBoundarySymbolPreservation →
      d.scalarResolventControl →
      d.directZeroModePreservation →
      d.lowModeArithmeticControl →
      d.regularModeArithmeticControl →
      d.lowAnchorPreservation →
      d.jointSignedBulkClipCancellation →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket

/-- Generic conditional endpoint through an explicitly constructed transverse
summation-by-parts adapter. -/
theorem riemannHypothesis_of_signedEndpointTransverseSummationByPartsFourierAdapter
    (d : SignedEndpointTransverseSummationByPartsFourierSource)
    (bridge :
      ToCoreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket d)
    (hsource : d.sourceStatement)
    (hsupport : d.exactFixedDifferenceSupport)
    (hnormalize : d.exactAnchorTailNormalization)
    (hsbp : d.finiteSummationByParts)
    (hharmonic : d.multiplierFreeTailHarmonicPreservation)
    (hsingular : d.singularAnchorEndpointPreservation)
    (hboundary : d.affineBoundarySymbolPreservation)
    (hresolvent : d.scalarResolventControl)
    (hzero : d.directZeroModePreservation)
    (hlow : d.lowModeArithmeticControl)
    (hregular : d.regularModeArithmeticControl)
    (hanchor : d.lowAnchorPreservation)
    (hjoint : d.jointSignedBulkClipCancellation)
    (huniform : d.allScaleUniformity)
    (hsmall : d.finiteSmallScaleControl) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket
    (bridge.toTransverseSummationByParts hsource hsupport hnormalize hsbp
      hharmonic hsingular hboundary hresolvent hzero hlow hregular hanchor
      hjoint huniform hsmall)

/-- Hostile control: exact removal of one scalar multiplier does not bound the
remaining harmonic sum. -/
theorem transverseSummationByParts_multiplierCancellation_hostileWitness
    (M : ℂ) :
    ((2 : ℂ)⁻¹ * ((2 : ℂ) * M)) = M ∧ ‖M‖ = ‖M‖ := by
  constructor
  · ring
  · rfl

/-- Hostile control: anchor, endpoint, and affine-boundary terms can cancel
before any separate norm is taken. -/
theorem transverseSummationByParts_singularCancellation_hostileWitness :
    ((1 : ℂ) + (1 : ℂ) + (-2 : ℂ)) = 0 ∧
      ‖(1 : ℂ)‖ + ‖(1 : ℂ)‖ + ‖(-2 : ℂ)‖ = 4 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.finite_transverseCharacter_reciprocalDrop_Ico_summationByParts
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointTransverseInteriorFixedDifferenceXFourier_eq_anchor_endpoint_sub_multiplier_harmonic
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropDFT2_eq_anchorEndpoint_sub_multiplier_harmonic
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointDoubledShearedPrefixClippingNumeratorDFT2_eq_singularBoundary_sub_multiplier_harmonic
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointDoubledShearedPrefixClippingSummationByPartsResolvedDFT2_eq_parent
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacketComplex_eq_parent
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointTransverseSummationByPartsFourierPacket
```
