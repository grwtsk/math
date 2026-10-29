-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ObservationVector.Variant259060442647298c5fb2ceda022082804d386f090c75fadcc1ec479a800675d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"259060442647298c5fb2ceda022082804d386f090c75fadcc1ec479a800675d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.ObservationVector.Variant259060442647298c5fb2ceda022082804d386f090c75fadcc1ec479a800675d7","mathematical_subject":"Logic.Foundations","original_sha256":"259060442647298c5fb2ceda022082804d386f090c75fadcc1ec479a800675d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/FormalResearch/PositiveAtlas/ObservationRepresentation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Certification

/-!
# Observation vectors and reachable representations

The existing factorization contract asks for a total map on a competitor's whole
carrier. Full vectors satisfy it without a state-inhabitance assumption. The
reachable image satisfies it when it has a chosen point: recovery defines a map
on reachable competitor values, and a chosen point extends it elsewhere.
Representative selection below is classical, not an executable search algorithm.
The state, index, value and both carrier universes remain independent.
Minimality means the existing factorization proposition; no minimum-cardinality
claim about carriers or complete codes follows from it.

Human research direction and evaluation: grwtsk contributors.
Implementation assistance: Codex AI.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ObservationVector.Variant259060442647298c5fb2ceda022082804d386f090c75fadcc1ec479a800675d7

namespace FormalResearch.PositiveAtlas

universe u v w a b

namespace CertificateFamily

variable {State : Type u} {Index : Type v} (C : CertificateFamily.{u, v, w} State Index)

/-- All observable values, including vectors that no actual state realizes. -/
abbrev ObservationVector := (i : Index) → C.value i

/-- The complete observation vector of an actual state. -/
def observationVector (s : State) : C.ObservationVector := fun i => C.observe i s

theorem observationVector_eq_iff {x y : State} :
    C.observationVector x = C.observationVector y ↔ C.Equivalent x y :=
  ⟨fun equal i => congrFun equal i, fun equivalent => funext equivalent⟩

/-- Projection recovers every observable from the complete vector. -/
def vectorRepresentation : SufficientRepresentation.{u, v, w, max v w} C where
  carrier := C.ObservationVector
  compress := C.observationVector
  recover := fun i vector => vector i
  recover_compress := fun _ _ => rfl

/-- Recovery from a competitor constructs a total vector even at unreachable values. -/
theorem vectorRepresentation_minimal :
    SufficientRepresentation.IsMinimal.{u, v, w, max v w, b} C.vectorRepresentation := by
  intro r
  refine ⟨fun point i => r.recover i point, ?_⟩
  funext s i
  exact (r.recover_compress i s).symm

/-- A section for full vectors exists exactly when every vector is realized. -/
theorem vector_section_iff_realizable :
    (∃ reconstruct : C.ObservationVector → State,
      ∀ vector, C.observationVector (reconstruct vector) = vector) ↔
    Function.Surjective C.observationVector := by
  constructor
  · rintro ⟨reconstruct, hsection⟩ vector
    exact ⟨reconstruct vector, hsection vector⟩
  · intro realizable
    classical
    exact ⟨fun vector => Classical.choose (realizable vector),
      fun vector => Classical.choose_spec (realizable vector)⟩

/-- Reachable vectors retain a proof of an actual state preimage. -/
abbrev ReachableVector := Set.range C.observationVector

/-- Exact compression to reachable observation vectors. -/
def reachableRepresentation : SufficientRepresentation.{u, v, w, max v w} C where
  carrier := C.ReachableVector
  compress := fun s => ⟨C.observationVector s, s, rfl⟩
  recover := fun i vector => vector.1 i
  recover_compress := fun _ _ => rfl

/-- Select an actual state representative. This uses classical choice. -/
noncomputable def reachableRepresentative (vector : C.ReachableVector) : State :=
  Classical.choose vector.2

theorem reachableRepresentative_section (vector : C.ReachableVector) :
    C.reachableRepresentation.compress (C.reachableRepresentative vector) = vector := by
  apply Subtype.ext
  exact Classical.choose_spec vector.2

/-- Extend recovery to the whole competitor carrier using one reachable default. -/
noncomputable def reachableFactor (default : C.ReachableVector)
    (r : SufficientRepresentation.{u, v, w, b} C) (point : r.carrier) :
    C.ReachableVector := by
  classical
  let vector : C.ObservationVector := fun i => r.recover i point
  exact if h : vector ∈ Set.range C.observationVector then ⟨vector, h⟩ else default

/-- Off the reachable image, the chosen default provides the total-map extension. -/
theorem reachableFactor_unreachable (default : C.ReachableVector)
    (r : SufficientRepresentation.{u, v, w, b} C) (point : r.carrier)
    (unreachable : (fun i => r.recover i point) ∉ Set.range C.observationVector) :
    C.reachableFactor default r point = default := by
  simp only [reachableFactor, unreachable, dite_false]

theorem reachableFactor_compress (default : C.ReachableVector)
    (r : SufficientRepresentation.{u, v, w, b} C) (s : State) :
    C.reachableFactor default r (r.compress s) = C.reachableRepresentation.compress s := by
  have reachable : (fun i => r.recover i (r.compress s)) ∈ Set.range C.observationVector := by
    refine ⟨s, ?_⟩
    funext i
    exact (r.recover_compress i s).symm
  apply Subtype.ext
  simp only [reachableFactor, reachable, dite_true]
  funext i
  exact r.recover_compress i s

/-- A reachable point supplies the extension value required by the total-map contract. -/
theorem reachableRepresentation_minimal_of_point (default : C.ReachableVector) :
    SufficientRepresentation.IsMinimal.{u, v, w, max v w, b} C.reachableRepresentation := by
  intro r
  refine ⟨C.reachableFactor default r, ?_⟩
  funext s
  exact (C.reachableFactor_compress default r s).symm

/-- State inhabitance produces a reachable point and hence a total factor map. -/
theorem reachableRepresentation_minimal (inhabited : Nonempty State) :
    SufficientRepresentation.IsMinimal.{u, v, w, max v w, b} C.reachableRepresentation :=
  C.reachableRepresentation_minimal_of_point
    (C.reachableRepresentation.compress (Classical.choice inhabited))

/-- A classical structural reconstruction of each reachable observational class. -/
noncomputable def reachableQuine (inhabited : Nonempty State) :
    StructuralQuine.{u, v, w, max v w, b} C where
  quotient := C.reachableRepresentation
  reconstruct := C.reachableRepresentative
  «section» := C.reachableRepresentative_section
  reconstruct_equivalent := by
    intro s i
    exact congrFun (Classical.choose_spec
      (C.reachableRepresentation.compress s).2) i
  minimal := C.reachableRepresentation_minimal inhabited

/-- A reachable representative is unique precisely up to the admitted observations. -/
theorem reachable_representatives_equivalent (vector : C.ReachableVector)
    (x y : State) (hx : C.observationVector x = vector.1)
    (hy : C.observationVector y = vector.1) : C.Equivalent x y := by
  intro i
  exact congrFun (hx.trans hy.symm) i

end CertificateFamily

end FormalResearch.PositiveAtlas
