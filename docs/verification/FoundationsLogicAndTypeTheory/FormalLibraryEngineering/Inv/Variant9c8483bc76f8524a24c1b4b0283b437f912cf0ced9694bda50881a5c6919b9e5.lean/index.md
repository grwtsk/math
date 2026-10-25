# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Inv.Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9df32422d8e5cac17c8397d87a432ca7391034db",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9df32422d8e5cac17c8397d87a432ca7391034db`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.CharZero` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inferCharZeroOfRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/declarations/infercharzeroofring--52812b4445cc42500814e53f.md) | 29 | `declaration-track:52812b4445cc42500814e53f28ba780a5e7bfd62c98a36a7ccf72b8326fc9500` |
| 2 | `def` | [inferCharZeroOfRing?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/declarations/infercharzeroofring--ecc08c48e4a5f1e1a45f59ef.md) | 35 | `declaration-track:ecc08c48e4a5f1e1a45f59efe392d610a448ff66d6d981038d923856219b668a` |
| 3 | `def` | [inferCharZeroOfAddMonoidWithOne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/declarations/infercharzeroofaddmonoidwithone--21f8f5fc81402c02f15460f3.md) | 40 | `declaration-track:21f8f5fc81402c02f15460f37522d1a8c510926979547dbda488a5ca349c48a7` |
| 4 | `def` | [inferCharZeroOfAddMonoidWithOne?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/declarations/infercharzeroofaddmonoidwithone--667296de96346ba8aac699c2.md) | 47 | `declaration-track:667296de96346ba8aac699c2ad7706f6d480f67a015ace9e13de156b46e20164` |
| 5 | `def` | [inferCharZeroOfDivisionRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/declarations/infercharzeroofdivisionring--dac8f79e52e15ff045467ae3.md) | 53 | `declaration-track:dac8f79e52e15ff045467ae3ed6048995b5cb703f4d5e31d80efd692ba6ab416` |
| 6 | `def` | [inferCharZeroOfDivisionRing?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/declarations/infercharzeroofdivisionring--781cae7eeb5b83ab962834cc.md) | 60 | `declaration-track:781cae7eeb5b83ab962834cc99628e62228f288fa43e377d5802092d7fb6b371` |
| 7 | `theorem` | [isRat_mkRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/declarations/israt-mkrat--f11c5119a98ab805b13bd8e7.md) | 64 | `result-track:f11c5119a98ab805b13bd8e731962eb19926c327ec2928f46b5a426706f20a6c` |
| 8 | `def` | [evalMkRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/declarations/evalmkrat--7b46f74e0f14d1a11e7a798f.md) | 72 | `declaration-track:7b46f74e0f14d1a11e7a798f1306627606aef98b332e250e06612080d1d38652` |
| 9 | `theorem` | [isNat_ratCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/declarations/isnat-ratcast--ad1437d6de8317570eec1a15.md) | 82 | `result-track:ad1437d6de8317570eec1a1588dc5a902c3f0068a19ea3b37d0f4064024ccd66` |
| 10 | `theorem` | [isInt_ratCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/declarations/isint-ratcast--9e220f28c5e7b576dcca907b.md) | 86 | `result-track:9e220f28c5e7b576dcca907b0525b51b55fde67557208a6077cb87bfeb133eb2` |
| 11 | `theorem` | [isRat_ratCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/declarations/israt-ratcast--b2cd55358f1f6a2cdddf8862.md) | 90 | `result-track:b2cd55358f1f6a2cdddf88621d88906e511830a4855d2f073b6bfadddd47ab6c` |
| 12 | `def` | [evalRatCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/declarations/evalratcast--5effddd3a1955af372853374.md) | 96 | `declaration-track:5effddd3a1955af3728533745f8d7452ffe33b2491f046d07ac70260041bab5e` |
| 13 | `theorem` | [isRat_inv_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/declarations/israt-inv-pos--dfdefb289523fb9f40f3aa98.md) | 115 | `result-track:dfdefb289523fb9f40f3aa98a540b381e13adda9262bd7c56e9d749b268304d2` |
| 14 | `theorem` | [isRat_inv_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/declarations/israt-inv-one--e4b24fec037830db99039c39.md) | 121 | `result-track:e4b24fec037830db99039c39acd8c3b8b30df6424cab584cd3317d99c936805c` |
| 15 | `theorem` | [isRat_inv_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/declarations/israt-inv-zero--99384d894c0d60e2679036b0.md) | 125 | `result-track:99384d894c0d60e2679036b0b840ccd7b7179775b337f3d66fbc51e787250d27` |
| 16 | `theorem` | [isRat_inv_neg_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/declarations/israt-inv-neg-one--30e77ec869612f62091810e2.md) | 129 | `result-track:30e77ec869612f62091810e2c7345b44a8e461c413a7d82fa57f091986839917` |
| 17 | `theorem` | [isRat_inv_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/declarations/israt-inv-neg--453431d100da270c35855dc7.md) | 133 | `result-track:453431d100da270c35855dc765abda6461c60fd32ea092513005f2fe50340c05` |
| 18 | `def` | [evalInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/declarations/evalinv--8b0cd7fca6a69ca962f0e59a.md) | 147 | `declaration-track:8b0cd7fca6a69ca962f0e59aab5e511f3048d5eff272e6b5c339e38c1e98680b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
