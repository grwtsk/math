# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Coe.Variant7af0dbaf3bb6a6b792e2f37144905acdeeca299d07aa75dd3ec6f26b413543e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e98f5ce976e114ee18e7026841a3e818f40a44e2` · SHA-256 `5860f06eb2a633a71966bf11e4e47556bf1dc36422861636a92cc324eb66387e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Coe.Variant224fd2735dc569d591b817d8b67c186a61262d75eb63a9e63a7c85473516d73f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"224fd2735dc569d591b817d8b67c186a61262d75eb63a9e63a7c85473516d73f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Coe.Variant224fd2735dc569d591b817d8b67c186a61262d75eb63a9e63a7c85473516d73f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"224fd2735dc569d591b817d8b67c186a61262d75eb63a9e63a7c85473516d73f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Option/Coe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Mario Carneiro
-/
module

prelude
public import Init.Coe


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Coe.Variant224fd2735dc569d591b817d8b67c186a61262d75eb63a9e63a7c85473516d73f

public section

/-!
In this file, we define the coercion `α → Option α`.

The use of this coercion is **banned** in `Init` and `Std` (but allowed everywhere else). For this
reason, we define it in this file, which must not be imported anywhere in `Init` or `Std` (this
is enforced by the test `importStructure.lean`).
-/

instance optionCoe {α : Type u} : Coe α (Option α) where
  coe := some
```
