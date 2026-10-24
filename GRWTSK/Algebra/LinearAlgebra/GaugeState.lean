/-
MIT. grwtsk contributors direction; OpenAI Codex assistance; historical split unknown.
Established group-action state-gauge equivalence; upstream identities retained.
-/
import GRWTSK.Algebra.OrderedProductGauge
import GRWTSK.Algebra.LinearAlgebra.CocycleProduct

namespace GRWTSK.Algebra.LinearAlgebra.GaugeState

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


open GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer


open GRWTSK.Algebra.LinearAlgebra.JacobiTransfer


open GRWTSK.Algebra.LinearAlgebra.OrderedTransfer


open GRWTSK.Algebra.LinearAlgebra.OrderedProductDeterminant


open GRWTSK.Algebra.LinearAlgebra.CocycleProduct

/-- A gauge changes the state by the inverse gauge at its own step. -/
def gaugeState {G : Type u} {S : Type v} [Group G] [MulAction G S]
    (B : ℕ → G) (X : ℕ → S) (n : ℕ) : S := (B n)⁻¹ • X n



/-- State dynamics are exactly equivalent under the step-dependent gauge.
In particular this specializes to `SL₂` acting on two-coordinate states. -/
theorem gaugeState_step_iff {G : Type u} {S : Type v} [Group G] [MulAction G S]
    (A B : ℕ → G) (X : ℕ → S) (n : ℕ) :
    X (n + 1) = A n • X n ↔
      gaugeState B X (n + 1) = gaugeTransfer A B n • gaugeState B X n := by
  have hnormalized : gaugeTransfer A B n • gaugeState B X n =
      (B (n + 1))⁻¹ • (A n • X n) := by
    simp [gaugeTransfer, gaugeState, mul_smul]
  rw [hnormalized]
  constructor
  · intro h
    exact congrArg (fun s => (B (n + 1))⁻¹ • s) h
  · intro h
    have h' := congrArg (fun s => B (n + 1) • s) h
    simpa [gaugeState] using h'




end GRWTSK.Algebra.LinearAlgebra.GaugeState
