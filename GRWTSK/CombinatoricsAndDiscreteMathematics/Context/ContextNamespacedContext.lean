-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Context.Variant3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Context.Variant3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Context.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Evidence

/-!
# Context coordinates, sufficiency, and certified transport
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Context.Variant3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9

namespace Mathematics.SemanticTokenization

structure Context where
  id : ContextId
  text : Option TextId
  sentence : Option Nat
  discourse : Option Nat
  task : Option TaskId
  domain : Option String
  speaker : Option String
  time : Option String
  register : Option String
  snapshot : SnapshotId
deriving Repr

structure ContextDependency where
  required : Finset ContextField
deriving Repr

def ContextRefines (specific general : Context) : Prop :=
  specific.snapshot = general.snapshot ∧
  (∀ value, general.text = some value → specific.text = some value) ∧
  (∀ value, general.sentence = some value → specific.sentence = some value) ∧
  (∀ value, general.discourse = some value → specific.discourse = some value) ∧
  (∀ value, general.task = some value → specific.task = some value) ∧
  (∀ value, general.domain = some value → specific.domain = some value) ∧
  (∀ value, general.speaker = some value → specific.speaker = some value) ∧
  (∀ value, general.time = some value → specific.time = some value) ∧
  (∀ value, general.register = some value → specific.register = some value)

structure ContextTransportCertificate where
  source : ContextId
  target : ContextId
  transportedFields : Finset ContextField
  relationKinds : Finset RelationId
  snapshot : SnapshotId
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
deriving Repr

structure ContextSufficiencyCertificate
    (context : Context)
    (dependency : ContextDependency) where
  snapshot : SnapshotId
  available :
    ∀ field ∈ dependency.required,
      match field with
      | .text => context.text.isSome
      | .sentence => context.sentence.isSome
      | .discourse => context.discourse.isSome
      | .task => context.task.isSome
      | .domain => context.domain.isSome
      | .speaker => context.speaker.isSome
      | .time => context.time.isSome
      | .register => context.register.isSome

/--
Persistable, cut-local form of a context-sufficiency certificate.  The
context record itself remains in the cut registry and is addressed by ID.
-/
structure ContextSufficiencyRecord where
  context : ContextId
  dependency : ContextDependency
  snapshot : SnapshotId
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  requiredFieldsAvailable : Prop

theorem contextRefines_refl (context : Context) :
    ContextRefines context context := by
  refine ⟨rfl, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;>
    intro value equality <;> exact equality

theorem contextRefines_trans {specific middle general : Context}
    (first : ContextRefines specific middle)
    (second : ContextRefines middle general) :
    ContextRefines specific general := by
  rcases first with
    ⟨snapshot₁, text₁, sentence₁, discourse₁, task₁,
      domain₁, speaker₁, time₁, register₁⟩
  rcases second with
    ⟨snapshot₂, text₂, sentence₂, discourse₂, task₂,
      domain₂, speaker₂, time₂, register₂⟩
  refine
    ⟨snapshot₁.trans snapshot₂,
      ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro value equality
    exact text₁ value (text₂ value equality)
  · intro value equality
    exact sentence₁ value (sentence₂ value equality)
  · intro value equality
    exact discourse₁ value (discourse₂ value equality)
  · intro value equality
    exact task₁ value (task₂ value equality)
  · intro value equality
    exact domain₁ value (domain₂ value equality)
  · intro value equality
    exact speaker₁ value (speaker₂ value equality)
  · intro value equality
    exact time₁ value (time₂ value equality)
  · intro value equality
    exact register₁ value (register₂ value equality)

def ContextTransportAuthorizes
    (certificate : ContextTransportCertificate)
    (relation : RelationId)
    (source target : ContextId) : Prop :=
  certificate.source = source ∧
  certificate.target = target ∧
  relation ∈ certificate.relationKinds

end Mathematics.SemanticTokenization
