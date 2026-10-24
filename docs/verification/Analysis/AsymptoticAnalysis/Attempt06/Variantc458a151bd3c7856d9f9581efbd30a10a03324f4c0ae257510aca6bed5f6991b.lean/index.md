# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Attempt06.Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f21777f31ed58c262d577dd9d030fc2bd3234de3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f21777f31ed58c262d577dd9d030fc2bd3234de3`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/outerweight--06957561d280e8bd360c7c84.md) | 26 | `declaration-track:06957561d280e8bd360c7c848bba08ed0111d010a81814a57a01db9b2470ce7e` |
| 2 | `def` | [exponentWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/exponentweight--50d4b7520bc09f1714a7cf01.md) | 28 | `declaration-track:50d4b7520bc09f1714a7cf0162fa18839bfcdb155631eb527eb44ab393e306a2` |
| 3 | `def` | [momentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/momentatom--d8b0b80f9522af17e795d377.md) | 30 | `declaration-track:d8b0b80f9522af17e795d37724edc150868903f04960000cc12fac35e46e0285` |
| 4 | `def` | [primeMomentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/primemomentatom--d82e8b2fd7ba01cb0aae09b7.md) | 33 | `declaration-track:d82e8b2fd7ba01cb0aae09b749b8953931efed325b91eb3fae04e02d6d5d2880` |
| 5 | `def` | [properPowerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/properpowermoment--7a99444faa3a79d3e75e99cc.md) | 35 | `declaration-track:7a99444faa3a79d3e75e99cca89172947a9682e860fe1d2a4c1f1ebaa7c0f326` |
| 6 | `def` | [properPowerB1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/properpowerb1--70d5343a26a5a3fd053a50a9.md) | 37 | `declaration-track:70d5343a26a5a3fd053a50a9ae00f67e8d187c4239990a901527d60d44f27f19` |
| 7 | `def` | [properPowerB2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/properpowerb2--7ddf12f7e78b5c7996adefe4.md) | 39 | `declaration-track:7ddf12f7e78b5c7996adefe4fbfe0768d5f99f6ef28cfca202af5cfbbf5b8812` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/outerweight-nonneg--a968b63427cb097e701ff552.md) | 41 | `result-track:a968b63427cb097e701ff5528d72dff0569d513e26b51b484edad8c3847ceed0` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/exponentweight-nonneg--b802a01cc6d17328c7fa613e.md) | 49 | `result-track:b802a01cc6d17328c7fa613eea246529581ff66988402b3218a070b2dbb1bf88` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/momentatom-nonneg--5eabcea50865277710e625db.md) | 53 | `result-track:5eabcea50865277710e625db3aa8284688aabd86526dedc79f04af8b55ce6ca8` |
| 11 | `theorem` | [outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/outerweight-summable--4be6c454aa6e10069cf16392.md) | 61 | `result-track:4be6c454aa6e10069cf163924554d4882a08a011f6f0ff8739da62a7a668ff63` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/exponentweight-summable--2e4108c284500cd35e89b6d6.md) | 91 | `result-track:2e4108c284500cd35e89b6d63097520e6dd62a082e58865ffff3c3aa9be9b596` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/momentatom-le-product--9a30941d5c385f2761b6aa87.md) | 100 | `result-track:9a30941d5c385f2761b6aa87c32a0191af9ab29611ad98f277df1d62131439cf` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/prime-outerweight-summable--64193cca94e8a64066d4a4f4.md) | 121 | `result-track:64193cca94e8a64066d4a4f4f00096ed2157b96dd1459a74f7d15d2a923619db` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/primemomentatom-summable--71a4f8625ffaf8cedc62a1ce.md) | 125 | `result-track:71a4f8625ffaf8cedc62a1cefc96bd681764cc4cd6fb30dc1c28ee850e0a6410` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/primemomentatom-inner-summable--1b47155d98b118eed951fc15.md) | 132 | `result-track:1b47155d98b118eed951fc153d984055e10d95be0b68db3ad5570b7bcf900d8a` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/primemomentatom-outer-summable--5252a49f03febe5d82d75336.md) | 137 | `result-track:5252a49f03febe5d82d75336434e43eeb548f5a483b7b6c0a89d79a9ece7a109` |
| 18 | `theorem` | [properPowerMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/properpowermoment-nonneg--d879482fd44c74f8ac2a5dcc.md) | 142 | `result-track:d879482fd44c74f8ac2a5dcc3147789003c7b0cdc287b317a8fc42bd2adcf656` |
| 19 | `theorem` | [finiteProperPowerMoment_le_B1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/finiteproperpowermoment-le-b1--df5918420d1ef9d4d7408dbe.md) | 145 | `result-track:df5918420d1ef9d4d7408dbe7325f10fb5179d0793f2679c38ab9b0f7f11e2b1` |
| 20 | `theorem` | [properPowerB1_gt_nine_quarters](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/properpowerb1-gt-nine-quarters--5db24b6f441d928eadc40cec.md) | 174 | `result-track:5db24b6f441d928eadc40cecbff3c352a3bd9a896ab9e0a30cb7eda3412a9344` |
| 21 | `theorem` | [arithmeticConstant_gt_one_five_hundred](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variantc458a151bd3c7856d9f9581efbd30a10a03324f4c0ae257510aca6bed5f6991b.lean/declarations/arithmeticconstant-gt-one-five-hundred--73b90c6d1f1db97c30b439cc.md) | 177 | `result-track:73b90c6d1f1db97c30b439cc9619893cb98c865bf3865c49bb0c543842c5f507` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
