# Complete source: GRWTSK.Algebra.LinearAlgebra.CocycleProduct

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1bc42c586526a55c7feb86b1df86a48ad18e82ec` · SHA-256 `cdd6667a5d3d305e7adbdb2e87cf3493bc4abad3f69d81d07690e0cb95c0726d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
MIT. grwtsk contributors direction; OpenAI Codex assistance; historical split unknown.
Established cocycle-product and gauge mathematics; upstream identities retained.
-/
import GRWTSK.Algebra.LinearAlgebra.OrderedProductDeterminant
import Mathlib.Logic.Function.Iterate

namespace GRWTSK.LinearAlgebra.CocycleProduct

/-!
# Frozen ordered products and step-dependent gauges

`orderedProduct A n k = A (n+k-1) ⋯ A n`: a new step multiplies on the left.
`orderedTransfer A m n` uses this product with length `m-n`, so its state theorem
requires `n ≤ m`. The cocycle convention is
`A^(m+n)(x) = A^m(T^n x) * A^n(x)`.

For a step-dependent gauge the transfer is `B (n+1)⁻¹ * A n * B n`, and its
product telescopes with endpoint gauges. This does not assert that any proposed
theta or RH transfer is conjugate to a free transfer; that equality must be proved.

On a one-sided sequence, an unrestricted gauge to any chosen model always exists.
The recursive construction below supplies no bounded gauge, periodicity,
base-dynamics compatibility, unitary spectral equivalence, or uniform estimate.
An explicit `SL₂(ℚ)` fixture has gauge entry `2^n`, excluding even a uniform
entry bound. Quantitative or regularity restrictions are essential to a spectral
normal-form claim.
-/


universe u v w



open GRWTSK.Algebra


open GRWTSK.LinearAlgebra.SchrodingerTransfer


open GRWTSK.LinearAlgebra.JacobiTransfer


open GRWTSK.LinearAlgebra.OrderedTransfer


open GRWTSK.LinearAlgebra.OrderedProductDeterminant

/-- Cocycle product over base dynamics, again adding the newest step on the left. -/
def cocycleProduct {S : Type u} {G : Type v} [Monoid G]
    (T : S → S) (A : S → G) : ℕ → S → G :=
  Nat.rec (fun _ => 1)
    (fun n r x => A (T^[n] x) * r x)



@[simp]
theorem cocycleProduct_zero {S : Type u} {G : Type v} [Monoid G]
    (T : S → S) (A : S → G) (x : S) : cocycleProduct T A 0 x = 1 := rfl



/-- Successor formula exposes the actual ordered factor. -/
theorem cocycleProduct_succ {S : Type u} {G : Type v} [Monoid G]
    (T : S → S) (A : S → G) (n : ℕ) (x : S) :
    cocycleProduct T A (n + 1) x = A (T^[n] x) * cocycleProduct T A n x := rfl



/-- The base-dynamics formulation agrees with the frozen ordered product. -/
theorem cocycleProduct_eq_orderedProduct {S : Type u} {G : Type v} [Monoid G]
    (T : S → S) (A : S → G) (n : ℕ) (x : S) :
    cocycleProduct T A n x = orderedProduct (fun k => A (T^[k] x)) 0 n := by
  induction n with
  | zero => rfl
  | succ n ih => simp [cocycleProduct_succ, orderedProduct_succ, ih]



/-- The cocycle law fixes both the base shift and the order of multiplication. -/
theorem cocycleProduct_add {S : Type u} {G : Type v} [Monoid G]
    (T : S → S) (A : S → G) (m n : ℕ) (x : S) :
    cocycleProduct T A (m + n) x =
      cocycleProduct T A m (T^[n] x) * cocycleProduct T A n x := by
  induction m with
  | zero => simp
  | succ m ih =>
    simp only [Nat.succ_add, cocycleProduct_succ, Function.iterate_add_apply, ih]
    simp only [mul_assoc]



/-- Gauge transformation over base dynamics uses `B(T x)⁻¹` at the next point. -/
def cocycleGaugeTransfer {S : Type u} {G : Type v} [Group G]
    (T : S → S) (A B : S → G) (x : S) : G := (B (T x))⁻¹ * A x * B x



/-- A base-dependent gauge telescopes to the two exact orbit endpoints. -/
theorem cocycleProduct_gauge {S : Type u} {G : Type v} [Group G]
    (T : S → S) (A B : S → G) (n : ℕ) (x : S) :
    cocycleProduct T (cocycleGaugeTransfer T A B) n x =
      (B (T^[n] x))⁻¹ * cocycleProduct T A n x * B x := by
  induction n with
  | zero => simp
  | succ n ih =>
    simp [cocycleProduct_succ, cocycleGaugeTransfer, ih,
      Function.iterate_succ_apply', mul_assoc]




end GRWTSK.LinearAlgebra.CocycleProduct
```
