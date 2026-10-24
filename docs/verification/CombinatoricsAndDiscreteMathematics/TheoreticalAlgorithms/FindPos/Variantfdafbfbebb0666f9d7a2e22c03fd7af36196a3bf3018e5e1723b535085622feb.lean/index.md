# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FindPos.Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2872c97293a7f4fa30ce753ead9fdbb95e6ff63a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2872c97293a7f4fa30ce753ead9fdbb95e6ff63a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Slice.posGE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean/declarations/slice-posge--c56736ab80c2006c45117665.md) | 35 | `declaration-track:c56736ab80c2006c45117665d6a0aa9bd1ca39a93d76d8b5216755aea5f11acb` |
| 2 | `def` | [Slice.posGT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean/declarations/slice-posgt--e51fe4d33c9a584958a423e4.md) | 50 | `declaration-track:e51fe4d33c9a584958a423e43f22d4e00254a32038f936471c5c9949988952e6` |
| 3 | `def` | [Slice.findNextPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean/declarations/slice-findnextpos--db8f54dccf3909a7f6e75338.md) | 54 | `declaration-track:db8f54dccf3909a7f6e75338ce428d2d53babfbd593eadf30239c320d3f87fc9` |
| 4 | `def` | [posGE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean/declarations/posge--edc9655d7b95404e4e00b7b2.md) | 61 | `declaration-track:edc9655d7b95404e4e00b7b21fff7348fd0137a85fce0b3853a39fa7f9385755` |
| 5 | `def` | [posGT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean/declarations/posgt--675c515349b5c53be6e6355f.md) | 68 | `declaration-track:675c515349b5c53be6e6355f973b412231944547201e49dbece278a52247bfda` |
| 6 | `def` | [Slice.posLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean/declarations/slice-posle--e7b54f5931bfd8d827d6d1d8.md) | 75 | `declaration-track:e7b54f5931bfd8d827d6d1d8ccac8dcf929a40de8f5fa51b5af517a032700a88` |
| 7 | `def` | [Slice.posLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean/declarations/slice-poslt--82ddd8fcec40f3c3778759b6.md) | 88 | `declaration-track:82ddd8fcec40f3c3778759b692e0c7fdadac36bd518abb9dbc00a723c2f590f8` |
| 8 | `def` | [posLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean/declarations/posle--1c3902c7e860ab2e36ba236f.md) | 95 | `declaration-track:1c3902c7e860ab2e36ba236f4308e3db6ca45310e1b170a6308adcd6b9e39935` |
| 9 | `def` | [posLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean/declarations/poslt--38e75c370904d24531cefa6f.md) | 102 | `declaration-track:38e75c370904d24531cefa6f7dac14f6c07fc4c285b495bc2b0a58d7ecc61cd0` |
| 10 | `def` | [Slice.Pos.prev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean/declarations/slice-pos-prev--5cf7ac4038cdd31918db7206.md) | 110 | `declaration-track:5cf7ac4038cdd31918db7206e488350cb1096294eb8988f290546fec0aa402a9` |
| 11 | `def` | [Slice.Pos.prev?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean/declarations/slice-pos-prev--a6c829ec380c09e630b48967.md) | 116 | `declaration-track:a6c829ec380c09e630b48967f42162cf492e00ef8467eef0d1123bf109733ea8` |
| 12 | `def` | [Slice.Pos.prev!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean/declarations/slice-pos-prev--d9fe942a09d90a2dfb6b49dd.md) | 122 | `declaration-track:d9fe942a09d90a2dfb6b49dd53f184c8feddb3f229bea832ee614a1089eaafde` |
| 13 | `def` | [Pos.prev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean/declarations/pos-prev--6f79ef09b3d2c253d196e517.md) | 128 | `declaration-track:6f79ef09b3d2c253d196e517b8f559a028d776e8be49d9a8fc5a21a4e6a08d03` |
| 14 | `def` | [Pos.prev?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean/declarations/pos-prev--cd9506963c3ca05dbebf4394.md) | 134 | `declaration-track:cd9506963c3ca05dbebf4394f874acd3f6d5ce29c336e98292c754100935ac9f` |
| 15 | `def` | [Pos.prev!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean/declarations/pos-prev--08a21f9d59497919af3c9b7d.md) | 140 | `declaration-track:08a21f9d59497919af3c9b7d956984e12b2daeb32b9fc4f47bffbf89d307ab40` |
| 16 | `def` | [Slice.Pos.prevn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean/declarations/slice-pos-prevn--2a65c63efbacb2f93ce520b9.md) | 148 | `declaration-track:2a65c63efbacb2f93ce520b9c689b859dae1b5251ec1db28714a50f2772be643` |
| 17 | `def` | [Pos.prevn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FindPos/Variantfdafbfbebb0666f9d7a2e22c03fd7af36196a3bf3018e5e1723b535085622feb.lean/declarations/pos-prevn--b7fba2789996faf4e36c17a0.md) | 163 | `declaration-track:b7fba2789996faf4e36c17a0a86e1908356f224351e5334bef6afb5d8a612fe8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
