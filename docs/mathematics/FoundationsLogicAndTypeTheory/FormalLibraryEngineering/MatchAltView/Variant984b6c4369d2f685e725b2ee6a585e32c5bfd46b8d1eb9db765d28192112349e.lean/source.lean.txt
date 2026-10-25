-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchAltView.Variantfdf301b87ac2e470698345f1e00a29bf2be08bc1582e50413ecce6128656956d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fdf301b87ac2e470698345f1e00a29bf2be08bc1582e50413ecce6128656956d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MatchAltView.Variantfdf301b87ac2e470698345f1e00a29bf2be08bc1582e50413ecce6128656956d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fdf301b87ac2e470698345f1e00a29bf2be08bc1582e50413ecce6128656956d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/MatchAltView.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Term


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchAltView.Variantfdf301b87ac2e470698345f1e00a29bf2be08bc1582e50413ecce6128656956d

public section

namespace Lean.Elab.Term

/-! This module assumes `match`-expressions use the following syntax.

```lean
def matchDiscr := leading_parser optional (try (ident >> checkNoWsBefore "no space before ':'" >> ":")) >> termParser

def «match» := leading_parser:leadPrec "match " >> sepBy1 matchDiscr ", " >> optType >> " with " >> matchAlts
```
-/

structure MatchAltView (k : SyntaxNodeKinds) where
  ref      : Syntax
  patterns : Array Syntax
  lhs      : Syntax
  rhs      : TSyntax k
  deriving Inhabited

end Lean.Elab.Term
