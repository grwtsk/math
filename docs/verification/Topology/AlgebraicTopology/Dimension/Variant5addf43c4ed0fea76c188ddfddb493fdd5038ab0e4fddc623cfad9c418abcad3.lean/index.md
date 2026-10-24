# Verification target: GRWTSK.Topology.AlgebraicTopology.Dimension.Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fc2d633ebaeaec4532adad38e94f15c44a367d3",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fc2d633ebaeaec4532adad38e94f15c44a367d3`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean.json)

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
| 1 | `class` | [HasDimensionLT](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/declarations/hasdimensionlt--778700ada179b82f6ff0943b.md) | 32 | `declaration-track:778700ada179b82f6ff0943b1fc9df4fe1974713e331ac53a08850ae22627867` |
| 2 | `abbrev` | [HasDimensionLE](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/declarations/hasdimensionle--6ea46b2721246668064707ba.md) | 36 | `declaration-track:6ea46b2721246668064707baf8706af170adb1b8a7a48e69f8022094cc43ffbb` |
| 3 | `lemma` | [degenerate_eq_univ_of_hasDimensionLT](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/declarations/degenerate-eq-univ-of-hasdimensionlt--db5c16434b7d5261897d5bcb.md) | 42 | `result-track:db5c16434b7d5261897d5bcb4109070da08542c43ecccd0cd3d167894e80a0ad` |
| 4 | `lemma` | [nonDegenerate_eq_empty_of_hasDimensionLT](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/declarations/nondegenerate-eq-empty-of-hasdimensionlt--310e3a7277fa348627fbbcb1.md) | 45 | `result-track:310e3a7277fa348627fbbcb1fca0eecc2806b322650adf0c2cdae3a081b84818` |
| 5 | `lemma` | [dim_lt_of_nonDegenerate](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/declarations/dim-lt-of-nondegenerate--8a5cb0efbca3fd1e6e1f6d8d.md) | 53 | `result-track:8a5cb0efbca3fd1e6e1f6d8dad4b9cc12a57a8e2897e2cc60cfba9346a0119fd` |
| 6 | `lemma` | [dim_le_of_nonDegenerate](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/declarations/dim-le-of-nondegenerate--5d8c4e0fd62f6d21a60fe155.md) | 59 | `result-track:5d8c4e0fd62f6d21a60fe1552ad952c89c6f22e741afe7ad07e9c951f62dab17` |
| 7 | `lemma` | [hasDimensionLT_of_le](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/declarations/hasdimensionlt-of-le--f6bbcf26b3fd43064ccb10eb.md) | 63 | `result-track:f6bbcf26b3fd43064ccb10ebb702252de6a520b50c58636baaf1943a1a26921a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/declarations/instance--bc7e7c36ebd2b9a0f787fc28.md) | 67 | `declaration-track:bc7e7c36ebd2b9a0f787fc28785a70c0a12671b08250687a19467c8bf7f42917` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/declarations/instance--81d3a378ea5fda50ec591171.md) | 76 | `declaration-track:81d3a378ea5fda50ec591171f78ebcb4805ab40809b0f024e67b2d16fb0f3075` |
| 10 | `lemma` | [le_iff_of_hasDimensionLT](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/declarations/le-iff-of-hasdimensionlt--8770188952b622584738bfe0.md) | 81 | `result-track:8770188952b622584738bfe03eef015a235d7740f683e0baabe4046f02b8bf74` |
| 11 | `lemma` | [eq_top_iff_of_hasDimensionLT](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/declarations/eq-top-iff-of-hasdimensionlt--1a6670e4c5e2cf69f6ebc5d8.md) | 88 | `result-track:1a6670e4c5e2cf69f6ebc5d802b7c76f3d9096cef024fb380189e3726909303c` |
| 12 | `lemma` | [hasDimensionLT_of_mono](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/declarations/hasdimensionlt-of-mono--018d808f93622b888504e322.md) | 94 | `result-track:018d808f93622b888504e322e3591f9013cfc273472f9806c9e9c70152bcd52a` |
| 13 | `lemma` | [Subcomplex.hasDimensionLT_of_le](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/declarations/subcomplex-hasdimensionlt-of-le--5aecbb6491d8517f5f60bc71.md) | 102 | `result-track:5aecbb6491d8517f5f60bc71e40201348743e1985fddb37bcf75c6225a00521e` |
| 14 | `lemma` | [hasDimensionLT_of_epi](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/declarations/hasdimensionlt-of-epi--91f84d090592d8acf209f164.md) | 107 | `result-track:91f84d090592d8acf209f164624805e0b12514d24f1109467f41fd6a5a0e69f3` |
| 15 | `lemma` | [hasDimensionLT_iff_of_iso](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/declarations/hasdimensionlt-iff-of-iso--ac25e5cd6f589aac3d48470e.md) | 116 | `result-track:ac25e5cd6f589aac3d48470e0cd0f375f4454eebbd234aa10eaaf675fb162a4c` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/declarations/instance--61c8fab3dd80739b669ed90b.md) | 120 | `declaration-track:61c8fab3dd80739b669ed90b70e2033be818b7508fd44db7fa08ffc86740df94` |
| 17 | `lemma` | [hasDimensionLT_iSup_iff](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/declarations/hasdimensionlt-isup-iff--4eb88b221455c85b66a00dc7.md) | 124 | `result-track:4eb88b221455c85b66a00dc7fa22be9fae85d5d8a05a4d9c63943ca182cb5199` |
| 18 | `lemma` | [hasDimensionLT_subcomplex_top_iff](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/declarations/hasdimensionlt-subcomplex-top-iff--2ce8c4f3e0aca07d18958d7a.md) | 129 | `result-track:2ce8c4f3e0aca07d18958d7a23bd669e9f59c83d5ae9577cbc559a0dfc5fd817` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/declarations/instance--09660895ce2abb2f3301bb4a.md) | 133 | `declaration-track:09660895ce2abb2f3301bb4a30e6241d9c21fb7501f8f5bcda9c4f1ec3fb34cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
