# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicArithmeticRestriction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e2e16dfb208f9ed9c8cd1b20fc2fabbd00e480d` · SHA-256 `d7524d719a2805464c9c6798beadb02339d37acacd3c1ae69fd18ba06f721c63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicConvolutionModel
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Casting an arithmetic point q in [1,4X] into ZMod(4X) and then applying the
endpoint-aware representative recovers q exactly.  The endpoint q=4X is the
special residue-zero case. -/
theorem octaveRepresentative_natCast
    {X q : ℕ}
    (hX : 0 < X)
    (hq0 : 1 ≤ q)
    (hq1 : q ≤ fejerOctavePeriod X) :
    octaveRepresentative X
      (q : ZMod (fejerOctavePeriod X)) = q := by
  unfold octaveRepresentative
  rw [ZMod.val_natCast]
  by_cases hq : q = fejerOctavePeriod X
  · subst q
    simp [hX, fejerOctavePeriod]
  · have hqLt : q < fejerOctavePeriod X := lt_of_le_of_ne hq1 hq
    rw [Nat.mod_eq_of_lt hqLt]
    have hqNe : q ≠ 0 := Nat.ne_of_gt hq0
    simp [hqNe]

/-- On arithmetic points in the octave, the cyclic sharp indicator is exactly
the ordinary sharp prefix weight. -/
theorem cyclicSharpPrefixIndicator_natCast_eq_sharpPrefixWeight
    {X m q : ℕ}
    (hX : 0 < X)
    (hq0 : 2 * X < q)
    (hq1 : q ≤ fejerOctavePeriod X) :
    cyclicSharpPrefixIndicator X m
        (q : ZMod (fejerOctavePeriod X)) =
      sharpPrefixWeight X m q := by
  have hqPos : 1 ≤ q := by omega
  rw [cyclicSharpPrefixIndicator, sharpPrefixWeight,
    octaveRepresentative_natCast hX hqPos hq1]
  simp only [Finset.mem_Ioc]
  split_ifs with hcyc hsharp
  · rfl
  · exfalso
    exact hsharp ⟨hq0, hcyc.2⟩
  · exfalso
    exact hcyc ⟨hsharp.1, hsharp.2⟩
  · rfl

/-- The remaining arithmetic/cyclic identification is now only a finite
reindexing theorem: sum over all cyclic residues selected by the sharp
indicator equals the arithmetic sum over q in (2X,m]. -/
def ArithmeticCyclicPrefixReindexingClaim : Prop :=
  ∀ X N m n : ℕ,
    NonAliasingFejerCutoffRegime X N →
    2 * X < n → n ≤ 4 * X →
    2 * X ≤ m → m ≤ 4 * X →
      cyclicFejerSmoothedPrefix X N m
          (n : ZMod (fejerOctavePeriod X)) =
        ∑ q ∈ Finset.Ioc (2 * X) m,
          cyclicFejerKernel X N
            ((n : ZMod (fejerOctavePeriod X)) -
              (q : ZMod (fejerOctavePeriod X)))

/-- Once the finite cyclic-to-arithmetic reindexing is supplied, the original
repository prefix weight identification reduces to matching the kernel
difference representative with the signed arithmetic sample. -/
def ArithmeticCyclicKernelDifferenceClaim : Prop :=
  ∀ X N n q : ℕ,
    NonAliasingFejerCutoffRegime X N →
    2 * X < n → n ≤ 4 * X →
    2 * X < q → q ≤ 4 * X →
      cyclicFejerKernel X N
          ((n : ZMod (fejerOctavePeriod X)) -
            (q : ZMod (fejerOctavePeriod X))) =
        signedSampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N
          ((n : ℤ) - (q : ℤ))

/-- The two exact finite-indexing suppliers imply the full arithmetic/cyclic
prefix-weight bridge. -/
theorem arithmeticCyclicReindexing_and_kernelDifference_to_prefixWeight
    (hreindex : ArithmeticCyclicPrefixReindexingClaim)
    (hkernel : ArithmeticCyclicKernelDifferenceClaim) :
    ArithmeticPrefixWeightEqualsCyclicConvolutionClaim := by
  intro X N m n hreg hn0 hn1 hm0 hm1
  rw [hreindex X N m n hreg hn0 hn1 hm0 hm1]
  unfold nonAliasingFejerPrefixWeight
  apply Finset.sum_congr rfl
  intro q hq
  have hqI := Finset.mem_Ioc.mp hq
  exact (hkernel X N n q hreg hn0 hn1 hqI.1
    (hqI.2.trans hm1)).symm

end GRWTSK.RiemannHypothesis
```
