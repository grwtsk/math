# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Cut.Variant836442b57fad3332e219fa04252a50db2e274a49dbc88d1fc00fdb0f388a1e15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b1d93e0604a1b71760c47184debd6f3b7d4f87c` · SHA-256 `93fa17cc6073ecd2277bbea8e8c578e2db1f93210c914510fd5a645a3dd1702c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.InvocationCut.Variantbcd273c5bf0c84b808788ae6fdc4a1faba9217ffcd606a67f90604706bb0fffc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bcd273c5bf0c84b808788ae6fdc4a1faba9217ffcd606a67f90604706bb0fffc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.InvocationCut.Variantbcd273c5bf0c84b808788ae6fdc4a1faba9217ffcd606a67f90604706bb0fffc","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"bcd273c5bf0c84b808788ae6fdc4a1faba9217ffcd606a67f90604706bb0fffc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/Cut.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.Kind
import Mathlib.Data.Finset.Basic

/-!
# Finite committed invocation cuts

The cut is immutable and contains finite obligation, proof, and exactly-once
event registries.  Its seed witnesses make every obligation frequency positive.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.InvocationCut.Variantbcd273c5bf0c84b808788ae6fdc4a1faba9217ffcd606a67f90604706bb0fffc

namespace Mathematics.Resolution

universe u v w

structure InvocationCut
    (Obligation : Type u)
    (Proof : Type v)
    (Event : Type w)
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event] where
  snapshotDigest : String
  graphDigest : String
  instanceDigest : String
  authorityDigest : String
  obligations : Finset Obligation
  proofRegistry : Obligation → Finset Proof
  events : Finset Event
  canonicalize : Event → Obligation
  seed : Obligation → Event
  seed_mem :
    ∀ obligation ∈ obligations, seed obligation ∈ events
  seed_target :
    ∀ obligation ∈ obligations,
      canonicalize (seed obligation) = obligation
  overflowPolicy : OverflowPolicy

structure CutValidator
    (Obligation : Type u)
    (Proof : Type v)
    (Event : Type w)
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event] where
  Valid : InvocationCut Obligation Proof Event → Prop
  decidableValid :
    ∀ cut, Decidable (Valid cut)

attribute [instance] CutValidator.decidableValid

structure CommittedCut
    (Obligation : Type u)
    (Proof : Type v)
    (Event : Type w)
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (validator : CutValidator Obligation Proof Event) where
  cut : InvocationCut Obligation Proof Event
  valid : validator.Valid cut

end Mathematics.Resolution
```
