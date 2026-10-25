# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclarationRange.Variant64449279778b716a5cf92600d49298c05e44810eccbe0d4a4739d76ba849fbdb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e38debc4a6de2f72254617acfea01787fb477c7f` · SHA-256 `3955a1b764575823bed374d81cfc1d48ae77eff8e5319727437b2f5662c06ad2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclarationRange.Variant2b7171a8cfcdc2fe7061fe48b5ac2dd42c10d9a4106dedef8bd63e3d8c2f90cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b7171a8cfcdc2fe7061fe48b5ac2dd42c10d9a4106dedef8bd63e3d8c2f90cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DeclarationRange.Variant2b7171a8cfcdc2fe7061fe48b5ac2dd42c10d9a4106dedef8bd63e3d8c2f90cc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2b7171a8cfcdc2fe7061fe48b5ac2dd42c10d9a4106dedef8bd63e3d8c2f90cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/DeclarationRange.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","late_preamble_command","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Data.Position


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclarationRange.Variant2b7171a8cfcdc2fe7061fe48b5ac2dd42c10d9a4106dedef8bd63e3d8c2f90cc

public section

/-!
# Data types for declaration ranges

The environment extension for declaration ranges is in `Lean.DeclarationRange`.
-/

namespace Lean

/-- Store position information for declarations. -/
structure DeclarationRange where
  pos          : Position
  /-- A precomputed UTF-16 `character` field as in `Lean.Lsp.Position`. We need to store this
  because LSP clients want us to report the range in terms of UTF-16, but converting a Unicode
  codepoint stored in `Lean.Position` to UTF-16 requires loading and mapping the target source
  file, which is IO-heavy. -/
  charUtf16    : Nat
  endPos       : Position
  /-- See `charUtf16`. -/
  endCharUtf16 : Nat
  deriving Inhabited, DecidableEq, Repr

instance : ToExpr DeclarationRange where
  toExpr r   := mkAppN (mkConst ``DeclarationRange.mk) #[toExpr r.pos, toExpr r.charUtf16, toExpr r.endPos, toExpr r.endCharUtf16]
  toTypeExpr := mkConst ``DeclarationRange

structure DeclarationRanges where
  range          : DeclarationRange
  selectionRange : DeclarationRange
  deriving Inhabited, Repr

instance : ToExpr DeclarationRanges where
  toExpr r   := mkAppN (mkConst ``DeclarationRanges.mk) #[toExpr r.range, toExpr r.selectionRange]
  toTypeExpr := mkConst ``DeclarationRanges

/--
A declaration location is a declaration range along with the name of the module the declaration resides in.
-/
structure DeclarationLocation where
  module : Name
  range : DeclarationRange
  deriving Inhabited, DecidableEq, Repr
```
