-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Type.Variant4605b46867cb109dc9490942b507eee1c58c39f196f5a2a481410c5c3d83340e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4605b46867cb109dc9490942b507eee1c58c39f196f5a2a481410c5c3d83340e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Type.Variant4605b46867cb109dc9490942b507eee1c58c39f196f5a2a481410c5c3d83340e","mathematical_subject":"Computation.DataStructures","original_sha256":"4605b46867cb109dc9490942b507eee1c58c39f196f5a2a481410c5c3d83340e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/plausible/PlausibleTest/DeriveArbitrary/DeriveSTLCTermTypeGenerators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Plausible.Arbitrary
import Plausible.DeriveArbitrary
import Plausible.Attr
import Plausible.Testable


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Type.Variant4605b46867cb109dc9490942b507eee1c58c39f196f5a2a481410c5c3d83340e

open Plausible Gen

set_option guard_msgs.diff true

/-- Base types in the Simply-Typed Lambda Calculus (STLC)
    (either Nat or functions) -/
inductive type where
  | Nat : type
  | Fun : type → type → type
  deriving BEq, DecidableEq, Repr

/-- Terms in the STLC extended with naturals and addition -/
inductive term where
  | Const: Nat → term
  | Add: term → term → term
  | Var: Nat → term
  | App: term → term → term
  | Abs: type → term → term
  deriving BEq, Repr

-- Invoke deriving instance handler for the `Arbitrary` typeclass on `type` and `term`
set_option trace.plausible.deriving.arbitrary true in
/--
trace: [plausible.deriving.arbitrary] ⏎
    [mutual
       def instArbitraryType.arbitrary : Nat → Plausible.Gen (@type✝) :=
         let rec aux_arb (fuel✝ : Nat) : Plausible.Gen (@type✝) :=
           (match fuel✝ with
           | Nat.zero => Plausible.Gen.oneOfWithDefault (pure type.Nat) [(pure type.Nat)]
           | fuel'✝ + 1 =>
             Plausible.Gen.frequency (pure type.Nat)
               [(1, (pure type.Nat)),
                 (fuel'✝ + 1,
                   (do
                     let a✝ ← aux_arb fuel'✝
                     let a✝¹ ← aux_arb fuel'✝
                     return type.Fun a✝ a✝¹))])
         fun fuel✝ => aux_arb fuel✝
     end,
     instance : Plausible.ArbitraryFueled✝ (@type✝) :=
       ⟨instArbitraryType.arbitrary⟩]
---
trace: [plausible.deriving.arbitrary] ⏎
    [mutual
       def instArbitraryTerm.arbitrary : Nat → Plausible.Gen (@term✝) :=
         let rec aux_arb (fuel✝ : Nat) : Plausible.Gen (@term✝) :=
           (match fuel✝ with
           | Nat.zero =>
             Plausible.Gen.oneOfWithDefault
               (do
                 let a✝ ← Plausible.Arbitrary.arbitrary
                 return term.Const a✝)
               [(do
                   let a✝ ← Plausible.Arbitrary.arbitrary
                   return term.Const a✝),
                 (do
                   let a✝¹ ← Plausible.Arbitrary.arbitrary
                   return term.Var a✝¹)]
           | fuel'✝ + 1 =>
             Plausible.Gen.frequency
               (do
                 let a✝ ← Plausible.Arbitrary.arbitrary
                 return term.Const a✝)
               [(1,
                   (do
                     let a✝ ← Plausible.Arbitrary.arbitrary
                     return term.Const a✝)),
                 (1,
                   (do
                     let a✝¹ ← Plausible.Arbitrary.arbitrary
                     return term.Var a✝¹)),
                 (fuel'✝ + 1,
                   (do
                     let a✝² ← aux_arb fuel'✝
                     let a✝³ ← aux_arb fuel'✝
                     return term.Add a✝² a✝³)),
                 (fuel'✝ + 1,
                   (do
                     let a✝⁴ ← aux_arb fuel'✝
                     let a✝⁵ ← aux_arb fuel'✝
                     return term.App a✝⁴ a✝⁵)),
                 (fuel'✝ + 1,
                   (do
                     let a✝⁶ ← Plausible.Arbitrary.arbitrary
                     let a✝⁷ ← aux_arb fuel'✝
                     return term.Abs a✝⁶ a✝⁷))])
         fun fuel✝ => aux_arb fuel✝
     end,
     instance : Plausible.ArbitraryFueled✝ (@term✝) :=
       ⟨instArbitraryTerm.arbitrary⟩]
-/
#guard_msgs in
deriving instance Arbitrary for type, term

-- Test that we can successfully synthesize instances of `Arbitrary` & `ArbitraryFueled`
-- for both `type` & `term`

/-- info: instArbitraryFueledType -/
#guard_msgs in
#synth ArbitraryFueled type

/-- info: instArbitraryFueledTerm -/
#guard_msgs in
#synth ArbitraryFueled term

/-- info: instArbitraryOfArbitraryFueled -/
#guard_msgs in
#synth Arbitrary type

/-- info: instArbitraryOfArbitraryFueled -/
#guard_msgs in
#synth Arbitrary term


/-!
Test that we can use the derived generator to find counterexamples.

We construct two faulty properties:
1. `∀ (term : term), isValue term = true`
2. `∀ (ty : type), isFunctionType ty = true`

Both of these properties are false, since there exist terms in the STLC
which are not values (e.g. function applications), and there are
types which are not function types (e.g. `Nat`).

We then test that the respective derived generators for `term`s and `type`s
generate counterexamples which refute the aforementioned properties.
-/

/-- Determines whether a `term` is a value.
    (Note that only constant `Nat`s and lambda abstractions are considered values in the STLC.) -/
def isValue (tm : term) : Bool :=
  match tm with
  | .Const _ | .Abs _ _ => true
  | _ => false

/-- Determines whether a `type` is a function type -/
def isFunctionType (ty : type) : Bool :=
  match ty with
  | .Nat => false
  | .Fun _ _ => true

/-- `Shrinkable` instance for `type` -/
instance : Shrinkable type where
  shrink (ty : type) :=
    match ty with
    | .Nat => []
    | .Fun t1 t2 => [.Nat, t1, t2]

/-- `Shrinkable` instance for `term` -/
instance : Shrinkable term where
  shrink := shrinkTerm
    where
      shrinkTerm (tm : term) : List term :=
        match tm with
        | .Const _ | .Var _ => []
        | .App e1 e2 | .Add e1 e2 => shrinkTerm e1 ++ shrinkTerm e2
        | .Abs _ e => shrinkTerm e

/-- error: Found a counter-example! -/
#guard_msgs in
#eval Testable.check (∀ (term : term), isValue term)
  (cfg := {numInst := 10, maxSize := 5, quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
#eval Testable.check (∀ (ty : type), isFunctionType ty)
  (cfg := {numInst := 10, maxSize := 5, quiet := true})
