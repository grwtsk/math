# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveShrinkableTest.Variant81fed596dc4914f3d7ef8c28515877e2a91c9cf38a03be9517dee1b55da5ae6e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be2ed0301500c4ce4fea23993a4c8da9dfec86c4` · SHA-256 `2c3109af04a68e17ce3f2a0994849641cffd8b39ae9f6b00372cb4a834528a92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Color.Variant69917bca6e1d3f62f4f587cc84e1166a3f9e79ca87bf08f070e02394c922b4c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"69917bca6e1d3f62f4f587cc84e1166a3f9e79ca87bf08f070e02394c922b4c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Color.Variant69917bca6e1d3f62f4f587cc84e1166a3f9e79ca87bf08f070e02394c922b4c7","mathematical_subject":"Foundations.Unclassified","original_sha256":"69917bca6e1d3f62f4f587cc84e1166a3f9e79ca87bf08f070e02394c922b4c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/plausible/PlausibleTest/DeriveShrinkable/DeriveShrinkableTest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Plausible


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Color.Variant69917bca6e1d3f62f4f587cc84e1166a3f9e79ca87bf08f070e02394c922b4c7

open Plausible

namespace ShrinkableTests

-- Simple enum type
inductive Color where
  | Red | Green | Blue
  deriving Repr, Shrinkable

-- Binary tree (recursive, with non-recursive field)
inductive Tree where
  | Leaf : Tree
  | Node : Nat → Tree → Tree → Tree
  deriving Repr, Shrinkable

-- Parameterized type
inductive ShrinkList (α : Type) where
  | Nil : ShrinkList α
  | Cons : α → ShrinkList α → ShrinkList α
  deriving Repr, Shrinkable

-- Structure (single-constructor inductive)
structure Point where
  x : Nat
  y : Nat
  deriving Repr, Shrinkable

-- Nullary constructors shrink to []
/-- info: [] -/
#guard_msgs in
#eval Shrinkable.shrink Color.Red

/-- info: [] -/
#guard_msgs in
#eval Shrinkable.shrink Tree.Leaf

-- Shrinking a Node yields subterms (Leaf, Leaf) + argument shrinks (shrinking the Nat)
/--
info: [ShrinkableTests.Tree.Leaf,
 ShrinkableTests.Tree.Leaf,
 ShrinkableTests.Tree.Node 2 (ShrinkableTests.Tree.Leaf) (ShrinkableTests.Tree.Leaf),
 ShrinkableTests.Tree.Node 1 (ShrinkableTests.Tree.Leaf) (ShrinkableTests.Tree.Leaf),
 ShrinkableTests.Tree.Node 0 (ShrinkableTests.Tree.Leaf) (ShrinkableTests.Tree.Leaf)]
-/
#guard_msgs in
#eval Shrinkable.shrink (Tree.Node 5 Tree.Leaf Tree.Leaf)

-- Shrinking a parameterized list
/--
info: [ShrinkableTests.ShrinkList.Cons 1 (ShrinkableTests.ShrinkList.Nil),
 ShrinkableTests.ShrinkList.Cons 1 (ShrinkableTests.ShrinkList.Cons 1 (ShrinkableTests.ShrinkList.Nil)),
 ShrinkableTests.ShrinkList.Cons 0 (ShrinkableTests.ShrinkList.Cons 1 (ShrinkableTests.ShrinkList.Nil)),
 ShrinkableTests.ShrinkList.Cons 3 (ShrinkableTests.ShrinkList.Nil),
 ShrinkableTests.ShrinkList.Cons 3 (ShrinkableTests.ShrinkList.Cons 0 (ShrinkableTests.ShrinkList.Nil))]
-/
#guard_msgs in
#eval Shrinkable.shrink (ShrinkList.Cons 3 (ShrinkList.Cons 1 ShrinkList.Nil))

-- Shrinking a structure
/--
info: [{ x := 5, y := 20 },
 { x := 2, y := 20 },
 { x := 1, y := 20 },
 { x := 0, y := 20 },
 { x := 10, y := 10 },
 { x := 10, y := 5 },
 { x := 10, y := 2 },
 { x := 10, y := 1 },
 { x := 10, y := 0 }]
-/
#guard_msgs in
#eval Shrinkable.shrink (Point.mk 10 20)

inductive Vec : Nat → Type where
  | nil : Vec 0
  | cons (x : Nat) (xs : Vec n) : Vec (n + 1)

/-- error: Cannot derive instance of Shrinkable typeclass for indexed inductive type 'ShrinkableTests.Vec' -/
#guard_msgs in
deriving instance Shrinkable for Vec

end ShrinkableTests
```
