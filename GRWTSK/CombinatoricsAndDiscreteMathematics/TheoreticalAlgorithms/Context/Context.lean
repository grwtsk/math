import Mathematics.SemanticTokenization.Provenance

/-! # Snapshot-bound contexts and certified refinement transport -/

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
