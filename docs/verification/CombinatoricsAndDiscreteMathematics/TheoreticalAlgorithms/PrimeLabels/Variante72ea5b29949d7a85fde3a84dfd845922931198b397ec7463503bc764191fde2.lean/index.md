# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrimeLabels.Variante72ea5b29949d7a85fde3a84dfd845922931198b397ec7463503bc764191fde2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4eabf36b9ac64bc940074e2bd16503e8766a4a9b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variante72ea5b29949d7a85fde3a84dfd845922931198b397ec7463503bc764191fde2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variante72ea5b29949d7a85fde3a84dfd845922931198b397ec7463503bc764191fde2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variante72ea5b29949d7a85fde3a84dfd845922931198b397ec7463503bc764191fde2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4eabf36b9ac64bc940074e2bd16503e8766a4a9b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variante72ea5b29949d7a85fde3a84dfd845922931198b397ec7463503bc764191fde2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variante72ea5b29949d7a85fde3a84dfd845922931198b397ec7463503bc764191fde2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Tree.Composition` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Prime](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variante72ea5b29949d7a85fde3a84dfd845922931198b397ec7463503bc764191fde2.lean/declarations/prime--6fc66a6363eb546e2c99f1f4.md) | 9 | `declaration-track:6fc66a6363eb546e2c99f1f4c16fec32488b8cd8fb39de2cc8131c63fe2c000e` |
| 2 | `structure` | [PrimeLabel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variante72ea5b29949d7a85fde3a84dfd845922931198b397ec7463503bc764191fde2.lean/declarations/primelabel--218c42f4cd2a3bf64c2fd2fe.md) | 18 | `declaration-track:218c42f4cd2a3bf64c2fd2fe1a3e000bc32b9324838a85d82f5b90934d9ce636` |
| 3 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variante72ea5b29949d7a85fde3a84dfd845922931198b397ec7463503bc764191fde2.lean/declarations/ext--9b13184f1d0021cf299ec85a.md) | 24 | `result-track:9b13184f1d0021cf299ec85a377e9e64cdb160edeafdd93bdf2ec54118283c5a` |
| 4 | `def` | [primeLabelOfNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variante72ea5b29949d7a85fde3a84dfd845922931198b397ec7463503bc764191fde2.lean/declarations/primelabelofnat--4bdd6efdf025391a44b1df2b.md) | 36 | `declaration-track:4bdd6efdf025391a44b1df2b7afebd19dea35c86d95684464ec742853c0228e1` |
| 5 | `structure` | [PrimeEnumerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variante72ea5b29949d7a85fde3a84dfd845922931198b397ec7463503bc764191fde2.lean/declarations/primeenumerator--bce86f425102263239fb631e.md) | 42 | `declaration-track:bce86f425102263239fb631effee4a3ac5c74dbc8a2031582b649da3d8267732` |
| 6 | `def` | [linearPrimeEnumerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variante72ea5b29949d7a85fde3a84dfd845922931198b397ec7463503bc764191fde2.lean/declarations/linearprimeenumerator--a16527286d9b355b27732a68.md) | 50 | `declaration-track:a16527286d9b355b27732a68269caff14ea9c06b0fcb61b5d23395648046dc93` |
| 7 | `theorem` | [primeEnumerator_unbounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variante72ea5b29949d7a85fde3a84dfd845922931198b397ec7463503bc764191fde2.lean/declarations/primeenumerator-unbounded--68ee3127148df77dad1ea3f7.md) | 68 | `result-track:68ee3127148df77dad1ea3f7487e752a5cba55c4e2769997ee1059db4ec286af` |
| 8 | `theorem` | [primeEnumerator_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeLabels/Variante72ea5b29949d7a85fde3a84dfd845922931198b397ec7463503bc764191fde2.lean/declarations/primeenumerator-injective--76b3f1b01865514cdb558727.md) | 73 | `result-track:76b3f1b01865514cdb558727eca345f14cd5d32bfb08efbf3af4b5e7abe834f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
