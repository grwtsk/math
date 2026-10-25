# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclWithSig.Variant5570bad841ef15b7f781cc5395793c8ec4f4fc8db464e6fe0d0f35b330a74ec1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6271ff5a12e9b1ad13b86f0e76befdfbd8ecffaa` · SHA-256 `12ecb004dac7791636d0fb68e4d2b7138e24086c066e8765fc3ff93c44095de1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclSigWithId.Variantb5c22f4ded2cf0bb70b75f9c2af14508596118715b79829f99d7f96613c34b36","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b5c22f4ded2cf0bb70b75f9c2af14508596118715b79829f99d7f96613c34b36","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DeclSigWithId.Variantb5c22f4ded2cf0bb70b75f9c2af14508596118715b79829f99d7f96613c34b36","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b5c22f4ded2cf0bb70b75f9c2af14508596118715b79829f99d7f96613c34b36","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/PrettyPrinter/Delaborator/DeclWithSig.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich, Leonardo de Moura, Gabriel Ebner, Mario Carneiro
-/
module

prelude
public import Lean.Parser.Types
import Lean.Parser.Command


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclSigWithId.Variantb5c22f4ded2cf0bb70b75f9c2af14508596118715b79829f99d7f96613c34b36

namespace Lean.PrettyPrinter.Delaborator

open Parser Command Term

@[run_builtin_parser_attribute_hooks]
-- use `termParser` instead of `declId` so we can reuse `delabConst`
public def declSigWithId : Parser := leading_parser termParser maxPrec >> declSig
```
