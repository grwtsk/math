# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CycleGraph.Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5aae8cc2dc12123e877078f206ccf7661dd3abbe",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5aae8cc2dc12123e877078f206ccf7661dd3abbe`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cycleGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph--1d234a61b6691383e511d652.md) | 29 | `declaration-track:1d234a61b6691383e511d6522cdc7360b57832e8396d4ae79132198a8ba6f930` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/instance--c85268fdee3ab58bca68484d.md) | 35 | `declaration-track:c85268fdee3ab58bca68484de3380beffc7482111bd93a93e4bf50eb0cccc56f` |
| 3 | `theorem` | [cycleGraph_zero_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-zero-adj--b51812ec717a0622927e8f24.md) | 39 | `result-track:b51812ec717a0622927e8f24b3e55626641ab597dda88589a99c6ef7b38d0de1` |
| 4 | `theorem` | [cycleGraph_zero_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-zero-eq-bot--2d0bb6437295a5dc21c01ead.md) | 41 | `result-track:2d0bb6437295a5dc21c01eadbfd68ef073d4bebff022f35dd2d4f6e9c2a90343` |
| 5 | `theorem` | [cycleGraph_one_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-one-eq-bot--2959748807b921ea2c192f00.md) | 42 | `result-track:2959748807b921ea2c192f0041ea5890b7d530fa8ad4cda22c2c20b3a653f950` |
| 6 | `theorem` | [cycleGraph_zero_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-zero-eq-top--1804172b433c76d4c7b69913.md) | 43 | `result-track:1804172b433c76d4c7b699130e3ef7d085e040d3a0c75f5d01471bec014c8c49` |
| 7 | `theorem` | [cycleGraph_one_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-one-eq-top--b033c5e5fd26c18b94153893.md) | 44 | `result-track:b033c5e5fd26c18b94153893dff9a8486d64b339825a4e818d3e0308a738aa60` |
| 8 | `theorem` | [cycleGraph_two_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-two-eq-top--0d8730d811460a947d95b12d.md) | 46 | `result-track:0d8730d811460a947d95b12dc09bdbcc8abb16291f0760c3dbfb849dd27f0c69` |
| 9 | `theorem` | [cycleGraph_three_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-three-eq-top--680ec3909821283cbd5f1de2.md) | 50 | `result-track:680ec3909821283cbd5f1de2b0ef75e1cfaf1479dcb5ed3aba4aeecdf328412c` |
| 10 | `theorem` | [cycleGraph_one_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-one-adj--37c1287c87e3e29dcd2bf3d9.md) | 54 | `result-track:37c1287c87e3e29dcd2bf3d99fccff8bed21f628f2839731fce33cffe3bb9ffa` |
| 11 | `theorem` | [cycleGraph_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-adj--911f36d3095502746705d739.md) | 57 | `result-track:911f36d3095502746705d73997629e5ddd9f81b7eb90e2703e1a8257a08192f1` |
| 12 | `theorem` | [cycleGraph_adj'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-adj--b856b498b5d6255564751d01.md) | 60 | `result-track:b856b498b5d6255564751d01ce44a6db0da8ca90e032a49a24e49fe76be60e16` |
| 13 | `theorem` | [cycleGraph_neighborSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-neighborset--a7e44c0a817afbe58f54faa3.md) | 67 | `result-track:a7e44c0a817afbe58f54faa3b463b9cb3d6bbdc6aeeccd4d5f002c95aa91d839` |
| 14 | `theorem` | [cycleGraph_neighborFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-neighborfinset--f2e0b9377153598cb86f0dc2.md) | 73 | `result-track:f2e0b9377153598cb86f0dc2ddb951654ac4ed9c8e8ed683603ad302a718d59d` |
| 15 | `theorem` | [cycleGraph_degree_two_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-degree-two-le--3cf2358776babc1c7fef5755.md) | 77 | `result-track:3cf2358776babc1c7fef575569f1fb117bf2bb1488620563ea93af697d65f9bf` |
| 16 | `theorem` | [cycleGraph_degree_three_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-degree-three-le--d4145b78b3f5d68cf378f279.md) | 81 | `result-track:d4145b78b3f5d68cf378f2799e70ce6f19932a6e0f6ddca10c4e55c2dfee002c` |
| 17 | `theorem` | [pathGraph_le_cycleGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/pathgraph-le-cyclegraph--00e18546504984147e4a30eb.md) | 87 | `result-track:00e18546504984147e4a30eb3ac95ed516a4ddb7cd81a2648f9a67e855646164` |
| 18 | `theorem` | [cycleGraph_preconnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-preconnected--32041b9430c8a776399668b9.md) | 98 | `result-track:32041b9430c8a776399668b92996f03b75b1a2285a878e545489115a34b8067d` |
| 19 | `theorem` | [cycleGraph_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-connected--28325fc8fdc2ae152bd95b1a.md) | 101 | `result-track:28325fc8fdc2ae152bd95b1a7398e86622ec8698208794d70357275c661f0205` |
| 20 | `def` | [cycleGraph.cycleCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-cyclecons--32dee964e7d6ea826c8f0a30.md) | 107 | `declaration-track:32dee964e7d6ea826c8f0a304fcdfc8b9e5489a961c549ffbe55e287f58abe30` |
| 21 | `def` | [cycleGraph.cycle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-cycle--995de51a8ac2c1ad9f5ea1f6.md) | 117 | `declaration-track:995de51a8ac2c1ad9f5ea1f621043e71cab63c614b81b4d70552ec78b72e87de` |
| 22 | `theorem` | [cycleGraph.length_cycle_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-length-cycle-cons--f84b5445163205ff82e30d2c.md) | 122 | `result-track:f84b5445163205ff82e30d2c0794133364b99a9684f01283a0b52b74673436ee` |
| 23 | `theorem` | [cycleGraph.length_cycle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-length-cycle--fa6128a087bc8cbcbc8593c7.md) | 135 | `result-track:fa6128a087bc8cbcbc8593c7089352e71c97e92b5f917924fbb51f69e440fd0b` |
| 24 | `theorem` | [cycleGraph.getVert_cycleCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-getvert-cyclecons--e52e87bbb70f220577854b4a.md) | 139 | `result-track:e52e87bbb70f220577854b4ac1e720b5c900407c7790850694a933822b3b442a` |
| 25 | `theorem` | [cycleGraph.getVert_cycle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-getvert-cycle--cd29489f044768d3bd2c9026.md) | 146 | `result-track:cd29489f044768d3bd2c9026a67c6bc3d6ba81aea67384e308e99a3585de8704` |
| 26 | `theorem` | [cycleGraph.isPath_tail_cycle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-ispath-tail-cycle--8aa9a9aa23a4de1f661c7345.md) | 152 | `result-track:8aa9a9aa23a4de1f661c73457be8da697820db7a1ee036d8bb644bbed3932eb7` |
| 27 | `theorem` | [cycleGraph.isCycle_cycle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-iscycle-cycle--6e85c5086ce874b9993493e7.md) | 158 | `result-track:6e85c5086ce874b9993493e77421d4e6e27268ae0a9d4d8c6ef9b61b403e3d32` |
| 28 | `lemma` | [cycleGraph_isContained_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variante27eae54e744fce3023b38a003fe292111954fe492416a4d1d600cb8ff3fd524.lean/declarations/cyclegraph-iscontained-iff--011515cd606abd1058ab9dc2.md) | 167 | `result-track:011515cd606abd1058ab9dc2d6d62be55659a2bf1dd323fd3eb36f65bf5c9c6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
