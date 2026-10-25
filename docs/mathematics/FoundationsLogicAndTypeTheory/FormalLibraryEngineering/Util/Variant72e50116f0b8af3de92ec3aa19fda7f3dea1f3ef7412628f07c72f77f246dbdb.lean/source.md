# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variant72e50116f0b8af3de92ec3aa19fda7f3dea1f3ef7412628f07c72f77f246dbdb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd298b91593518e541b22900e5c100f1400adf5d` · SHA-256 `f89e68a24259411e93bd2877676ec58bb3f8a518e94d3c87c1c0b9bdf3654bdc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SnapshotTreeTrace.Variantcefe3af6db0b0760459e12700e26109d365ff337e51cb527f98407392438e4c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cefe3af6db0b0760459e12700e26109d365ff337e51cb527f98407392438e4c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SnapshotTreeTrace.Variantcefe3af6db0b0760459e12700e26109d365ff337e51cb527f98407392438e4c2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"cefe3af6db0b0760459e12700e26109d365ff337e51cb527f98407392438e4c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Language/Util.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Additional snapshot functionality that needs further imports.

Authors: Sebastian Ullrich
-/

module

prelude
public import Lean.Elab.InfoTree
import Init.Data.Format.Macro


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SnapshotTreeTrace.Variantcefe3af6db0b0760459e12700e26109d365ff337e51cb527f98407392438e4c2

public section

namespace Lean.Language

/-- Produces trace of given snapshot tree, synchronously waiting on all children. -/
partial def SnapshotTree.trace (s : SnapshotTree) : CoreM Unit :=
  go .skip s
where go range? s := do
  let file ← getFileMap
  let mut desc := f!"{s.element.desc}"
  match range? with
  | .some range => desc := desc ++ f!"{file.toPosition range.start}-{file.toPosition range.stop} "
  | .inherit => desc := desc ++ "<range inherited> "
  | .skip => desc := desc ++ "<no range> "
  let msgs ← s.element.diagnostics.msgLog.toList.mapM (·.toString)
  desc := desc ++ .prefixJoin "\n• " msgs
  withTraceNode `Elab.snapshotTree (fun _ => pure desc) do
    s.children.toList.forM fun c => go c.reportingRange c.get
    if let some t := s.element.infoTree? then
      trace[Elab.info] (← t.format)
```
