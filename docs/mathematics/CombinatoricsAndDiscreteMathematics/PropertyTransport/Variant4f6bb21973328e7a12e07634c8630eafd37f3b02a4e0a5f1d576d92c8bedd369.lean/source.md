# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PropertyTransport.Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5db49e5aa7bdd14dbad268b73fad1ee8338997b7` · SHA-256 `b194da859c61bd82dc5f69b157f6cb3c0e043a9cce6548b198f40ec85b9969a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TransportAdmission.Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TransportAdmission.Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"d96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Concept/PropertyTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.Relation
import Mathematics.Projection.SnapshotAuthority

/-!
# Property-specific path transport

Paths move values.  They do not preserve arbitrary propositions by default.
Each transported property therefore carries its own naturality proof.
Registering an `analogousTo` relation can propose a path, but cannot populate
the proof-bearing preserved-property collection.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TransportAdmission.Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2

namespace Mathematics.Concept

universe u v w

/-- One authority coordinate may remain unchanged or fall to its fail-closed bottom. -/
def weakensToBottom
    {Authority : Type*}
    (bottom source result : Authority) : Prop :=
  result = source ∨ result = bottom

theorem weakensToBottom_trans
    {Authority : Type*}
    {bottom source middle result : Authority}
    (middleWeakens : weakensToBottom bottom source middle)
    (resultWeakens : weakensToBottom bottom middle result) :
    weakensToBottom bottom source result := by
  rcases resultWeakens with resultEqualsMiddle | resultEqualsBottom
  · simpa [resultEqualsMiddle] using middleWeakens
  · exact Or.inr resultEqualsBottom

/--
Componentwise authority weakening.  No scalar status combines the independent
coordinates.
-/
def Profile.NoStrongerThan
    (result source : Profile) : Prop :=
  weakensToBottom .candidate
      source.semanticAuthority result.semanticAuthority ∧
  weakensToBottom .none
      source.theoremAuthority result.theoremAuthority ∧
  weakensToBottom .none
      source.implementationAuthority result.implementationAuthority ∧
  weakensToBottom .none
      source.runtimeAuthority result.runtimeAuthority ∧
  weakensToBottom .none
      source.representationAuthority result.representationAuthority ∧
  weakensToBottom .outOfScope
      source.applicabilityAuthority result.applicabilityAuthority ∧
  weakensToBottom .rejected
      source.adoptionAuthority result.adoptionAuthority

@[simp] theorem Profile.noStrongerThan_refl
    (profile : Profile) :
    profile.NoStrongerThan profile := by
  repeat' apply And.intro
  all_goals exact Or.inl rfl

theorem Profile.NoStrongerThan.trans
    {source middle result : Profile}
    (middleWeakens : middle.NoStrongerThan source)
    (resultWeakens : result.NoStrongerThan middle) :
    result.NoStrongerThan source := by
  rcases middleWeakens with
    ⟨semanticMiddle, theoremMiddle, implementationMiddle,
      runtimeMiddle, representationMiddle, applicabilityMiddle,
      adoptionMiddle⟩
  rcases resultWeakens with
    ⟨semanticResult, theoremResult, implementationResult,
      runtimeResult, representationResult, applicabilityResult,
      adoptionResult⟩
  exact
    ⟨weakensToBottom_trans semanticMiddle semanticResult,
      weakensToBottom_trans theoremMiddle theoremResult,
      weakensToBottom_trans implementationMiddle implementationResult,
      weakensToBottom_trans runtimeMiddle runtimeResult,
      weakensToBottom_trans representationMiddle representationResult,
      weakensToBottom_trans applicabilityMiddle applicabilityResult,
      weakensToBottom_trans adoptionMiddle adoptionResult⟩

/-- Transport admission has an explicit denial state. -/
inductive TransportAdmission
  | admitted
  | denied
  deriving DecidableEq, Repr

namespace TransportAdmission

/-- Composition is denial-dominant. -/
def comp :
    TransportAdmission →
    TransportAdmission →
    TransportAdmission
  | .admitted, .admitted => .admitted
  | _, _ => .denied

@[simp] theorem denied_comp
    (right : TransportAdmission) :
    comp .denied right = .denied := by
  cases right <;> rfl

@[simp] theorem comp_denied
    (left : TransportAdmission) :
    comp left .denied = .denied := by
  cases left <;> rfl

end TransportAdmission

/-- The mathematical character of the transport operation itself. -/
inductive TransportEvidenceKind
  | exact
  | kernelChecked
  | provedNaturality
  | heuristic
  deriving DecidableEq, Repr

/-- A directed, category-like action on an indexed family of fibers. -/
structure PathAction
    (Base : Type u)
    (Fiber : Base → Type v) where
  Path : Base → Base → Type w
  refl : ∀ base, Path base base
  comp :
    ∀ {source middle target},
      Path source middle →
      Path middle target →
      Path source target
  map :
    ∀ {source target},
      Path source target →
      Fiber source →
      Fiber target
  map_refl :
    ∀ base value,
      map (refl base) value = value
  map_comp :
    ∀ {source middle target}
      (first : Path source middle)
      (second : Path middle target)
      (value : Fiber source),
      map (comp first second) value =
        map second (map first value)

namespace PathAction

variable
    {Base : Type u}
    {Fiber : Base → Type v}
    (action : PathAction Base Fiber)

@[simp] theorem map_identity
    (base : Base)
    (value : Fiber base) :
    action.map (action.refl base) value = value :=
  action.map_refl base value

@[simp] theorem map_composite
    {source middle target : Base}
    (first : action.Path source middle)
    (second : action.Path middle target)
    (value : Fiber source) :
    action.map (action.comp first second) value =
      action.map second (action.map first value) :=
  action.map_comp first second value

end PathAction

/-- Invertible path action retaining the complete path operator. -/
structure PathGroupoidAction
    (Base : Type u)
    (Fiber : Base → Type v)
    extends PathAction Base Fiber where
  inv :
    ∀ {source target},
      toPathAction.Path source target →
      toPathAction.Path target source
  map_inv :
    ∀ {source target}
      (path : toPathAction.Path source target)
      (value : Fiber source),
      toPathAction.map (inv path)
          (toPathAction.map path value) =
        value

namespace PathGroupoidAction

variable
    {Base : Type u}
    {Fiber : Base → Type v}
    (action : PathGroupoidAction Base Fiber)

/-- Holonomy is the complete endomorphism induced by a loop. -/
def holonomy
    (base : Base)
    (loop : action.toPathAction.Path base base) :
    Fiber base → Fiber base :=
  action.toPathAction.map loop

/-- The inverse path undoes transport on every fiber value. -/
@[simp] theorem inverse_transport
    {source target : Base}
    (path : action.toPathAction.Path source target)
    (value : Fiber source) :
    action.toPathAction.map (action.inv path)
        (action.toPathAction.map path value) =
      value :=
  action.map_inv path value

end PathGroupoidAction

/-- One proposition indexed by both base object and fiber value. -/
structure FiberProperty
    (Base : Type u)
    (Fiber : Base → Type v) where
  propertyId : StableId
  Holds : ∀ base, Fiber base → Prop
  authority : Profile

/-- A proof that one named property is natural along every admitted path. -/
structure PropertyNaturality
    {Base : Type u}
    {Fiber : Base → Type v}
    (action : PathAction Base Fiber)
    (property : FiberProperty Base Fiber) : Prop where
  natural :
    ∀ {source target}
      (path : action.Path source target)
      (value : Fiber source),
      property.Holds source value →
      property.Holds target (action.map path value)

namespace PropertyNaturality

variable
    {Base : Type u}
    {Fiber : Base → Type v}
    {action : PathAction Base Fiber}
    {property : FiberProperty Base Fiber}

/-- Naturality transports the selected property and no unnamed property. -/
theorem transport
    (witness : PropertyNaturality action property)
    {source target : Base}
    (path : action.Path source target)
    (value : Fiber source)
    (holds : property.Holds source value) :
    property.Holds target (action.map path value) :=
  witness.natural path value holds

/--
Two path segments compose only when both carry naturality for the same
property.
-/
theorem along_composite
    (witness : PropertyNaturality action property)
    {source middle target : Base}
    (first : action.Path source middle)
    (second : action.Path middle target)
    (value : Fiber source)
    (holds : property.Holds source value) :
    property.Holds target
      (action.map (action.comp first second) value) := by
  rw [action.map_composite]
  exact witness.natural second _
    (witness.natural first value holds)

end PropertyNaturality

/--
One property admitted along one path, inseparably paired with its naturality
witness.
-/
structure CertifiedPreservedProperty
    {Base : Type u}
    {Fiber : Base → Type v}
    (action : PathAction Base Fiber)
    {source target : Base}
    (path : action.Path source target) where
  property : FiberProperty Base Fiber
  naturality : PropertyNaturality action property
  authorityAfter : Profile
  authority_nonincreasing :
    authorityAfter.NoStrongerThan property.authority
  evidenceKind : TransportEvidenceKind
  heuristic_clears_theorem :
    evidenceKind = .heuristic →
      authorityAfter.theoremAuthority = .none
  admission : TransportAdmission
  certificateAddress : ObjectAddress
  dependencyDigest : Digest

namespace CertifiedPreservedProperty

variable
    {Base : Type u}
    {Fiber : Base → Type v}
    {action : PathAction Base Fiber}
    {source target : Base}
    {path : action.Path source target}

/-- Elimination reaches the actual property proof at the transported value. -/
theorem transports
    (certificate : CertifiedPreservedProperty action path)
    (value : Fiber source)
    (holds : certificate.property.Holds source value) :
    certificate.property.Holds target
      (action.map path value) :=
  certificate.naturality.natural path value holds

/--
An admitted use must present the independent boundary decision.  The
naturality theorem remains mathematically inspectable even when use is denied.
-/
theorem admittedTransports
    (certificate : CertifiedPreservedProperty action path)
    (admitted : certificate.admission = .admitted)
    (value : Fiber source)
    (holds : certificate.property.Holds source value) :
    certificate.property.Holds target
      (action.map path value) := by
  have _ := admitted
  exact certificate.transports value holds

/-- A heuristic transform cannot retain theorem authority in this interface. -/
theorem heuristic_has_no_theorem_authority
    (certificate : CertifiedPreservedProperty action path)
    (heuristic : certificate.evidenceKind = .heuristic) :
    certificate.authorityAfter.theoremAuthority = .none :=
  certificate.heuristic_clears_theorem heuristic

end CertifiedPreservedProperty

/--
An analogy packet contains only proof-bearing preserved properties.  The
optional rhetorical relation is independent proposal metadata.
-/
structure CertifiedAnalogyTransport
    {Base : Type u}
    {Fiber : Base → Type v}
    (action : PathAction Base Fiber) where
  snapshot : Projection.ProjectionSnapshot
  source : Base
  target : Base
  path : action.Path source target
  proposedRelation : Option RelationRecord
  proposedRelation_is_analogy :
    ∀ relation ∈ proposedRelation,
      relation.kind = .analogousTo
  preserved :
    List (CertifiedPreservedProperty action path)
  admission : TransportAdmission
  provenance : Finset StableId
  unresolved : Finset StableId

namespace CertifiedAnalogyTransport

variable
    {Base : Type u}
    {Fiber : Base → Type v}
    {action : PathAction Base Fiber}

/--
A rhetorical analogy with no naturality certificates transports no
mathematical property.
-/
def rhetoricalOnly
    (snapshot : Projection.ProjectionSnapshot)
    (source target : Base)
    (path : action.Path source target)
    (relation : RelationRecord)
    (relation_is_analogy : relation.kind = .analogousTo)
    (provenance unresolved : Finset StableId) :
    CertifiedAnalogyTransport action where
  snapshot := snapshot
  source := source
  target := target
  path := path
  proposedRelation := some relation
  proposedRelation_is_analogy := by
    intro candidate candidate_mem
    have candidate_eq : candidate = relation := by
      have relation_eq : relation = candidate := by
        simpa using candidate_mem
      exact relation_eq.symm
    simpa [candidate_eq] using relation_is_analogy
  preserved := []
  admission := .denied
  provenance := provenance
  unresolved := unresolved

@[simp] theorem rhetoricalOnly_preserved
    (snapshot : Projection.ProjectionSnapshot)
    (source target : Base)
    (path : action.Path source target)
    (relation : RelationRecord)
    (relation_is_analogy : relation.kind = .analogousTo)
    (provenance unresolved : Finset StableId) :
    (rhetoricalOnly snapshot source target path relation
      relation_is_analogy provenance unresolved).preserved = [] :=
  rfl

@[simp] theorem rhetoricalOnly_denied
    (snapshot : Projection.ProjectionSnapshot)
    (source target : Base)
    (path : action.Path source target)
    (relation : RelationRecord)
    (relation_is_analogy : relation.kind = .analogousTo)
    (provenance unresolved : Finset StableId) :
    (rhetoricalOnly snapshot source target path relation
      relation_is_analogy provenance unresolved).admission = .denied :=
  rfl

end CertifiedAnalogyTransport

end Mathematics.Concept
```
