# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsClass.Varianta725937bf8c44103f03a4894387bf5e12b5542a5b900f0e97cf4c4214c2b5d86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f856ac344762269cc4dd880de8202a5cc0460eb` · SHA-256 `b4f4cfb11de445c752b469b63a12caca2370a1fc6b0e67b3b4c646c275deab41`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsClass.Variant6e61b8b56f496445522b82c45469af9250213a505f8832a155e21d25178964d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e61b8b56f496445522b82c45469af9250213a505f8832a155e21d25178964d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsClass.Variant6e61b8b56f496445522b82c45469af9250213a505f8832a155e21d25178964d9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6e61b8b56f496445522b82c45469af9250213a505f8832a155e21d25178964d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/IsClass.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.SymM

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsClass.Variant6e61b8b56f496445522b82c45469af9250213a505f8832a155e21d25178964d9

namespace Lean.Meta.Sym

/--
Efficient version of `Meta.isClass?` for symbolic simulation. It does not use
reduction nor instantiates metavariables.
-/
public def isClass? (env : Environment) (type : Expr) : Option Name :=
  go type
where
  go : Expr → Option Name
  | .bvar ..         => none
  | .lit ..          => none
  | .fvar ..         => none
  | .sort ..         => none
  | .lam ..          => none
  | .proj ..         => none
  | .mvar ..         => none
  | .letE _ _ _ b _  => go b
  | .forallE _ _ b _ => go b
  | .mdata _ b       => go b
  | .const n _       => if isClass env n then some n else none
  | .app f _         => go f

end Lean.Meta.Sym
```
