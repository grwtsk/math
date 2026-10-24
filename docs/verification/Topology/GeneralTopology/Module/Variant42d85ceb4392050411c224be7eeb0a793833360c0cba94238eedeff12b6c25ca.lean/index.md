# Verification target: GRWTSK.Topology.GeneralTopology.Module.Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3deed431b6ba3bf44f53472cc28dbbed86e43a55",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3deed431b6ba3bf44f53472cc28dbbed86e43a55`.

Source path: `GRWTSK/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/instance--f0c0ad48ac17550928862f9f.md) | 33 | `declaration-track:f0c0ad48ac17550928862f9fdf34b38b4bc4ed15badedd323f8bb287c54cc4f0` |
| 2 | `theorem` | [smul_apply](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/smul-apply--38b391dc9ce913b964f82da1.md) | 37 | `result-track:38b391dc9ce913b964f82da13a8c82785b1aa99acf1c4fbf24465af3c2673544` |
| 3 | `theorem` | [coe_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/coe-smul--875f8e13164126bee489323d.md) | 42 | `result-track:875f8e13164126bee489323d86e60fcb8a70445006459cbc44131ed28ad5e5d0` |
| 4 | `instance` | [smulCommClass](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/smulcommclass--e8105cc2159c442c75893594.md) | 46 | `declaration-track:e8105cc2159c442c758935949541685b299757a49f8bbaffb7df51c68d85ce81` |
| 5 | `instance` | [isScalarTower](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/isscalartower--8d78da66f25bd6aa8b68744f.md) | 51 | `declaration-track:8d78da66f25bd6aa8b68744fa05296c5bf7b6076828481174f0224f9fecd6c22` |
| 6 | `instance` | [isCentralScalar](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/iscentralscalar--7576c425bc8418501e0525b5.md) | 56 | `declaration-track:7576c425bc8418501e0525b50fd1227f85987c51e9a658001d7e01d4d14a3b9a` |
| 7 | `instance` | [distribMulAction](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/distribmulaction--6f85645afd6149b92ad7a559.md) | 63 | `declaration-track:6f85645afd6149b92ad7a55931b84509e76796e5fb9a782ab4a812118a834f7e` |
| 8 | `instance` | [module](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/module--efe0e59882309bc507fa1452.md) | 69 | `declaration-track:efe0e59882309bc507fa145201c4ba141f47bd26a9a849b8e7ae2f47d66f9bd4` |
| 9 | `def` | [coeFnLinearMap](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/coefnlinearmap--52165b20b8029b6fb5ea0b0f.md) | 79 | `declaration-track:52165b20b8029b6fb5ea0b0f5d9b55ce96d7896ba6ca4325bb077fcb85bdec87` |
| 10 | `lemma` | [coeFnLinearMap_apply](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/coefnlinearmap-apply--228b283b3a836454ef6e8d8b.md) | 86 | `result-track:228b283b3a836454ef6e8d8b26546b57dedeca8d2c5f09aec0493fe32809a42f` |
| 11 | `theorem` | [filter_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/filter-smul--8cfd11f743330a2940826bcf.md) | 93 | `result-track:8cfd11f743330a2940826bcf36088375f2dcf359d5181e2f989a89eba06e878b` |
| 12 | `def` | [filterLinearMap](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/filterlinearmap--d7cabf31aff5efdd83c096cf.md) | 102 | `declaration-track:d7cabf31aff5efdd83c096cfc875cea3765e150c68353a540fb8c61bea968c18` |
| 13 | `theorem` | [subtypeDomain_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/subtypedomain-smul--12c5a2afc0d771f34dbc1aa7.md) | 111 | `result-track:12c5a2afc0d771f34dbc1aa78268cfb6bc3d55cba965b242f2f810cbb8249e9e` |
| 14 | `def` | [subtypeDomainLinearMap](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/subtypedomainlinearmap--2820f212e789bcf9033cd7ef.md) | 120 | `declaration-track:2820f212e789bcf9033cd7efeb196d0ee16d6788ed0cbbb861b0c75dec23741e` |
| 15 | `theorem` | [mk_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/mk-smul--cdf7dcf351d0487d2975430a.md) | 136 | `result-track:cdf7dcf351d0487d2975430a57c2a95675458d453fe1e60aae8785a3f7b13c7a` |
| 16 | `theorem` | [single_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/single-smul--585490a1ceccc52ff33620e8.md) | 141 | `result-track:585490a1ceccc52ff33620e8bf3459cc95282fab1900f46cf7dc15040872487e` |
| 17 | `theorem` | [support_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/support-smul--9ed61f668155eef05fa120e6.md) | 150 | `result-track:9ed61f668155eef05fa120e6809e77f098baf7e6eccf085bbe299e43c58eabff` |
| 18 | `theorem` | [comapDomain_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/comapdomain-smul--934325a17073ea1d045ceed5.md) | 162 | `result-track:934325a17073ea1d045ceed56e7fec5d6533969c0a2bdb5fa9d4ddfa2894aff5` |
| 19 | `theorem` | [comapDomain'_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/comapdomain-smul--afc1ac81292d790708201608.md) | 169 | `result-track:afc1ac81292d790708201608e0f8f5c88840156dad4b4c5395c51f5c2a2f1243` |
| 20 | `instance` | [distribMulAction₂](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/distribmulaction--8a03f0cc076586e6b4f77558.md) | 179 | `declaration-track:8a03f0cc076586e6b4f775587df2a0105361e92b12542dadc6997dd843778fea` |
| 21 | `theorem` | [equivProdDFinsupp_smul](../../../../../mathematics/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/declarations/equivproddfinsupp-smul--b5c80528ccfdaf55d5e07d8a.md) | 187 | `result-track:b5c80528ccfdaf55d5e07d8a2ef00610f3e3b85be95ed16fe1cd562a77d0ef75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
