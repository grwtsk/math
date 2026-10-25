# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImportGraph.Variantacc69e1c4b149f40d822461de22d397ae4c3e5fc8c1d1ed6d4a8af8b5ce2ab48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0ab37c5392924af35d48b6692e106f524a4c506` · SHA-256 `07b2e0fcfd7f8e1eba90e59bceeb29ea2a1f4e33f69c8ed2454e8de4e273d436`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImportsOf.Variantbdf53f84c3ee34acbf6245467141247c7cf266131f8e02ed42f4949fa5e6e387","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bdf53f84c3ee34acbf6245467141247c7cf266131f8e02ed42f4949fa5e6e387","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ImportsOf.Variantbdf53f84c3ee34acbf6245467141247c7cf266131f8e02ed42f4949fa5e6e387","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bdf53f84c3ee34acbf6245467141247c7cf266131f8e02ed42f4949fa5e6e387","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraph/Imports/ImportGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Paul Lezeau
-/
module

public import Lean.Environment
public import Lean.Data.NameMap.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImportsOf.Variantbdf53f84c3ee34acbf6245467141247c7cf266131f8e02ed42f4949fa5e6e387

namespace Lean.Environment

/--
Find the imports of a given module.
-/
public def importsOf (env : Environment) (n : Name) : Array Name :=
  let imports :=
    if n = env.header.mainModule then
      env.header.imports.map Import.module
    else match env.getModuleIdx? n with
      | .some idx => env.header.moduleData[idx.toNat]!.imports.map Import.module
      | .none => #[]
  -- Note: we use `filter` rather than `erase`, since module-system files may contain
  -- both an implicit `public import Init` and a `meta import Init`, so `Init` can
  -- appear more than once in the parsed imports.
  imports.filter (· != `Init)

/--
Construct the import graph of the current file.
-/
public partial def importGraph (env : Environment) : NameMap (Array Name) :=
  let main := env.header.mainModule
  let imports := env.importsOf main
  imports.foldl (fun m i => process env i m) (({} : NameMap _).insert main imports)
    |>.erase Name.anonymous
where
  process (env) (i) (m) : NameMap (Array Name) :=
    if m.contains i then
      m
    else
      let imports := env.importsOf i
      imports.foldr (fun i m => process env i m) (m.insert i imports)
```
