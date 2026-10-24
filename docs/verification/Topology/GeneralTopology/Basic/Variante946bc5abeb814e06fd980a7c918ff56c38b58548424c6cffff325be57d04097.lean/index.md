# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "817f632b3b9bbd9bc980b07c295281c92c681fd7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `817f632b3b9bbd9bc980b07c295281c92c681fd7`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTransitiveRel](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/istransitiverel--34dfceed426aeaf1f4b2b7f3.md) | 54 | `declaration-track:34dfceed426aeaf1f4b2b7f3c1a3284cb41502be6b8c4b32648a0e78e1be144b` |
| 2 | `lemma` | [IsTransitiveRel.comp_subset_self](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/istransitiverel-comp-subset-self--21f1210c8f1fb6bf86f07882.md) | 57 | `result-track:21f1210c8f1fb6bf86f078825a4d3c6753c37229d4b53051f4a0e0a57dc973c6` |
| 3 | `lemma` | [isTransitiveRel_iff_comp_subset_self](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/istransitiverel-iff-comp-subset-self--a09d8b7504817c15af63db74.md) | 62 | `result-track:a09d8b7504817c15af63db745357e3701307a6507e41d3dfd28b8cbc10323c4a` |
| 4 | `lemma` | [isTransitiveRel_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/istransitiverel-empty--5a8cd15eb78ae0b89d207b67.md) | 66 | `result-track:5a8cd15eb78ae0b89d207b676aef87948373beb62e17969fa5dfc33ae692ea45` |
| 5 | `lemma` | [isTransitiveRel_univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/istransitiverel-univ--56b8e2106fb2d6ced8174ede.md) | 69 | `result-track:56b8e2106fb2d6ced8174edef297e436358c7a24cf551aa740f90c7ed7612344` |
| 6 | `lemma` | [isTransitiveRel_singleton](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/istransitiverel-singleton--64d901838d920832880e139a.md) | 72 | `result-track:64d901838d920832880e139a26362a92a93af8b36b174f6cf67a081b9e5edbcc` |
| 7 | `lemma` | [IsTransitiveRel.inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/istransitiverel-inter--b8678269d271a4abee48da55.md) | 75 | `result-track:b8678269d271a4abee48da55c45d395186077ab2497d573ef1bb1a93fe33a914` |
| 8 | `lemma` | [IsTransitiveRel.iInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/istransitiverel-iinter--ba568d975e8e2097e6ec13c9.md) | 79 | `result-track:ba568d975e8e2097e6ec13c93273f61a50a276028791767932114a2192b5b888` |
| 9 | `lemma` | [IsTransitiveRel.sInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/istransitiverel-sinter--a1b10da4ab31823e40147f14.md) | 87 | `result-track:a1b10da4ab31823e40147f14f4b08debfee6db74e82708457d9a7792258cc32c` |
| 10 | `lemma` | [IsTransitiveRel.preimage_prodMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/istransitiverel-preimage-prodmap--e10b48e6848de23792ce99d3.md) | 92 | `result-track:e10b48e6848de23792ce99d31cb7a69918d6a15c6b617147c77b38ddd57d0ed5` |
| 11 | `lemma` | [IsTransitiveRel.symmetrizeRel](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/istransitiverel-symmetrizerel--13010264988f75a5a2c9a7bf.md) | 97 | `result-track:13010264988f75a5a2c9a7bf67366f0bcf49575ea42d9076727dc2ea11788c25` |
| 12 | `lemma` | [IsTransitiveRel.comp_eq_of_idRel_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/istransitiverel-comp-eq-of-idrel-subset--636fb391cb416b410d8420c8.md) | 102 | `result-track:636fb391cb416b410d8420c8bf3638408ebdba94f9817a1a16ddc1d48ce6ce18` |
| 13 | `lemma` | [IsTransitiveRel.ball_subset_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/istransitiverel-ball-subset-of-mem--7ce43492d20567694b032eb5.md) | 108 | `result-track:7ce43492d20567694b032eb572d1714df85e7dd76ba78dcd1f6ebe120d818178` |
| 14 | `lemma` | [UniformSpace.ball_eq_of_mem_of_isSymmetricRel_of_isTransitiveRel](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/uniformspace-ball-eq-of-mem-of-issymmetricrel-of-istransitiverel--8cc56b182f3a947e606ea4c6.md) | 113 | `result-track:8cc56b182f3a947e606ea4c693d38668f1e5129e7fd9bffd8f65f55b7f818a07` |
| 15 | `class` | [IsUltraUniformity](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/isultrauniformity--51e9887aefff1a9034937cd1.md) | 124 | `declaration-track:51e9887aefff1a9034937cd1dd4756b3cd068bc7e4454f467d13526625438d17` |
| 16 | `lemma` | [IsUltraUniformity.mk_of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/isultrauniformity-mk-of-hasbasis--baeeed39d0da2bb3e63d640d.md) | 128 | `result-track:baeeed39d0da2bb3e63d640d06072b27049268704c10d9d45d2fb0055a4f7988` |
| 17 | `lemma` | [_root_.IsTransitiveRel.isOpen_ball_of_mem_uniformity](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/root-istransitiverel-isopen-ball-of-mem-uniformity--35d8deedd44672ff624e79f1.md) | 138 | `result-track:35d8deedd44672ff624e79f1863b5557f0f875208dc2a1a0ece98908433519d3` |
| 18 | `lemma` | [isClosed_ball_of_isSymmetricRel_of_isTransitiveRel_of_mem_uniformity](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/isclosed-ball-of-issymmetricrel-of-istransitiverel-of-mem-uniformity--170794cf01dbc4ff49959b60.md) | 145 | `result-track:170794cf01dbc4ff49959b60e69075bab7ab1e67568be242ccc63d1150b0e221` |
| 19 | `lemma` | [isClopen_ball_of_isSymmetricRel_of_isTransitiveRel_of_mem_uniformity](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/isclopen-ball-of-issymmetricrel-of-istransitiverel-of-mem-uniformity--2e556cb3b5d129fcc6018193.md) | 152 | `result-track:2e556cb3b5d129fcc60181936e45e03b4f4ef8032c6641b5fa62beb56dcf65ea` |
| 20 | `lemma` | [nhds_basis_clopens](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/nhds-basis-clopens--dd4e6aa2179e52595a9f70e6.md) | 161 | `result-track:dd4e6aa2179e52595a9f70e6caec65492d033ef1251de02c0443e9db828d1698` |
| 21 | `lemma` | [_root_.TopologicalSpace.isTopologicalBasis_clopens](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante946bc5abeb814e06fd980a7c918ff56c38b58548424c6cffff325be57d04097.lean/declarations/root-topologicalspace-istopologicalbasis-clopens--172256fc9c6a2597932aa2d6.md) | 173 | `result-track:172256fc9c6a2597932aa2d6b1c1b5e3d13e0dd7c5c368070b9f338ff44f6696` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
