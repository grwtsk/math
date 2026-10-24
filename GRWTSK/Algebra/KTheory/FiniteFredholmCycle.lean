import Mathlib

namespace GRWTSK.Algebra.KTheory.FiniteFredholmCycle

open Matrix

universe u

/-- Finite-dimensional exact Fredholm/Kasparov-cycle fixture.

This is a strict finite model: the operator is a self-adjoint involution and commutes exactly
with the represented algebra. It does not construct analytic KK-groups or the Kasparov product. -/
structure ExactCycle (A : Type u) [Semiring A] (n : ℕ) where
  representation : A →+* Matrix (Fin n) (Fin n) ℂ
  operator : Matrix (Fin n) (Fin n) ℂ
  operator_selfAdjoint : operatorᴴ = operator
  operator_square : operator * operator = 1
  commutes : ∀ a, operator * representation a = representation a * operator
  parity : Bool

namespace ExactCycle

variable {A : Type u} [Semiring A] {n : ℕ}

/-- Matrix commutator of the cycle operator with one represented algebra element. -/
def commutator (X : ExactCycle A n) (a : A) :
    Matrix (Fin n) (Fin n) ℂ :=
  X.operator * X.representation a - X.representation a * X.operator

/-- Exact cycles have zero represented commutators. -/
theorem commutator_eq_zero (X : ExactCycle A n) (a : A) :
    X.commutator a = 0 := by
  rw [commutator, X.commutes a, sub_self]

/-- The cycle operator is invertible, with itself as inverse. -/
def operatorUnit (X : ExactCycle A n) :
    (Matrix (Fin n) (Fin n) ℂ)ˣ where
  val := X.operator
  inv := X.operator
  val_inv := X.operator_square
  inv_val := X.operator_square

/-- A self-adjoint involution is unitary in the finite matrix model. -/
theorem operator_star_mul (X : ExactCycle A n) :
    X.operatorᴴ * X.operator = 1 := by
  rw [X.operator_selfAdjoint, X.operator_square]

/-- The opposite unitary identity. -/
theorem operator_mul_star (X : ExactCycle A n) :
    X.operator * X.operatorᴴ = 1 := by
  rw [X.operator_selfAdjoint, X.operator_square]

end ExactCycle

/-- Exact unitary equivalence of finite cycles. -/
structure UnitaryEquivalence
    {A : Type u} [Semiring A] {n : ℕ}
    (X Y : ExactCycle A n) where
  unitary : Matrix (Fin n) (Fin n) ℂ
  star_mul : unitaryᴴ * unitary = 1
  mul_star : unitary * unitaryᴴ = 1
  representation_intertwines :
    ∀ a, unitary * X.representation a = Y.representation a * unitary
  operator_intertwines : unitary * X.operator = Y.operator * unitary
  parity_eq : X.parity = Y.parity

namespace UnitaryEquivalence

variable {A : Type u} [Semiring A] {n : ℕ}
variable {X Y Z : ExactCycle A n}

/-- Identity unitary cycle equivalence. -/
def refl (X : ExactCycle A n) : UnitaryEquivalence X X where
  unitary := 1
  star_mul := by simp
  mul_star := by simp
  representation_intertwines := by simp
  operator_intertwines := by simp
  parity_eq := rfl

/-- Inverse unitary cycle equivalence. -/
def symm (P : UnitaryEquivalence X Y) : UnitaryEquivalence Y X where
  unitary := P.unitaryᴴ
  star_mul := by simpa using P.mul_star
  mul_star := by simpa using P.star_mul
  representation_intertwines := by
    intro a
    calc
      P.unitaryᴴ * Y.representation a =
          P.unitaryᴴ * (Y.representation a * (P.unitary * P.unitaryᴴ)) := by
        rw [P.mul_star, mul_one]
      _ = (P.unitaryᴴ * (Y.representation a * P.unitary)) * P.unitaryᴴ := by
        simp [Matrix.mul_assoc]
      _ = (P.unitaryᴴ * (P.unitary * X.representation a)) * P.unitaryᴴ := by
        rw [← P.representation_intertwines a]
      _ = ((P.unitaryᴴ * P.unitary) * X.representation a) * P.unitaryᴴ := by
        simp [Matrix.mul_assoc]
      _ = X.representation a * P.unitaryᴴ := by
        rw [P.star_mul]
        simp
  operator_intertwines := by
    calc
      P.unitaryᴴ * Y.operator =
          P.unitaryᴴ * (Y.operator * (P.unitary * P.unitaryᴴ)) := by
        rw [P.mul_star, mul_one]
      _ = (P.unitaryᴴ * (Y.operator * P.unitary)) * P.unitaryᴴ := by
        simp [Matrix.mul_assoc]
      _ = (P.unitaryᴴ * (P.unitary * X.operator)) * P.unitaryᴴ := by
        rw [← P.operator_intertwines]
      _ = ((P.unitaryᴴ * P.unitary) * X.operator) * P.unitaryᴴ := by
        simp [Matrix.mul_assoc]
      _ = X.operator * P.unitaryᴴ := by
        rw [P.star_mul]
        simp
  parity_eq := P.parity_eq.symm

/-- Composition of unitary cycle equivalences. -/
def trans (P : UnitaryEquivalence X Y) (Q : UnitaryEquivalence Y Z) :
    UnitaryEquivalence X Z where
  unitary := Q.unitary * P.unitary
  star_mul := by
    rw [Matrix.conjTranspose_mul]
    rw [show P.unitaryᴴ * Q.unitaryᴴ * (Q.unitary * P.unitary) =
      P.unitaryᴴ * (Q.unitaryᴴ * Q.unitary) * P.unitary by
        simp only [Matrix.mul_assoc]]
    rw [Q.star_mul]
    simp [P.star_mul]
  mul_star := by
    rw [Matrix.conjTranspose_mul]
    rw [show Q.unitary * P.unitary * (P.unitaryᴴ * Q.unitaryᴴ) =
      Q.unitary * (P.unitary * P.unitaryᴴ) * Q.unitaryᴴ by
        simp [Matrix.mul_assoc]]
    rw [P.mul_star]
    simp [Q.mul_star]
  representation_intertwines := by
    intro a
    calc
      (Q.unitary * P.unitary) * X.representation a =
          Q.unitary * (P.unitary * X.representation a) := by
        simp [Matrix.mul_assoc]
      _ = Q.unitary * (Y.representation a * P.unitary) := by
        rw [P.representation_intertwines a]
      _ = (Q.unitary * Y.representation a) * P.unitary := by
        simp [Matrix.mul_assoc]
      _ = (Z.representation a * Q.unitary) * P.unitary := by
        rw [Q.representation_intertwines a]
      _ = Z.representation a * (Q.unitary * P.unitary) := by
        simp [Matrix.mul_assoc]
  operator_intertwines := by
    calc
      (Q.unitary * P.unitary) * X.operator =
          Q.unitary * (P.unitary * X.operator) := by
        simp [Matrix.mul_assoc]
      _ = Q.unitary * (Y.operator * P.unitary) := by
        rw [P.operator_intertwines]
      _ = (Q.unitary * Y.operator) * P.unitary := by
        simp [Matrix.mul_assoc]
      _ = (Z.operator * Q.unitary) * P.unitary := by
        rw [Q.operator_intertwines]
      _ = Z.operator * (Q.unitary * P.unitary) := by
        simp [Matrix.mul_assoc]
  parity_eq := P.parity_eq.trans Q.parity_eq

end UnitaryEquivalence

namespace Fixtures

/-- Trivial one-dimensional even exact cycle. -/
def scalarCycle : ExactCycle ℂ 1 where
  representation := Matrix.scalar (Fin 1)
  operator := 1
  operator_selfAdjoint := by simp
  operator_square := by simp
  commutes := by simp
  parity := false

/-- The scalar fixture has zero commutator. -/
theorem scalarCycle_commutator (z : ℂ) :
    scalarCycle.commutator z = 0 :=
  scalarCycle.commutator_eq_zero z

end Fixtures

/-! ## Finite-dimensional projection trace boundary -/

/-- Over the complex numbers, the ordinary trace of an idempotent square matrix
is exactly the complex cast of the dimension of the image of its linear map.
This is a finite-dimensional rank computation, not an analytic K₀ theorem. -/
theorem idempotent_matrix_trace_eq_finrank
    (n : ℕ) (P : Matrix (Fin n) (Fin n) ℂ) (hP : P * P = P) :
    P.trace = (Module.finrank ℂ (LinearMap.range P.toLin') : ℂ) := by
  have hlin : IsIdempotentElem P.toLin' := by
    change P.toLin'.comp P.toLin' = P.toLin'
    rw [← Matrix.toLin'_mul, hP]
  calc
    P.trace = LinearMap.trace ℂ (Fin n → ℂ) P.toLin' :=
      (Matrix.trace_toLin'_eq P).symm
    _ = _ := hlin.isProj_range.trace

/-- The normalized ordinary trace of a finite complex matrix star projection
is rational. Consequently, an irrational canonical trace projection from an
infinite reduced group C⋆-algebra cannot be represented by a single finite
matrix carrying its normalized ordinary matrix trace. This theorem does not
address traces integrated over an infinite family of matrix fibers. -/
theorem star_projection_normalized_trace_rational
    (n : ℕ) (P : Matrix (Fin n) (Fin n) ℂ) (hP : IsStarProjection P) :
    ∃ q : ℚ, P.trace / (n : ℂ) = (q : ℂ) := by
  let k : ℕ := Module.finrank ℂ (LinearMap.range P.toLin')
  refine ⟨(k : ℚ) / (n : ℚ), ?_⟩
  have htrace : P.trace = (k : ℂ) :=
    idempotent_matrix_trace_eq_finrank n P hP.isIdempotentElem.eq
  rw [htrace]
  norm_cast



/-! ## Unitary invariance and finite block stabilization -/

/-- Ordinary complex matrix trace is unchanged by unitary conjugation.
Only the left unitary identity is required for this trace calculation. -/
theorem matrix_trace_unitary_conjugation
    (n : ℕ) (P U : Matrix (Fin n) (Fin n) ℂ)
    (hU : Uᴴ * U = 1) :
    (U * P * Uᴴ).trace = P.trace := by
  calc
    (U * P * Uᴴ).trace = (Uᴴ * (U * P)).trace :=
      Matrix.trace_mul_comm (U * P) Uᴴ
    _ = ((Uᴴ * U) * P).trace := by rw [Matrix.mul_assoc]
    _ = P.trace := by rw [hU, one_mul]

/-- Block-diagonal stabilization by one zero matrix leaves the *ordinary*
trace unchanged. Normalized traces may change because the matrix dimension
changes; no normalized-trace invariance is asserted. -/
theorem matrix_trace_zero_stabilization
    (n : ℕ) (P : Matrix (Fin n) (Fin n) ℂ) :
    (Matrix.blockDiagonal
      (fun i : Fin 2 =>
        if i = 0 then P else (0 : Matrix (Fin n) (Fin n) ℂ))).trace =
      P.trace := by
  classical
  rw [Matrix.trace_blockDiagonal]
  simp [Fin.sum_univ_two]

/-- Any finite block-diagonal family of complex idempotent matrices has an
integer ordinary trace, namely the sum of the image dimensions of its blocks.
This says nothing about infinite crossed-product or group-von-Neumann traces. -/
theorem matrix_trace_blockDiagonal_idempotent_integral
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (n : ℕ) (P : ι → Matrix (Fin n) (Fin n) ℂ)
    (hP : ∀ i, P i * P i = P i) :
    (Matrix.blockDiagonal P).trace =
      ((∑ i, Module.finrank ℂ (LinearMap.range (P i).toLin')) : ℂ) := by
  rw [Matrix.trace_blockDiagonal]
  calc
    (∑ i, (P i).trace) =
        ∑ i, (Module.finrank ℂ (LinearMap.range (P i).toLin') : ℂ) := by
          apply Finset.sum_congr rfl
          intro i hi
          exact idempotent_matrix_trace_eq_finrank n (P i) (hP i)
    _ = ((∑ i, Module.finrank ℂ (LinearMap.range (P i).toLin')) : ℂ) := by
      simp



/-! ## Trace invariance consumed by exact finite cycle equivalences -/

namespace UnitaryEquivalence

variable {A : Type u} [Semiring A] {n : ℕ}
variable {X Y : ExactCycle A n}

/-- Exact unitary equivalence of finite Fredholm cycles preserves the ordinary
trace of their cycle operators. This uses the concrete intertwining identity,
not an assumed analytic KK-theory trace. -/
theorem operator_trace_eq_of_unitary_equivalence
    (P : UnitaryEquivalence X Y) :
    Y.operator.trace = X.operator.trace := by
  have hconj :
      Y.operator = P.unitary * X.operator * P.unitaryᴴ := by
    calc
      Y.operator = Y.operator * (P.unitary * P.unitaryᴴ) := by
        rw [P.mul_star, mul_one]
      _ = (Y.operator * P.unitary) * P.unitaryᴴ := by
        rw [Matrix.mul_assoc]
      _ = (P.unitary * X.operator) * P.unitaryᴴ := by
        rw [← P.operator_intertwines]
  rw [hconj]
  exact matrix_trace_unitary_conjugation n X.operator P.unitary P.star_mul

end UnitaryEquivalence


end GRWTSK.Algebra.KTheory.FiniteFredholmCycle
