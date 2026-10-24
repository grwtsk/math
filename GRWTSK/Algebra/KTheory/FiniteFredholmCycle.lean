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

/-! ## Block sums preserve finite projection and witness identities -/

/-- A finite dependent block diagonal of actual complex star projections
is again a star projection. The blocks may have different finite row types.
This is a matrix theorem, not yet an operation on quotient classes. -/
theorem blockDiagonal'_isStarProjection
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    {m : ι → Type*} [∀ i, Fintype (m i)]
    (P : ∀ i, Matrix (m i) (m i) ℂ)
    (hP : ∀ i, IsStarProjection (P i)) :
    IsStarProjection (Matrix.blockDiagonal' P) := by
  refine ⟨?_, ?_⟩
  · change Matrix.blockDiagonal' P * Matrix.blockDiagonal' P =
      Matrix.blockDiagonal' P
    calc
      _ = Matrix.blockDiagonal' (fun i => P i * P i) :=
        (Matrix.blockDiagonal'_mul P P).symm
      _ = Matrix.blockDiagonal' P := by
        congr 1
        funext i
        exact (hP i).isIdempotentElem.eq
  · change (Matrix.blockDiagonal' P)ᴴ = Matrix.blockDiagonal' P
    rw [Matrix.blockDiagonal'_conjTranspose]
    congr 1
    funext i
    change star (P i) = P i
    exact (hP i).isSelfAdjoint.star_eq

/-- Componentwise rectangular Murray–von Neumann witnesses assemble into
one witness for finite dependent block diagonals, even when their row and
column types differ. This proof keeps both endpoint equalities explicit. -/
theorem blockDiagonal'_mvN_witness
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    {m n : ι → Type*}
    [∀ i, Fintype (m i)] [∀ i, Fintype (n i)]
    (P : ∀ i, Matrix (m i) (m i) ℂ)
    (Q : ∀ i, Matrix (n i) (n i) ℂ)
    (V : ∀ i, Matrix (m i) (n i) ℂ)
    (hP : ∀ i, P i = V i * (V i)ᴴ)
    (hQ : ∀ i, Q i = (V i)ᴴ * V i) :
    Matrix.blockDiagonal' P =
      Matrix.blockDiagonal' V * (Matrix.blockDiagonal' V)ᴴ ∧
    Matrix.blockDiagonal' Q =
      (Matrix.blockDiagonal' V)ᴴ * Matrix.blockDiagonal' V := by
  constructor
  · calc
      Matrix.blockDiagonal' P =
          Matrix.blockDiagonal' (fun i => V i * (V i)ᴴ) := by
        congr 1
        funext i
        exact hP i
      _ = Matrix.blockDiagonal' V *
          Matrix.blockDiagonal' (fun i => (V i)ᴴ) :=
            Matrix.blockDiagonal'_mul V (fun i => (V i)ᴴ)
      _ = Matrix.blockDiagonal' V * (Matrix.blockDiagonal' V)ᴴ := by
        rw [Matrix.blockDiagonal'_conjTranspose]
  · calc
      Matrix.blockDiagonal' Q =
          Matrix.blockDiagonal' (fun i => (V i)ᴴ * V i) := by
        congr 1
        funext i
        exact hQ i
      _ = Matrix.blockDiagonal' (fun i => (V i)ᴴ) *
          Matrix.blockDiagonal' V :=
            Matrix.blockDiagonal'_mul (fun i => (V i)ᴴ) V
      _ = (Matrix.blockDiagonal' V)ᴴ * Matrix.blockDiagonal' V := by
        rw [Matrix.blockDiagonal'_conjTranspose]

/-- The assembled finite rectangular witness preserves ordinary trace.
The result concerns sigma-indexed finite block matrices, rather than
postulating an operation on the earlier quotient `FiniteProjectionClass`. -/
theorem blockDiagonal'_mvN_witness_trace_eq
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    {m n : ι → Type*}
    [∀ i, Fintype (m i)] [∀ i, Fintype (n i)]
    (P : ∀ i, Matrix (m i) (m i) ℂ)
    (Q : ∀ i, Matrix (n i) (n i) ℂ)
    (V : ∀ i, Matrix (m i) (n i) ℂ)
    (hP : ∀ i, P i = V i * (V i)ᴴ)
    (hQ : ∀ i, Q i = (V i)ᴴ * V i) :
    (Matrix.blockDiagonal' P).trace = (Matrix.blockDiagonal' Q).trace := by
  obtain ⟨hleft, hright⟩ :=
    blockDiagonal'_mvN_witness P Q V hP hQ
  calc
    (Matrix.blockDiagonal' P).trace =
        (Matrix.blockDiagonal' V * (Matrix.blockDiagonal' V)ᴴ).trace :=
          congrArg Matrix.trace hleft
    _ = ((Matrix.blockDiagonal' V)ᴴ * Matrix.blockDiagonal' V).trace :=
      Matrix.trace_mul_comm (Matrix.blockDiagonal' V) (Matrix.blockDiagonal' V)ᴴ
    _ = (Matrix.blockDiagonal' Q).trace :=
      congrArg Matrix.trace hright.symm

/-! ## Reindexing binary finite star-projection blocks -/

/-- Simultaneous reindexing by a bijection preserves finite star projections.
This is a concrete matrix transport, not an assumed equivalence of K₀ groups. -/
theorem starProjection_reindex_fin
    {α β : Type*} [Fintype α] [Fintype β]
    (e : α ≃ β) (P : Matrix α α ℂ)
    (hP : IsStarProjection P) :
    IsStarProjection (Matrix.reindex e e P) := by
  refine ⟨?_, ?_⟩
  · change Matrix.reindex e e P * Matrix.reindex e e P = Matrix.reindex e e P
    calc
      _ = Matrix.reindex e e (P * P) := by
        simpa only [Matrix.coe_reindexRingEquiv] using
          (map_mul (Matrix.reindexRingEquiv ℂ e) P P).symm
      _ = Matrix.reindex e e P := congrArg _ hP.isIdempotentElem.eq
  · change (Matrix.reindex e e P)ᴴ = Matrix.reindex e e P
    rw [Matrix.conjTranspose_reindex]
    have hstar : Pᴴ = P := by
      change star P = P
      exact hP.isSelfAdjoint.star_eq
    rw [hstar]

/-- The direct sum of two actual finite complex star projections, indexed
by disjoint row and column sums, remains a star projection. -/
theorem starProjection_fromBlocks
    {m n : Type*} [Fintype m] [Fintype n]
    (P : Matrix m m ℂ) (Q : Matrix n n ℂ)
    (hP : IsStarProjection P) (hQ : IsStarProjection Q) :
    IsStarProjection (Matrix.fromBlocks P 0 0 Q) := by
  have hPstar : Pᴴ = P := by
    change star P = P
    exact hP.isSelfAdjoint.star_eq
  have hQstar : Qᴴ = Q := by
    change star Q = Q
    exact hQ.isSelfAdjoint.star_eq
  refine ⟨?_, ?_⟩
  · change Matrix.fromBlocks P 0 0 Q * Matrix.fromBlocks P 0 0 Q =
      Matrix.fromBlocks P 0 0 Q
    rw [Matrix.fromBlocks_multiply]
    simp [hP.isIdempotentElem.eq, hQ.isIdempotentElem.eq]
  · change (Matrix.fromBlocks P 0 0 Q)ᴴ = Matrix.fromBlocks P 0 0 Q
    rw [Matrix.fromBlocks_conjTranspose]
    simp [hPstar, hQstar]

/-- Transport a two-block finite complex matrix onto the canonical
`Fin (m+n)` index using the actual finite-sum equivalence. -/
def finiteBlockSumMatrix {m n : ℕ}
    (P : Matrix (Fin m) (Fin m) ℂ)
    (Q : Matrix (Fin n) (Fin n) ℂ) :
    Matrix (Fin (m + n)) (Fin (m + n)) ℂ :=
  Matrix.reindex
    (finSumFinEquiv : Fin m ⊕ Fin n ≃ Fin (m + n))
    (finSumFinEquiv : Fin m ⊕ Fin n ≃ Fin (m + n))
    (Matrix.fromBlocks P 0 0 Q)

/-- The concrete binary block sum of finite star projections has size
`m+n` and retains proof of the star-projection equations. -/
def finiteBlockSum {m n : ℕ}
    (P : FiniteStarProjection m) (Q : FiniteStarProjection n) :
    FiniteStarProjection (m + n) :=
  ⟨finiteBlockSumMatrix P.val Q.val,
    starProjection_reindex_fin
      (finSumFinEquiv : Fin m ⊕ Fin n ≃ Fin (m + n))
      (Matrix.fromBlocks P.val 0 0 Q.val)
      (starProjection_fromBlocks P.val Q.val P.property Q.property)⟩

@[simp]
theorem finiteBlockSum_val {m n : ℕ}
    (P : FiniteStarProjection m) (Q : FiniteStarProjection n) :
    (finiteBlockSum P Q).val = finiteBlockSumMatrix P.val Q.val := rfl

/-- A block diagonal of two rectangular partial-isometry witnesses has
the required square products. The cross terms vanish by the zero blocks. -/
theorem fromBlocks_mvNWitness
    {a b c d : Type*}
    [Fintype a] [Fintype b] [Fintype c] [Fintype d]
    (V : Matrix a c ℂ) (W : Matrix b d ℂ) :
    Matrix.fromBlocks (V * Vᴴ) 0 0 (W * Wᴴ) =
        Matrix.fromBlocks V 0 0 W * (Matrix.fromBlocks V 0 0 W)ᴴ ∧
    Matrix.fromBlocks (Vᴴ * V) 0 0 (Wᴴ * W) =
        (Matrix.fromBlocks V 0 0 W)ᴴ * Matrix.fromBlocks V 0 0 W := by
  constructor
  · rw [Matrix.fromBlocks_conjTranspose, Matrix.fromBlocks_multiply]
    simp
  · rw [Matrix.fromBlocks_conjTranspose, Matrix.fromBlocks_multiply]
    simp

/-- Rectangular partial-isometry endpoint equations are preserved by
independent bijections of the row and column index types. -/
theorem mvNWitness_reindex
    {a b c d : Type*}
    [Fintype a] [Fintype b] [Fintype c] [Fintype d]
    (ea : a ≃ c) (eb : b ≃ d) (V : Matrix a b ℂ) :
    Matrix.reindex ea ea (V * Vᴴ) =
        Matrix.reindex ea eb V * (Matrix.reindex ea eb V)ᴴ ∧
    Matrix.reindex eb eb (Vᴴ * V) =
        (Matrix.reindex ea eb V)ᴴ * Matrix.reindex ea eb V := by
  constructor
  · rw [Matrix.conjTranspose_reindex]
    simpa only [Matrix.coe_reindexLinearEquiv] using
      (Matrix.reindexLinearEquiv_mul (R := ℂ) (A := ℂ)
        ea eb ea V Vᴴ).symm
  · rw [Matrix.conjTranspose_reindex]
    simpa only [Matrix.coe_reindexLinearEquiv] using
      (Matrix.reindexLinearEquiv_mul (R := ℂ) (A := ℂ)
        eb ea eb Vᴴ V).symm

/-- The concrete two-block sum respects Murray–von Neumann
correspondence for projections of arbitrary finite sizes. This
establishes representative compatibility, before quotient descent. -/
theorem finiteBlockSum_mvNRel
    {m₁ m₂ n₁ n₂ : ℕ}
    (P : FiniteStarProjection m₁) (P' : FiniteStarProjection m₂)
    (Q : FiniteStarProjection n₁) (Q' : FiniteStarProjection n₂)
    (hP : MvNRel P P') (hQ : MvNRel Q Q') :
    MvNRel (finiteBlockSum P Q) (finiteBlockSum P' Q') := by
  obtain ⟨V, hPV, hP'V⟩ := hP
  obtain ⟨W, hQW, hQ'W⟩ := hQ
  let er : (Fin m₁ ⊕ Fin n₁) ≃ Fin (m₁ + n₁) := finSumFinEquiv
  let ec : (Fin m₂ ⊕ Fin n₂) ≃ Fin (m₂ + n₂) := finSumFinEquiv
  let U : Matrix (Fin m₁ ⊕ Fin n₁) (Fin m₂ ⊕ Fin n₂) ℂ :=
    Matrix.fromBlocks V 0 0 W
  obtain ⟨hleft, hright⟩ := fromBlocks_mvNWitness V W
  obtain ⟨hreleft, hreright⟩ := mvNWitness_reindex er ec U
  refine ⟨Matrix.reindex er ec U, ?_, ?_⟩
  · change Matrix.reindex er er (Matrix.fromBlocks P.val 0 0 Q.val) =
        Matrix.reindex er ec U * (Matrix.reindex er ec U)ᴴ
    calc
      Matrix.reindex er er (Matrix.fromBlocks P.val 0 0 Q.val) =
          Matrix.reindex er er
            (Matrix.fromBlocks (V * Vᴴ) 0 0 (W * Wᴴ)) := by
        rw [hPV, hQW]
      _ = Matrix.reindex er er (U * Uᴴ) := congrArg _ hleft
      _ = _ := hreleft
  · change Matrix.reindex ec ec (Matrix.fromBlocks P'.val 0 0 Q'.val) =
        (Matrix.reindex er ec U)ᴴ * Matrix.reindex er ec U
    calc
      Matrix.reindex ec ec (Matrix.fromBlocks P'.val 0 0 Q'.val) =
          Matrix.reindex ec ec
            (Matrix.fromBlocks (Vᴴ * V) 0 0 (Wᴴ * W)) := by
        rw [hP'V, hQ'W]
      _ = Matrix.reindex ec ec (Uᴴ * U) := congrArg _ hright
      _ = _ := hreright

/-! ## Permutation-compatible finite projection classes -/

/-- Reindex one fixed finite projection by an actual equivalence of finite
index types. The projection equations are transported by the established
matrix reindexing map, not supplied as additional assumptions. -/
def reindexedFiniteProjection
    {m n : ℕ} (e : Fin m ≃ Fin n) (P : FiniteStarProjection m) :
    FiniteStarProjection n :=
  ⟨Matrix.reindex e e P.val,
    starProjection_reindex_fin e P.val P.property⟩

/-- Reindexing a finite star projection yields a concrete rectangular
Murray–von Neumann correspondence. The witness is the original
projection matrix reindexed in the column coordinate only. -/
theorem mvNRel_reindexed
    {m n : ℕ} (e : Fin m ≃ Fin n) (P : FiniteStarProjection m) :
    MvNRel P (reindexedFiniteProjection e P) := by
  let V : Matrix (Fin m) (Fin n) ℂ :=
    Matrix.reindex (Equiv.refl (Fin m)) e P.val
  have hstar : P.valᴴ = P.val := by
    change star P.val = P.val
    exact P.property.isSelfAdjoint.star_eq
  have hidem : P.val * P.val = P.val :=
    P.property.isIdempotentElem.eq
  obtain ⟨hleft, hright⟩ :=
    mvNWitness_reindex (Equiv.refl (Fin m)) e P.val
  refine ⟨V, ?_, ?_⟩
  · change P.val = V * Vᴴ
    simpa only [Matrix.reindex_refl_refl, hstar, hidem] using hleft
  · change Matrix.reindex e e P.val = Vᴴ * V
    simpa only [hstar, hidem] using hright

/-! ## Finite binary block-swap permutation -/

/-- The explicit bijection that exchanges the two summands of a finite
index sum, transporting the canonical `Fin (m+n)` indexing to
`Fin (n+m)`. -/
def finiteBlockSwapIndex (m n : ℕ) : Fin (m + n) ≃ Fin (n + m) :=
  ((finSumFinEquiv : Fin m ⊕ Fin n ≃ Fin (m + n)).symm.trans
    (Equiv.sumComm (Fin m) (Fin n))).trans
      (finSumFinEquiv : Fin n ⊕ Fin m ≃ Fin (n + m))

/-- Swapping the two finite block summands is exactly simultaneous
reindexing of the block matrix by `finiteBlockSwapIndex`. -/
theorem finiteBlockSumMatrix_reindex_swap
    {m n : ℕ}
    (P : Matrix (Fin m) (Fin m) ℂ)
    (Q : Matrix (Fin n) (Fin n) ℂ) :
    Matrix.reindex (finiteBlockSwapIndex m n) (finiteBlockSwapIndex m n)
        (finiteBlockSumMatrix P Q) = finiteBlockSumMatrix Q P := by
  let e₁ : Fin m ⊕ Fin n ≃ Fin (m + n) := finSumFinEquiv
  let e₂ : Fin n ⊕ Fin m ≃ Fin (n + m) := finSumFinEquiv
  let flip : Fin m ⊕ Fin n ≃ Fin n ⊕ Fin m :=
    Equiv.sumComm (Fin m) (Fin n)
  let e : Fin (m + n) ≃ Fin (n + m) := finiteBlockSwapIndex m n
  have hswap :
      Matrix.reindex flip flip (Matrix.fromBlocks P 0 0 Q) =
        Matrix.fromBlocks Q 0 0 P := by
    simpa [Matrix.reindex, flip, Equiv.sumComm_symm] using
      (Matrix.fromBlocks_submatrix_sum_swap_sum_swap P
        (0 : Matrix (Fin m) (Fin n) ℂ)
        (0 : Matrix (Fin n) (Fin m) ℂ) Q)
  change Matrix.reindex e e
      (Matrix.reindex e₁ e₁ (Matrix.fromBlocks P 0 0 Q)) =
    Matrix.reindex e₂ e₂ (Matrix.fromBlocks Q 0 0 P)
  rw [← hswap]
  change
    ((Matrix.reindex e₁ e₁).trans (Matrix.reindex e e))
        (Matrix.fromBlocks P 0 0 Q) =
      ((Matrix.reindex flip flip).trans (Matrix.reindex e₂ e₂))
        (Matrix.fromBlocks P 0 0 Q)
  rw [Matrix.reindex_trans, Matrix.reindex_trans]
  have he : e₁.trans e = flip.trans e₂ := by
    ext i
    simp [e, e₁, e₂, flip, finiteBlockSwapIndex, Equiv.trans_apply]
  rw [he]

/-- The componentwise block-swap permutation is an actual rectangular
Murray–von Neumann correspondence, and so does not require an assumed
commutativity law on the quotient. -/
theorem finiteBlockSum_comm_mvNRel
    {m n : ℕ} (P : FiniteStarProjection m)
    (Q : FiniteStarProjection n) :
    MvNRel (finiteBlockSum P Q) (finiteBlockSum Q P) := by
  let e : Fin (m + n) ≃ Fin (n + m) := finiteBlockSwapIndex m n
  have hmatrix :
      (reindexedFiniteProjection e (finiteBlockSum P Q)).val =
        (finiteBlockSum Q P).val := by
    change Matrix.reindex e e (finiteBlockSumMatrix P.val Q.val) =
      finiteBlockSumMatrix Q.val P.val
    exact finiteBlockSumMatrix_reindex_swap P.val Q.val
  have heq :
      reindexedFiniteProjection e (finiteBlockSum P Q) =
        finiteBlockSum Q P := Subtype.ext hmatrix
  exact heq ▸ mvNRel_reindexed e (finiteBlockSum P Q)

/-! ## Reassociation of three finite projection blocks -/

/-- Simultaneous reindexing of two block diagonal matrix factors is
componentwise reindexing. This holds before applying any quotient. -/
theorem fromBlocks_reindex
    {a b c d : Type*} [Fintype a] [Fintype b]
    [Fintype c] [Fintype d]
    (ea : a ≃ c) (eb : b ≃ d)
    (P : Matrix a a ℂ) (Q : Matrix b b ℂ) :
    Matrix.reindex (Equiv.sumCongr ea eb) (Equiv.sumCongr ea eb)
        (Matrix.fromBlocks P 0 0 Q) =
      Matrix.fromBlocks (Matrix.reindex ea ea P) 0 0
        (Matrix.reindex eb eb Q) := by
  ext i j
  rcases i with i | i <;> rcases j with j | j <;>
    rfl

/-- Reassociation of three finite diagonal blocks follows from the
actual sum associator, not from an unproved associativity interface. -/
theorem fromBlocks_assoc_reindex
    {a b c : Type*} [Fintype a] [Fintype b] [Fintype c]
    (P : Matrix a a ℂ) (Q : Matrix b b ℂ)
    (R : Matrix c c ℂ) :
    Matrix.reindex (Equiv.sumAssoc a b c) (Equiv.sumAssoc a b c)
        (Matrix.fromBlocks (Matrix.fromBlocks P 0 0 Q) 0 0 R) =
      Matrix.fromBlocks P 0 0 (Matrix.fromBlocks Q 0 0 R) := by
  ext i j
  rcases i with i | (i | i) <;> rcases j with j | (j | j) <;>
    rfl

/-- Functoriality of matrix reindexing for two successive bijections. -/
theorem matrix_reindex_comp
    {a b c : Type*} [Fintype a] [Fintype b] [Fintype c]
    (e₁ : a ≃ b) (e₂ : b ≃ c) (P : Matrix a a ℂ) :
    Matrix.reindex e₂ e₂ (Matrix.reindex e₁ e₁ P) =
      Matrix.reindex (e₁.trans e₂) (e₁.trans e₂) P := by
  change ((Matrix.reindex e₁ e₁).trans (Matrix.reindex e₂ e₂)) P =
    Matrix.reindex (e₁.trans e₂) (e₁.trans e₂) P
  rw [Matrix.reindex_trans]

/-- Flatten the left-parenthesized sum of three finite index types. -/
def finiteBlockLeftIndex (m n k : ℕ) :
    (Fin m ⊕ Fin n) ⊕ Fin k ≃ Fin ((m + n) + k) :=
  (Equiv.sumCongr
    (finSumFinEquiv : Fin m ⊕ Fin n ≃ Fin (m + n))
    (Equiv.refl (Fin k))).trans
      (finSumFinEquiv : Fin (m + n) ⊕ Fin k ≃ Fin ((m + n) + k))

/-- Flatten the right-parenthesized sum of three finite index types. -/
def finiteBlockRightIndex (m n k : ℕ) :
    Fin m ⊕ (Fin n ⊕ Fin k) ≃ Fin (m + (n + k)) :=
  (Equiv.sumCongr
    (Equiv.refl (Fin m))
    (finSumFinEquiv : Fin n ⊕ Fin k ≃ Fin (n + k))).trans
      (finSumFinEquiv : Fin m ⊕ Fin (n + k) ≃ Fin (m + (n + k)))

/-- The explicit index bijection from `Fin ((m+n)+k)` to
`Fin (m+(n+k))` induced by `Equiv.sumAssoc`. -/
def finiteBlockAssocIndex (m n k : ℕ) :
    Fin ((m + n) + k) ≃ Fin (m + (n + k)) :=
  ((finiteBlockLeftIndex m n k).symm.trans
    (Equiv.sumAssoc (Fin m) (Fin n) (Fin k))).trans
      (finiteBlockRightIndex m n k)

/-- The nested left-associated binary block matrix is obtained by
flattening the corresponding three-block diagonal along the genuine
finite-sum bijection. -/
theorem finiteBlockSumMatrix_left_flat
    {m n k : ℕ}
    (P : Matrix (Fin m) (Fin m) ℂ)
    (Q : Matrix (Fin n) (Fin n) ℂ)
    (R : Matrix (Fin k) (Fin k) ℂ) :
    finiteBlockSumMatrix (finiteBlockSumMatrix P Q) R =
      Matrix.reindex (finiteBlockLeftIndex m n k)
        (finiteBlockLeftIndex m n k)
        (Matrix.fromBlocks (Matrix.fromBlocks P 0 0 Q) 0 0 R) := by
  let inner : Fin m ⊕ Fin n ≃ Fin (m + n) := finSumFinEquiv
  let outer : Fin (m + n) ⊕ Fin k ≃ Fin ((m + n) + k) := finSumFinEquiv
  let middle : (Fin m ⊕ Fin n) ⊕ Fin k ≃
      Fin (m + n) ⊕ Fin k :=
    Equiv.sumCongr inner (Equiv.refl (Fin k))
  let triple : Matrix ((Fin m ⊕ Fin n) ⊕ Fin k)
      ((Fin m ⊕ Fin n) ⊕ Fin k) ℂ :=
    Matrix.fromBlocks (Matrix.fromBlocks P 0 0 Q) 0 0 R
  have hblock :
      Matrix.fromBlocks (Matrix.reindex inner inner
        (Matrix.fromBlocks P 0 0 Q)) 0 0 R =
        Matrix.reindex middle middle triple := by
    simpa only [Matrix.reindex_refl_refl] using
      (fromBlocks_reindex inner (Equiv.refl (Fin k))
        (Matrix.fromBlocks P 0 0 Q) R).symm
  calc
    finiteBlockSumMatrix (finiteBlockSumMatrix P Q) R =
      Matrix.reindex outer outer
        (Matrix.fromBlocks (Matrix.reindex inner inner
          (Matrix.fromBlocks P 0 0 Q)) 0 0 R) := rfl
    _ = Matrix.reindex outer outer (Matrix.reindex middle middle triple) :=
      congrArg (Matrix.reindex outer outer) hblock
    _ = Matrix.reindex (middle.trans outer) (middle.trans outer) triple :=
      matrix_reindex_comp middle outer triple
    _ = Matrix.reindex (finiteBlockLeftIndex m n k)
          (finiteBlockLeftIndex m n k) triple := rfl

/-- The nested right-associated binary block matrix is obtained from
the other parenthesization of the same finite three-block diagonal. -/
theorem finiteBlockSumMatrix_right_flat
    {m n k : ℕ}
    (P : Matrix (Fin m) (Fin m) ℂ)
    (Q : Matrix (Fin n) (Fin n) ℂ)
    (R : Matrix (Fin k) (Fin k) ℂ) :
    finiteBlockSumMatrix P (finiteBlockSumMatrix Q R) =
      Matrix.reindex (finiteBlockRightIndex m n k)
        (finiteBlockRightIndex m n k)
        (Matrix.fromBlocks P 0 0 (Matrix.fromBlocks Q 0 0 R)) := by
  let inner : Fin n ⊕ Fin k ≃ Fin (n + k) := finSumFinEquiv
  let outer : Fin m ⊕ Fin (n + k) ≃ Fin (m + (n + k)) := finSumFinEquiv
  let middle : Fin m ⊕ (Fin n ⊕ Fin k) ≃
      Fin m ⊕ Fin (n + k) :=
    Equiv.sumCongr (Equiv.refl (Fin m)) inner
  let triple : Matrix (Fin m ⊕ (Fin n ⊕ Fin k))
      (Fin m ⊕ (Fin n ⊕ Fin k)) ℂ :=
    Matrix.fromBlocks P 0 0 (Matrix.fromBlocks Q 0 0 R)
  have hblock :
      Matrix.fromBlocks P 0 0
          (Matrix.reindex inner inner (Matrix.fromBlocks Q 0 0 R)) =
        Matrix.reindex middle middle triple := by
    simpa only [Matrix.reindex_refl_refl] using
      (fromBlocks_reindex (Equiv.refl (Fin m)) inner P
        (Matrix.fromBlocks Q 0 0 R)).symm
  calc
    finiteBlockSumMatrix P (finiteBlockSumMatrix Q R) =
      Matrix.reindex outer outer
        (Matrix.fromBlocks P 0 0
          (Matrix.reindex inner inner (Matrix.fromBlocks Q 0 0 R))) := rfl
    _ = Matrix.reindex outer outer (Matrix.reindex middle middle triple) :=
      congrArg (Matrix.reindex outer outer) hblock
    _ = Matrix.reindex (middle.trans outer) (middle.trans outer) triple :=
      matrix_reindex_comp middle outer triple
    _ = Matrix.reindex (finiteBlockRightIndex m n k)
          (finiteBlockRightIndex m n k) triple := rfl

/-- The two parenthesizations of three binary finite block sums agree
after an explicitly constructed permutation of `Fin` indices. The
proof uses the flat three-block identities and the actual sum
associator, not equality merely of traces or ranks. -/
theorem finiteBlockSumMatrix_assoc_reindex
    {m n k : ℕ}
    (P : Matrix (Fin m) (Fin m) ℂ)
    (Q : Matrix (Fin n) (Fin n) ℂ)
    (R : Matrix (Fin k) (Fin k) ℂ) :
    Matrix.reindex (finiteBlockAssocIndex m n k)
        (finiteBlockAssocIndex m n k)
        (finiteBlockSumMatrix (finiteBlockSumMatrix P Q) R) =
      finiteBlockSumMatrix P (finiteBlockSumMatrix Q R) := by
  let eL := finiteBlockLeftIndex m n k
  let eR := finiteBlockRightIndex m n k
  let ea := Equiv.sumAssoc (Fin m) (Fin n) (Fin k)
  let e := finiteBlockAssocIndex m n k
  let left : Matrix ((Fin m ⊕ Fin n) ⊕ Fin k)
      ((Fin m ⊕ Fin n) ⊕ Fin k) ℂ :=
    Matrix.fromBlocks (Matrix.fromBlocks P 0 0 Q) 0 0 R
  let right : Matrix (Fin m ⊕ (Fin n ⊕ Fin k))
      (Fin m ⊕ (Fin n ⊕ Fin k)) ℂ :=
    Matrix.fromBlocks P 0 0 (Matrix.fromBlocks Q 0 0 R)
  have he : eL.trans e = ea.trans eR := by
    ext x
    simp [e, eL, eR, ea, finiteBlockAssocIndex, Equiv.trans_apply]
  calc
    Matrix.reindex e e
        (finiteBlockSumMatrix (finiteBlockSumMatrix P Q) R) =
      Matrix.reindex e e (Matrix.reindex eL eL left) := by
        rw [finiteBlockSumMatrix_left_flat]
    _ = Matrix.reindex (eL.trans e) (eL.trans e) left :=
      matrix_reindex_comp eL e left
    _ = Matrix.reindex (ea.trans eR) (ea.trans eR) left := by
      rw [he]
    _ = Matrix.reindex eR eR (Matrix.reindex ea ea left) :=
      (matrix_reindex_comp ea eR left).symm
    _ = Matrix.reindex eR eR right := by
      rw [fromBlocks_assoc_reindex]
    _ = finiteBlockSumMatrix P (finiteBlockSumMatrix Q R) :=
      (finiteBlockSumMatrix_right_flat P Q R).symm

/-- The explicit finite index reassociation induces a rectangular
Murray–von Neumann correspondence between the two triple block sums.
The proof uses the previous permutation-equivalence witness. -/
theorem finiteBlockSum_assoc_mvNRel
    {m n k : ℕ}
    (P : FiniteStarProjection m)
    (Q : FiniteStarProjection n)
    (R : FiniteStarProjection k) :
    MvNRel (finiteBlockSum (finiteBlockSum P Q) R)
      (finiteBlockSum P (finiteBlockSum Q R)) := by
  let e := finiteBlockAssocIndex m n k
  have hval :
      (reindexedFiniteProjection e
        (finiteBlockSum (finiteBlockSum P Q) R)).val =
          (finiteBlockSum P (finiteBlockSum Q R)).val := by
    change Matrix.reindex e e
      (finiteBlockSumMatrix (finiteBlockSumMatrix P.val Q.val) R.val) =
        finiteBlockSumMatrix P.val (finiteBlockSumMatrix Q.val R.val)
    exact finiteBlockSumMatrix_assoc_reindex P.val Q.val R.val
  have hsub :
      reindexedFiniteProjection e (finiteBlockSum (finiteBlockSum P Q) R) =
        finiteBlockSum P (finiteBlockSum Q R) :=
    Subtype.ext hval
  exact hsub ▸ mvNRel_reindexed e (finiteBlockSum (finiteBlockSum P Q) R)

/-! ## Zero projection and explicit rectangular identity witnesses -/

/-- The unique zero-dimensional complex matrix is a star projection.
This is a genuine finite-dimensional object, not an analytic identity class. -/
def finiteZeroProjection : FiniteStarProjection 0 :=
  ⟨0, IsStarProjection.zero _⟩

/-- The sum with a zero-dimensional zero projection is Murray–von Neumann
equivalent to the original projection. The rectangular witness is the
two-row-block matrix `fromRows P 0`, transported by `finSumFinEquiv`.
No quotient identity is assumed in the proof. -/
theorem finiteBlockSum_zero_right_mvNRel
    {m : ℕ} (P : FiniteStarProjection m) :
    MvNRel (finiteBlockSum P finiteZeroProjection) P := by
  let e : Fin m ⊕ Fin 0 ≃ Fin (m + 0) := finSumFinEquiv
  let V : Matrix (Fin m ⊕ Fin 0) (Fin m) ℂ :=
    Matrix.fromRows P.val 0
  have hstar : P.valᴴ = P.val := by
    change star P.val = P.val
    exact P.property.isSelfAdjoint.star_eq
  have hidem : P.val * P.val = P.val :=
    P.property.isIdempotentElem.eq
  have hleft :
      Matrix.fromBlocks P.val 0 0
          (0 : Matrix (Fin 0) (Fin 0) ℂ) = V * Vᴴ := by
    dsimp [V]
    rw [Matrix.conjTranspose_fromRows_eq_fromCols_conjTranspose,
      Matrix.fromRows_mul_fromCols]
    simp [hstar, hidem]
  have hright : P.val = Vᴴ * V := by
    dsimp [V]
    rw [Matrix.conjTranspose_fromRows_eq_fromCols_conjTranspose,
      Matrix.fromCols_mul_fromRows]
    simp [hstar, hidem]
  obtain ⟨h₁, h₂⟩ := mvNWitness_reindex e (Equiv.refl (Fin m)) V
  refine ⟨Matrix.reindex e (Equiv.refl _) V, ?_, ?_⟩
  · change
      Matrix.reindex e e
          (Matrix.fromBlocks P.val 0 0
            (0 : Matrix (Fin 0) (Fin 0) ℂ)) =
        Matrix.reindex e (Equiv.refl _) V *
          (Matrix.reindex e (Equiv.refl _) V)ᴴ
    exact (congrArg (Matrix.reindex e e) hleft).trans h₁
  · change P.val =
        (Matrix.reindex e (Equiv.refl _) V)ᴴ *
          Matrix.reindex e (Equiv.refl _) V
    calc
      P.val = Matrix.reindex (Equiv.refl _) (Equiv.refl _) (Vᴴ * V) := by
        rw [← hright, Matrix.reindex_refl_refl]
      _ = _ := h₂

/-- The left zero-dimensional block also admits an explicit rectangular
witness, now `fromRows 0 P`. Both zero identities can therefore be
proved without assuming commutativity of the quotient operation. -/
theorem finiteBlockSum_zero_left_mvNRel
    {m : ℕ} (P : FiniteStarProjection m) :
    MvNRel (finiteBlockSum finiteZeroProjection P) P := by
  let e : Fin 0 ⊕ Fin m ≃ Fin (0 + m) := finSumFinEquiv
  let V : Matrix (Fin 0 ⊕ Fin m) (Fin m) ℂ :=
    Matrix.fromRows 0 P.val
  have hstar : P.valᴴ = P.val := by
    change star P.val = P.val
    exact P.property.isSelfAdjoint.star_eq
  have hidem : P.val * P.val = P.val :=
    P.property.isIdempotentElem.eq
  have hleft :
      Matrix.fromBlocks (0 : Matrix (Fin 0) (Fin 0) ℂ)
          0 0 P.val = V * Vᴴ := by
    dsimp [V]
    rw [Matrix.conjTranspose_fromRows_eq_fromCols_conjTranspose,
      Matrix.fromRows_mul_fromCols]
    simp [hstar, hidem]
  have hright : P.val = Vᴴ * V := by
    dsimp [V]
    rw [Matrix.conjTranspose_fromRows_eq_fromCols_conjTranspose,
      Matrix.fromCols_mul_fromRows]
    simp [hstar, hidem]
  obtain ⟨h₁, h₂⟩ := mvNWitness_reindex e (Equiv.refl (Fin m)) V
  refine ⟨Matrix.reindex e (Equiv.refl _) V, ?_, ?_⟩
  · change
      Matrix.reindex e e
          (Matrix.fromBlocks (0 : Matrix (Fin 0) (Fin 0) ℂ)
            0 0 P.val) =
        Matrix.reindex e (Equiv.refl _) V *
          (Matrix.reindex e (Equiv.refl _) V)ᴴ
    exact (congrArg (Matrix.reindex e e) hleft).trans h₁
  · change P.val =
        (Matrix.reindex e (Equiv.refl _) V)ᴴ *
          Matrix.reindex e (Equiv.refl _) V
    calc
      P.val = Matrix.reindex (Equiv.refl _) (Equiv.refl _) (Vᴴ * V) := by
        rw [← hright, Matrix.reindex_refl_refl]
      _ = _ := h₂

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

/-- The zero class is represented by the unique star projection in
the zero-dimensional complex matrix algebra. -/
def classZero : FiniteProjectionClass :=
  Quotient.mk finiteProjectionSetoid
    ⟨0, finiteZeroProjection⟩

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

/-- Bijective matrix reindexing preserves the finite Murray–von Neumann
class. This is a proved permutation-invariance supplier for the pending
commutativity and associativity laws on the quotient. -/
theorem class_mk_reindexed
    {m n : ℕ} (e : Fin m ≃ Fin n) (P : FiniteStarProjection m) :
    Quotient.mk finiteProjectionSetoid ⟨m, P⟩ =
      Quotient.mk finiteProjectionSetoid
        ⟨n, reindexedFiniteProjection e P⟩ := by
  exact Quotient.sound (mvNRel_reindexed e P)

@[simp]
theorem classTrace_classZero : classTrace classZero = 0 := by
  change (0 : Matrix (Fin 0) (Fin 0) ℂ).trace = 0
  simp

/-- Binary block sum descends from actual finite star projections to
Murray–von Neumann classes because `finiteBlockSum_mvNRel` transports
both representatives through an assembled rectangular witness.
This operation is not yet given associativity, commutativity, or unit laws. -/
def classBlockSum (x y : FiniteProjectionClass) : FiniteProjectionClass :=
  Quotient.liftOn₂ x y
    (fun P Q : PackedFiniteStarProjection =>
      Quotient.mk finiteProjectionSetoid
        ⟨P.1 + Q.1, finiteBlockSum P.2 Q.2⟩)
    (by
      intro P P' Q Q' hP hQ
      apply Quotient.sound
      exact finiteBlockSum_mvNRel P.2 P'.2 Q.2 Q'.2 hP hQ)

/-- The descended block sum agrees with the constructed finite block sum
of representatives, retaining their exact dimension indices. -/
@[simp]
theorem classBlockSum_mk
    (P Q : PackedFiniteStarProjection) :
    classBlockSum
      (Quotient.mk finiteProjectionSetoid P)
      (Quotient.mk finiteProjectionSetoid Q) =
        Quotient.mk finiteProjectionSetoid
          ⟨P.1 + Q.1, finiteBlockSum P.2 Q.2⟩ := rfl

/-- The binary quotient block sum has a genuine right identity, proved
by the explicit finite rectangular Murray–von Neumann witness. -/
theorem classBlockSum_zero_right (x : FiniteProjectionClass) :
    classBlockSum x classZero = x := by
  refine Quotient.inductionOn x ?_
  intro P
  change
    Quotient.mk finiteProjectionSetoid
        ⟨P.1 + 0, finiteBlockSum P.2 finiteZeroProjection⟩ =
      Quotient.mk finiteProjectionSetoid P
  exact Quotient.sound (finiteBlockSum_zero_right_mvNRel P.2)

/-- The binary quotient block sum has a genuine left identity,
independently of any commutativity claim. -/
theorem classBlockSum_zero_left (x : FiniteProjectionClass) :
    classBlockSum classZero x = x := by
  refine Quotient.inductionOn x ?_
  intro P
  change
    Quotient.mk finiteProjectionSetoid
        ⟨0 + P.1, finiteBlockSum finiteZeroProjection P.2⟩ =
      Quotient.mk finiteProjectionSetoid P
  exact Quotient.sound (finiteBlockSum_zero_left_mvNRel P.2)

/-- Commutativity of binary block sum on finite Murray–von Neumann
classes, obtained from the explicit matrix-block swap and its rectangular
partial-isometry witness. No classification by rank is assumed. -/
theorem classBlockSum_comm (x y : FiniteProjectionClass) :
    classBlockSum x y = classBlockSum y x := by
  refine Quotient.inductionOn₂ x y ?_
  intro P Q
  change Quotient.mk finiteProjectionSetoid
      ⟨P.1 + Q.1, finiteBlockSum P.2 Q.2⟩ =
    Quotient.mk finiteProjectionSetoid
      ⟨Q.1 + P.1, finiteBlockSum Q.2 P.2⟩
  exact Quotient.sound (finiteBlockSum_comm_mvNRel P.2 Q.2)

/-- Associativity of finite projection block sum on Murray–von Neumann
classes. The proof reduces all three quotient variables to representatives
and uses the explicit sum-index associator witness, rather than
postulating associativity or comparing traces alone. -/
theorem classBlockSum_assoc
    (x y z : FiniteProjectionClass) :
    classBlockSum (classBlockSum x y) z =
      classBlockSum x (classBlockSum y z) := by
  refine Quotient.inductionOn₃ x y z ?_
  intro P Q R
  change Quotient.mk finiteProjectionSetoid
      ⟨(P.1 + Q.1) + R.1, finiteBlockSum (finiteBlockSum P.2 Q.2) R.2⟩ =
    Quotient.mk finiteProjectionSetoid
      ⟨P.1 + (Q.1 + R.1), finiteBlockSum P.2 (finiteBlockSum Q.2 R.2)⟩
  exact Quotient.sound (finiteBlockSum_assoc_mvNRel P.2 Q.2 R.2)

/-- The ordinary trace of a two-block matrix is the sum of its two
ordinary traces, without dimension-dependent normalization. -/
theorem matrix_trace_fromBlocks
    {m n : Type*} [Fintype m] [Fintype n]
    (P : Matrix m m ℂ) (Q : Matrix n n ℂ) :
    (Matrix.fromBlocks P 0 0 Q).trace = P.trace + Q.trace := by
  simp [Matrix.trace, Matrix.diag, Fintype.sum_sum_type]

/-- Reindexing a two-block matrix to `Fin (m+n)` preserves its ordinary
trace, hence this concrete binary sum has additive ordinary trace. -/
theorem finiteBlockSumMatrix_trace
    {m n : ℕ}
    (P : Matrix (Fin m) (Fin m) ℂ)
    (Q : Matrix (Fin n) (Fin n) ℂ) :
    (finiteBlockSumMatrix P Q).trace = P.trace + Q.trace := by
  calc
    (finiteBlockSumMatrix P Q).trace =
        (Matrix.fromBlocks P 0 0 Q).trace := by
      unfold finiteBlockSumMatrix
      simpa only [Matrix.coe_reindexAlgEquiv] using
        (Matrix.trace_map
          (Matrix.reindexAlgEquiv ℂ ℂ
            (finSumFinEquiv : Fin m ⊕ Fin n ≃ Fin (m + n)))
          (Matrix.fromBlocks P 0 0 Q))
    _ = P.trace + Q.trace := matrix_trace_fromBlocks P Q

/-- The actual descended class trace respects the quotient block sum.
This is a trace compatibility theorem, not yet a declaration of a
commutative monoid or its analytic K₀ completion. -/
theorem classTrace_classBlockSum
    (x y : FiniteProjectionClass) :
    classTrace (classBlockSum x y) = classTrace x + classTrace y := by
  refine Quotient.inductionOn₂ x y ?_
  intro P Q
  change (finiteBlockSumMatrix P.2.val Q.2.val).trace =
    P.2.val.trace + Q.2.val.trace
  exact finiteBlockSumMatrix_trace P.2.val Q.2.val

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
