# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogFinitePacket

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c49cb92706e9dcc393cb39773a6a1d1d84bdeb9` · SHA-256 `f8ce536e32f292a32dad25549c4180fa9c40cb38ac6052c7b8d4b49b448fd06f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authenticated extraction from historical owner:
commit f047ec7814a03bf2b6175fc3b96a465ff2b86804
blob 112c38431b9d2d222a15841a8f7f4c2f6b8f9cc8
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.RiemannHypothesis
def mobiusReal (n : ℕ) : ℝ := ((ArithmeticFunction.moebius n : ℤ) : ℝ)
def centeredVonMangoldtAtom (n : ℕ) : ℝ := ArithmeticFunction.vonMangoldt n - 1
def centeredMobiusLogDivisorIndexSet (n : ℕ) : Finset (Option ℕ) :=
  insert none (n.divisors.image (fun d : ℕ => some d))
def centeredMobiusLogDivisorTerm (n : ℕ) : Option ℕ → ℝ
  | none => -1
  | some d => mobiusReal d * Real.log (n / d : ℕ)
def centeredMobiusLogDivisorIndexSum (n : ℕ) : ℝ :=
  ∑ u ∈ centeredMobiusLogDivisorIndexSet n, centeredMobiusLogDivisorTerm n u
def centeredMobiusLogDivisorPairBlock (n h : ℕ) : ℝ :=
  ∑ u ∈ centeredMobiusLogDivisorIndexSet n,
    ∑ v ∈ centeredMobiusLogDivisorIndexSet (n + h),
      centeredMobiusLogDivisorTerm n u * centeredMobiusLogDivisorTerm (n + h) v
@[simp] theorem centeredMobiusLogDivisorTerm_none (n : ℕ) :
    centeredMobiusLogDivisorTerm n none = -1 := rfl
@[simp] theorem centeredMobiusLogDivisorTerm_some (n d : ℕ) :
    centeredMobiusLogDivisorTerm n (some d) =
      mobiusReal d * Real.log (n / d : ℕ) := rfl
theorem centeredMobiusLogDivisorIndexSum_eq_centeredVonMangoldt (n : ℕ) :
    centeredMobiusLogDivisorIndexSum n = centeredVonMangoldtAtom n := by
  unfold centeredMobiusLogDivisorIndexSum centeredMobiusLogDivisorIndexSet
  have hnone : (none : Option ℕ) ∉ n.divisors.image (fun d : ℕ => some d) := by simp
  rw [Finset.sum_insert hnone]
  rw [Finset.sum_image]
  · simp only [centeredMobiusLogDivisorTerm_none, centeredMobiusLogDivisorTerm_some]
    have h := congrArg (fun f : ArithmeticFunction ℝ => f n)
      ArithmeticFunction.moebius_mul_log_eq_vonMangoldt
    simp only [ArithmeticFunction.mul_apply, ArithmeticFunction.log_apply,
      ArithmeticFunction.intCoe_apply] at h
    rw [Nat.sum_divisorsAntidiagonal
      (fun d a => ((ArithmeticFunction.moebius d : ℤ) : ℝ) * Real.log a)] at h
    unfold mobiusReal centeredVonMangoldtAtom
    rw [← h]
    ring
  · intro a _ b _ hab
    exact Option.some.inj hab
theorem centeredMobiusLogDivisorPairBlock_eq_centeredVonMangoldt_mul (n h : ℕ) :
    centeredMobiusLogDivisorPairBlock n h =
      centeredVonMangoldtAtom n * centeredVonMangoldtAtom (n + h) := by
  unfold centeredMobiusLogDivisorPairBlock
  rw [← centeredMobiusLogDivisorIndexSum_eq_centeredVonMangoldt,
    ← centeredMobiusLogDivisorIndexSum_eq_centeredVonMangoldt]
  unfold centeredMobiusLogDivisorIndexSum
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro u _
  rw [Finset.mul_sum]
end GRWTSK.RiemannHypothesis
```
