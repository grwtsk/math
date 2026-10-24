# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a201e0bc4fc8412b18b6f3f6ca5fce0131d6d26",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a201e0bc4fc8412b18b6f3f6ca5fce0131d6d26`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean.json)

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
| 1 | `lemma` | [IsTransitiveRel.prod_subset_trans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean/declarations/istransitiverel-prod-subset-trans--ed9b594070308c5e1abd9df0.md) | 57 | `result-track:ed9b594070308c5e1abd9df005f7246bf51a057dbef3c421086fe554904e8669` |
| 2 | `lemma` | [IsTransitiveRel.mem_filter_prod_trans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean/declarations/istransitiverel-mem-filter-prod-trans--b7069cdc2346ae303ff6c3ba.md) | 65 | `result-track:b7069cdc2346ae303ff6c3baa53070ce56444e1909a7a3dfd118c7cf6de3b4d1` |
| 3 | `lemma` | [ball_subset_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean/declarations/ball-subset-of-mem--6c43a2d940dfdc5aa9ddd4ac.md) | 73 | `result-track:6c43a2d940dfdc5aa9ddd4ac94779b1f33bc3d2e86bcfbeca15e36f669e1d00d` |
| 4 | `lemma` | [ball_eq_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean/declarations/ball-eq-of-mem--bef671b38aa9e3936df822b7.md) | 77 | `result-track:bef671b38aa9e3936df822b7a65ad948eecdc5bcc4f355171d9f97cdc469e9e2` |
| 5 | `class` | [IsUltraUniformity](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean/declarations/isultrauniformity--0218a61b0de18cbce53a38b9.md) | 86 | `declaration-track:0218a61b0de18cbce53a38b9f901af6f934e4ef19a057dc97e9a4a377c7a452d` |
| 6 | `lemma` | [IsUltraUniformity.mk_of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean/declarations/isultrauniformity-mk-of-hasbasis--02b75a436c84c97b833193b5.md) | 90 | `result-track:02b75a436c84c97b833193b5a2c394ddfcae130a7f763dba0fc48eba8bada065` |
| 7 | `lemma` | [IsUltraUniformity.mem_nhds_iff_symm_trans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean/declarations/isultrauniformity-mem-nhds-iff-symm-trans--dfb2ea2fb89f25fb70b274fc.md) | 98 | `result-track:dfb2ea2fb89f25fb70b274fcdb1646a100225c5bf96fa19cd4c455f90fb7e3fb` |
| 8 | `lemma` | [isOpen_ball_of_mem_uniformity](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean/declarations/isopen-ball-of-mem-uniformity--8c30f21d84160a5211af2abc.md) | 111 | `result-track:8c30f21d84160a5211af2abc6e8c90fc354ae6d7da915d4921a1118447c6bcbc` |
| 9 | `lemma` | [isClosed_ball_of_isSymm_of_isTrans_of_mem_uniformity](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean/declarations/isclosed-ball-of-issymm-of-istrans-of-mem-uniformity--33d2091bdb225ef1d8a18f35.md) | 117 | `result-track:33d2091bdb225ef1d8a18f352c2e925f6372a781339c00607efdd10685867bfe` |
| 10 | `lemma` | [isClopen_ball_of_isSymm_of_isTrans_of_mem_uniformity](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean/declarations/isclopen-ball-of-issymm-of-istrans-of-mem-uniformity--f32a78a60c22ceea16016d1c.md) | 123 | `result-track:f32a78a60c22ceea16016d1c2091abcf5877bbe81e79d043d941c7990c077c4a` |
| 11 | `lemma` | [nhds_basis_clopens](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean/declarations/nhds-basis-clopens--3f02e4e8d8fc4cb99132ce8b.md) | 130 | `result-track:3f02e4e8d8fc4cb99132ce8b70168fdc1596bb1a4dc6d53f7c3e9f9d72417584` |
| 12 | `lemma` | [_root_.TopologicalSpace.isTopologicalBasis_clopens](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant5826437ebc46b1c034d1caa0156fda21129b02c808f1e51194955c2780086f1b.lean/declarations/root-topologicalspace-istopologicalbasis-clopens--51daa3a6ef348f176ec878d4.md) | 140 | `result-track:51daa3a6ef348f176ec878d44f30506f37b57da00e8dbadd7d13521aa1816006` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
