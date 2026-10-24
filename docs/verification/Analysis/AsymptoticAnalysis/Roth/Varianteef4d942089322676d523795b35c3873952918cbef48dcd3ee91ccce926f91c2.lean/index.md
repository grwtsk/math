# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Roth.Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "168711c875fcdfc746b63bdd2af19f27542b86cc",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `168711c875fcdfc746b63bdd2af19f27542b86cc`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Additive.AP.Three.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Additive.Corner.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Triangle.Removal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Triangle.Tripartite` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [triangleIndices](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/declarations/triangleindices--12550c207401598052a351fe.md) | 31 | `declaration-track:12550c207401598052a351fea97960704f350b833cb49034370c643b53fc17b7` |
| 2 | `lemma` | [mk_mem_triangleIndices](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/declarations/mk-mem-triangleindices--9df6d76e4860cef6a2acee38.md) | 35 | `result-track:9df6d76e4860cef6a2acee3819a663792735e4969e7511400c2d1a90ca83af5f` |
| 3 | `lemma` | [card_triangleIndices](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/declarations/card-triangleindices--48ac81eed3b7e9de8eda79ed.md) | 42 | `result-track:48ac81eed3b7e9de8eda79ed0484e3b314a5a762575618c86d7ccf7669e763d3` |
| 4 | `instance` | [triangleIndices.instExplicitDisjoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/declarations/triangleindices-instexplicitdisjoint--afebc2c469d922ad1008b8eb.md) | 44 | `declaration-track:afebc2c469d922ad1008b8eb52a4e88392192826f33ddf8e12b610059f6bc5e0` |
| 5 | `lemma` | [noAccidental](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/declarations/noaccidental--15d70c91be22570baddc9812.md) | 51 | `result-track:15d70c91be22570baddc9812c89bfe4c452a29ef45c34f616ec9e166b24e2671` |
| 6 | `lemma` | [farFromTriangleFree_graph](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/declarations/farfromtrianglefree-graph--7bb2a2d3d9820dd4caddb5ff.md) | 57 | `result-track:7bb2a2d3d9820dd4caddb5ff5aded4b66a57b865ad3d986a2653973c36d7d2d2` |
| 7 | `def` | [cornersTheoremBound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/declarations/cornerstheorembound--6ae000aeeec220b4f9944a6c.md) | 75 | `declaration-track:6ae000aeeec220b4f9944a6ca25eac24f3c1788d75a7d0f3bb1e5bc0a4b71bfc` |
| 8 | `theorem` | [corners_theorem](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/declarations/corners-theorem--69ed6bdac27a46765426020d.md) | 80 | `result-track:69ed6bdac27a46765426020d752a89404f872d1b485f3829dc3b6c1072c35d3f` |
| 9 | `theorem` | [corners_theorem_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/declarations/corners-theorem-nat--490c51d6a0ae38ec7e85756c.md) | 104 | `result-track:490c51d6a0ae38ec7e85756cb3c3f33b0f8cc2fbcfc0f93594e60c9d4de2b2c4` |
| 10 | `theorem` | [roth_3ap_theorem](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/declarations/roth-3ap-theorem--00be8f74a2ba829074183c60.md) | 140 | `result-track:00be8f74a2ba829074183c601a941706d8359f886198807fd5af6aea2782f7a8` |
| 11 | `theorem` | [roth_3ap_theorem_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/declarations/roth-3ap-theorem-nat--136d97ff1669cda3548079c3.md) | 165 | `result-track:136d97ff1669cda3548079c38e9053b0f6b3c528d9de2eb87ca9c422bd0a678b` |
| 12 | `theorem` | [rothNumberNat_isLittleO_id](../../../../../mathematics/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/declarations/rothnumbernat-islittleo-id--8171514c6608b0ecbd256fb7.md) | 198 | `result-track:8171514c6608b0ecbd256fb792982aa83486f1115776a90e92c9ac327f71f64c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
