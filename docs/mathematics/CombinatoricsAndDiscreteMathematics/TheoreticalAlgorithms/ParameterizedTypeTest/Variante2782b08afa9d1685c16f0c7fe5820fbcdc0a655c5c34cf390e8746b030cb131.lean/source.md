# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ParameterizedTypeTest.Variante2782b08afa9d1685c16f0c7fe5820fbcdc0a655c5c34cf390e8746b030cb131

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `780e44945632a84b2f9fb105e1c6d4de94740a7e` · SHA-256 `5cdec3bf6dfc72b3b2b493be3b5b87d3e0059feafa5275d7ea4bd0dbe3bc8b02`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MyList.Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MyList.Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb","mathematical_subject":"Computation.DataStructures","original_sha256":"ced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/plausible/PlausibleTest/DeriveArbitrary/ParameterizedTypeTest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Plausible.Arbitrary
import Plausible.DeriveArbitrary
import Plausible.Attr
import Plausible.Testable


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MyList.Variantced575195ee63b691e7ed07a3f12c1959c422e08073765072f24161a99e241eb

open Plausible

/-- A dummy `inductive` type isomorphic to the polymorphic `List` type,
    used as an example of a parameterized inductive type -/
inductive MyList (α : Type) where
  | MyNil : MyList α
  | MyCons : α → MyList α → MyList α
  deriving Repr, BEq

set_option trace.plausible.deriving.arbitrary true in
/--
trace: [plausible.deriving.arbitrary] ⏎
    [mutual
       def instArbitraryMyList.arbitrary {α✝} [Plausible.Arbitrary✝ α✝] : Nat → Plausible.Gen (@MyList✝ α✝) :=
         let rec aux_arb (fuel✝ : Nat) : Plausible.Gen (@MyList✝ α✝) :=
           (match fuel✝ with
           | Nat.zero => Plausible.Gen.oneOfWithDefault (pure MyList.MyNil) [(pure MyList.MyNil)]
           | fuel'✝ + 1 =>
             Plausible.Gen.frequency (pure MyList.MyNil)
               [(1, (pure MyList.MyNil)),
                 (fuel'✝ + 1,
                   (do
                     let a✝ ← Plausible.Arbitrary.arbitrary
                     let a✝¹ ← aux_arb fuel'✝
                     return MyList.MyCons a✝ a✝¹))])
         fun fuel✝ => aux_arb fuel✝
     end,
     instance {α✝} [Plausible.Arbitrary✝ α✝] : Plausible.ArbitraryFueled✝ (@MyList✝ α✝) :=
       ⟨instArbitraryMyList.arbitrary⟩]
-/
#guard_msgs in
deriving instance Arbitrary for MyList

-- Test that we reject attempts to derive `Arbitrary` on indexed types

inductive Vec : Nat → Type where
  | nil : Vec 0
  | cons (x : Nat) (xs : Vec n) : Vec (n + 1)

/-- error: Cannot derive instance of Arbitrary typeclass for indexed inductive type 'Vec' -/
#guard_msgs in
deriving instance Arbitrary for Vec

-- Test that we can successfully synthesize instances of `Arbitrary` & `ArbitraryFueled`
-- when `α` is specialized to `Nat`

/-- info: instArbitraryFueledMyListOfArbitrary -/
#guard_msgs in
#synth ArbitraryFueled (MyList Nat)

/-- info: instArbitraryOfArbitraryFueled -/
#guard_msgs in
#synth Arbitrary (MyList Nat)

-- Infrastructure for testing the derived generator

/-- Converts a `MyList` to an ordinary `List` -/
def listOfMyList (l : MyList α) : List α :=
  match l with
  | .MyNil => []
  | .MyCons x xs => x :: listOfMyList xs

/-- Converts an ordinary `List` to a `MyList` -/
def myListOfList (l : List α) : MyList α :=
  match l with
  | [] => .MyNil
  | x :: xs => .MyCons x (myListOfList xs)

/-- Trivial shrinker for `MyList α`.
    (Under the hood, this converts the `MyList` to an ordinary `List`,
    uses the default `Shrinkable` instance for `List α`, then converts it back to `MyList α`.) -/
def shrinkMyList [Shrinkable α] (myList : MyList α) : List (MyList α) :=
  let l := listOfMyList myList
  myListOfList <$> Shrinkable.shrink l

/-- `Shrinkable` instance for `MyList α` -/
instance [Shrinkable α] : Shrinkable (MyList α) where
  shrink := shrinkMyList

/-!
To test whether the derived generator can generate counterexamples,
we create an erroneous property `∀ l : MyList Nat, reverse (reverse l) != l`,
and ask Plausible to falsify it.

(This property is false, since `reverse` is an involution on `List α`, and
`MyList α` is isomorphic to `List α`.)
-/

/-- Returns the elements of a `MyList α` in reverse order.

    Implementation adapted from the Haskell `List.reverse` function.
    https://hackage.haskell.org/package/base-4.17.1.0/docs/Prelude.html#v:reverse -/
def reverse (l : MyList α) : MyList α :=
  rev l .MyNil
    where
      rev (l : MyList α) (acc : MyList α) :=
        match l with
        | .MyNil => acc
        | .MyCons x xs => rev xs (.MyCons x acc)

/-- error: Found a counter-example! -/
#guard_msgs in
#eval Testable.check (∀ l : MyList Nat, reverse (reverse l) != l)
  (cfg := {numInst := 10, maxSize := 5, quiet := true})
```
