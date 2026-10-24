# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeriveRegExpGenerator.Variantf3d02ba0f435985247a7050d788a20dbd98526928fd2fa25d93fcdd204db8866

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `186c1f25939e7a38bcbf5bc8e7044fc581d5e1f2` · SHA-256 `a2d087fa58ca09be11d0e082053cef2d7e6159c9d996134160a2c3c16c918417`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RegExp.Variantd10f06392e689e2c273e6ba16969e204e0305e2b7eb89a2b9709cdfd918b1eae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d10f06392e689e2c273e6ba16969e204e0305e2b7eb89a2b9709cdfd918b1eae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RegExp.Variantd10f06392e689e2c273e6ba16969e204e0305e2b7eb89a2b9709cdfd918b1eae","mathematical_subject":"Computation.DataStructures","original_sha256":"d10f06392e689e2c273e6ba16969e204e0305e2b7eb89a2b9709cdfd918b1eae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/plausible/PlausibleTest/DeriveArbitrary/DeriveRegExpGenerator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Plausible.Attr
import Plausible.Arbitrary
import Plausible.DeriveArbitrary
import Plausible.Testable


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RegExp.Variantd10f06392e689e2c273e6ba16969e204e0305e2b7eb89a2b9709cdfd918b1eae

open Plausible Gen

set_option guard_msgs.diff true

/-- An inductive datatype representing regular expressions (where "characters" are `Nat`s).
   Adapted from the Inductive Propositions chapter of Software Foundations, volume 1:
   See https://softwarefoundations.cis.upenn.edu/lf-current/IndProp.html
   and search for "Case Study: Regular Expressions".
   The `RegExp`s below are non-polymorphic in the character type. -/
inductive RegExp : Type where
  | EmptySet : RegExp
  | EmptyStr : RegExp
  | Char : Nat → RegExp -- using Nat instead of Char
  | App : RegExp → RegExp → RegExp
  | Union : RegExp → RegExp → RegExp
  | Star : RegExp → RegExp
  deriving Repr, BEq

set_option trace.plausible.deriving.arbitrary true in
/--
trace: [plausible.deriving.arbitrary] ⏎
    [mutual
       def instArbitraryRegExp.arbitrary : Nat → Plausible.Gen (@RegExp✝) :=
         let rec aux_arb (fuel✝ : Nat) : Plausible.Gen (@RegExp✝) :=
           (match fuel✝ with
           | Nat.zero =>
             Plausible.Gen.oneOfWithDefault (pure RegExp.EmptySet)
               [(pure RegExp.EmptySet), (pure RegExp.EmptyStr),
                 (do
                   let a✝ ← Plausible.Arbitrary.arbitrary
                   return RegExp.Char a✝)]
           | fuel'✝ + 1 =>
             Plausible.Gen.frequency (pure RegExp.EmptySet)
               [(1, (pure RegExp.EmptySet)), (1, (pure RegExp.EmptyStr)),
                 (1,
                   (do
                     let a✝ ← Plausible.Arbitrary.arbitrary
                     return RegExp.Char a✝)),
                 (fuel'✝ + 1,
                   (do
                     let a✝¹ ← aux_arb fuel'✝
                     let a✝² ← aux_arb fuel'✝
                     return RegExp.App a✝¹ a✝²)),
                 (fuel'✝ + 1,
                   (do
                     let a✝³ ← aux_arb fuel'✝
                     let a✝⁴ ← aux_arb fuel'✝
                     return RegExp.Union a✝³ a✝⁴)),
                 (fuel'✝ + 1,
                   (do
                     let a✝⁵ ← aux_arb fuel'✝
                     return RegExp.Star a✝⁵))])
         fun fuel✝ => aux_arb fuel✝
     end,
     instance : Plausible.ArbitraryFueled✝ (@RegExp✝) :=
       ⟨instArbitraryRegExp.arbitrary⟩]
-/
#guard_msgs in
deriving instance Arbitrary for RegExp

-- Test that we can successfully synthesize instances of `Arbitrary` & `ArbitraryFueled`

/-- info: instArbitraryFueledRegExp -/
#guard_msgs in
#synth ArbitraryFueled RegExp

/-- info: instArbitraryOfArbitraryFueled -/
#guard_msgs in
#synth Arbitrary RegExp

/-!
Test that we can use the derived generator to find counterexamples.

We construct a faulty property, which (erroneously) states that
all regular expressions never accept any string. (Example taken from
UPenn CIS 5520 https://www.seas.upenn.edu/~cis5520/current/hw/hw04/RegExp.html)

```lean
∀ r : RegExp, neverMatchesAnyString r == True
```

(This property is faulty, since there exist regular expressions, e.g. `EmptyString`
which do match some string!)

We then test that the derived generator for `Tree`s succesfully
generates a counterexample (e.g. `EmptyString`) which refutes the property.
-/

/-- Determines whether a regular expression *never* matches any string -/
def neverMatchesAnyString (r : RegExp) : Bool :=
  match r with
  | .EmptySet => true
  | .EmptyStr | .Char _ | .Star _ => false       -- Note that `Star` can always match the empty string
  | .App r1 r2 => neverMatchesAnyString r1 || neverMatchesAnyString r2
  | .Union r1 r2 => neverMatchesAnyString r1 && neverMatchesAnyString r2

/-- A shrinker for regular expressions -/
def shrinkRegExp (r : RegExp) : List RegExp :=
  match r with
  | .EmptySet | .EmptyStr => []
  | .Char _ => [.EmptyStr]
  | .Star r' => .Star <$> shrinkRegExp r'
  | .App r1 r2 | .Union r1 r2 => shrinkRegExp r1 ++ shrinkRegExp r2

/-- `Shrinkable` instance for `RegExp` -/
instance : Shrinkable RegExp where
  shrink := shrinkRegExp

/-- error: Found a counter-example! -/
#guard_msgs in
#eval Testable.check (∀ r : RegExp, neverMatchesAnyString r == True)
  (cfg := {numInst := 10, maxSize := 5, quiet := true})
````
