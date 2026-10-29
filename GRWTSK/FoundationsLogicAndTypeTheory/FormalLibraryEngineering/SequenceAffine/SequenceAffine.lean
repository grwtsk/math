import Mathlib

namespace Mathematics.Attention

universe u v uDigest uLayer uToken

/-- An exact affine endomorphism `x ↦ M x + B`. -/
structure AffineTransition
    (R : Type u) (S : Type v)
    [Semiring R] [AddCommMonoid S] [Module R S] where
  linear : S →ₗ[R] S
  bias : S

namespace AffineTransition

variable {R : Type u} {S : Type v}
variable [Semiring R] [AddCommMonoid S] [Module R S]

instance : CoeFun (AffineTransition R S) (fun _ => S → S) where
  coe φ x := φ.linear x + φ.bias

@[simp]
theorem apply_def (φ : AffineTransition R S) (x : S) :
    φ x = φ.linear x + φ.bias := rfl

/-- Identity segment `(I, 0)`. -/
def id : AffineTransition R S where
  linear := LinearMap.id
  bias := 0

/-- `comp φ ψ` means: apply `ψ`, then apply `φ`. -/
def comp (φ ψ : AffineTransition R S) : AffineTransition R S where
  linear := φ.linear.comp ψ.linear
  bias := φ.bias + φ.linear ψ.bias

@[simp]
theorem comp_apply (φ ψ : AffineTransition R S) (x : S) :
    comp φ ψ x = φ (ψ x) := by
  simp [comp, add_assoc, add_comm, add_left_comm]

@[simp]
theorem id_apply (x : S) : (id : AffineTransition R S) x = x := by
  simp [id]

@[simp]
theorem id_comp (φ : AffineTransition R S) : comp id φ = φ := by
  apply AffineTransition.ext
  · ext x
    rfl
  · simp [comp, id]

@[simp]
theorem comp_id (φ : AffineTransition R S) : comp φ id = φ := by
  apply AffineTransition.ext
  · ext x
    rfl
  · simp [comp, id]

/-- Associativity of `(A₂,B₂) ⋆ (A₁,B₁) = (A₂A₁, B₂ + A₂B₁)`. -/
theorem comp_assoc (φ ψ χ : AffineTransition R S) :
    comp (comp φ ψ) χ = comp φ (comp ψ χ) := by
  apply AffineTransition.ext
  · ext x
    rfl
  · simp [comp, add_assoc]

instance : Monoid (AffineTransition R S) where
  one := id
  mul := comp
  one_mul := id_comp
  mul_one := comp_id
  mul_assoc := comp_assoc

@[simp]
theorem one_apply (x : S) : (1 : AffineTransition R S) x = x := by
  simpa using (id_apply (R := R) x)

@[simp]
theorem mul_apply (φ ψ : AffineTransition R S) (x : S) :
    (φ * ψ) x = φ (ψ x) := by
  simpa using (comp_apply φ ψ x)

/-- Chronological replay: the head transition is applied first. -/
def replay : List (AffineTransition R S) → S → S
  | [], x => x
  | φ :: rest, x => replay rest (φ x)

/-- Canonical affine map of a chronological segment. -/
def segment : List (AffineTransition R S) → AffineTransition R S
  | [] => id
  | φ :: rest => comp (segment rest) φ

@[simp]
theorem segment_nil : segment ([] : List (AffineTransition R S)) = id := rfl

@[simp]
theorem segment_cons (φ : AffineTransition R S)
    (rest : List (AffineTransition R S)) :
    segment (φ :: rest) = comp (segment rest) φ := rfl

/-- The canonical segment map exactly reproduces sequential replay. -/
@[simp]
theorem segment_apply (steps : List (AffineTransition R S)) (x : S) :
    segment steps x = replay steps x := by
  induction steps generalizing x with
  | nil => simp [segment, replay]
  | cons φ rest ih => simp [segment, replay, ih]

/-- Appending chronological segments composes the second segment after the first. -/
theorem segment_append
    (first second : List (AffineTransition R S)) :
    segment (first ++ second) = comp (segment second) (segment first) := by
  induction first with
  | nil => simp [segment]
  | cons φ rest ih =>
      simp only [List.cons_append, segment]
      rw [ih, comp_assoc]

/-- Machine-checkable exact receipt for one affine transition. -/
structure ExactSequenceTransitionCertificate
    (Digest : Type uDigest) (LayerId : Type uLayer) (TokenId : Type uToken) where
  layer : LayerId
  token : TokenId
  transition : AffineTransition R S
  inputState : S
  outputState : S
  inputDigest : Digest
  outputDigest : Digest
  kernelDigest : Digest
  snapshotDigest : Digest
  exactReplay : transition inputState = outputState

/-- Soundly enclosed receipt for one affine transition. -/
structure ApproxSequenceTransitionCertificate
    (Digest : Type uDigest) (LayerId : Type uLayer) (TokenId : Type uToken)
    [PseudoMetricSpace S] where
  layer : LayerId
  token : TokenId
  transition : AffineTransition R S
  inputState : S
  outputState : S
  inputDigest : Digest
  outputDigest : Digest
  kernelDigest : Digest
  snapshotDigest : Digest
  error : ℝ≥0
  enclosedReplay : nndist (transition inputState) outputState ≤ error

end AffineTransition

end Mathematics.Attention
