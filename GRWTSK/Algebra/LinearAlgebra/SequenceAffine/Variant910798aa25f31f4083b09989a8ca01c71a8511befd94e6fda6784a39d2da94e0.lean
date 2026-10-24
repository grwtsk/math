-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.AffineTransition.Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.AffineTransition.Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Attention/SequenceAffine.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Module.LinearMap.Basic
import Mathlib.Topology.MetricSpace.Lipschitz

/-!
# Exact affine sequence transitions

An affine transition is a linear endomorphism together with a bias.  The
composition law is oriented so chronological replay, segment condensation,
and prefix scans all agree definitionally with execution.
-/


namespace GRWTSK.Algebra.LinearAlgebra.AffineTransition.Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84

namespace Mathematics.Attention

open scoped NNReal

universe u v uDigest uLayer uToken

/-- An exact affine endomorphism `x ↦ M x + B`. -/
@[ext]
structure AffineTransition
    (R : Type u) (S : Type v)
    [Semiring R] [AddCommMonoid S] [Module R S] where
  linear : S →ₗ[R] S
  bias : S

namespace AffineTransition

variable {R : Type u} {S : Type v}
variable [Semiring R] [AddCommMonoid S] [Module R S]

instance : CoeFun (AffineTransition R S) (fun _ => S → S) where
  coe transition state := transition.linear state + transition.bias

@[simp]
theorem apply_def (transition : AffineTransition R S) (state : S) :
    transition state = transition.linear state + transition.bias := rfl

/-- Identity segment `(I, 0)`. -/
def id : AffineTransition R S where
  linear := LinearMap.id
  bias := 0

/-- `comp later earlier` applies `earlier` first, then `later`. -/
def comp
    (later earlier : AffineTransition R S) :
    AffineTransition R S where
  linear := later.linear.comp earlier.linear
  bias := later.bias + later.linear earlier.bias

@[simp]
theorem comp_apply
    (later earlier : AffineTransition R S)
    (state : S) :
    comp later earlier state = later (earlier state) := by
  simp [comp, add_comm, add_left_comm]

@[simp]
theorem id_apply (state : S) :
    (id : AffineTransition R S) state = state := by
  simp [id]

@[simp]
theorem id_comp (transition : AffineTransition R S) :
    comp id transition = transition := by
  apply AffineTransition.ext
  · ext state
    rfl
  · simp [comp, id]

@[simp]
theorem comp_id (transition : AffineTransition R S) :
    comp transition id = transition := by
  apply AffineTransition.ext
  · ext state
    rfl
  · simp [comp, id]

/-- Associativity of `(A₂,B₂) ⋆ (A₁,B₁) = (A₂A₁, B₂ + A₂B₁)`. -/
theorem comp_assoc
    (third second first : AffineTransition R S) :
    comp (comp third second) first =
      comp third (comp second first) := by
  apply AffineTransition.ext
  · ext state
    rfl
  · simp [comp, add_assoc]

instance : Monoid (AffineTransition R S) where
  one := id
  mul := comp
  one_mul := id_comp
  mul_one := comp_id
  mul_assoc := comp_assoc

@[simp]
theorem one_apply (state : S) :
    (1 : AffineTransition R S) state = state := by
  change id state = state
  exact id_apply state

@[simp]
theorem mul_apply
    (later earlier : AffineTransition R S)
    (state : S) :
    (later * earlier) state = later (earlier state) := by
  change comp later earlier state = later (earlier state)
  exact comp_apply later earlier state

/-- Chronological replay: the head transition is applied first. -/
def replay : List (AffineTransition R S) → S → S
  | [], state => state
  | transition :: rest, state => replay rest (transition state)

/-- Canonical affine map of a chronological segment. -/
def segment : List (AffineTransition R S) → AffineTransition R S
  | [] => id
  | transition :: rest => comp (segment rest) transition

@[simp]
theorem segment_nil :
    segment ([] : List (AffineTransition R S)) = id := rfl

@[simp]
theorem segment_cons
    (transition : AffineTransition R S)
    (rest : List (AffineTransition R S)) :
    segment (transition :: rest) =
      comp (segment rest) transition := rfl

/-- The canonical segment map exactly reproduces sequential replay. -/
@[simp]
theorem segment_apply
    (steps : List (AffineTransition R S))
    (state : S) :
    segment steps state = replay steps state := by
  induction steps generalizing state with
  | nil => simp [segment, replay]
  | cons transition rest inductionHypothesis =>
      change
        comp (segment rest) transition state =
          replay rest (transition state)
      rw [comp_apply, inductionHypothesis]

/-- Appending chronological segments applies the second after the first. -/
theorem segment_append
    (first second : List (AffineTransition R S)) :
    segment (first ++ second) =
      comp (segment second) (segment first) := by
  induction first with
  | nil => simp [segment]
  | cons transition rest inductionHypothesis =>
      simp only [List.cons_append, segment]
      rw [inductionHypothesis, comp_assoc]

/-- Machine-checkable exact receipt for one affine transition. -/
structure ExactSequenceTransitionCertificate
    (Digest : Type uDigest)
    (LayerId : Type uLayer)
    (TokenId : Type uToken) where
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

/-- Sound enclosure receipt for one affine transition. -/
structure ApproxSequenceTransitionCertificate
    (Digest : Type uDigest)
    (LayerId : Type uLayer)
    (TokenId : Type uToken)
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
  enclosedReplay :
    nndist (transition inputState) outputState ≤ error

end AffineTransition

end Mathematics.Attention
