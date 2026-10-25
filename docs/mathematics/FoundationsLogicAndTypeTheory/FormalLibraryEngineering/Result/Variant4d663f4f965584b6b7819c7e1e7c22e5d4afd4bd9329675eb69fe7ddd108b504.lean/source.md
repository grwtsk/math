# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Result.Variant4d663f4f965584b6b7819c7e1e7c22e5d4afd4bd9329675eb69fe7ddd108b504

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d257117170c693c44c3b4ec14de6728e4964e7c` · SHA-256 `4b9ed0e1b511d238449634aa186507edeef01793f77b95f68ead76398e546163`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResultMarkAsDone.Variant196d3896856ab1fb8112da5ffa33fc459ee8d25b833c55fb31646d9b6be8692e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"196d3896856ab1fb8112da5ffa33fc459ee8d25b833c55fb31646d9b6be8692e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ResultMarkAsDone.Variant196d3896856ab1fb8112da5ffa33fc459ee8d25b833c55fb31646d9b6be8692e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"196d3896856ab1fb8112da5ffa33fc459ee8d25b833c55fb31646d9b6be8692e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/DSimp/Result.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.DSimp.DSimpM

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResultMarkAsDone.Variant196d3896856ab1fb8112da5ffa33fc459ee8d25b833c55fb31646d9b6be8692e

namespace Lean.Meta.Sym.DSimp

public def Result.markAsDone : Result → Result
  | .rfl _    => .rfl true
  | .step e _ => .step e true

public def Result.getResultExpr : Expr → Result → Expr
  | e, .rfl _    => e
  | _, .step e _ => e

end Lean.Meta.Sym.DSimp
```
