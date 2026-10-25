# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cache.Variantac616d16c8a31a9afc33da3dc3f20f91d7d43565a391b6540b181b00fdd00951

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65dbe4a04757983fe7041533501351d435eb6e39` · SHA-256 `d90d84aa2f3a4bc50d2ffdf0227a5647acdac8189dd3d141296dbd07a429083d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclCache.Variant20635bef53ee8efb079a722fb2adff4a5646339a78a5faca28a42e586592a62a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20635bef53ee8efb079a722fb2adff4a5646339a78a5faca28a42e586592a62a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DeclCache.Variant20635bef53ee8efb079a722fb2adff4a5646339a78a5faca28a42e586592a62a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"20635bef53ee8efb079a722fb2adff4a5646339a78a5faca28a42e586592a62a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Util/Cache.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

public import Lean.Meta.DiscrTree


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclCache.Variant20635bef53ee8efb079a722fb2adff4a5646339a78a5faca28a42e586592a62a

@[expose] public section

/-!
# Once-per-file cache for tactics

This file defines cache data structures for tactics
that are initialized the first time they are accessed.
Since Lean 4 starts one process per file, these caches are once-per-file
and can for example be used to cache information about the imported modules.

The `Cache α` data structure is the most generic version we define.
It is created using `Cache.mk f` where `f : MetaM α` performs the initialization of the cache:
```
initialize numberOfImports : Cache Nat ← Cache.mk do
  (← getEnv).imports.size

-- (does not work in the same module where the cache is defined)
#eval show MetaM Nat from numberOfImports.get
```

The `DeclCache α` data structure computes a fold over the environment's constants:
`DeclCache.mk empty f` constructs such a cache
where `empty : α` and `f : Name → ConstantInfo → α → MetaM α`.
The result of the constants in the imports is cached between tactic invocations,
while for constants defined in the same file `f` is evaluated again every time.
This kind of cache can be used e.g. to populate discrimination trees.
-/

open Lean Meta

namespace Batteries.Tactic

/-- Once-per-file cache. -/
def Cache (α : Type) := IO.Ref <| MetaM α ⊕ Task (Except Exception α)

-- This instance is required as we use `Cache` with `initialize`.
-- One might expect an `Inhabited` instance here,
-- but there is no way to construct such without using choice anyway.
instance : Nonempty (Cache α) := inferInstanceAs <| Nonempty (IO.Ref _)

/-- Creates a cache with an initialization function. -/
def Cache.mk (init : MetaM α) : IO (Cache α) := IO.mkRef <| Sum.inl init

@[inherit_doc Core.wrapAsync]
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclCache.Variant20635bef53ee8efb079a722fb2adff4a5646339a78a5faca28a42e586592a62a.Lean.Meta.wrapAsync {α : Type} (act : α → MetaM β)  (cancelTk? : Option IO.CancelToken) :
    MetaM (α → EIO Exception β) := do
  let metaCtx ← readThe Meta.Context
  let metaSt ← getThe Meta.State
  Core.wrapAsync (fun a => act a |>.run' metaCtx metaSt) cancelTk?

/--
Access the cache. Calling this function for the first time will initialize the cache
with the function provided in the constructor.
-/
def Cache.get (cache : Cache α) : MetaM α := do
  let t ← match ← ST.Ref.get (m := BaseIO) cache with
    | .inr t => pure t
    | .inl init =>
      let res ← EIO.asTask <| (← Meta.wrapAsync (fun _ => init) (cancelTk? := none)) ()
      cache.set (m := BaseIO) (.inr res)
      pure res
  match t.get with
  | Except.ok res => pure res
  | Except.error err => throw err

/--
Cached fold over the environment's declarations,
where a given function is applied to `α` for every constant.
-/
structure DeclCache (α : Type) where mk' ::
  /-- The cached data. -/
  cache : Cache α
  /-- Function for adding a declaration from the current file to the cache. -/
  addDecl : Name → ConstantInfo → α → MetaM α
  /-- Function for adding a declaration from the library to the cache.
  Defaults to the same behaviour as adding a declaration from the current file. -/
  addLibraryDecl : Name → ConstantInfo → α → MetaM α := addDecl
  deriving Nonempty

/--
Creates a `DeclCache`.

First, if `pre` is nonempty, run that for a value,
and if successful populate the cache with that value.

If `pre` is empty, or it fails,
the cached structure `α` is initialized with `empty`,
and then `addLibraryDecl` is called for every imported constant.
After all imported constants have been added, we run `post`.
Finally, the result is cached.

When `get` is called, `addDecl` is also called for every constant in the current file.
-/
def DeclCache.mk (profilingName : String) (pre : MetaM α := failure) (empty : α)
    (addDecl : Name → ConstantInfo → α → MetaM α)
    (addLibraryDecl : Name → ConstantInfo → α → MetaM α := addDecl)
    (post : α → MetaM α := fun a => pure a) : IO (DeclCache α) := do
  let cache ← Cache.mk do
    try
      -- We allow arbitrary failures in the `pre` tactic,
      -- and fall back on folding over the entire environment.
      -- In practice the `pre` tactic may be unpickling an `.olean`,
      -- and may fail after leanprover/lean4#2766 because the embedded hash is incorrect.
      pre
    catch _ =>
      profileitM Exception profilingName (← getOptions) do
        post <|← (← getEnv).constants.map₁.foldM (init := empty) fun a n c =>
          addLibraryDecl n c a
  pure { cache, addDecl }

/--
Access the cache. Calling this function for the first time will initialize the cache
with the function provided in the constructor.
-/
def DeclCache.get (cache : DeclCache α) : MetaM α := do
  (← getEnv).constants.map₂.foldlM (init := ← cache.cache.get) fun a n c =>
    cache.addDecl n c a

/--
A type synonym for a `DeclCache` containing a pair of discrimination trees.
The first will store declarations in the current file,
the second will store declarations from imports (and will hopefully be "read-only" after creation).
-/
@[reducible] def DiscrTreeCache (α : Type) : Type := DeclCache (DiscrTree α × DiscrTree α)

/--
Build a `DiscrTreeCache`,
from a function that returns a collection of keys and values for each declaration.
-/
def DiscrTreeCache.mk [BEq α] (profilingName : String)
    (processDecl : Name → ConstantInfo → MetaM (Array (Array DiscrTree.Key × α)))
    (post? : Option (Array α → Array α) := none)
    (init : MetaM (DiscrTree α) := failure) :
    IO (DiscrTreeCache α) :=
  let updateTree := fun name constInfo tree => do
    return (← processDecl name constInfo).foldl (init := tree) fun t (k, v) =>
      t.insertKeyValue k v
  let addDecl := fun name constInfo (tree₁, tree₂) =>
    return (← updateTree name constInfo tree₁, tree₂)
  let addLibraryDecl := fun name constInfo (tree₁, tree₂) =>
    return (tree₁, ← updateTree name constInfo tree₂)
  let post := match post? with
  | some f => fun (T₁, T₂) => return (T₁, T₂.mapArrays f)
  | none => fun T => pure T
  let init' := return ({}, ← init)
  DeclCache.mk profilingName init' ({}, {}) addDecl addLibraryDecl (post := post)

/--
Get matches from both the discrimination tree for declarations in the current file,
and for the imports.

Note that if you are calling this multiple times with the same environment,
it will rebuild the discrimination tree for the current file multiple times,
and it would be more efficient to call `c.get` once,
and then call `DiscrTree.getMatch` multiple times.
-/
def DiscrTreeCache.getMatch (c : DiscrTreeCache α) (e : Expr) : MetaM (Array α) := do
  let (locals, imports) ← c.get
  -- `DiscrTree.getMatch` returns results in batches, with more specific lemmas coming later.
  -- Hence we reverse this list, so we try out more specific lemmas earlier.
  return (← locals.getMatch e).reverse ++ (← imports.getMatch e).reverse
````
