# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HaveI.Variantcbdf13024ff228258fcc552797750b198d2f983304bb525da5feea996d1246e8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cfbcc1c9e305a64d2d32931afffe7d6819d63a9d` · SHA-256 `ed928cd38f47ea627166a2d2770858cfb6833e0e0c79af474e122a43d636d290`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HaveI.Variantfff68028529072ab5185625c4a07e9c77af8bbd06948201cea9cb3d073c7bd98","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fff68028529072ab5185625c4a07e9c77af8bbd06948201cea9cb3d073c7bd98","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HaveI.Variantfff68028529072ab5185625c4a07e9c77af8bbd06948201cea9cb3d073c7bd98","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fff68028529072ab5185625c4a07e9c77af8bbd06948201cea9cb3d073c7bd98","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/HaveI.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Std.Tactic.HaveI

/-!
# Variants of `haveI`/`letI` for use in do-notation.

This files implements the `haveI'` and `letI'` macros which have the same semantics as
`haveI` and `letI`, but are `doElem`s and can be used inside do-notation.

They need a backtick after their name for disambiguation with the term variants.
This is necessary because the do-notation has a hardcoded list of keywords which can appear both
as term-mode and do-elem syntax (like for example `let` or `have`).
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HaveI.Variantfff68028529072ab5185625c4a07e9c77af8bbd06948201cea9cb3d073c7bd98

namespace Mathlib.Tactic.HaveI

local syntax "haveIDummy" haveDecl : term
macro_rules
  | `(assert! haveIDummy $hd:haveDecl; $body) => `(haveI $hd:haveDecl; $body)

/--
`haveI'` behaves like `have`, but inlines the value instead of producing a `let_fun` term.

(This is the do-notation version of the term-mode `haveI`.)
-/
macro "haveI' " hd:haveDecl : doElem =>
  `(doElem| assert! haveIDummy $hd:haveDecl)

local syntax "letIDummy" haveDecl : term
macro_rules
  | `(assert! letIDummy $hd:haveDecl; $body) => `(letI $hd:haveDecl; $body)

/--
`letI` behaves like `let`, but inlines the value instead of producing a `let_fun` term.

(This is the do-notation version of the term-mode `haveI`.)
-/
macro "letI' " hd:haveDecl : doElem =>
  `(doElem| assert! letIDummy $hd:haveDecl)
```
