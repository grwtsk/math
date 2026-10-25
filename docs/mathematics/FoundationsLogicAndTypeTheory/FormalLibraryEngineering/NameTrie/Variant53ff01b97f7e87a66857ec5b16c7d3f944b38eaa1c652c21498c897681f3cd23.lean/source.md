# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameTrie.Variant53ff01b97f7e87a66857ec5b16c7d3f944b38eaa1c652c21498c897681f3cd23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b88af8c7e25258df515466374f1018641d8a841e` · SHA-256 `57c016051cd13f448a5528bff73f562083eb1e85a7dc583d866fe44a19bca89f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NamePart.Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NamePart.Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/NameTrie.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Data.PrefixTree
import Init.Data.Ord.String


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NamePart.Variant6d132ef5c869a2c90853bc8b8dc825855738b97145bf6276ccd4e155f8046202

public section

namespace Lean

inductive NamePart
  | str (s : String)
  | num (n : Nat)
  deriving BEq, Inhabited

instance : ToString NamePart where
  toString
    | NamePart.str s => s
    | NamePart.num n => toString n

def NamePart.cmp : NamePart → NamePart → Ordering
  | NamePart.str a, NamePart.str b => compare a b
  | NamePart.num a, NamePart.num b => compare a b
  | NamePart.num _, NamePart.str _ => Ordering.lt
  | _, _ => Ordering.gt

def NamePart.lt : NamePart → NamePart → Bool
  | NamePart.str a, NamePart.str b => a < b
  | NamePart.num a, NamePart.num b => a < b
  | NamePart.num _, NamePart.str _ => true
  | _, _ => false

@[expose] def NameTrie (β : Type u) := PrefixTree NamePart β NamePart.cmp

private def toKey (n : Name) : List NamePart :=
  loop n []
where
  loop
    | Name.str p s,   parts => loop p (NamePart.str s :: parts)
    | Name.num p n,   parts => loop p (NamePart.num n :: parts)
    | Name.anonymous, parts => parts

def NameTrie.insert (t : NameTrie β) (n : Name) (b : β) : NameTrie β :=
  PrefixTree.insert t (toKey n) b

def NameTrie.empty : NameTrie β :=
  PrefixTree.empty

instance : Inhabited (NameTrie β) where
  default := NameTrie.empty

instance : EmptyCollection (NameTrie β) where
  emptyCollection := NameTrie.empty

def NameTrie.find? (t : NameTrie β) (k : Name) : Option β :=
  PrefixTree.find? t (toKey k)

@[inline, inherit_doc PrefixTree.findLongestPrefix?]
def NameTrie.findLongestPrefix? (t : NameTrie β) (k : Name) : Option β :=
  PrefixTree.findLongestPrefix? t (toKey k)

@[inline]
def NameTrie.foldMatchingM [Monad m] (t : NameTrie β) (k : Name) (init : σ) (f : β → σ → m σ) : m σ :=
  PrefixTree.foldMatchingM t (toKey k) init f

@[inline]
def NameTrie.foldM [Monad m] (t : NameTrie β) (init : σ) (f : β → σ → m σ) : m σ :=
  t.foldMatchingM Name.anonymous init f

@[inline]
def NameTrie.forMatchingM [Monad m] (t : NameTrie β) (k : Name) (f : β → m Unit) : m Unit :=
  PrefixTree.forMatchingM t (toKey k) f

@[inline]
def NameTrie.forM [Monad m] (t : NameTrie β) (f : β → m Unit) : m Unit :=
  t.forMatchingM Name.anonymous f

def NameTrie.matchingToArray (t : NameTrie β) (k : Name) : Array β :=
  Id.run <| t.foldMatchingM k #[] fun v acc => return acc.push v

def NameTrie.toArray (t : NameTrie β) : Array β :=
  Id.run <| t.foldM #[] fun v acc => return acc.push v

end Lean
```
