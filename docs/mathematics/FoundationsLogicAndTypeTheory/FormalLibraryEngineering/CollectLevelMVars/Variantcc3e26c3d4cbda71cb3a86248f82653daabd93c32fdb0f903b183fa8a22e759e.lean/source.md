# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectLevelMVars.Variantcc3e26c3d4cbda71cb3a86248f82653daabd93c32fdb0f903b183fa8a22e759e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87b714333354ac1326a53db936936595bcc2195b` · SHA-256 `b733c58d2c5bdd21f204a29203022da2483993357d52e73b520a7bef843240cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant7bd8b2d4321a888ce792cf8abad8b7a89938647eabcfebfb19eb86271a22005a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7bd8b2d4321a888ce792cf8abad8b7a89938647eabcfebfb19eb86271a22005a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.State.Variant7bd8b2d4321a888ce792cf8abad8b7a89938647eabcfebfb19eb86271a22005a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7bd8b2d4321a888ce792cf8abad8b7a89938647eabcfebfb19eb86271a22005a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/CollectLevelMVars.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

prelude
public import Lean.Expr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant7bd8b2d4321a888ce792cf8abad8b7a89938647eabcfebfb19eb86271a22005a

public section

namespace Lean

namespace CollectLevelMVars

structure State where
  visitedLevel : LevelSet      := {}
  visitedExpr  : ExprSet       := {}
  result       : Array LMVarId := {}

instance : Inhabited State := ⟨{}⟩

abbrev Visitor := State → State

mutual
  partial def visitLevel (u : Level) : Visitor := fun s =>
    if !u.hasMVar || s.visitedLevel.contains u then s
    else collect u { s with visitedLevel := s.visitedLevel.insert u }

  partial def collect : Level → Visitor
    | .succ v    => visitLevel v
    | .max u v   => visitLevel v ∘ visitLevel u
    | .imax u v  => visitLevel v ∘ visitLevel u
    | .mvar m    => fun s => { s with result := s.result.push m }
    | _          => id
end

mutual
  partial def visitExpr (e : Expr) : Visitor := fun s =>
    if !e.hasMVar then s
    else if s.visitedExpr.contains e then s
    else main e { s with visitedExpr := s.visitedExpr.insert e }

  partial def main : Expr → Visitor
    | .proj _ _ s      => visitExpr s
    | .forallE _ d b _ => visitExpr b ∘ visitExpr d
    | .lam _ d b _     => visitExpr b ∘ visitExpr d
    | .letE _ t v b _  => visitExpr b ∘ visitExpr v ∘ visitExpr t
    | .app f a         => visitExpr a ∘ visitExpr f
    | .mdata _ b       => visitExpr b
    | .const _ us      => us.foldl (fun s u => visitLevel u s)
    | .sort u          => visitLevel u
    | _                => id
end

end CollectLevelMVars

/--
Collects all universe level metavariables present in `e`.
Result is in `Lean.CollectLevelMVars.State.result`.
-/
def collectLevelMVars (s : CollectLevelMVars.State) (e : Expr) : CollectLevelMVars.State :=
  CollectLevelMVars.main e s

end Lean
```
