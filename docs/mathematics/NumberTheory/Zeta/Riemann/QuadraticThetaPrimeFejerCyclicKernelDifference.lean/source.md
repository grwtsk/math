# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicKernelDifference

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7bec067eb907506948baa927e01969639d93cb54` · SHA-256 `689635f60d6ab8ac445a236e15203bd8045394cd6cb814fdfaea8a4c376431f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicArithmeticRestriction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- The signed sampled triangular kernel is periodic in its integer argument
with the declared lattice period. -/
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

/-- Congruent integer arguments modulo the lattice period give the same signed
sample. -/
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
  have hdiv :
      (L : ℤ) ∣ b - a := by
    exact
      (ZMod.intCast_eq_intCast_iff_dvd_sub a b L).mp hmod
  rcases hdiv with ⟨z, hz⟩
  have hab : b = a + z * (L : ℤ) := by
    linarith
  rw [hab]
  simpa [mul_comm] using hper.int_mul z a

/-- The cyclic residue difference and the ordinary integer difference determine
the same signed sampled-kernel value. -/
theorem arithmeticCyclicKernelDifference :
    ArithmeticCyclicKernelDifferenceClaim := by
  intro X N n q hreg hn0 hn1 hq0 hq1
  rcases hreg with ⟨hX, hN, hNL⟩
  let L : ℕ := fejerOctavePeriod X
  let z : ZMod L :=
    (n : ZMod L) - (q : ZMod L)
  have hL : 0 < L := by
    dsimp [L, fejerOctavePeriod]
    omega
  have hzcast :
      ((z.val : ℤ) : ZMod L) =
        (((n : ℤ) - (q : ℤ)) : ZMod L) := by
    change ((z.val : ℕ) : ZMod L) =
      ((n : ZMod L) - (q : ZMod L))
    rw [ZMod.natCast_zmod_val]
    rfl
  unfold cyclicFejerKernel
  dsimp [z, L] at hzcast ⊢
  exact
    signedSampledTriangularKernelAtPeriod_eq_of_modEq
      hL N hzcast

/-- The arithmetic/cyclic prefix bridge is now reduced to finite reindexing
alone. -/
def ArithmeticCyclicPrefixReindexingOnlyFrontier : Prop :=
  ArithmeticCyclicPrefixReindexingClaim

end GRWTSK.RiemannHypothesis
```
