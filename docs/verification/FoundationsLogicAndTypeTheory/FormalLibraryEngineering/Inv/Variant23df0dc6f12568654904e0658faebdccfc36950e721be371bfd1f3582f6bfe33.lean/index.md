# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Inv.Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8c3b5d68dcfcc898789479c18e1da7a6959f7cc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8c3b5d68dcfcc898789479c18e1da7a6959f7cc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.CharZero` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inferCharZeroOfRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/declarations/infercharzeroofring--80bfc9133b9d51e00677d951.md) | 21 | `declaration-track:80bfc9133b9d51e00677d951edddf03cb966a355faaa5a9df057f1dd4d6fc18a` |
| 2 | `def` | [inferCharZeroOfRing?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/declarations/infercharzeroofring--764358fc858e57153a9c2cc7.md) | 27 | `declaration-track:764358fc858e57153a9c2cc72ebbe841072949bb159ee7544ee4ed43b9903522` |
| 3 | `def` | [inferCharZeroOfAddMonoidWithOne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/declarations/infercharzeroofaddmonoidwithone--a5e8de7c47422f2305b416bc.md) | 32 | `declaration-track:a5e8de7c47422f2305b416bc43febdd7b3918f7160c33f3f2e95563e02983fa9` |
| 4 | `def` | [inferCharZeroOfAddMonoidWithOne?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/declarations/infercharzeroofaddmonoidwithone--c854de1c4edd96c7a6a315ba.md) | 39 | `declaration-track:c854de1c4edd96c7a6a315ba72a3d7c669a53649e1b3efc0e93d6a38efd9a3c6` |
| 5 | `def` | [inferCharZeroOfDivisionRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/declarations/infercharzeroofdivisionring--144da2a3a4369b1ce357c029.md) | 45 | `declaration-track:144da2a3a4369b1ce357c029cbd3ed9198f68b42cec9230c410e011f1043a6a9` |
| 6 | `def` | [inferCharZeroOfDivisionRing?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/declarations/infercharzeroofdivisionring--84747f2c0ba40af3a62e1944.md) | 52 | `declaration-track:84747f2c0ba40af3a62e1944b1f5caf67161c560af90aa8a34f1235f896d3a92` |
| 7 | `theorem` | [isRat_mkRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/declarations/israt-mkrat--650c8a22b1314944425b5814.md) | 56 | `result-track:650c8a22b1314944425b5814d220367600323a57b2ed00a410d6790f834de373` |
| 8 | `def` | [evalMkRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/declarations/evalmkrat--a5dcb87fb83fddae1f96b8cc.md) | 64 | `declaration-track:a5dcb87fb83fddae1f96b8cccd701d17e7798586ffeb70bde9ad6d7941787465` |
| 9 | `theorem` | [isNat_ratCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/declarations/isnat-ratcast--df0a7520ca7de532ef50529f.md) | 74 | `result-track:df0a7520ca7de532ef50529feb2e55e4b2b2937ebd8fd25b7e3d41ff4c7318bd` |
| 10 | `theorem` | [isInt_ratCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/declarations/isint-ratcast--2b24971e5b8ea613075657c7.md) | 78 | `result-track:2b24971e5b8ea613075657c719c5b3c72e46f6100eaaafe83c57cb9073e587d3` |
| 11 | `theorem` | [isRat_ratCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/declarations/israt-ratcast--af30f3cf3d30576036bd519c.md) | 82 | `result-track:af30f3cf3d30576036bd519cb8dba0224737bfcd50ed5268305ae28bfcce6ef9` |
| 12 | `def` | [evalRatCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/declarations/evalratcast--1e6c72c56b02e2f43ac92066.md) | 88 | `declaration-track:1e6c72c56b02e2f43ac92066f0ad0f45151fe7149642a2272db9fe0cc0436367` |
| 13 | `theorem` | [isRat_inv_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/declarations/israt-inv-pos--0b6e9f7a93a2068c99b25ed5.md) | 107 | `result-track:0b6e9f7a93a2068c99b25ed58c7c6cfcae33e0d772bf8eaac5a191079041cefd` |
| 14 | `theorem` | [isRat_inv_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/declarations/israt-inv-one--0de3dce116ad6afb4dbdead3.md) | 113 | `result-track:0de3dce116ad6afb4dbdead311b039604482c44e3e201550f93d9c3289982141` |
| 15 | `theorem` | [isRat_inv_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/declarations/israt-inv-zero--28b0280e5d233aaef4d26ff3.md) | 117 | `result-track:28b0280e5d233aaef4d26ff314309d433d143bff5869939f56fa21c45e389127` |
| 16 | `theorem` | [isRat_inv_neg_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/declarations/israt-inv-neg-one--ed67a8032ef8e0af296e8da7.md) | 121 | `result-track:ed67a8032ef8e0af296e8da7042c3f2cc231ea15891592e4c29578a3a1a961b9` |
| 17 | `theorem` | [isRat_inv_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/declarations/israt-inv-neg--b9cb27a07e41fead83e54c01.md) | 125 | `result-track:b9cb27a07e41fead83e54c01d415afe537acc3a11cdb6982672944d7075c9b38` |
| 18 | `def` | [evalInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant23df0dc6f12568654904e0658faebdccfc36950e721be371bfd1f3582f6bfe33.lean/declarations/evalinv--52c946908d9f6644bd24acb3.md) | 139 | `declaration-track:52c946908d9f6644bd24acb3133704743464cebfdd0841a97b2a21f52506d28d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
