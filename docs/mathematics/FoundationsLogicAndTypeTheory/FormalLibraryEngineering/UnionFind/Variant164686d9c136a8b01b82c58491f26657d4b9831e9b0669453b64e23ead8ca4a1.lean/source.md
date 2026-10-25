# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnionFind.Variant164686d9c136a8b01b82c58491f26657d4b9831e9b0669453b64e23ead8ca4a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c46d6db35bd10c1cc54fb5786389335624f8e66` · SHA-256 `2f5a251db5d4b51e01613d1748356e4e363fdbc34d1eb446a5bdebadb89367a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnionFind.Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.UnionFind.Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Util/UnionFind.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Std.Data.HashMap.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnionFind.Variant6da0d9be7470f222aa4b42922e5ed556e4e36bfb30a0971ae6257a8851ca3d8f

public section

namespace Aesop

structure UnionFind (α) [BEq α] [Hashable α] where
  parents : Array USize
  sizes : Array USize
  toRep : Std.HashMap α USize
  -- Invariant: `toRep` contains exactly the indices of `parents` as values
  deriving Inhabited

namespace UnionFind

variable {α} [BEq α] [Hashable α]

instance : EmptyCollection (UnionFind α) :=
  ⟨{ parents := #[], sizes := #[], toRep := {} }⟩

def size (u : UnionFind α) : Nat :=
  u.parents.size

def add (x : α) (u : UnionFind α) : UnionFind α := Id.run do
  if u.toRep.contains x then
    return u
  let rep := u.parents.size.toUSize
  { parents := u.parents.push rep
    sizes := u.parents.push 1
    toRep := u.toRep.insert x rep }

def addArray (xs : Array α) (u : UnionFind α) : UnionFind α :=
  xs.foldl (init := u) λ u x => u.add x

def ofArray (xs : Array α) : UnionFind α :=
  ({} : UnionFind α).addArray xs

private unsafe def findRepUnsafe (i : USize) (u : UnionFind α) :
    USize × UnionFind α :=
  let parent := u.parents.uget i lcProof
  if parent == i then
    (parent, u)
  else
    let (parent, u) := u.findRepUnsafe parent
    (parent, { u with parents := u.parents.uset i parent lcProof })

@[implemented_by findRepUnsafe]
private opaque findRep : USize → UnionFind α → USize × UnionFind α

partial def find? (x : α) (u : UnionFind α) : Option USize × UnionFind α :=
  match u.toRep[x]? with
  | none => (none, u)
  | some rep =>
    let (rep, u) := u.findRep rep
    (some rep, u)

private unsafe def mergeUnsafe (x y : α) (u : UnionFind α) :
    UnionFind α := Id.run do
  let (some xRep, u) := u.find? x | u
  let (some yRep, u) := u.find? y | u
  if xRep == yRep then
    return u
  else
    let xSize := u.sizes.uget xRep lcProof
    let ySize := u.sizes.uget yRep lcProof
    if xSize < ySize then
      return {
        parents := u.parents.uset xRep yRep lcProof
        sizes := u.sizes.uset yRep (xSize + ySize) lcProof
        toRep := u.toRep
      }
    else
      return {
        parents := u.parents.uset yRep xRep lcProof
        sizes := u.sizes.uset xRep (xSize + ySize) lcProof
        toRep := u.toRep
      }

@[implemented_by mergeUnsafe]
opaque merge (x y : α) : UnionFind α → UnionFind α

def sets {α : Type v} [BEq α] [Hashable α] (u : UnionFind α) : Array (Array α) × UnionFind α :=
  let (sets, u) := u.toRep.fold (init := (∅, u)) λ ((sets : Std.HashMap USize _), u) x rep =>
    let (rep, u) := u.findRep rep
    let sets :=
      match sets[rep]? with
      | some set => sets.insert rep (set.push x)
      | none => sets.insert rep #[x]
    (sets, u)
  let sets := sets.fold (init := Array.mkEmpty sets.size) λ (sets : Array _) _ v =>
    sets.push v
  (sets, u)

end UnionFind

/-- Cluster the `as` according to which `bs` are associated to them by `f`. Two
members `a₁, a₂` of `as` are put in the same cluster iff `f a₁ ∩ f a₂ ≠ ∅`. -/
def cluster [BEq α] [Hashable α] [BEq β] [Hashable β] (f : α → Array β)
    (as : Array α) : Array (Array α) := Id.run do
  let mut clusters := UnionFind.ofArray as
  let mut aOccs : Std.HashMap β (Array α) := {}
  for a in as do
    for b in f a do
      match aOccs[b]? with
      | some as' =>
        for a' in as' do
          clusters := clusters.merge a a'
        aOccs := aOccs.insert b (as'.push a)
      | none =>
        aOccs := aOccs.insert b #[a]
  return clusters.sets.fst

end Aesop
```
