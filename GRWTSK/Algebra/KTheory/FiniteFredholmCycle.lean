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



/-! ## Heterogeneous finite-size block projection traces -/

/-- The trace of a finite block diagonal family of idempotent complex
matrices, even when the block sizes differ, is the sum of the integral
ranks of the blocks. This only concerns a finite direct sum. -/
theorem matrix_trace_heterogeneous_blockDiagonal_idempotent_integral
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (dims : ι → ℕ)
    (P : ∀ i, Matrix (Fin (dims i)) (Fin (dims i)) ℂ)
    (hP : ∀ i, P i * P i = P i) :
    (Matrix.blockDiagonal' P).trace =
      ((∑ i, Module.finrank ℂ (LinearMap.range (P i).toLin')) : ℂ) := by
  rw [Matrix.trace_blockDiagonal']
  calc
    (∑ i, (P i).trace) =
        ∑ i, (Module.finrank ℂ (LinearMap.range (P i).toLin') : ℂ) := by
          apply Finset.sum_congr rfl
          intro i hi
          exact idempotent_matrix_trace_eq_finrank (dims i) (P i) (hP i)
    _ = ((∑ i, Module.finrank ℂ (LinearMap.range (P i).toLin')) : ℂ) := by
      simp

/-- The dimension-weighted normalized ordinary trace of a finite family
of star projections is rational, even when their finite sizes differ.
When the total dimension is zero, this uses Lean's totalized division
and must not be interpreted as a normalized state. -/
theorem matrix_trace_heterogeneous_blockDiagonal_normalized_rational
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (dims : ι → ℕ)
    (P : ∀ i, Matrix (Fin (dims i)) (Fin (dims i)) ℂ)
    (hP : ∀ i, IsStarProjection (P i)) :
    ∃ q : ℚ,
      (Matrix.blockDiagonal' P).trace / ((∑ i, dims i : ℕ) : ℂ) =
        (q : ℂ) := by
  let k : ℕ := ∑ i, Module.finrank ℂ (LinearMap.range (P i).toLin')
  refine ⟨(k : ℚ) / ((∑ i, dims i : ℕ) : ℚ), ?_⟩
  have htrace : (Matrix.blockDiagonal' P).trace = (k : ℂ) := by
    exact matrix_trace_heterogeneous_blockDiagonal_idempotent_integral
      dims P (fun i => (hP i).isIdempotentElem.eq)
  rw [htrace]
  norm_cast

/-! ## Concrete finite matrix projection correspondence -/

/-- A fixed-size complex star projection, with its proof of self-adjoint
idempotence. This is not yet a stabilized projection-equivalence class. -/
abbrev FiniteStarProjection (n : ℕ) :=
  { P : Matrix (Fin n) (Fin n) ℂ // IsStarProjection P }

namespace FiniteStarProjection

/-- A finite rectangular partial-isometry correspondence between two
actual star projections, possibly of different sizes. Because the two
endpoint matrices are projections, no such property is smuggled in as an
unproved theorem. This is a relation, not yet a quotient or group. -/
def MvNRel {m n : ℕ} (P : FiniteStarProjection m)
    (Q : FiniteStarProjection n) : Prop :=
  ∃ V : Matrix (Fin m) (Fin n) ℂ,
    (P : Matrix (Fin m) (Fin m) ℂ) = V * Vᴴ ∧
      (Q : Matrix (Fin n) (Fin n) ℂ) = Vᴴ * V

/-- Every finite complex star projection admits the identity rectangular
correspondence with itself. This only proves reflexivity, not transitivity
of the correspondence relation. -/
theorem mvNRel_refl {n : ℕ} (P : FiniteStarProjection n) :
    MvNRel P P := by
  have hstar : P.valᴴ = P.val := by
    change star P.val = P.val
    exact P.property.isSelfAdjoint.star_eq
  refine ⟨P.val, ?_, ?_⟩
  · simpa only [hstar] using (P.property.isIdempotentElem.eq).symm
  · simpa only [hstar] using (P.property.isIdempotentElem.eq).symm

/-- Transposing a rectangular witness reverses finite projection
correspondence. No quotient or stable analytic K₀ is constructed. -/
theorem mvNRel_symm {m n : ℕ}
    (P : FiniteStarProjection m) (Q : FiniteStarProjection n)
    (h : MvNRel P Q) : MvNRel Q P := by
  obtain ⟨V, hP, hQ⟩ := h
  refine ⟨Vᴴ, ?_, ?_⟩
  · simpa only [Matrix.conjTranspose_conjTranspose] using hQ
  · simpa only [Matrix.conjTranspose_conjTranspose] using hP

/-- Rectangular finite Murray–von Neumann correspondence is transitive.

For witnesses `V : m × n` and `W : n × k`, the composite witness is
`V * W : m × k`. The middle projection identities and idempotence of the
end projections establish both required endpoint equalities. No analytic
completion, quotient, or stable equivalence is assumed. -/
theorem mvNRel_trans {m n k : ℕ}
    (P : FiniteStarProjection m) (Q : FiniteStarProjection n)
    (R : FiniteStarProjection k)
    (hPQ : MvNRel P Q) (hQR : MvNRel Q R) :
    MvNRel P R := by
  obtain ⟨V, hP, hQ₁⟩ := hPQ
  obtain ⟨W, hQ₂, hR⟩ := hQR
  refine ⟨V * W, ?_, ?_⟩
  · calc
      P.val = P.val * P.val := (P.property.isIdempotentElem.eq).symm
      _ = (V * Vᴴ) * (V * Vᴴ) := by rw [hP]
      _ = V * (Vᴴ * V) * Vᴴ := by simp only [Matrix.mul_assoc]
      _ = V * (W * Wᴴ) * Vᴴ := by rw [← hQ₁, hQ₂]
      _ = (V * W) * (V * W)ᴴ := by
        rw [Matrix.conjTranspose_mul]
        simp only [Matrix.mul_assoc]
  · calc
      R.val = R.val * R.val := (R.property.isIdempotentElem.eq).symm
      _ = (Wᴴ * W) * (Wᴴ * W) := by rw [hR]
      _ = Wᴴ * (W * Wᴴ) * W := by simp only [Matrix.mul_assoc]
      _ = Wᴴ * (Vᴴ * V) * W := by rw [← hQ₂, hQ₁]
      _ = (V * W)ᴴ * (V * W) := by
        rw [Matrix.conjTranspose_mul]
        simp only [Matrix.mul_assoc]

/-- Finite Murray–von Neumann correspondence preserves ordinary trace
across different matrix sizes, by rectangular trace cyclicity. -/
theorem trace_eq_of_mvNRel {m n : ℕ}
    (P : FiniteStarProjection m) (Q : FiniteStarProjection n)
    (h : MvNRel P Q) : P.val.trace = Q.val.trace := by
  obtain ⟨V, hP, hQ⟩ := h
  calc
    P.val.trace = (V * Vᴴ).trace := congrArg Matrix.trace hP
    _ = (Vᴴ * V).trace := Matrix.trace_mul_comm V Vᴴ
    _ = Q.val.trace := congrArg Matrix.trace hQ.symm

/-! ## Finite projection classes and their trace -/

/-- Every finite matrix size is retained in the object, rather than
pretending that all projections lie in one fixed matrix algebra. -/
abbrev PackedFiniteStarProjection :=
  Σ n : ℕ, FiniteStarProjection n

/-- The concrete Murray–von Neumann relation on finite complex star
projections of possibly different sizes is an equivalence relation.
This is a finite-matrix quotient relation, not stable analytic K₀. -/
def finiteProjectionSetoid : Setoid PackedFiniteStarProjection where
  r P Q := MvNRel P.2 Q.2
  iseqv := ⟨
    (fun P => mvNRel_refl P.2),
    (fun _ _ h => mvNRel_symm _ _ h),
    (fun _ _ _ h₁ h₂ => mvNRel_trans _ _ _ h₁ h₂)⟩

/-- Murray–von Neumann equivalence classes of finite complex matrix
projections, across all finite sizes. These have not yet been equipped
with a block-sum commutative monoid structure. -/
abbrev FiniteProjectionClass := Quotient finiteProjectionSetoid

/-- Ordinary (unnormalized) matrix trace descends to finite projection
equivalence classes using the rectangular cyclic-trace theorem. -/
def classTrace : FiniteProjectionClass → ℂ :=
  Quotient.lift
    (fun P : PackedFiniteStarProjection => P.2.val.trace)
    (by
      intro P Q h
      exact trace_eq_of_mvNRel P.2 Q.2 h)

/-- The descended trace agrees exactly with ordinary trace on every
representative, with its original finite size preserved. -/
@[simp]
theorem classTrace_mk (P : PackedFiniteStarProjection) :
    classTrace (Quotient.mk finiteProjectionSetoid P) = P.2.val.trace := rfl

/-- Every finite projection class has nonnegative integral ordinary
trace. This uses the established finite idempotent trace/rank identity;
it makes no statement about analytic traces on infinite algebras. -/
theorem classTrace_eq_natCast (x : FiniteProjectionClass) :
    ∃ k : ℕ, classTrace x = (k : ℂ) := by
  refine Quotient.inductionOn x ?_
  intro P
  refine ⟨Module.finrank ℂ (LinearMap.range P.2.val.toLin'), ?_⟩
  change P.2.val.trace =
    (Module.finrank ℂ (LinearMap.range P.2.val.toLin') : ℂ)
  exact idempotent_matrix_trace_eq_finrank P.1 P.2.val
    P.2.property.isIdempotentElem.eq


end FiniteStarProjection


end GRWTSK.Algebra.KTheory.FiniteFredholmCycle
