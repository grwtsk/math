# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant8358125e97e77e69a099b067f3ffe19d23e95703841eccea94c6d09576ba25bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12b847648d05bd7dfdb6919f36284538fdac1660` · SHA-256 `0e0c386d4c396943f9d1448585ac29fcf80b9a11a83f84e20fbccd5981bfa90f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabBoolLit.Variant56709adee6bb856633a5af6475589200c104e0cc8b0727023b3b72aae7d05818","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"56709adee6bb856633a5af6475589200c104e0cc8b0727023b3b72aae7d05818","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabBoolLit.Variant56709adee6bb856633a5af6475589200c104e0cc8b0727023b3b72aae7d05818","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"56709adee6bb856633a5af6475589200c104e0cc8b0727023b3b72aae7d05818","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Frontend/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Elab.Exception


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabBoolLit.Variant56709adee6bb856633a5af6475589200c104e0cc8b0727023b3b72aae7d05818

public section

open Lean Lean.Elab

namespace Aesop.Frontend.Parser

declare_syntax_cat Aesop.bool_lit (behavior := symbol)

syntax "true" : Aesop.bool_lit
syntax "false" : Aesop.bool_lit

end Parser

def elabBoolLit [Monad m] [MonadRef m] [MonadExceptOf Exception m]
    (stx : TSyntax `Aesop.bool_lit) : m Bool :=
  withRef stx do
    match stx with
    | `(bool_lit| true) => return true
    | `(bool_lit| false) => return false
    | _ => throwUnsupportedSyntax

end Aesop.Frontend
```
