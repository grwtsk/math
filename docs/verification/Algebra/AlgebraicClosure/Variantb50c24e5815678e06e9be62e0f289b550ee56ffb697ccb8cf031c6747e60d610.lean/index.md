# Verification target: GRWTSK.Algebra.AlgebraicClosure.Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc7b96bb8d7b6be77ae4e9e5d9d82af70e1e6736",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/index.md) · [Full source](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc7b96bb8d7b6be77ae4e9e5d9d82af70e1e6736`.

Source path: `GRWTSK/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectLimit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Algebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.SplittingField.Construction` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MonicIrreducible](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/monicirreducible--ad1e93dff4c0b621a6036ab6.md) | 56 | `declaration-track:ad1e93dff4c0b621a6036ab6ba65f5c988a5f3e4f2f81e853df83851a1bfc472` |
| 2 | `def` | [evalXSelf](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/evalxself--0ff438c1473c991309eff37e.md) | 61 | `declaration-track:0ff438c1473c991309eff37ef2a85a2f42f295e264a57025ec4075ad705bc718` |
| 3 | `def` | [spanEval](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/spaneval--7128c669b7afe7de6517feb2.md) | 68 | `declaration-track:7128c669b7afe7de6517feb2ff7d4fb26bfddee0c191240d83928a6bab56e817` |
| 4 | `def` | [toSplittingField](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/tosplittingfield--37feef886635bcd77057d7be.md) | 75 | `declaration-track:37feef886635bcd77057d7be961c76258df078500d4f09d6360b5fb7cb613936` |
| 5 | `theorem` | [toSplittingField_evalXSelf](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/tosplittingfield-evalxself--3c5e9aabf8e6026cf67d677b.md) | 86 | `result-track:3c5e9aabf8e6026cf67d677b2c05f149bcfc3e54dd73e4fb92e5191f96a84889` |
| 6 | `theorem` | [spanEval_ne_top](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/spaneval-ne-top--5b2a6cef7ba747b1f60cea5c.md) | 94 | `result-track:5b2a6cef7ba747b1f60cea5c7dda6d240f0b0b6e80b58ba94e2c96b6de376f3b` |
| 7 | `def` | [maxIdeal](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/maxideal--0fc7d9451b32816b2a8404e3.md) | 107 | `declaration-track:0fc7d9451b32816b2a8404e37ad7a4a891afc38386e7b1c0d3c3f65aa3d5e7c0` |
| 8 | `instance` | [maxIdeal.isMaximal](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/maxideal-ismaximal--adad694bd33669f62990c327.md) | 111 | `declaration-track:adad694bd33669f62990c32702296b8e7c76116fda4a73a4fa8643b95f429c11` |
| 9 | `theorem` | [le_maxIdeal](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/le-maxideal--a1cb4f74039b5e757558f5e3.md) | 115 | `result-track:a1cb4f74039b5e757558f5e300cbc81f3e18417407fc71ba0691821335ee3deb` |
| 10 | `def` | [AdjoinMonic](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/adjoinmonic--e30849a125a9722bb6656761.md) | 120 | `declaration-track:e30849a125a9722bb66567616a424ccc2d755c6fcb00be0b5e5b749ef8185ac5` |
| 11 | `instance` | [AdjoinMonic.field](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/adjoinmonic-field--cd28ad4fa9b13fe58333e1d5.md) | 124 | `declaration-track:cd28ad4fa9b13fe58333e1d51ade2b0b53bc77760bf8f892d564f6c4b7317c39` |
| 12 | `instance` | [AdjoinMonic.inhabited](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/adjoinmonic-inhabited--9c033e68abd5d9ad491256a1.md) | 128 | `declaration-track:9c033e68abd5d9ad491256a11fc7b244d744c4819daf65f7a259f9cf28b04bd9` |
| 13 | `def` | [toAdjoinMonic](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/toadjoinmonic--c781cd0f948c457a88fb3660.md) | 133 | `declaration-track:c781cd0f948c457a88fb366014081f5916f3ee776549d37b42371e14e1b73d0d` |
| 14 | `instance` | [AdjoinMonic.algebra](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/adjoinmonic-algebra--3f524da815c9680574399136.md) | 137 | `declaration-track:3f524da815c96805743991363a6d4e36ffe0efd8e5489aebe987152e9c52832d` |
| 15 | `theorem` | [AdjoinMonic.algebraMap](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/adjoinmonic-algebramap--5634e6f735c4f5676f46b919.md) | 142 | `result-track:5634e6f735c4f5676f46b9190c28dec5fa1c118848a56e2f2c6e4e3485a43f02` |
| 16 | `theorem` | [AdjoinMonic.isIntegral](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/adjoinmonic-isintegral--b1dabe57d179880ce03db516.md) | 146 | `result-track:b1dabe57d179880ce03db516611a5caaee7266f435aa6bbc51c72d2d65dd2253` |
| 17 | `theorem` | [AdjoinMonic.exists_root](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/adjoinmonic-exists-root--0ac854fb49d9a0bb83c6a6f7.md) | 159 | `result-track:0ac854fb49d9a0bb83c6a6f7699ef226a524cd684d43bf385a7f50fbb18f67dc` |
| 18 | `def` | [stepAux](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/stepaux--ddb30005004348714cbb2ab9.md) | 167 | `declaration-track:ddb30005004348714cbb2ab96f615ff5754d94038e25cbd6387f3d8d6fc2dd35` |
| 19 | `def` | [Step](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/step--88764734f382f9a77098696e.md) | 172 | `declaration-track:88764734f382f9a77098696e627c7ad49b11c208bed75c525a096e2377d93bac` |
| 20 | `theorem` | [Step.zero](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/step-zero--97dadd99c02ceb55eedfb3ea.md) | 177 | `result-track:97dadd99c02ceb55eedfb3ea2fbf01ff1ce5c6662b87fa4645edf28a17b60e48` |
| 21 | `instance` | [Step.field](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/step-field--e349357cb2235f3dda78b062.md) | 179 | `declaration-track:e349357cb2235f3dda78b06232f6de9dbc917ddedc807d823a247a4dc5f47bd1` |
| 22 | `theorem` | [Step.succ](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/step-succ--816466071c18c404f9eab11e.md) | 184 | `result-track:816466071c18c404f9eab11e2eac90cbc318e13d469fec6aacdfb0d1a243188d` |
| 23 | `instance` | [Step.inhabited](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/step-inhabited--e5ec8d3bd228e819a8cb11cc.md) | 186 | `declaration-track:e5ec8d3bd228e819a8cb11cc67ce759eaaa923ce218737d9304c4e021b31074d` |
| 24 | `def` | [toStepZero](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/tostepzero--1d1d322be215619fd76924db.md) | 191 | `declaration-track:1d1d322be215619fd76924db60214b2a40c330b8cfece68d1d2e452665fc43f8` |
| 25 | `def` | [toStepSucc](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/tostepsucc--0e9c70137d6830df57adabdc.md) | 196 | `declaration-track:0e9c70137d6830df57adabdc84e3e55d6627944161020ef182cf69ea5d7284a2` |
| 26 | `instance` | [Step.algebraSucc](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/step-algebrasucc--1557a260df3480195cd385a6.md) | 200 | `declaration-track:1557a260df3480195cd385a64853bd2a13f62ac5bbbcea4a376a0ac54c3a9b69` |
| 27 | `theorem` | [toStepSucc.exists_root](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/tostepsucc-exists-root--45012a037a4ad5b96446b99a.md) | 204 | `result-track:45012a037a4ad5b96446b99a97f82fcd037b50267139faad558b4313e5825d01` |
| 28 | `def` | [toStepOfLE'](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/tostepofle--ae85faa77e2145742f12685e.md) | 215 | `declaration-track:ae85faa77e2145742f12685e935cd19aa7810b6e0c1c48501bc151b367d96be5` |
| 29 | `theorem` | [toStepOfLE'.succ](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/tostepofle-succ--9fe27ef2ac52c0023b6e6fe2.md) | 218 | `result-track:9fe27ef2ac52c0023b6e6fe2af7128a7fc7cf7c305c720ab487c60fb67f7f560` |
| 30 | `def` | [toStepOfLE](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/tostepofle--fad77c730c3bd781af2e5787.md) | 226 | `declaration-track:fad77c730c3bd781af2e57873aa95966d2a4d3bdbde11cac61e4e707594f484f` |
| 31 | `theorem` | [coe_toStepOfLE](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/coe-tostepofle--be8e1ba55dff92d836e8d6e0.md) | 255 | `result-track:be8e1ba55dff92d836e8d6e0c3cde399f13538df3797d0497b41d71beffa5eeb` |
| 32 | `instance` | [Step.algebra](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/step-algebra--b3e28f7cd369978b7739c256.md) | 260 | `declaration-track:b3e28f7cd369978b7739c2568427d8df14f8bbf6903d7f14574337e8ba9ce9a7` |
| 33 | `instance` | [Step.scalar_tower](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/step-scalar-tower--749eea7584ef253a0b058845.md) | 264 | `declaration-track:749eea7584ef253a0b0588458b5cf54693ada16b85d6f3167f0ddcb38ea84aa0` |
| 34 | `theorem` | [toStepOfLE.succ](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/tostepofle-succ--c80ed994063c2a84f5be714c.md) | 270 | `result-track:c80ed994063c2a84f5be714c8f39311b911ff01f8ff71a329a04a054636b6dd3` |
| 35 | `theorem` | [Step.isIntegral](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/step-isintegral--4daaaba08613125d76c7d59b.md) | 279 | `result-track:4daaaba08613125d76c7d59b11502064cc1f2aa85047bde69cafdaef832bc472` |
| 36 | `instance` | [toStepOfLE.directedSystem](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/tostepofle-directedsystem--1beb75a09f681783390796e8.md) | 302 | `declaration-track:1beb75a09f681783390796e8f3450aca4659f6336dfc39fa2790d6cd946c9273` |
| 37 | `def` | [AlgebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/algebraicclosure--e5912c0669b9f9107b5547af.md) | 310 | `declaration-track:e5912c0669b9f9107b5547af1c3d4a27d1e783cdcfdd40a57c77f488b3b8c9b6` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/instance--a70c65a0eadf23828f2eaffe.md) | 316 | `declaration-track:a70c65a0eadf23828f2eaffeb3e2cef20c0bce924e2b4c2942f1e215cae3662d` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/instance--16c8f9f9c1170f2005c824c6.md) | 319 | `declaration-track:16c8f9f9c1170f2005c824c614740c588c3175b6ae9a178d8f3aa0876c0ea4e4` |
| 40 | `def` | [ofStep](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/ofstep--60dd657a0df35ab372f2929c.md) | 323 | `declaration-track:60dd657a0df35ab372f2929c915d2448c8c7cd46e97f50cb0be755892aa0edc1` |
| 41 | `instance` | [algebraOfStep](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/algebraofstep--757e11d0144cfae14a98bfad.md) | 327 | `declaration-track:757e11d0144cfae14a98bfadf4205d7a5efa2f70b6d8a17d9e9fe21ff614f62a` |
| 42 | `theorem` | [ofStep_succ](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/ofstep-succ--2bff7ee7e918741286fccb7c.md) | 331 | `result-track:2bff7ee7e918741286fccb7cc3bf912c5273576c476802361b634a89d5ba9df0` |
| 43 | `theorem` | [exists_ofStep](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/exists-ofstep--22bd7eb33f163b4c3d4b2b86.md) | 349 | `result-track:22bd7eb33f163b4c3d4b2b868a153c8282d535dc3524cffe2bdcc557efeaf89d` |
| 44 | `theorem` | [exists_root](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/exists-root--e299d50f59136e256f629c08.md) | 353 | `result-track:e299d50f59136e256f629c082b3bd3913030ef2e1bf6abe53587d6bcd9e9f81b` |
| 45 | `instance` | [instIsAlgClosed](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/instisalgclosed--534d14be2e542dd3c2b5dab0.md) | 365 | `declaration-track:534d14be2e542dd3c2b5dab075969f32676a9397d9c5669d6a04b418c2b4df01` |
| 46 | `instance` | [instAlgebra](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/instalgebra--bc4f00469ec4f07076908f14.md) | 369 | `declaration-track:bc4f00469ec4f07076908f14c5f5b427e2927d3682e6101bb6df3069b5b3dd35` |
| 47 | `theorem` | [algebraMap_def](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/algebramap-def--d71d57e70659a35edf11a620.md) | 373 | `result-track:d71d57e70659a35edf11a620dac83c35cffd74c4a76afcd1f2579fd1b6bc57c3` |
| 48 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/instance--82038122db51cdd18d466484.md) | 379 | `declaration-track:82038122db51cdd18d466484b45b47408239d9152888c5b4aa2c0b9cb3896a20` |
| 49 | `def` | [ofStepHom](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/ofstephom--91b23fdfd00cdd2b08afcbd4.md) | 392 | `declaration-track:91b23fdfd00cdd2b08afcbd4611a7cce762d5b53f2d07e901abb3cde5e3467a2` |
| 50 | `theorem` | [isAlgebraic](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/isalgebraic--84938b4f7d5f1ff0e4f5841d.md) | 404 | `result-track:84938b4f7d5f1ff0e4f5841d4d50d28163f45df5053f0831f7eb9c39947087c4` |
| 51 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/declarations/instance--10d98387af513298db7c7c5b.md) | 410 | `declaration-track:10d98387af513298db7c7c5be47d238c21f14a86b1d269af0136847f01937ebe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
