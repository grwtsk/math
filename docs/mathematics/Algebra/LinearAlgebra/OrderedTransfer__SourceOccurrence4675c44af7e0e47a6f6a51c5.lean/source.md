# Complete source: GRWTSK.LinearAlgebra.OrderedTransfer

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdabc1e226f546262f22490b005222cfe50ee4a4` · SHA-256 `1a94422c72921453d3bf34d816ab8f3d6800b6930dc9ab237224e50135d6de97`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
MIT. grwtsk contributors direction; OpenAI Codex assistance; historical split unknown.
Established ordered transfer and exact state propagation mathematics; upstream identities retained.
-/
import GRWTSK.Algebra.OrderedProduct
import GRWTSK.LinearAlgebra.JacobiTransfer

namespace GRWTSK.LinearAlgebra.OrderedTransfer

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

/-- Endpoint notation `A(m,n) = A(m-1) ⋯ A(n)` for `n ≤ m`. -/
def orderedTransfer {G : Type u} [Monoid G] (A : ℕ → G) (m n : ℕ) : G :=
  orderedProduct A n (m - n)



/-- Transfer dynamics iterate with the exact frozen multiplication order. -/
theorem state_eq_orderedProduct_mulVec {R : Type u} [CommSemiring R]
    (A : ℕ → Matrix (Fin 2) (Fin 2) R) (X : ℕ → Fin 2 → R)
    (hstep : ∀ n, X (n + 1) = (A n).mulVec (X n)) (n k : ℕ) :
    X (n + k) = (orderedProduct A n k).mulVec (X n) := by
  induction k with
  | zero => simp
  | succ k ih =>
    rw [Nat.add_succ, ← Nat.add_one, hstep, ih, orderedProduct_succ]
    exact Matrix.mulVec_mulVec (X n) (A (n + k)) (orderedProduct A n k)



/-- For `m ≥ n`, the endpoint product maps the state at `n` to the state at `m`. -/
theorem state_eq_orderedTransfer_mulVec {R : Type u} [CommSemiring R]
    (A : ℕ → Matrix (Fin 2) (Fin 2) R) (X : ℕ → Fin 2 → R)
    (hstep : ∀ n, X (n + 1) = (A n).mulVec (X n)) (m n : ℕ) (hnm : n ≤ m) :
    X m = (orderedTransfer A m n).mulVec (X n) := by
  simpa [orderedTransfer, Nat.add_sub_of_le hnm] using
    state_eq_orderedProduct_mulVec A X hstep n (m - n)




end GRWTSK.LinearAlgebra.OrderedTransfer
```
