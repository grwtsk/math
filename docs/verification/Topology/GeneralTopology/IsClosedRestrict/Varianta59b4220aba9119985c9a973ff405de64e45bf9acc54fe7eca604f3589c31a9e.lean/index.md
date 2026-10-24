# Verification target: GRWTSK.Topology.GeneralTopology.IsClosedRestrict.Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3daeeeb0e4b249fa2fc33d2d44c387a102705ee3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3daeeeb0e4b249fa2fc33d2d44c387a102705ee3`.

Source path: `GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph.Lemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reorderRestrictProd](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/declarations/reorderrestrictprod--69dd007c5c5a06f2be0d22bf.md) | 43 | `declaration-track:69dd007c5c5a06f2be0d22bf58ac20875ff98fb9e35dd61212410cff1082563a` |
| 2 | `lemma` | [reorderRestrictProd_of_mem](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/declarations/reorderrestrictprod-of-mem--3180f564ae5332ac02677135.md) | 51 | `result-track:3180f564ae5332ac0267713519997cf1f1e3e23a73511ca230122588c5131ee3` |
| 3 | `lemma` | [reorderRestrictProd_of_compl](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/declarations/reorderrestrictprod-of-compl--f41adc39de34025ed7db2ac6.md) | 57 | `result-track:f41adc39de34025ed7db2ac613e5323258032d4b6e04631c400bfe33739251bf` |
| 4 | `lemma` | [restrict_compl_reorderRestrictProd](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/declarations/restrict-compl-reorderrestrictprod--9e98d79d6bda96a9a006beb8.md) | 63 | `result-track:9e98d79d6bda96a9a006beb85d3ead703b7d870a0172e999e16fa6239fc44610` |
| 5 | `lemma` | [continuous_reorderRestrictProd](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/declarations/continuous-reorderrestrictprod--6180a75e3a21c314db5190cc.md) | 66 | `result-track:6180a75e3a21c314db5190ccb8ad6a5867c57f781d3c70d330b1ff0338ba487b` |
| 6 | `lemma` | [reorderRestrictProd_mem_preimage_image_restrict](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/declarations/reorderrestrictprod-mem-preimage-image-restrict--c5fa0927e89ff778060bd574.md) | 74 | `result-track:c5fa0927e89ff778060bd57434e5dbfda0f9372bf3f57fbc1849af1f1038cb43` |
| 7 | `lemma` | [reorderRestrictProd_restrict_compl](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/declarations/reorderrestrictprod-restrict-compl--69bef140b04437938a61770b.md) | 80 | `result-track:69bef140b04437938a61770bf6cca18b715f5b561831fd3cf8b85c0b03d45729` |
| 8 | `def` | [_root_.GRWTSK.Topology.GeneralTopology.ReorderRestrictProd.Variantb7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.Homeomorph.preimageImageRestrict](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/declarations/root-grwtsk-topology-generaltopology-reorderrestrictprod-variantb7d386f8--89b538eb22a370b955e3ae7f.md) | 87 | `declaration-track:89b538eb22a370b955e3ae7f520c132b7b823f196d46427dab78e710b858ac89` |
| 9 | `lemma` | [image_snd_preimageImageRestrict](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/declarations/image-snd-preimageimagerestrict--45b60b220e4b9c6f58a94b80.md) | 107 | `result-track:45b60b220e4b9c6f58a94b80c4801c48faffdcf9787e931818536024d74cc6a7` |
| 10 | `theorem` | [IsCompact.isClosed_image_restrict](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/declarations/iscompact-isclosed-image-restrict--1644b765a6f9098853f9ef19.md) | 129 | `result-track:1644b765a6f9098853f9ef19aaf7cc2eca1e041cc1e9d50553119eb109115c94` |
| 11 | `lemma` | [isClosedMap_restrict_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/declarations/isclosedmap-restrict-of-compactspace--89c8d051fdcdef87d2dac757.md) | 139 | `result-track:89c8d051fdcdef87d2dac757c06f563078cfe203d1949cba250da78ba1bcfc93` |
| 12 | `lemma` | [IsClosed.isClosed_image_eval](../../../../../mathematics/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/declarations/isclosed-isclosed-image-eval--73e9781159d243f866147b27.md) | 146 | `result-track:73e9781159d243f866147b27c93e844c9bc2136da7c15bdd9af23c92f35b7bb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
