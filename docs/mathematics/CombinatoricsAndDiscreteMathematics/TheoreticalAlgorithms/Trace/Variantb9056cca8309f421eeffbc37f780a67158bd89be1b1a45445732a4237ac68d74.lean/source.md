# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Trace.Variantb9056cca8309f421eeffbc37f780a67158bd89be1b1a45445732a4237ac68d74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14ecdc2d60f53bca273e06699f31d228404ec889` · SHA-256 `4e4792ef5d604556509e266199a622b0dada3ff650e8e72c90412a5b7c75f1de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SrcLibPoleStream.Variantd2371813ea45b4979b5516d17ffb40bdd134cb3a52a3186ccb08d8bb9f7d5154","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d2371813ea45b4979b5516d17ffb40bdd134cb3a52a3186ccb08d8bb9f7d5154","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SrcLibPoleStream.Variantd2371813ea45b4979b5516d17ffb40bdd134cb3a52a3186ccb08d8bb9f7d5154","mathematical_subject":"Computation.DataStructures","original_sha256":"d2371813ea45b4979b5516d17ffb40bdd134cb3a52a3186ccb08d8bb9f7d5154","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Poles/Trace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.PoleAssignment


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SrcLibPoleStream.Variantd2371813ea45b4979b5516d17ffb40bdd134cb3a52a3186ccb08d8bb9f7d5154

set_option autoImplicit false

namespace Think.Poles.Trace

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.trace

theorem placements_count :
    placements.length = 14 :=
  Think.SourceTree.tracePole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

structure SrcLibPoleStream where
  streamId : Nat
  frameCount : Nat
  hasPoleAtOne : Prop
deriving Repr

def srcLibDefaultPoleStream : SrcLibPoleStream where
  streamId := 1
  frameCount := placements.length
  hasPoleAtOne := True

def SrcLibPoleStream.hasFiniteTrace (stream : SrcLibPoleStream) : Prop :=
  stream.frameCount > 0

theorem srcLibDefaultPoleStream_frameCount :
    srcLibDefaultPoleStream.frameCount = 14 := by
  rfl

theorem srcLibDefaultPoleStream_hasFiniteTrace :
    srcLibDefaultPoleStream.hasFiniteTrace := by
  unfold SrcLibPoleStream.hasFiniteTrace
  rw [srcLibDefaultPoleStream_frameCount]
  decide

end Think.Poles.Trace
```
