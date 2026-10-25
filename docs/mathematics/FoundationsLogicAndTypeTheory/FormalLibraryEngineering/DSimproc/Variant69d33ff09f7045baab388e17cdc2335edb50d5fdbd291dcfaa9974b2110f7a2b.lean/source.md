# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DSimproc.Variant69d33ff09f7045baab388e17cdc2335edb50d5fdbd291dcfaa9974b2110f7a2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6c11b9fcd43b51174a4c259d26651d9a64a884d` · SHA-256 `42144484c7c353b4440e4ca41538893b39d8d34e1602eef40c3d1fcfe8c51ee7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DSimprocAndThen.Variant756b4c1a317130752e7207fc19214e567a7b85441d07fa482ef7b9541746b2aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"756b4c1a317130752e7207fc19214e567a7b85441d07fa482ef7b9541746b2aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DSimprocAndThen.Variant756b4c1a317130752e7207fc19214e567a7b85441d07fa482ef7b9541746b2aa","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"756b4c1a317130752e7207fc19214e567a7b85441d07fa482ef7b9541746b2aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/DSimp/DSimproc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.DSimp.Result

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DSimprocAndThen.Variant756b4c1a317130752e7207fc19214e567a7b85441d07fa482ef7b9541746b2aa

namespace Lean.Meta.Sym.DSimp

public abbrev DSimproc.andThen (f g : DSimproc) : DSimproc := fun e₁ => do
  let r ← f e₁
  match r with
  | .rfl  true | .step _ true  => return r
  | .rfl  false    => g e₁
  | .step e₂ false =>
    match (← g e₂) with
    | .rfl done     => return .step e₂ done
    | .step e₃ done => return .step e₃ done

public instance : AndThen DSimproc where
  andThen f g := DSimproc.andThen f (g ())

public abbrev DSimproc.orElse (f g : DSimproc) : DSimproc := fun e₁ => do
  let r ← f e₁
  match r with
  | .step .. | .rfl true => return r
  | .rfl false => g e₁

public instance : OrElse DSimproc where
  orElse f g := DSimproc.orElse f (g ())

/-- Wraps a `DSimproc` so that any exception is caught and treated as `.rfl` (no rewrite). -/
public abbrev DSimproc.tryCatch (f : DSimproc) : DSimproc := fun e => do
  try f e catch _ => return .rfl

end Lean.Meta.Sym.DSimp
```
