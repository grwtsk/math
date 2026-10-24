# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleGraph.Variante26d8eb2627f06cf28ec015b62aed3dd85611775eefbd58e1aad6a2727254f7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f482bb4052f2bbd5b79b342779db9f5a05abab4` · SHA-256 `215bf0b4ded36f14d608b9e2a1e27501d40f8c9091a832bb57002688d484e361`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleGraph.Variant3a63e9dee7a81c6af5f20d15e0349894f831defa68ae415736cc8cf722c061d0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a63e9dee7a81c6af5f20d15e0349894f831defa68ae415736cc8cf722c061d0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ModuleGraph.Variant3a63e9dee7a81c6af5f20d15e0349894f831defa68ae415736cc8cf722c061d0","mathematical_subject":"Computation.DataStructures","original_sha256":"3a63e9dee7a81c6af5f20d15e0349894f831defa68ae415736cc8cf722c061d0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/AST/ModuleGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.AST.Core


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleGraph.Variant3a63e9dee7a81c6af5f20d15e0349894f831defa68ae415736cc8cf722c061d0

namespace Surface

namespace AST

def ModuleGraph := List LeanModuleAst

def moduleGraphContains (graph : ModuleGraph) (moduleName : String) : Prop :=
  graph.any (fun moduleAst => decide (moduleAst.moduleName = moduleName)) = true

theorem empty_module_graph_contains_none (moduleName : String) :
    ¬ moduleGraphContains [] moduleName := by
  intro h
  simp [moduleGraphContains] at h

end AST

end Surface
```
