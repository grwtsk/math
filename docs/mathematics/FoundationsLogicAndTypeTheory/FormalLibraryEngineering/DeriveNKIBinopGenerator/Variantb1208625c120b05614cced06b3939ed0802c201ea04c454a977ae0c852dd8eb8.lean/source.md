# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveNKIBinopGenerator.Variantb1208625c120b05614cced06b3939ed0802c201ea04c454a977ae0c852dd8eb8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d034b9877c36b497b14d0eb184eb761783c58e8` · SHA-256 `235cfb9e610ca8ac4c5a574538365b93f8d4d8f64470d8bc575474cfebf601ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BinOp.Variantea5b284aa9b8c8a9448cd8798caf738e1eb7cf62f5a3b8a4f3b71f63ce222850","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea5b284aa9b8c8a9448cd8798caf738e1eb7cf62f5a3b8a4f3b71f63ce222850","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BinOp.Variantea5b284aa9b8c8a9448cd8798caf738e1eb7cf62f5a3b8a4f3b71f63ce222850","mathematical_subject":"Foundations.Unclassified","original_sha256":"ea5b284aa9b8c8a9448cd8798caf738e1eb7cf62f5a3b8a4f3b71f63ce222850","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/plausible/PlausibleTest/DeriveArbitrary/DeriveNKIBinopGenerator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Plausible.Attr
import Plausible.Arbitrary
import Plausible.DeriveArbitrary
import Plausible.Testable


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BinOp.Variantea5b284aa9b8c8a9448cd8798caf738e1eb7cf62f5a3b8a4f3b71f63ce222850

open Plausible Gen

set_option guard_msgs.diff true

/-- Binary operators for the NKI language,
    adapted from https://github.com/leanprover/KLR/blob/main/KLR/NKI/Basic.lean -/
inductive BinOp where
  -- logical
  | land | lor
  -- comparison
  | eq | ne | lt | le | gt | ge
  -- arithmetic
  | add | sub | mul | div | mod | pow | floor
  -- bitwise
  | lshift | rshift | or | xor | and
  deriving Repr

set_option trace.plausible.deriving.arbitrary true in
/--
trace: [plausible.deriving.arbitrary] ⏎
    [mutual
       def instArbitraryBinOp.arbitrary : Nat → Plausible.Gen (@BinOp✝) :=
         let rec aux_arb (fuel✝ : Nat) : Plausible.Gen (@BinOp✝) :=
           (match fuel✝ with
           | Nat.zero =>
             Plausible.Gen.oneOfWithDefault (pure BinOp.land)
               [(pure BinOp.land), (pure BinOp.lor), (pure BinOp.eq), (pure BinOp.ne), (pure BinOp.lt), (pure BinOp.le),
                 (pure BinOp.gt), (pure BinOp.ge), (pure BinOp.add), (pure BinOp.sub), (pure BinOp.mul),
                 (pure BinOp.div), (pure BinOp.mod), (pure BinOp.pow), (pure BinOp.floor), (pure BinOp.lshift),
                 (pure BinOp.rshift), (pure BinOp.or), (pure BinOp.xor), (pure BinOp.and)]
           | fuel'✝ + 1 =>
             Plausible.Gen.frequency (pure BinOp.land)
               [(1, (pure BinOp.land)), (1, (pure BinOp.lor)), (1, (pure BinOp.eq)), (1, (pure BinOp.ne)),
                 (1, (pure BinOp.lt)), (1, (pure BinOp.le)), (1, (pure BinOp.gt)), (1, (pure BinOp.ge)),
                 (1, (pure BinOp.add)), (1, (pure BinOp.sub)), (1, (pure BinOp.mul)), (1, (pure BinOp.div)),
                 (1, (pure BinOp.mod)), (1, (pure BinOp.pow)), (1, (pure BinOp.floor)), (1, (pure BinOp.lshift)),
                 (1, (pure BinOp.rshift)), (1, (pure BinOp.or)), (1, (pure BinOp.xor)), (1, (pure BinOp.and)), ])
         fun fuel✝ => aux_arb fuel✝
     end,
     instance : Plausible.ArbitraryFueled✝ (@BinOp✝) :=
       ⟨instArbitraryBinOp.arbitrary⟩]
-/
#guard_msgs in
deriving instance Arbitrary for BinOp

-- Test that we can successfully synthesize instances of `Arbitrary` & `ArbitraryFueled`

/-- info: instArbitraryFueledBinOp -/
#guard_msgs in
#synth ArbitraryFueled BinOp

/-- info: instArbitraryOfArbitraryFueled -/
#guard_msgs in
#synth Arbitrary BinOp

/-- Trivial `Shrinkable` instance for `BinOp`s -/
instance : Shrinkable BinOp where
  shrink := fun _ => []

-- To test whether the derived generator can generate counterexamples,
-- we state an (erroneous) property that states that all binary operators
-- are logical operators, and see if the generator can refute this property.

/-- Determines whether a `BinOp` is a logical operation -/
def isLogicalOp (op : BinOp) : Bool :=
  match op with
  | .land | .lor => true
  | _ => false

/-- error: Found a counter-example! -/
#guard_msgs in
#eval Testable.check (∀ op : BinOp, isLogicalOp op)
  (cfg := {numInst := 10, maxSize := 5, quiet := true})
```
