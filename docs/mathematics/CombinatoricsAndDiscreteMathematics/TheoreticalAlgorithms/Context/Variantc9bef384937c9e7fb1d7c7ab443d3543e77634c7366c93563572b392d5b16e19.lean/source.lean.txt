-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ContextField.Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ContextField.Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61","mathematical_subject":"Computation.DataStructures","original_sha256":"dd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/Context.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Provenance

/-! # Snapshot-bound contexts and certified refinement transport -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ContextField.Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61

namespace Mathematics.SemanticTokenization

inductive ContextField
  | text
  | sentence
  | discourse
  | task
  | domain
  | speaker
  | time
  deriving DecidableEq, Repr

structure Context where
  contextId : StableId
  snapshot : SnapshotId
  text : Option StableId
  sentence : Option StableId
  discourse : Option StableId
  task : Option StableId
  domain : Option StableId
  speaker : Option StableId
  time : Option StableId
  requiredFields : List ContextField

def OptionRefines {α : Type} (more base : Option α) : Prop :=
  ∀ value, base = some value → more = some value

theorem OptionRefines.refl
    {α : Type}
    (value : Option α) :
    OptionRefines value value := by
  intro item equality
  exact equality

theorem OptionRefines.trans
    {α : Type}
    {most middle base : Option α}
    (first : OptionRefines middle base)
    (second : OptionRefines most middle) :
    OptionRefines most base := by
  intro value baseHas
  exact second value (first value baseHas)

def Context.Refines (more base : Context) : Prop :=
  more.snapshot = base.snapshot ∧
  OptionRefines more.text base.text ∧
  OptionRefines more.sentence base.sentence ∧
  OptionRefines more.discourse base.discourse ∧
  OptionRefines more.task base.task ∧
  OptionRefines more.domain base.domain ∧
  OptionRefines more.speaker base.speaker ∧
  OptionRefines more.time base.time

theorem Context.refines_refl (context : Context) :
    context.Refines context :=
  ⟨rfl,
    OptionRefines.refl context.text,
    OptionRefines.refl context.sentence,
    OptionRefines.refl context.discourse,
    OptionRefines.refl context.task,
    OptionRefines.refl context.domain,
    OptionRefines.refl context.speaker,
    OptionRefines.refl context.time⟩

theorem Context.Refines.trans
    {most middle base : Context}
    (first : middle.Refines base)
    (second : most.Refines middle) :
    most.Refines base := by
  rcases first with
    ⟨snapshotFirst, textFirst, sentenceFirst, discourseFirst,
      taskFirst, domainFirst, speakerFirst, timeFirst⟩
  rcases second with
    ⟨snapshotSecond, textSecond, sentenceSecond, discourseSecond,
      taskSecond, domainSecond, speakerSecond, timeSecond⟩
  exact
    ⟨snapshotSecond.trans snapshotFirst,
      textFirst.trans textSecond,
      sentenceFirst.trans sentenceSecond,
      discourseFirst.trans discourseSecond,
      taskFirst.trans taskSecond,
      domainFirst.trans domainSecond,
      speakerFirst.trans speakerSecond,
      timeFirst.trans timeSecond⟩

structure ContextTransportCertificate
    (text : TextCarrier)
    (source target : Context) where
  refinement : target.Refines source
  evidence : EvidenceBundle text
  provenance : List (ProvenancePath text)

structure ContextSufficiencyCertificate
    (text : TextCarrier)
    (context : Context) where
  assertionId : StableId
  dependedFields : List ContextField
  evidence : EvidenceBundle text
  snapshot_exact :
    ∀ item ∈ evidence.refs,
      item.snapshot = context.snapshot

end Mathematics.SemanticTokenization
