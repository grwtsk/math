# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LOption.Variant54a31aede0200f17da25a4f42e62e57f7f9ec359cf1a0096b9c0e84aebf4953b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b5cfa072dbe372b7334d8ee80ec7f8e48fc80c9` · SHA-256 `947e51d2bee252975076c459d538563a75bfd6be14388411c8aaa2e62193f8d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LOption.Variant25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LOption.Variant25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/LOption.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.String.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LOption.Variant25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd

public section
universe u

open Lean

namespace Lean

inductive LOption (α : Type u) where
  | none  : LOption α
  | some  : α → LOption α
  | undef : LOption α
  deriving Inhabited, BEq

instance [ToString α] : ToString (LOption α) where
  toString
    | .none   => "none"
    | .undef  => "undef"
    | .some a => "(some " ++ toString a ++ ")"

def LOption.toOption : LOption α → Option α
  | .some a => .some a
  | _ => .none

def Option.toLOption {α : Type u} : Option α → LOption α
  | none   => .none
  | some a => .some a

@[inline] def toLOptionM {α} {m : Type → Type} [Monad m] (x : m (Option α)) : m (LOption α) := do
  let b ← x
  return b.toLOption

end Lean
```
