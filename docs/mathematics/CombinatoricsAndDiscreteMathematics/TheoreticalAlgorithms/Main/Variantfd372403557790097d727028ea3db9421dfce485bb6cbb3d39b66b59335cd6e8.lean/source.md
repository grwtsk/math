# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Main.Variantfd372403557790097d727028ea3db9421dfce485bb6cbb3d39b66b59335cd6e8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72137d44eaa0316d9f956a097e1b0fe7b51179cd` · SHA-256 `42408aa7136e877d33bc5dcb921f0fd1b235b7d2f358baa58e730a50969c724a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Main.Variantbd8e350903f1382b25fe767f9086dd9882000f01085f7046ea06545e7848842a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd8e350903f1382b25fe767f9086dd9882000f01085f7046ea06545e7848842a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Main.Variantbd8e350903f1382b25fe767f9086dd9882000f01085f7046ea06545e7848842a","mathematical_subject":"Computation.DataStructures","original_sha256":"bd8e350903f1382b25fe767f9086dd9882000f01085f7046ea06545e7848842a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/comparator-206/.lake/packages/lean4export/Main.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Export

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Main.Variantbd8e350903f1382b25fe767f9086dd9882000f01085f7046ea06545e7848842a

open Lean

def main (args : List String) : IO Unit := do
  initSearchPath (← findSysroot)
  let (opts, args) := args.partition (fun s => s.startsWith "--" && s.length ≥ 3)
  let (imports, constants) := args.span (· != "--")
  let imports := imports.toArray.map fun mod => { module := Syntax.decodeNameLit ("`" ++ mod) |>.get! }
  let env ← importModules imports {}
  let constants := match constants.tail? with
    | some cs => cs.map fun c => Syntax.decodeNameLit ("`" ++ c) |>.get!
    | none    => env.constants.toList.map Prod.fst |>.filter (!·.isInternal)
  M.run env do
    let _ ← initState env opts
    dumpMetadata
    for c in constants do
      modify (fun st => { st with noMDataExprs := {} })
      dumpConstant c
```
