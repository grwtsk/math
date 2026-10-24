# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Context.Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4da27ca631e421bef3dabfe110968215f68e1b1a` · SHA-256 `dd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
