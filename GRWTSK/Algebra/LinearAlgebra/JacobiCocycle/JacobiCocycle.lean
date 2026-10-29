import FormalResearch.PositiveAtlas.Spectral.JacobiTransfer
import Mathlib.Logic.Function.Iterate
import Mathlib.Algebra.Order.Archimedean.Basic

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

namespace FormalResearch.PositiveAtlas.Spectral

universe u v w

/-- Ordered interval product. The most recent factor is always on the left. -/
def orderedProduct {G : Type u} [Monoid G] (A : ℕ → G) (n : ℕ) : ℕ → G
  | 0 => 1
  | k + 1 => A (n + k) * orderedProduct A n k

@[simp]
theorem orderedProduct_zero {G : Type u} [Monoid G] (A : ℕ → G) (n : ℕ) :
    orderedProduct A n 0 = 1 := rfl

/-- Successor factors act on the left, fixing the product convention. -/
theorem orderedProduct_succ {G : Type u} [Monoid G] (A : ℕ → G) (n k : ℕ) :
    orderedProduct A n (k + 1) = A (n + k) * orderedProduct A n k := rfl

/-- Two consecutive intervals concatenate with the later interval on the left. -/
theorem orderedProduct_add {G : Type u} [Monoid G] (A : ℕ → G) (n m k : ℕ) :
    orderedProduct A n (m + k) =
      orderedProduct A (n + k) m * orderedProduct A n k := by
  induction m with
  | zero => simp
  | succ m ih =>
    simp only [Nat.succ_add, orderedProduct_succ, ih]
    simp [Nat.add_comm, Nat.add_left_comm, mul_assoc]

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

/-- Determinant-one transfer factors give a determinant-one ordered product. -/
theorem det_orderedProduct_eq_one {R : Type u} [CommRing R]
    (A : ℕ → Matrix (Fin 2) (Fin 2) R) (hdet : ∀ n, (A n).det = 1) (n k : ℕ) :
    (orderedProduct A n k).det = 1 := by
  induction k with
  | zero => simp
  | succ k ih => simp [orderedProduct_succ, Matrix.det_mul, hdet, ih]

/-- Every step's nonzero hypothesis is retained in the weighted Jacobi product. -/
theorem det_weightedJacobi_orderedProduct {K : Type u} [Field K]
    (E : K) (a b : ℕ → K) (ha : ∀ n, a n ≠ 0) (n k : ℕ) :
    (orderedProduct (fun i => weightedJacobiTransfer E (b i) (a i)) n k).det = 1 :=
  det_orderedProduct_eq_one _ (fun i => det_weightedJacobiTransfer E (b i) (a i) (ha i)) n k

/-- Cocycle product over base dynamics, again adding the newest step on the left. -/
def cocycleProduct {S : Type u} {G : Type v} [Monoid G]
    (T : S → S) (A : S → G) : ℕ → S → G
  | 0, _ => 1
  | n + 1, x => A (T^[n] x) * cocycleProduct T A n x

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

/-- A varying gauge has the next inverse on the left and the current gauge on the right. -/
def gaugeTransfer {G : Type u} [Group G] (A B : ℕ → G) (n : ℕ) : G :=
  (B (n + 1))⁻¹ * A n * B n

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

/-- Gauge factors telescope exactly to the interval endpoint gauges. -/
theorem orderedProduct_gaugeTransfer {G : Type u} [Group G]
    (A B : ℕ → G) (n k : ℕ) :
    orderedProduct (gaugeTransfer A B) n k =
      (B (n + k))⁻¹ * orderedProduct A n k * B n := by
  induction k with
  | zero => simp
  | succ k ih =>
    simp only [orderedProduct_succ, gaugeTransfer, ih]
    simp [Nat.add_assoc, mul_assoc]

/-- Exact free/model conjugacy must be supplied as a step equation; it then transports products. -/
theorem orderedProduct_eq_of_gaugeTransfer_eq {G : Type u} [Group G]
    (A B model : ℕ → G) (hmodel : ∀ n, gaugeTransfer A B n = model n) (n k : ℕ) :
    orderedProduct model n k =
      (B (n + k))⁻¹ * orderedProduct A n k * B n := by
  have hfun : gaugeTransfer A B = model := funext hmodel
  rw [← hfun]
  exact orderedProduct_gaugeTransfer A B n k

/-- Unrestricted one-sided gauge, normalized at zero.
No boundedness or compatibility with a prescribed base dynamics is asserted. -/
def recursiveGauge {G : Type u} [Group G] (A model : ℕ → G) : ℕ → G
  | 0 => 1
  | n + 1 => A n * recursiveGauge A model n * (model n)⁻¹

@[simp]
theorem recursiveGauge_zero {G : Type u} [Group G] (A model : ℕ → G) :
    recursiveGauge A model 0 = 1 := rfl

/-- The recursion uses the exact left-next/right-current gauge convention. -/
theorem recursiveGauge_succ {G : Type u} [Group G] (A model : ℕ → G) (n : ℕ) :
    recursiveGauge A model (n + 1) = A n * recursiveGauge A model n * (model n)⁻¹ := rfl

/-- Every one-sided group-valued sequence can be gauged to every model sequence
if the step-dependent gauge is completely unrestricted. -/
theorem gaugeTransfer_recursiveGauge {G : Type u} [Group G]
    (A model : ℕ → G) (n : ℕ) :
    gaugeTransfer A (recursiveGauge A model) n = model n := by
  simp [gaugeTransfer, recursiveGauge_succ, mul_inv_rev, mul_assoc]

/-- Existence alone imposes no restriction on either one-sided sequence. -/
theorem unrestricted_oneSided_gauge_exists {G : Type u} [Group G] (A model : ℕ → G) :
    ∃ B : ℕ → G, B 0 = 1 ∧ ∀ n, gaugeTransfer A B n = model n :=
  ⟨recursiveGauge A model, recursiveGauge_zero A model, gaugeTransfer_recursiveGauge A model⟩

/-- A constant sequence gauged to identity accumulates all powers in the gauge. -/
theorem recursiveGauge_const_identity {G : Type u} [Group G] (g : G) (n : ℕ) :
    recursiveGauge (fun _ => g) (fun _ => 1) n = g ^ n := by
  induction n with
  | zero => simp
  | succ n ih => simp [recursiveGauge_succ, ih, pow_succ']

/-- Determinant-one expanding fixture; its transfer can still be gauged to identity. -/
def expandingSL : Matrix.SpecialLinearGroup (Fin 2) ℚ :=
  ⟨Matrix.diagonal ![(2 : ℚ), 1 / 2], by norm_num [Matrix.det_fin_two]⟩

/-- The unrestricted gauge for this `SL₂` fixture has exact exponentially growing entry. -/
theorem recursiveGauge_expanding_entry (n : ℕ) :
    (recursiveGauge (G := Matrix.SpecialLinearGroup (Fin 2) ℚ)
      (fun _ => expandingSL) (fun _ => 1) n :
      Matrix (Fin 2) (Fin 2) ℚ) 0 0 = (2 : ℚ) ^ n := by
  rw [recursiveGauge_const_identity]
  change (Matrix.diagonal ![(2 : ℚ), 1 / 2] ^ n) 0 0 = (2 : ℚ) ^ n
  rw [Matrix.diagonal_pow]
  simp

/-- Exact gauge existence to identity does not even bound the gauge's first entry. -/
theorem recursiveGauge_expanding_entry_unbounded :
    ∀ C : ℚ, ∃ n : ℕ, C <
      (recursiveGauge (G := Matrix.SpecialLinearGroup (Fin 2) ℚ)
      (fun _ => expandingSL) (fun _ => 1) n :
        Matrix (Fin 2) (Fin 2) ℚ) 0 0 := by
  intro C
  obtain ⟨n, hn⟩ := add_one_pow_unbounded_of_pos C (show (0 : ℚ) < 1 by norm_num)
  refine ⟨n, ?_⟩
  rw [recursiveGauge_expanding_entry]
  simpa only [one_add_one_eq_two] using hn

/-- Hostile fixture: even determinant-one Schrödinger factors cannot silently be reversed. -/
theorem schrodinger_transfer_order_matters :
    schrodingerTransfer (0 : ℚ) 0 * schrodingerTransfer (1 : ℚ) 0 ≠
      schrodingerTransfer (1 : ℚ) 0 * schrodingerTransfer (0 : ℚ) 0 := by
  intro h
  have hentry := congrFun (congrFun h 0) 1
  norm_num [schrodingerTransfer, Matrix.mul_apply, Fin.sum_univ_two] at hentry

end FormalResearch.PositiveAtlas.Spectral
