# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CtorIdx.Variant79af0de1605560cdbb1701457869e7cf7852c4826bfe7fc8b9107b9706059b1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a61c1de66437e1a1ad742358a541ec7f454e4eb1` · SHA-256 `f7d1c15c38547a4acaea0c5b064e436bf585e85e6a8f25b9346408678b326ff4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simproc.Variantee777d13e44dd1defa6243e02d3b25caf95ce2fed0d1bc7377bc7656dbfbf8fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee777d13e44dd1defa6243e02d3b25caf95ce2fed0d1bc7377bc7656dbfbf8fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Simproc.Variantee777d13e44dd1defa6243e02d3b25caf95ce2fed0d1bc7377bc7656dbfbf8fa","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ee777d13e44dd1defa6243e02d3b25caf95ce2fed0d1bc7377bc7656dbfbf8fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Simp/BuiltinSimprocs/CtorIdx.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/
module
prelude
public import Lean.Meta.Tactic.Simp.Simproc
import Init.Simproc
import Lean.Meta.Constructions.CtorIdx
import Lean.Meta.CtorRecognizer

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simproc.Variantee777d13e44dd1defa6243e02d3b25caf95ce2fed0d1bc7377bc7656dbfbf8fa

open Lean Meta Simp
public section

/--
This simproc reduces `T.ctorIdx (T.con …)` to the constructor index.
It does not take part in simp's discrimination tree index, so can be costly on large goals.
-/
builtin_dsimproc_decl reduceCtorIdx (_) := fun e => e.withApp fun f xs => do
  let some fnName := f.constName? | return .continue
  let some indInfo ← isCtorIdx? fnName | return .continue
  unless xs.size == indInfo.numParams + indInfo.numIndices + 1 do return .continue
  let some conInfo ← isConstructorApp? xs.back! | return .continue
  let e' := mkNatLit conInfo.cidx
  return .done e'

end
```
