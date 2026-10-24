# Verification target: GRWTSK.Topology.GeneralTopology.ErdosStoneSimonovits.Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4efa3a7530675c9f7dfa48abd4c17d4d45e8950",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4efa3a7530675c9f7dfa48abd4c17d4d45e8950`.

Source path: `GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean.json)

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
| 1 | `def` | [filter](../../../../../mathematics/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/declarations/filter--23f8d6ac0d9a772d5b940ee0.md) | 49 | `declaration-track:23f8d6ac0d9a772d5b940ee0544b372db953b4aad00bd0121f1a11504b4204fc` |
| 2 | `theorem` | [filter_subset_compl_verts](../../../../../mathematics/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/declarations/filter-subset-compl-verts--6b618b52d3684df251696c2e.md) | 52 | `result-track:6b618b52d3684df251696c2e6db50d8d1d1c96fb0ef94bd76f20f689958ff60c` |
| 3 | `theorem` | [between_verts_isBipartiteWith](../../../../../mathematics/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/declarations/between-verts-isbipartitewith--15a21369c020aafeeacd4e26.md) | 56 | `result-track:15a21369c020aafeeacd4e26c8d15b0cce7dc6411fa4ad7e883428da38a60c97` |
| 4 | `lemma` | [le_card_edgeFinset_between_verts](../../../../../mathematics/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/declarations/le-card-edgefinset-between-verts--189f23fa100d03757419bb68.md) | 61 | `result-track:189f23fa100d03757419bb6884a46a2ecd52e52e3ab5fe56f19eb70621152a97` |
| 5 | `lemma` | [degree_between_verts_lt_of_mem_sdiff](../../../../../mathematics/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/declarations/degree-between-verts-lt-of-mem-sdiff--6a77e13a260dc9c43724c6f7.md) | 74 | `result-track:6a77e13a260dc9c43724c6f7f00317ab9f249908b1df20eba1d2c8cb39177b50` |
| 6 | `lemma` | [card_edgeFinset_between_verts_le](../../../../../mathematics/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/declarations/card-edgefinset-between-verts-le--c69ed9cfc5d05cbe8313ce06.md) | 103 | `result-track:c69ed9cfc5d05cbe8313ce06912c5c13d7ecc1b33dd38f34131589c7c7166e3b` |
| 7 | `lemma` | [mul_le_card_filter_mul](../../../../../mathematics/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/declarations/mul-le-card-filter-mul--3bac0079cfca7a0c1b54e258.md) | 131 | `result-track:3bac0079cfca7a0c1b54e25858bcc74162a891960c9ecbc69c173b8a8958b84c` |
| 8 | `def` | [filter.pi](../../../../../mathematics/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/declarations/filter-pi--1f08321be4dc4d1ba648bce4.md) | 157 | `declaration-track:1f08321be4dc4d1ba648bce4e23a18bb1022402a336a0f694f8b69895b6a390f` |
| 9 | `theorem` | [filter.pi.mem_val](../../../../../mathematics/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/declarations/filter-pi-mem-val--a84d30d36e82af6e3c999f09.md) | 163 | `result-track:a84d30d36e82af6e3c999f09fc5197d8286807c3aceb8cf7fdac75c7bdd96ee0` |
| 10 | `theorem` | [filter.pi.exists_le_card_fiber](../../../../../mathematics/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/declarations/filter-pi-exists-le-card-fiber--8d779f894ad3ebac7d4fc3db.md) | 172 | `result-track:8d779f894ad3ebac7d4fc3db15436e9dcbae09d40e9b1a61c81ffdab6cfc3438` |
| 11 | `theorem` | [eventually_completeEquipartiteGraph_isContained_of_minDegree](../../../../../mathematics/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/declarations/eventually-completeequipartitegraph-iscontained-of-mindegree--ca5912149091858a5081d5e3.md) | 204 | `result-track:ca5912149091858a5081d5e36d69a73a17e7f2f8b57c9dbcfb53b7ec311e0aac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
