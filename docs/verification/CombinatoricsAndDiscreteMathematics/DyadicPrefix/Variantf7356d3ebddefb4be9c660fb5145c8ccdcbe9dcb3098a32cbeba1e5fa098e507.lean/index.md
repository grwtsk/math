# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DyadicPrefix.Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3ced5676f2ed6a133d93558be79cd87dcdba885",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3ced5676f2ed6a133d93558be79cd87dcdba885`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicDepth](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean/declarations/dyadicdepth--d5cab55c062bfbd855cd1aab.md) | 35 | `declaration-track:d5cab55c062bfbd855cd1aab7fb4f9036624fa72aa09f801fc7064b4b084b660` |
| 2 | `structure` | [DyadicInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean/declarations/dyadicinterval--7941a1f05b00228d62855f6a.md) | 39 | `declaration-track:7941a1f05b00228d62855f6a2422351725e44e3e642063dc9ce1b05bc57628fc` |
| 3 | `def` | [DyadicInterval.carrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean/declarations/dyadicinterval-carrier--9d8dfdec3d5a3602af10e653.md) | 50 | `declaration-track:9d8dfdec3d5a3602af10e653d14e35ad538c6742b2779fbc748edba83577343d` |
| 4 | `theorem` | [DyadicInterval.mem_window](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean/declarations/dyadicinterval-mem-window--b6da24dd30b987626da25f0b.md) | 56 | `result-track:b6da24dd30b987626da25f0beff8b31761ffbcb07236e478dae224b6cacb3b27` |
| 5 | `structure` | [DyadicPrefixCode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean/declarations/dyadicprefixcode--efdf9189d62d7bde3d364b2c.md) | 67 | `declaration-track:efdf9189d62d7bde3d364b2cc7a0d23153c006403acb8c828e7a6bc10b8c2206` |
| 6 | `theorem` | [incidence_eq_true_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean/declarations/incidence-eq-true-iff--1cb87e75c7d451470fcf8e58.md) | 89 | `result-track:1cb87e75c7d451470fcf8e58e76b4e46643b1ccef45279b5106f936f6754df6f` |
| 7 | `def` | [HasDyadicPrefixCode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean/declarations/hasdyadicprefixcode--3c6327266e54573e26cf1328.md) | 106 | `declaration-track:3c6327266e54573e26cf13288fe90a4732619df5c640bab58b9e949362e107c6` |
| 8 | `def` | [blockSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean/declarations/blocksum--deee1cbad64564802e359053.md) | 111 | `declaration-track:deee1cbad64564802e359053ad2275009c6d8b012b43b11a84bd1b6c1206844d` |
| 9 | `theorem` | [sum_prefix_eq_sum_blockSums](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean/declarations/sum-prefix-eq-sum-blocksums--adbced6b825599e92ca76b1b.md) | 119 | `result-track:adbced6b825599e92ca76b1b031b2313a411c51e7bb80b2e94c68e2eb5b3c452` |
| 10 | `theorem` | [norm_prefixSum_le_depth_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean/declarations/norm-prefixsum-le-depth-mul--9951b41f27aab1c1d122f653.md) | 134 | `result-track:9951b41f27aab1c1d122f6534b871c5e508f49579ea680c70f08b2ae7df7dd25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
