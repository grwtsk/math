# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForEachExpr.Variant1510117c35eb60fb9d3680431bc3bcad4ff7e9710bb8eb011fe19aca58352a30

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65ee12c9c39f5432f5ea5e49f3de0aab152a67c5` · SHA-256 `8d51a467b429b9c2500e7831e7349021fa1652d7d57cb2c34ff79208ad3b9c7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Visit.Variant1e5d1a2b9efda910248f7e51425b86a5e28a985e11b74d596cdc79d1246d2e46","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e5d1a2b9efda910248f7e51425b86a5e28a985e11b74d596cdc79d1246d2e46","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Visit.Variant1e5d1a2b9efda910248f7e51425b86a5e28a985e11b74d596cdc79d1246d2e46","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1e5d1a2b9efda910248f7e51425b86a5e28a985e11b74d596cdc79d1246d2e46","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/ForEachExpr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr
public import Lean.Util.MonadCache


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Visit.Variant1e5d1a2b9efda910248f7e51425b86a5e28a985e11b74d596cdc79d1246d2e46

public section

namespace Lean
/-!
Remark: we cannot use the caching trick used at `FindExpr` and `ReplaceExpr` because they
may visit the same expression multiple times if they are stored in different memory
addresses. Note that the following code is parametric in a monad `m`.
-/

variable {ω : Type} {m : Type → Type} [STWorld ω m] [MonadLiftT (ST ω) m] [Monad m]
namespace ForEachExpr
def visit (g : Expr → m Bool) (e : Expr) : MonadCacheT Expr Unit m Unit :=
  checkCache e fun _ => do
    if (← g e) then
      match e with
      | .forallE _ d b _   => do visit g d; visit g b
      | .lam _ d b _       => do visit g d; visit g b
      | .letE _ t v b _    => do visit g t; visit g v; visit g b
      | .app f a           => do visit g f; visit g a
      | .mdata _ b         => visit g b
      | .proj _ _ b        => visit g b
      | _                  => pure ()

end ForEachExpr

/-- Apply `f` to each sub-expression of `e`. If `f t` returns false, then t's children are not visited. -/
@[inline] def Expr.forEach' (e : Expr) (f : Expr → m Bool) : m Unit :=
  (ForEachExpr.visit f e).run

@[inline] def Expr.forEach (e : Expr) (f : Expr → m Unit) : m Unit :=
  e.forEach' fun e => do f e; pure true

end Lean
```
