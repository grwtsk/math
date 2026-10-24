# Complete source: GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerPeriodicity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82a970aedccd9a2ebde0cce302c7dbf5738cb07a` · SHA-256 `8f0499542ffce61405fc767b5f7c49bb3b5c99708ed8382f3b906104ff521f39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerSampleMass
import Mathlib.Analysis.Fourier.ZMod
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

theorem signedSampledTriangularKernelAtPeriod_add_period
    {L : ℕ} (hL : 0 < L)
    (N : ℕ) (r : ℤ) :
    signedSampledTriangularKernelAtPeriod L N (r + L) =
      signedSampledTriangularKernelAtPeriod L N r := by
  unfold signedSampledTriangularKernelAtPeriod
  have hLr : (L : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt hL)
  congr 2
  apply congrArg Complex.re
  congr 1
  have hperiod :=
    AddCircle.coe_add_period (1 : ℝ) ((r : ℝ) / (L : ℝ))
  convert hperiod.symm using 1
  field_simp [hLr]
  ring

theorem signedSampledTriangularKernelAtPeriod_eq_of_modEq
    {L : ℕ} (hL : 0 < L)
    (N : ℕ) {a b : ℤ}
    (hmod : (a : ZMod L) = (b : ZMod L)) :
    signedSampledTriangularKernelAtPeriod L N a =
      signedSampledTriangularKernelAtPeriod L N b := by
  have hper :
      Function.Periodic
        (signedSampledTriangularKernelAtPeriod L N) (L : ℤ) := by
    intro r
    exact signedSampledTriangularKernelAtPeriod_add_period hL N r
  have hdiv : (L : ℤ) ∣ b - a := by
    exact (ZMod.intCast_eq_intCast_iff_dvd_sub a b L).mp hmod
  rcases hdiv with ⟨z, hz⟩
  have hab : b = a + z * (L : ℤ) := by
    linarith
  rw [hab]
  simpa [mul_comm] using hper.int_mul z a

end GRWTSK.RiemannHypothesis
```
