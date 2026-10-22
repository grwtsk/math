/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicTwoBoundary
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- The arithmetic octave L1 error is exactly the cyclic error summed over the
residue subtype whose endpoint-aware representatives lie in (2X,4X]. -/
theorem nonAliasingFejerSharpStepL1Error_eq_cyclicOctaveSubtypeSum
    {X N m : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    nonAliasingFejerSharpStepL1Error X N m =
      ∑ z :
        {z : ZMod (fejerOctavePeriod X) //
          2 * X < octaveRepresentative X z ∧
            octaveRepresentative X z ≤ 4 * X},
        |cyclicSharpPrefixIndicator X m z.1 -
          cyclicFejerSmoothedPrefix X N m z.1| := by
  rcases hreg with ⟨hX, hN, hNL⟩
  unfold nonAliasingFejerSharpStepL1Error
  rw [← Finset.sum_attach]
  let e :=
    cyclicSharpPrefixSubtypeEquivIoc hX
      (show 2 * X ≤ 4 * X by omega)
      (by simp [fejerOctavePeriod])
  exact Fintype.sum_equiv e.symm
    (fun q :
      {q : ℕ // q ∈ Finset.Ioc (2 * X) (4 * X)} =>
      |sharpPrefixWeight X m q.1 -
        nonAliasingFejerPrefixWeight X N m q.1|)
    (fun z :
      {z : ZMod (fejerOctavePeriod X) //
        2 * X < octaveRepresentative X z ∧
          octaveRepresentative X z ≤ 4 * X} =>
      |cyclicSharpPrefixIndicator X m z.1 -
        cyclicFejerSmoothedPrefix X N m z.1|)
    (by
      intro q
      have hq := Finset.mem_Ioc.mp q.2
      have hsharp :=
        cyclicSharpPrefixIndicator_natCast_eq_sharpPrefixWeight
          hX hq.1 (by simpa [fejerOctavePeriod] using hq.2)
      have hsmooth :=
        arithmeticPrefixWeightEqualsCyclicConvolution
          X N m q.1 ⟨hX, hN, hNL⟩ hq.1 hq.2 hm0 hm1
      simp [e, hsharp, hsmooth])

/-- The arithmetic octave L1 error is bounded by the full cyclic L1 error. -/
theorem octaveL1LeCyclicL1 :
    OctaveL1LeCyclicL1Claim := by
  intro harith X N m hreg hm0 hm1
  rw [nonAliasingFejerSharpStepL1Error_eq_cyclicOctaveSubtypeSum
    hreg hm0 hm1]
  unfold cyclicFejerSharpStepL1Error
  let P : ZMod (fejerOctavePeriod X) → Prop :=
    fun z =>
      2 * X < octaveRepresentative X z ∧
        octaveRepresentative X z ≤ 4 * X
  let g : ZMod (fejerOctavePeriod X) → ℝ :=
    fun z =>
      |cyclicSharpPrefixIndicator X m z -
        cyclicFejerSmoothedPrefix X N m z|
  have hsplit :=
    Fintype.sum_subtype_add_sum_subtype P g
  have hcomp :
      0 ≤ ∑ z : {z : ZMod (fejerOctavePeriod X) // ¬ P z}, g z.1 := by
    exact Finset.sum_nonneg fun z hz => abs_nonneg _
  change
    (∑ z : {z : ZMod (fejerOctavePeriod X) // P z}, g z.1) ≤
      ∑ z : ZMod (fejerOctavePeriod X), g z
  linarith

/-- The source-proved arithmetic/cyclic bridge supplies the accepted octave
restriction theorem directly. -/
theorem octaveL1LeCyclicL1_closed :
    ∀ X N m : ℕ,
      NonAliasingFejerCutoffRegime X N →
      2 * X ≤ m → m ≤ 4 * X →
        nonAliasingFejerSharpStepL1Error X N m ≤
          cyclicFejerSharpStepL1Error X N m :=
  octaveL1LeCyclicL1 arithmeticPrefixWeightEqualsCyclicConvolution

end GRWTSK.RiemannHypothesis
