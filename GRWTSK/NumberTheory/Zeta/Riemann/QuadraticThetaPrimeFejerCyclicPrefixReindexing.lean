/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicKernelDifference
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Casting the endpoint-aware representative of any cyclic residue back into
ZMod(4X) recovers the original residue. -/
theorem natCast_octaveRepresentative
    {X : ℕ}
    (hX : 0 < X)
    (z : ZMod (fejerOctavePeriod X)) :
    (octaveRepresentative X z : ZMod (fejerOctavePeriod X)) = z := by
  unfold octaveRepresentative
  split_ifs with hz
  · have hz0 : z = 0 := by
      apply ZMod.val_injective
      simpa [hz]
    subst z
    simp [fejerOctavePeriod]
  · rw [ZMod.natCast_zmod_val]

/-- Cyclic residues selected by the sharp prefix are equivalent to arithmetic
integers in the exact interval (2X,m]. -/
def cyclicSharpPrefixSubtypeEquivIoc
    {X m : ℕ}
    (hX : 0 < X)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ fejerOctavePeriod X) :
    {z : ZMod (fejerOctavePeriod X) //
      2 * X < octaveRepresentative X z ∧
        octaveRepresentative X z ≤ m}
      ≃
    {q : ℕ // q ∈ Finset.Ioc (2 * X) m} where
  toFun z :=
    ⟨octaveRepresentative X z.1,
      Finset.mem_Ioc.mpr z.2⟩
  invFun q :=
    ⟨(q.1 : ZMod (fejerOctavePeriod X)), by
      have hq := Finset.mem_Ioc.mp q.2
      have hqPos : 1 ≤ q.1 := by omega
      rw [octaveRepresentative_natCast hX hqPos (hq.2.trans hm1)]
      exact hq⟩
  left_inv z := by
    apply Subtype.ext
    exact natCast_octaveRepresentative hX z.1
  right_inv q := by
    apply Subtype.ext
    have hq := Finset.mem_Ioc.mp q.2
    have hqPos : 1 ≤ q.1 := by omega
    exact octaveRepresentative_natCast hX hqPos (hq.2.trans hm1)

/-- The cyclic convolution can be restricted to the sharp-prefix subtype. -/
theorem cyclicFejerSmoothedPrefix_eq_subtype_sum
    {X N m : ℕ}
    (hX : 0 < X) :
    cyclicFejerSmoothedPrefix X N m =
      fun x =>
        ∑ y :
          {z : ZMod (fejerOctavePeriod X) //
            2 * X < octaveRepresentative X z ∧
              octaveRepresentative X z ≤ m},
          cyclicFejerKernel X N (x - y.1) := by
  funext x
  unfold cyclicFejerSmoothedPrefix cyclicSharpPrefixIndicator
  rw [← Fintype.sum_subtype]
  intro y
  split_ifs <;> simp_all

/-- Exact finite reindexing of the cyclic sharp-prefix convolution by the
arithmetic interval q in (2X,m]. -/
theorem arithmeticCyclicPrefixReindexing :
    ArithmeticCyclicPrefixReindexingClaim := by
  intro X N m n hreg hn0 hn1 hm0 hm1
  rcases hreg with ⟨hX, hN, hNL⟩
  rw [cyclicFejerSmoothedPrefix_eq_subtype_sum hX]
  let e :=
    cyclicSharpPrefixSubtypeEquivIoc hX hm0
      (by simpa [fejerOctavePeriod] using hm1)
  change
    (∑ y :
      {z : ZMod (fejerOctavePeriod X) //
        2 * X < octaveRepresentative X z ∧
          octaveRepresentative X z ≤ m},
      cyclicFejerKernel X N
        ((n : ZMod (fejerOctavePeriod X)) - y.1))
      =
    ∑ q ∈ Finset.Ioc (2 * X) m,
      cyclicFejerKernel X N
        ((n : ZMod (fejerOctavePeriod X)) -
          (q : ZMod (fejerOctavePeriod X)))
  rw [← Finset.sum_attach]
  exact Fintype.sum_equiv e
    (fun y =>
      cyclicFejerKernel X N
        ((n : ZMod (fejerOctavePeriod X)) - y.1))
    (fun q =>
      cyclicFejerKernel X N
        ((n : ZMod (fejerOctavePeriod X)) - q.1))
    (by
      intro y
      rfl)

/-- The complete arithmetic/cyclic prefix-weight bridge is now source-proved. -/
theorem arithmeticPrefixWeightEqualsCyclicConvolution :
    ArithmeticPrefixWeightEqualsCyclicConvolutionClaim :=
  arithmeticCyclicReindexing_and_kernelDifference_to_prefixWeight
    arithmeticCyclicPrefixReindexing
    arithmeticCyclicKernelDifference

end GRWTSK.RiemannHypothesis
