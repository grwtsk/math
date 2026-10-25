# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindExpr.Varianta7776707174039f8c92262892b8ce14ae0243ecdc5430a2018585cd00517a080

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a23fa58adc9b4c131cb62afbfd50041dc65e25e9` · SHA-256 `70a6a72f6d6edc5e577913afa3edb2efca1e7f6791838c1264b107edb599dd80`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindStep.Variant1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FindStep.Variant1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/FindExpr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindStep.Variant1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c

public section

namespace Lean
namespace Expr

@[extern "lean_find_expr"]
opaque findImpl? (p : @& (Expr → Bool)) (e : @& Expr) : Option Expr

@[inline] def find? (p : Expr → Bool) (e : Expr) : Option Expr := findImpl? p e

/-- Returns true if `e` occurs in `t` -/
def occurs (e : Expr) (t : Expr) : Bool :=
  (t.find? fun s => s == e).isSome

/--
Returns type for `findExt?` function argument.
-/
inductive FindStep where
  | /-- Found desired subterm -/ found
  | /-- Search subterms -/ visit
  | /-- Do not search subterms -/ done

@[extern "lean_find_ext_expr"]
opaque findExtImpl? (p : @& (Expr → FindStep)) (e : @& Expr) : Option Expr

/--
Similar to `find?`, but `p` can return `FindStep.done` to interrupt the search on subterms.
Remark: Differently from `find?`, we do not invoke `p` for partial applications of an application. -/
@[inline] def findExt? (p : Expr → FindStep) (e : Expr) : Option Expr := findExtImpl? p e

end Lean.Expr
```
