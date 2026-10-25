# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SSet.Variant4b682e6563eb68b2af76d906fa4520d74c7b6231b3d2339b2c4826426584d00a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `745cda2aedc08eb6ba8af014c78f1f3bb4784cac` · SHA-256 `cc962cacad3831344f2ea922084a10a9ac1aa7117f30c85dbb2a4d7b9a12de0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Empty.Variantea4133b1f22df46231cdc3cf7e8f60f867b370d1b39db2183d0a7e175af1b157","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea4133b1f22df46231cdc3cf7e8f60f867b370d1b39db2183d0a7e175af1b157","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Empty.Variantea4133b1f22df46231cdc3cf7e8f60f867b370d1b39db2183d0a7e175af1b157","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ea4133b1f22df46231cdc3cf7e8f60f867b370d1b39db2183d0a7e175af1b157","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/SSet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Data.SMap


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Empty.Variantea4133b1f22df46231cdc3cf7e8f60f867b370d1b39db2183d0a7e175af1b157

public section

namespace Lean

/-- Staged set. It is just a simple wrapper on top of Staged maps. -/
@[expose] def SSet (α : Type u) [BEq α] [Hashable α] := SMap α Unit

namespace SSet
variable {α : Type u} [BEq α] [Hashable α]

instance : Inhabited (SSet α) := inferInstanceAs (Inhabited (SMap ..))

abbrev empty : SSet α := SMap.empty

abbrev insert (s : SSet α) (a : α) : SSet α :=
  SMap.insert s a ()

abbrev contains (s : SSet α) (a : α) : Bool :=
  SMap.contains s a

abbrev forM [Monad m] (s : SSet α) (f : α → m PUnit) : m PUnit :=
  SMap.forM s fun a _ => f a

/-- Move from stage 1 into stage 2. -/
abbrev switch (s : SSet α) : SSet α :=
  SMap.switch s

abbrev fold (f : σ → α → σ) (init : σ) (s : SSet α) : σ :=
  SMap.fold (fun d a _ => f d a) init s

def toList (m : SSet α) : List α :=
  m.fold (init := []) fun es a => a::es

end SSet

def List.toSSet [BEq α] [Hashable α] (es : List α) : SSet α :=
  es.foldl (init := {}) fun s a => s.insert a

instance {_ : BEq α} {_ : Hashable α} [Repr α] : Repr (SSet α) where
  reprPrec v prec := Repr.addAppParen (reprArg v.toList ++ ".toSSet") prec

end Lean
```
