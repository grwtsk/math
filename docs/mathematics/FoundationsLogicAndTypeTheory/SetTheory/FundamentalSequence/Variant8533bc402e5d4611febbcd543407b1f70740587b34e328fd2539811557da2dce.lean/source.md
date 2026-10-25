# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.FundamentalSequence.Variant8533bc402e5d4611febbcd543407b1f70740587b34e328fd2539811557da2dce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71c12e94fd89e68895ad4a3d305d399bdecd24c3` · SHA-256 `737d5dfd68338812ef71bbb5ff83b35020b6a0b1b5757635ad53e3fcaeb50a66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.RegisteredCountableLimit.Variantb5c792ba70da7597f8cb2849906a4c8e99668239d6cd28855578a88d5342bcc5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b5c792ba70da7597f8cb2849906a4c8e99668239d6cd28855578a88d5342bcc5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.RegisteredCountableLimit.Variantb5c792ba70da7597f8cb2849906a4c8e99668239d6cd28855578a88d5342bcc5","mathematical_subject":"Logic.SetTheory","original_sha256":"b5c792ba70da7597f8cb2849906a4c8e99668239d6cd28855578a88d5342bcc5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/OrdinalTally/FundamentalSequence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.SetTheory.Ordinal.Family
import Mathematics.StratifiedBoundary.OrdinalTally.NormalForm

/-!
# Registered countable limits

A countable limit is not executable ordinal syntax.  It is a separately named
target together with one certified, strictly increasing, cofinal
`Nat`-indexed family of executable normal forms.  The `Nat` index explicitly
restricts this registry to limits of cofinality omega.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.RegisteredCountableLimit.Variantb5c792ba70da7597f8cb2849906a4c8e99668239d6cd28855578a88d5342bcc5

namespace Mathematics.StratifiedBoundary.OrdinalTally

structure RegisteredCountableLimit where
  id : FundamentalSequenceId
  target : Ordinal
  approximation :
    Nat → ExecutableNormalForm
  strictMono :
    StrictMono
      (fun stage =>
        (approximation stage).value)
  belowTarget :
    ∀ stage,
      (approximation stage).value < target
  cofinal :
    ∀ {candidate},
      candidate < target →
      ∃ stage,
        candidate ≤
          (approximation stage).value
  supremum_eq :
    (⨆ stage : Nat,
      (approximation stage).value) =
        target

namespace RegisteredCountableLimit

theorem stage_lt_target
    (registered : RegisteredCountableLimit)
    (stage : Nat) :
    (registered.approximation stage).value <
      registered.target :=
  registered.belowTarget stage

theorem has_declared_supremum
    (registered : RegisteredCountableLimit) :
    (⨆ stage : Nat,
      (registered.approximation stage).value) =
        registered.target :=
  registered.supremum_eq

def SemanticallyEquivalent
    (left right : RegisteredCountableLimit) : Prop :=
  left.target = right.target ∧
    ∀ stage,
      (left.approximation stage).value =
        (right.approximation stage).value

structure EqualityCertificate
    (left right : RegisteredCountableLimit) : Prop where
  sameTarget :
    left.target = right.target
  mutuallyCofinal :
    (∀ stage,
      ∃ later,
        (left.approximation stage).value ≤
          (right.approximation later).value) ∧
    (∀ stage,
      ∃ later,
        (right.approximation stage).value ≤
          (left.approximation later).value)

end RegisteredCountableLimit

structure CountableLimitRegistry where
  entries : List RegisteredCountableLimit
  uniqueIds :
    (entries.map RegisteredCountableLimit.id).Nodup

def CountableLimitRegistry.Admits
    (registry : CountableLimitRegistry)
    (sequenceId : FundamentalSequenceId) : Prop :=
  ∃ registered ∈ registry.entries,
    registered.id = sequenceId

def CountableLimitRegistry.AdmitsTarget
    (registry : CountableLimitRegistry)
    (registered : RegisteredCountableLimit) : Prop :=
  ∃ entry ∈ registry.entries,
    entry.id = registered.id ∧
      entry.target = registered.target

end Mathematics.StratifiedBoundary.OrdinalTally
```
