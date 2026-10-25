# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrefixTree.Variantaaa18c913abfd16f3bd9fc9f836c71ba77949b43c9996468e7039a45a90ef0ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d15698943c2c947ed63ab304e52fbba629a844f` · SHA-256 `42d3ac225ae4d6f813e9f424313d4f58a61b63514e6c4dd197e1ba8c9481fb88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrefixTreeNode.Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PrefixTreeNode.Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/PrefixTree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Std.Data.TreeMap.Raw.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrefixTreeNode.Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559

public section

namespace Lean

/-- Similar to trie, but for arbitrary keys -/
inductive PrefixTreeNode (α : Type u) (β : Type v) (cmp : α → α → Ordering) where
  | Node : Option β → Std.TreeMap.Raw α (PrefixTreeNode α β cmp) cmp → PrefixTreeNode α β cmp

instance : Inhabited (PrefixTreeNode α β cmp) where
  default := PrefixTreeNode.Node none ∅

namespace PrefixTreeNode

def empty : PrefixTreeNode α β cmp :=
  PrefixTreeNode.Node none ∅

@[inline]
partial def insert (cmp : α → α → Ordering) (t : PrefixTreeNode α β cmp) (k : List α) (val : β) : PrefixTreeNode α β cmp :=
  let rec @[specialize] insertEmpty (k : List α) : PrefixTreeNode α β cmp :=
    match k with
    | [] => PrefixTreeNode.Node (some val) ∅
    | k :: ks =>
      let t := insertEmpty ks
      PrefixTreeNode.Node none {(k, t)}
  let rec @[specialize] loop
    | PrefixTreeNode.Node _ m, [] =>
      PrefixTreeNode.Node (some val) m -- overrides old value
    | PrefixTreeNode.Node v m, k :: ks =>
      let t := match m.get? k with
        | none   => insertEmpty ks
        | some t => loop t ks
      PrefixTreeNode.Node v (m.insert k t)
  loop t k

@[specialize]
partial def find? (cmp : α → α → Ordering) (t : PrefixTreeNode α β cmp) (k : List α) : Option β :=
  let rec @[specialize] loop
    | PrefixTreeNode.Node val _, [] => val
    | PrefixTreeNode.Node _   m, k :: ks =>
      match m.get? k with
      | none   => none
      | some t => loop t ks
  loop t k

/-- Returns the value of the longest key in `t` that is a prefix of `k`, if any. -/
@[inline]
partial def findLongestPrefix? (cmp : α → α → Ordering) (t : PrefixTreeNode α β cmp) (k : List α) : Option β :=
  let rec @[specialize] loop acc?
    | PrefixTreeNode.Node val _, [] => val <|> acc?
    | PrefixTreeNode.Node val m, k :: ks =>
      match m.get? k with
      | none   => val
      | some t => loop (val <|> acc?) t ks
  loop none t k

@[inline]
partial def foldMatchingM [Monad m] (cmp : α → α → Ordering) (t : PrefixTreeNode α β cmp) (k : List α) (init : σ) (f : β → σ → m σ) : m σ :=
  let rec @[specialize] fold : PrefixTreeNode α β cmp → σ → m σ
    | PrefixTreeNode.Node b? n, d => do
      let d ← match b? with
        | none   => pure d
        | some b => f b d
      n.foldlM (init := d) fun d _ t => fold t d
  let rec @[specialize] find : List α → PrefixTreeNode α β cmp → σ → m σ
    | [],    t, d => fold t d
    | k::ks, PrefixTreeNode.Node _ m, d =>
      match m.get? k with
      | none   => pure init
      | some t => find ks t d
  find k t init

inductive WellFormed (cmp : α → α → Ordering) : PrefixTreeNode α β cmp → Prop where
  | emptyWff  : WellFormed cmp empty
  | insertWff : WellFormed cmp t → WellFormed cmp (insert cmp t k val)

end PrefixTreeNode

@[expose] def PrefixTree (α : Type u) (β : Type v) (cmp : α → α → Ordering) : Type (max u v) :=
  { t : PrefixTreeNode α β cmp // t.WellFormed cmp }

open PrefixTreeNode

def PrefixTree.empty : PrefixTree α β p :=
  ⟨PrefixTreeNode.empty, WellFormed.emptyWff⟩

instance : Inhabited (PrefixTree α β p) where
  default := PrefixTree.empty

instance : EmptyCollection (PrefixTree α β p) where
  emptyCollection := PrefixTree.empty

@[inline]
def PrefixTree.insert (t : PrefixTree α β p) (k : List α) (v : β) : PrefixTree α β p :=
  ⟨t.val.insert p k v, WellFormed.insertWff t.property⟩

@[inline]
def PrefixTree.find? (t : PrefixTree α β p) (k : List α) : Option β :=
  t.val.find? p k

@[inline, inherit_doc PrefixTreeNode.findLongestPrefix?]
def PrefixTree.findLongestPrefix? (t : PrefixTree α β p) (k : List α) : Option β :=
  t.val.findLongestPrefix? p k

@[inline]
def PrefixTree.foldMatchingM [Monad m] (t : PrefixTree α β p) (k : List α) (init : σ) (f : β → σ → m σ) : m σ :=
  t.val.foldMatchingM p k init f

@[inline]
def PrefixTree.foldM [Monad m] (t : PrefixTree α β p) (init : σ) (f : β → σ → m σ) : m σ :=
  t.foldMatchingM [] init f

@[inline]
def PrefixTree.forMatchingM [Monad m] (t : PrefixTree α β p) (k : List α) (f : β → m Unit) : m Unit :=
  t.val.foldMatchingM p k () (fun b _ => f b)

@[inline]
def PrefixTree.forM [Monad m] (t : PrefixTree α β p) (f : β → m Unit) : m Unit :=
  t.forMatchingM [] f

end Lean
```
