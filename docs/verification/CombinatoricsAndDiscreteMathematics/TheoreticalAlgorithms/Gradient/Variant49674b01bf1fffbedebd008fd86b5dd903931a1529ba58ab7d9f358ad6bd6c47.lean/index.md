# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Gradient.Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "522802911ff0d2feac536666bffbcb40dbd25969",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `522802911ff0d2feac536666bffbcb40dbd25969`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimize` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Box` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gradientInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/gradientinterval--74a7a7d558bb1eca214727a8.md) | 41 | `declaration-track:74a7a7d558bb1eca214727a8c896656696787a2d915a38404d23f27751ebb52f` |
| 2 | `def` | [gradientIntervalN](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/gradientintervaln--c740d34220dd9255060dcea7.md) | 45 | `declaration-track:c740d34220dd9255060dcea7da88c34793e2ec8e8c0c3b8effbccdf82bcc63ed` |
| 3 | `def` | [mkDualEnvCore](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/mkdualenvcore--70a5d05752074e5a7aafdb9c.md) | 52 | `declaration-track:70a5d05752074e5a7aafdb9ca8a778e10928021196ffd2bc457ae2715bfef473` |
| 4 | `def` | [evalWithDerivCore](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/evalwithderivcore--11b35b1823a2f2e3c09d5d7d.md) | 56 | `declaration-track:11b35b1823a2f2e3c09d5d7d5241ea528a87f4d3f7bd3441a6662f76d081d17f` |
| 5 | `def` | [derivIntervalCoreN](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/derivintervalcoren--789eac07a080241bf265c650.md) | 61 | `declaration-track:789eac07a080241bf265c65017a741140456dbb502274ee7261cc2585bcfb1fe` |
| 6 | `def` | [gradientIntervalCore](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/gradientintervalcore--b26a51bd1ac152d379396407.md) | 66 | `declaration-track:b26a51bd1ac152d379396407bd370db10566c22b6f39787d1b253d2fa6e150c1` |
| 7 | `inductive` | [IntervalSign](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/intervalsign--ed00ba7b0223e4f56c08e8c0.md) | 72 | `declaration-track:ed00ba7b0223e4f56c08e8c08221108287d12f0d6bc8c2d566e621309322a61a` |
| 8 | `def` | [classifySign](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/classifysign--a277231f3eae02cdd96d7239.md) | 81 | `declaration-track:a277231f3eae02cdd96d72395ccf68719042da34b153dcd7ca5232cbe3a5ced7` |
| 9 | `def` | [gradientSignature](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/gradientsignature--d302158b49de5d155800e891.md) | 89 | `declaration-track:d302158b49de5d155800e891e8db2363f8f0841d4fda5b7557a0d3ab6f7f2a61` |
| 10 | `def` | [isStrictlyPositive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/isstrictlypositive--33a27640f9a1fb4a5b12c829.md) | 95 | `declaration-track:33a27640f9a1fb4a5b12c829d0a8ea5d0d153eadb187a36ab46e9eae51dcfdc4` |
| 11 | `def` | [isStrictlyNegative](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/isstrictlynegative--216555008951644ae78f3298.md) | 98 | `declaration-track:216555008951644ae78f32980c26fd59fa428adc4678ae58d4c26a236cf49916` |
| 12 | `def` | [isNonnegative](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/isnonnegative--28e5f7a6f93b1ab14f81480c.md) | 101 | `declaration-track:28e5f7a6f93b1ab14f81480c4d7dad9821fbd4d6a3201aae6d482e2a21bb90fc` |
| 13 | `def` | [isNonpositive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/isnonpositive--e6f6da9286484568b6b4e821.md) | 104 | `declaration-track:e6f6da9286484568b6b4e821a56b43aeeaa3fef3c3570996600973fde6fbf9d0` |
| 14 | `def` | [canPruneToLo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/canprunetolo--0b093d22793f002d25ec826e.md) | 110 | `declaration-track:0b093d22793f002d25ec826e889ce4e9ff128e5ac7ff22b72d1d02b132cf0638` |
| 15 | `def` | [canPruneToHi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/canprunetohi--962a081997346b62ce55d662.md) | 115 | `declaration-track:962a081997346b62ce55d662fb2bb018dd7f2d90541d9eb77e4ab801f8a501bd` |
| 16 | `def` | [pruneBoxForMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/pruneboxformin--4468ef85179ac71eef372ab2.md) | 120 | `declaration-track:4468ef85179ac71eef372ab247b77a2ad511acda95a7009ed20f19e81f726645` |
| 17 | `theorem` | [gradientInterval_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/gradientinterval-correct--3a77ad89f0f1108b8fa77739.md) | 139 | `result-track:3a77ad89f0f1108b8fa77739c265f7fa687a7eebf623aa0c90380fadefb40bc4` |
| 18 | `theorem` | [pruneToLo_preserves_min](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/prunetolo-preserves-min--118bebfd6bfb766234f7ab23.md) | 159 | `result-track:118bebfd6bfb766234f7ab23111b4963e7f563dd9bfa74dc7553a9aaf7767f65` |
| 19 | `theorem` | [pruneToHi_preserves_min](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/prunetohi-preserves-min--53ac5c0edf20a89ca4d05fb1.md) | 236 | `result-track:53ac5c0edf20a89ca4d05fb1e20b07840b08a5404fd334f06be158ca81580d71` |
| 20 | `theorem` | [pruneBoxForMin_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/pruneboxformin-subset--d7a2dbc96835858f6e164f75.md) | 310 | `result-track:d7a2dbc96835858f6e164f75f718b514963fc816afdc781582a49729e8e941e2` |
| 21 | `theorem` | [pruneBoxForMin_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/pruneboxformin-length--d4a920884dc17a26711faa8f.md) | 354 | `result-track:d4a920884dc17a26711faa8f7e80ebfcc55b4620935c58365053373564a84973` |
| 22 | `theorem` | [pruneBoxForMin_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/declarations/pruneboxformin-correct--1cc34b993fc54cbd4b201150.md) | 374 | `result-track:1cc34b993fc54cbd4b20115072ff1db1fe9b121f419678cf823d549f71114000` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
