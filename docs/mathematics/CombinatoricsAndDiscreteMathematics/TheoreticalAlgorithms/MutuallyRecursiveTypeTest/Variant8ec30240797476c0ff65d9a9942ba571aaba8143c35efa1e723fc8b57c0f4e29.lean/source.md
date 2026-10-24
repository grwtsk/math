# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MutuallyRecursiveTypeTest.Variant8ec30240797476c0ff65d9a9942ba571aaba8143c35efa1e723fc8b57c0f4e29

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09907aaaf6af314140a6980caa39cfc6adcb2cc0` · SHA-256 `7919861f55b02abf68b48ebb8d0c04213808bfc4709d0775ae90b4ea6b573876`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NatTree.Variant4938960862d950c84498dd980b9fd5bde0dbc1080dd68e03554f3e983b48e459","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4938960862d950c84498dd980b9fd5bde0dbc1080dd68e03554f3e983b48e459","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.NatTree.Variant4938960862d950c84498dd980b9fd5bde0dbc1080dd68e03554f3e983b48e459","mathematical_subject":"Computation.DataStructures","original_sha256":"4938960862d950c84498dd980b9fd5bde0dbc1080dd68e03554f3e983b48e459","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/plausible/PlausibleTest/DeriveArbitrary/MutuallyRecursiveTypeTest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Plausible.Arbitrary
import Plausible.DeriveArbitrary
import Plausible.Attr
import Plausible.Testable


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NatTree.Variant4938960862d950c84498dd980b9fd5bde0dbc1080dd68e03554f3e983b48e459

open Plausible

/-
# Testing the deriving `Arbitrary` handler on mutually recursive inductive types

To test that our derived generators can handle mutually recursive types,
we define two mutually recursive types (one `inductive` and one `structure`)
to represent a binary tree.

(Example adapted from Cornell CS 3110 lecture notes
https://www.cs.cornell.edu/courses/cs3110/2008fa/lectures/lec04.html)

```lean
mutual
  inductive NatTree
    | Empty : NatTree
    | Node : Node → NatTree
    deriving Nonempty

  structure Node where
    value : Nat
    left : NatTree
    right : NatTree
    deriving Nonempty
end
```

Note that the user needs to add the `deriving Nonempty` annotation
to each type in the mutually recursive definition -- this is needed
in order to convince Lean that the type `Nat → Plausible.Gen NatTree`
is empty during the derivation process.

-/

mutual
  /-- A (possibly empty) binary tree -/
  inductive NatTree
    | Empty : NatTree
    | Node : Node → NatTree
    deriving Nonempty, Repr

  /-- A child node in a tree, containing a value and two subtrees -/
  structure Node where
    value : Nat
    left : NatTree
    right : NatTree
    deriving Nonempty
end


set_option trace.plausible.deriving.arbitrary true in
/--
trace: [plausible.deriving.arbitrary] ⏎
    [mutual
       partial def instArbitraryNatTree.arbitrary_1 : Nat → Plausible.Gen (@NatTree✝) :=
         let localinst✝ : Plausible.ArbitraryFueled✝ (@NatTree✝) := ⟨instArbitraryNatTree.arbitrary_1⟩;
         let localinst✝¹ : Plausible.ArbitraryFueled✝ (@Node✝) := ⟨instArbitraryNatTree.arbitrary_2⟩;
         let rec aux_arb (fuel✝ : Nat) : Plausible.Gen (@NatTree✝) :=
           (match fuel✝ with
           | Nat.zero =>
             Plausible.Gen.oneOfWithDefault (pure NatTree.Empty)
               [(pure NatTree.Empty),
                 (do
                   let a✝ ← Plausible.Arbitrary.arbitrary
                   return NatTree.Node a✝)]
           | fuel'✝ + 1 =>
             Plausible.Gen.frequency (pure NatTree.Empty)
               [(1, (pure NatTree.Empty)),
                 (1,
                   (do
                     let a✝ ← Plausible.Arbitrary.arbitrary
                     return NatTree.Node a✝)),
                 ])
         fun fuel✝ => aux_arb fuel✝
       partial def instArbitraryNatTree.arbitrary_2 : Nat → Plausible.Gen (@Node✝) :=
         let localinst✝² : Plausible.ArbitraryFueled✝ (@NatTree✝) := ⟨instArbitraryNatTree.arbitrary_1⟩;
         let localinst✝³ : Plausible.ArbitraryFueled✝ (@Node✝) := ⟨instArbitraryNatTree.arbitrary_2⟩;
         let rec aux_arb (fuel✝¹ : Nat) : Plausible.Gen (@Node✝) :=
           (match fuel✝¹ with
           | Nat.zero =>
             Plausible.Gen.oneOfWithDefault
               (do
                 let a✝¹ ← Plausible.Arbitrary.arbitrary
                 let a✝² ← Plausible.Arbitrary.arbitrary
                 let a✝³ ← Plausible.Arbitrary.arbitrary
                 return Node.mk a✝¹ a✝² a✝³)
               [(do
                   let a✝¹ ← Plausible.Arbitrary.arbitrary
                   let a✝² ← Plausible.Arbitrary.arbitrary
                   let a✝³ ← Plausible.Arbitrary.arbitrary
                   return Node.mk a✝¹ a✝² a✝³)]
           | fuel'✝¹ + 1 =>
             Plausible.Gen.frequency
               (do
                 let a✝¹ ← Plausible.Arbitrary.arbitrary
                 let a✝² ← Plausible.Arbitrary.arbitrary
                 let a✝³ ← Plausible.Arbitrary.arbitrary
                 return Node.mk a✝¹ a✝² a✝³)
               [(1,
                   (do
                     let a✝¹ ← Plausible.Arbitrary.arbitrary
                     let a✝² ← Plausible.Arbitrary.arbitrary
                     let a✝³ ← Plausible.Arbitrary.arbitrary
                     return Node.mk a✝¹ a✝² a✝³)),
                 ])
         fun fuel✝¹ => aux_arb fuel✝¹
     end,
     instance : Plausible.ArbitraryFueled✝ (@NatTree✝) :=
       ⟨instArbitraryNatTree.arbitrary_1⟩]
-/
#guard_msgs in
deriving instance Arbitrary for NatTree

-- Test that we can successfully synthesize instances of `Arbitrary` & `ArbitraryFueled`

/-- info: instArbitraryFueledNatTree -/
#guard_msgs in
#synth ArbitraryFueled NatTree

/-- info: instArbitraryOfArbitraryFueled -/
#guard_msgs in
#synth Arbitrary NatTree

/-- `search tree x` recursively searches for a value `x` in `tree`,
    returning a `Bool` indicating `x`'s membership in `tree`

    (Note that `tree` may not obey the binary search tree
    invariant, so this algorithm is not the most efficient.) -/
def search (tree : NatTree) (x : Nat) : Bool :=
  match tree with
  | .Empty => false
  | .Node { value, left, right } =>
    value == x || search left x || search right x

/-- A shrinker for `NatTree`, adapted from Penn CIS 5520 lecture notes
    https://www.seas.upenn.edu/~cis5520/current/lectures/stub/05-quickcheck/QuickCheck.html -/
def shrinkNatTree (tree : NatTree) : List NatTree :=
    match tree with
    | .Empty => []
    | .Node {value := x, left := l, right := r} =>
      [.Empty, l, r]                                                            -- left and right trees are smaller
      ++ (fun l' => NatTree.Node $ Node.mk x l' r) <$> shrinkNatTree l          -- shrink left subtree
      ++ (fun r' => NatTree.Node $ Node.mk x l r') <$> shrinkNatTree r          -- shrink right tree
      ++ (fun x' => NatTree.Node $ Node.mk x' l r) <$> Shrinkable.shrink x      -- shrink the value

/-- `Shrinkable` instance for `NatTree` -/
instance : Shrinkable NatTree where
  shrink := shrinkNatTree

/-!
To test whether the derived generator can generate counterexamples,
we create an erroneous property `∀ tree : NatTree, search tree 5`,
and ask Plausible to falsify it.

(This property is false, since there exist trees which don't contain the value 5,
e.g. the `Empty` tree.)

-/

/-- error: Found a counter-example! -/
#guard_msgs in
#eval Testable.check (∀ tree : NatTree, search tree 5)
  (cfg := {numInst := 10, maxSize := 2, quiet := true})
````
