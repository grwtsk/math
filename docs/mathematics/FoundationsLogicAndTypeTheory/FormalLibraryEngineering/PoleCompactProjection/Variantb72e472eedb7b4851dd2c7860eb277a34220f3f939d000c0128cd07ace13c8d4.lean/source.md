# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PoleCompactProjection.Variantb72e472eedb7b4851dd2c7860eb277a34220f3f939d000c0128cd07ace13c8d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9e8c2f87a74e8314e61d6fa08e65ed57fb4fb10` · SHA-256 `88ff40856e5eb8bdddf0c97db6078d23d2f24d2d1eb8a13a09cb959a50ce9092`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TraceIndependenceRelation.Variantc64230eb0323fa5ce6f2ae04e2f3287edbeacc9270834974b5b5bf6800fe7699","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c64230eb0323fa5ce6f2ae04e2f3287edbeacc9270834974b5b5bf6800fe7699","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TraceIndependenceRelation.Variantc64230eb0323fa5ce6f2ae04e2f3287edbeacc9270834974b5b5bf6800fe7699","mathematical_subject":"Foundations.Unclassified","original_sha256":"c64230eb0323fa5ce6f2ae04e2f3287edbeacc9270834974b5b5bf6800fe7699","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/ModularWave/PoleCompactProjection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.ModularWave.LFunctionLowering


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TraceIndependenceRelation.Variantc64230eb0323fa5ce6f2ae04e2f3287edbeacc9270834974b5b5bf6800fe7699

namespace Think.ModularWave

structure TraceIndependenceRelation where
  onlyZeroResidueFlips : Bool
  adjacentOperationsOnly : Bool
  equalAdmittedObservables : Bool
  noUnledgeredResidue : Bool

def ValidatedTraceQuotient
    (word : BoundedWord)
    (independence : TraceIndependenceRelation) : Prop :=
  word.ordered = true /\
  independence.onlyZeroResidueFlips = true /\
  independence.adjacentOperationsOnly = true /\
  independence.equalAdmittedObservables = true /\
  independence.noUnledgeredResidue = true

structure PoleStreamProjection where
  orderedPoleStream : Bool
  orderPreserved : Bool
  residueZeroOrLedgered : Bool

structure TraceQuotientProjection where
  generatedOnlyByValidatedFlips : Bool
  residueZeroOrLedgered : Bool

structure CompactShell where
  objectIsReciprocalPrimeProduct : Bool
  multiplicityPreserved : Bool
  orderErased : Bool
  preservesExecutionOrder : Bool
  proofAuthority : Bool
  authorityStatusPreserved : Bool

def CompactShell.Valid (compact : CompactShell) : Prop :=
  compact.objectIsReciprocalPrimeProduct = true /\
  compact.multiplicityPreserved = true /\
  compact.orderErased = true /\
  compact.preservesExecutionOrder = false /\
  compact.proofAuthority = false /\
  compact.authorityStatusPreserved = true

def TraceQuotientProjectsToCompact
    (word : BoundedWord)
    (independence : TraceIndependenceRelation)
    (compact : CompactShell) : Prop :=
  ValidatedTraceQuotient word independence /\ compact.Valid

theorem bitstream_decoder_preserves_ordered_pole_stream
    (stream : BitMatrixStream)
    (word : BoundedWord)
    (hDecode : stream.DecodesToWord word) :
    word.ordered = true := by
  exact hDecode.right.left

theorem trace_quotient_generated_by_validated_flips
    (word : BoundedWord)
    (independence : TraceIndependenceRelation)
    (hTrace : ValidatedTraceQuotient word independence) :
    independence.onlyZeroResidueFlips = true := by
  exact hTrace.right.left

theorem compact_projection_is_order_erasing
    (compact : CompactShell)
    (hCompact : compact.Valid) :
    compact.orderErased = true /\ compact.preservesExecutionOrder = false := by
  exact And.intro hCompact.right.right.left hCompact.right.right.right.left

theorem compact_projection_is_not_order_source
    (compact : CompactShell)
    (hCompact : compact.Valid) :
    compact.proofAuthority = false /\ compact.preservesExecutionOrder = false := by
  exact And.intro hCompact.right.right.right.right.left hCompact.right.right.right.left

end Think.ModularWave
```
