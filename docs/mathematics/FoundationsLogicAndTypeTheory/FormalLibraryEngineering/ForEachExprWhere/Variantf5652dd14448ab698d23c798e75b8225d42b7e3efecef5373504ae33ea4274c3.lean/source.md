# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForEachExprWhere.Variantf5652dd14448ab698d23c798e75b8225d42b7e3efecef5373504ae33ea4274c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad5f421c55e0cfd11bc8dddfd8c26f0b24d1e7d6` · SHA-256 `b1379fa2f05ddbfa7eb5d27b64e269d164ad55b27d55501854032d379e2f0985`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variantb284973f86ae7bceb85eb1739432515ffd36177aa51ab754c07398094a8ab2b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b284973f86ae7bceb85eb1739432515ffd36177aa51ab754c07398094a8ab2b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.State.Variantb284973f86ae7bceb85eb1739432515ffd36177aa51ab754c07398094a8ab2b5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b284973f86ae7bceb85eb1739432515ffd36177aa51ab754c07398094a8ab2b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/ForEachExprWhere.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr
public import Lean.Util.MonadCache


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variantb284973f86ae7bceb85eb1739432515ffd36177aa51ab754c07398094a8ab2b5

public section

namespace Lean
/-!
`forEachWhere p f e` is similar to `forEach f e`, but only applies `f` to subterms that satisfy the
(pure) predicate `p`.
It also uses the caching trick used at `FindExpr` and `ReplaceExpr`. This can be very effective
if the number of subterms satisfying `p` is a small subset of the set of subterms.
If `p` holds for most subterms, then it is more efficient to use `forEach f e`.
-/

namespace ForEachExprWhere
abbrev cacheSize : USize := 8192 - 1

private def notAnExpr : Unit × Unit := ⟨⟨⟩, ⟨⟩⟩

structure State where
  /--
  Implements caching trick similar to the one used at `FindExpr` and `ReplaceExpr`.
  -/
  visited : Array Expr   -- Remark: our "unsafe" implementation relies on the fact that `notAnExpr` is not a valid Expr
  /--
  Set of visited subterms that satisfy the predicate `p`.
  We have to use this set to make sure `f` is applied at most once of each subterm that satisfies `p`.
  -/
  checked : Std.HashSet Expr

unsafe def initCache : State := {
  visited := .replicate cacheSize.toNat (cast lcProof notAnExpr)
  checked := {}
}

abbrev ForEachM {ω : Type} (m : Type → Type) [STWorld ω m] := StateRefT' ω State m

variable {ω : Type} {m : Type → Type} [STWorld ω m] [MonadLiftT (ST ω) m] [Monad m]

unsafe def visited (e : Expr) : ForEachM m Bool := do
  let s ← get
  let h := ptrAddrUnsafe e
  let i := h % cacheSize
  let k := s.visited.uget i lcProof
  if ptrAddrUnsafe k == h then
    return true
  else
    modify fun s => { s with visited := s.visited.uset i e lcProof }
    return false

def checked (e : Expr) : ForEachM m Bool := do
  if (← get).checked.contains e then
    return true
  else
    modify fun s => { s with checked := s.checked.insert e }
    return false

/-- `Expr.forEachWhere` (unsafe) implementation -/
unsafe def visit (p : Expr → Bool) (f : Expr → m Unit) (e : Expr) (stopWhenVisited : Bool := false) : m Unit := do
  go e |>.run' initCache
where
  go (e : Expr) : StateRefT' ω State m Unit := do
    unless (← visited e) do
      if p e then
        unless (← checked e) do
          f e
          if stopWhenVisited then
            return ()
      match e with
      | .forallE _ d b _   => go d; go b
      | .lam _ d b _       => go d; go b
      | .letE _ t v b _    => go t; go v; go b
      | .app f a           => go f; go a
      | .mdata _ b         => go b
      | .proj _ _ b        => go b
      | _                  => return ()

end ForEachExprWhere

/--
  `e.forEachWhere p f` applies `f` to each subterm that satisfies `p`.
  If `stopWhenVisited` is `true`, the function doesn't visit subterms of terms
  which satisfy `p`.
-/
@[implemented_by ForEachExprWhere.visit]
opaque Expr.forEachWhere {ω : Type} {m : Type → Type} [STWorld ω m] [MonadLiftT (ST ω) m] [Monad m] (p : Expr → Bool) (f : Expr → m Unit) (e : Expr) (stopWhenVisited : Bool := false) : m Unit

end Lean
```
