# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c53119ad7127825fffda5d0df429d0284e8fd0ac",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c53119ad7127825fffda5d0df429d0284e8fd0ac`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean.json)

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
| 1 | `def` | [IsCompactOperator](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator--7a1927907e4556226bf2ea02.md) | 71 | `declaration-track:7a1927907e4556226bf2ea02339a140a28993013735c0ecad25fb7d4471faa9d` |
| 2 | `theorem` | [isCompactOperator_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-zero--2789066e0611f835af35d4c1.md) | 75 | `result-track:2789066e0611f835af35d4c1415a80b6380d133bd02f64ab1f42faa524bdae0a` |
| 3 | `theorem` | [isCompactOperator_id_iff_locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-id-iff-locallycompactspace--1d8e3d99d5660a86dace6788.md) | 79 | `result-track:1d8e3d99d5660a86dace6788cd23f6499afc26068b12dd6b55f823102a94a734` |
| 4 | `lemma` | [isCompactOperator_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-id--b5f8b0fd1267b8d20d4ae1f3.md) | 91 | `result-track:b5f8b0fd1267b8d20d4ae1f3393e00b3af1a96aed4e43251f4a13f458aeb669f` |
| 5 | `theorem` | [isCompactOperator_iff_exists_mem_nhds_image_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-iff-exists-mem-nhds-image-subset-compact--0306243c45e3bad6c32007af.md) | 102 | `result-track:0306243c45e3bad6c32007af24126f78a486fb266af3a1d328179b1fcaf6d5ba` |
| 6 | `theorem` | [isCompactOperator_iff_exists_mem_nhds_isCompact_closure_image](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-iff-exists-mem-nhds-iscompact-closure-image--c73e0f2f2c565ed76ac6cfd7.md) | 107 | `result-track:c73e0f2f2c565ed76ac6cfd754434078049112bacfd35c6410c9ee892e33e080` |
| 7 | `theorem` | [IsCompactOperator.image_subset_compact_of_isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-image-subset-compact-of-isvonnbounded--62cc7bf9d65005b8afcdb34a.md) | 122 | `result-track:62cc7bf9d65005b8afcdb34a0fb0c82a52c8da55c40b9482ef354ce73f3fa1b0` |
| 8 | `theorem` | [IsCompactOperator.isCompact_closure_image_of_isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-iscompact-closure-image-of-isvonnbounded--66eb5c6f9786d0421945cfec.md) | 132 | `result-track:66eb5c6f9786d0421945cfec7fca11912545c105379cdd2bac8438aea60d6919` |
| 9 | `theorem` | [IsCompactOperator.image_subset_compact_of_bounded](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-image-subset-compact-of-bounded--1eb11df6adde3e67f6255491.md) | 146 | `result-track:1eb11df6adde3e67f6255491ace1eec99fe49b702ceae687beb936f44f11c0c1` |
| 10 | `theorem` | [IsCompactOperator.isCompact_closure_image_of_bounded](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-iscompact-closure-image-of-bounded--c58f46329b283df533ba99ef.md) | 151 | `result-track:c58f46329b283df533ba99ef990c1287ee0a8bc72cd4fe4d85cc27385920755e` |
| 11 | `theorem` | [IsCompactOperator.image_ball_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-image-ball-subset-compact--d03d9102707fab2050a2c4b5.md) | 156 | `result-track:d03d9102707fab2050a2c4b5f0c7144c1271ee9dbdd39758f911aeff9280daeb` |
| 12 | `theorem` | [IsCompactOperator.image_closedBall_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-image-closedball-subset-compact--4944478f6a74c6e816dcb9cd.md) | 160 | `result-track:4944478f6a74c6e816dcb9cdbdf83061664977f989dda9b64b3e87c64d05873c` |
| 13 | `theorem` | [IsCompactOperator.isCompact_closure_image_ball](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-iscompact-closure-image-ball--a77487833ca1d56294fe8af2.md) | 165 | `result-track:a77487833ca1d56294fe8af2da75dbbcf4d793599695527ce367d844c34528ed` |
| 14 | `theorem` | [IsCompactOperator.isCompact_closure_image_closedBall](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-iscompact-closure-image-closedball--04c2817f224748905bb0beb0.md) | 170 | `result-track:04c2817f224748905bb0beb0fdb6e5fd87dd591265cb41c9528b0a976ee705ae` |
| 15 | `theorem` | [isCompactOperator_iff_image_ball_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-iff-image-ball-subset-compact--c20b44eb93923a5ab99637ca.md) | 175 | `result-track:c20b44eb93923a5ab99637cab6859f447fd49deb4922eea25ba63f5769e55fa8` |
| 16 | `theorem` | [isCompactOperator_iff_image_closedBall_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-iff-image-closedball-subset-compact--6145d9c413a98ed06b44d302.md) | 182 | `result-track:6145d9c413a98ed06b44d302ad754ab26492d6fbcbadbf20625146ab4c2b6b8f` |
| 17 | `theorem` | [isCompactOperator_iff_isCompact_closure_image_ball](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-iff-iscompact-closure-image-ball--a4a84f076718f82171e1258a.md) | 189 | `result-track:a4a84f076718f82171e1258a9fba7465fd652dd482da1a1d3c73dae50362278f` |
| 18 | `theorem` | [isCompactOperator_iff_isCompact_closure_image_closedBall](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-iff-iscompact-closure-image-closedball--aaf32ce0f4cc6ee124bcbacd.md) | 196 | `result-track:aaf32ce0f4cc6ee124bcbacdf338ebab749cd637c1ba884741437d67da8afebd` |
| 19 | `theorem` | [IsCompactOperator.smul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-smul--af2cd6ed814de9e5e8d12908.md) | 214 | `result-track:af2cd6ed814de9e5e8d12908ea33a94cd51f61ad299ab5523841448cbb520ad5` |
| 20 | `theorem` | [IsCompactOperator.smul_unit_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-smul-unit-iff--f811b07e55f3c58946a21435.md) | 221 | `result-track:f811b07e55f3c58946a2143513a463e939d164be1f473b6ba5d6633b2511cdf3` |
| 21 | `theorem` | [IsCompactOperator.smul_isUnit_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-smul-isunit-iff--074d56def522ab666a25b9c1.md) | 226 | `result-track:074d56def522ab666a25b9c127a37b4181c287527fef1739d0b9f6f07ac910d6` |
| 22 | `theorem` | [IsCompactOperator.smul_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-smul-iff--7abc62ec881c161036a4ab0b.md) | 232 | `result-track:7abc62ec881c161036a4ab0baad8f50cf3f7d73262ffef83c2b4612bacb4c88e` |
| 23 | `theorem` | [IsCompactOperator.smul_iff₀](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-smul-iff--4591108b6b2b0445107ca814.md) | 237 | `result-track:4591108b6b2b0445107ca81424d3a240f3a9052b0cfde35538fdca7e7fec0031` |
| 24 | `theorem` | [IsCompactOperator.add](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-add--5c67ba796654075395427bf0.md) | 242 | `result-track:5c67ba796654075395427bf03443132778815b2f017a6a2a0f0bf14abc21250a` |
| 25 | `theorem` | [IsCompactOperator.neg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-neg--cce2ef49537ee34d491db184.md) | 249 | `result-track:cce2ef49537ee34d491db184e9c00b9005ef1abab6c957db7e973684a3d9ce2b` |
| 26 | `theorem` | [IsCompactOperator.sub](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-sub--3b5275f765bc1c6932f40660.md) | 254 | `result-track:3b5275f765bc1c6932f40660cd001e8d235b5885e6b431743f0be60551692715` |
| 27 | `def` | [compactOperator](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/compactoperator--218c8376f6b09ad3b43fe7cb.md) | 261 | `declaration-track:218c8376f6b09ad3b43fe7cb61465ecda008f20b64e16d66fa37e976bf9349fa` |
| 28 | `theorem` | [IsCompactOperator.comp_clm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-comp-clm--26517e491761b3168b17a971.md) | 276 | `result-track:26517e491761b3168b17a971e498142361828689ea145b8eb278dd8c85d812fe` |
| 29 | `theorem` | [IsCompactOperator.continuous_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-continuous-comp--2fd631fe0b532b813bf7b869.md) | 283 | `result-track:2fd631fe0b532b813bf7b8694a0dfb1327be399ba96bdd6c649a1c1cd0553c96` |
| 30 | `theorem` | [IsCompactOperator.clm_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-clm-comp--1e7643176cd312d00e647749.md) | 290 | `result-track:1e7643176cd312d00e647749b182519590cad497da17a5452db061499da916a4` |
| 31 | `theorem` | [isCompactOperator_of_locallyCompactSpace_dom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-of-locallycompactspace-dom--ff61d94245cafe706b220a86.md) | 296 | `result-track:ff61d94245cafe706b220a86b9dc38d70d34d58cd2fe27ef7017ac762d60d874` |
| 32 | `theorem` | [isCompactOperator_of_locallyCompactSpace_rng](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-of-locallycompactspace-rng--b6a6efb657101094772143cd.md) | 301 | `result-track:b6a6efb657101094772143cde05a92fe9ff5ed51925783b6943a5d72924493cb` |
| 33 | `theorem` | [IsCompactOperator.codRestrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-codrestrict--e78edf28d3da2560358a23fe.md) | 313 | `result-track:e78edf28d3da2560358a23fe364350b478c2a31febc7ce1c86cac2235f1277ee` |
| 34 | `theorem` | [IsCompactOperator.restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-restrict--4d16fc71f3abf0b308b25ee6.md) | 336 | `result-track:4d16fc71f3abf0b308b25ee69ad09e216306341a8486e71270db20c8f577a316` |
| 35 | `theorem` | [IsCompactOperator.restrict'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-restrict--4ab9e430a7b5a0e06bd3c07d.md) | 349 | `result-track:4ab9e430a7b5a0e06bd3c07dae9e009783eaa8c69ab56c6c2942b4f3604f5a6e` |
| 36 | `theorem` | [IsCompactOperator.continuous](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-continuous--769de5eaf9f938377bbd3d41.md) | 364 | `result-track:769de5eaf9f938377bbd3d41358ee6012ca55c2784c8d9cd84b94782b95be6c2` |
| 37 | `def` | [ContinuousLinearMap.mkOfIsCompactOperator](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/continuouslinearmap-mkofiscompactoperator--769617c58b5126d877b30460.md) | 394 | `declaration-track:769617c58b5126d877b30460b60cf7d595ce03234848c2e898fb08cb09e419a8` |
| 38 | `theorem` | [ContinuousLinearMap.mkOfIsCompactOperator_to_linearMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/continuouslinearmap-mkofiscompactoperator-to-linearmap--4dba6f68c59818c26f43b425.md) | 399 | `result-track:4dba6f68c59818c26f43b425b5a04e6fd7e3897e26be287ae99a4e8560efdaad` |
| 39 | `theorem` | [ContinuousLinearMap.coe_mkOfIsCompactOperator](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/continuouslinearmap-coe-mkofiscompactoperator--17082a62b35ceac940fd8497.md) | 405 | `result-track:17082a62b35ceac940fd84972bcdbf7c854aea7bce9e428d16945107c96c9fb1` |
| 40 | `theorem` | [ContinuousLinearMap.mkOfIsCompactOperator_mem_compactOperator](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/continuouslinearmap-mkofiscompactoperator-mem-compactoperator--a2259cff74fd73576c4c3851.md) | 409 | `result-track:a2259cff74fd73576c4c38515a5ba72dc62097b03e4477c2f93761546c1b8861` |
| 41 | `theorem` | [isClosed_setOfPred_isCompactOperator](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/isclosed-setofpred-iscompactoperator--1c5b8943a791edbcfdc37216.md) | 418 | `result-track:1c5b8943a791edbcfdc3721638217ece2c485b3969779757c58e1d2e421db22e` |
| 42 | `theorem` | [compactOperator_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/compactoperator-topologicalclosure--50a841f79953b5f49c7a4f25.md) | 457 | `result-track:50a841f79953b5f49c7a4f2592e42284de03c1075139cfa448777c6a5e989b4d` |
| 43 | `theorem` | [isCompactOperator_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant2b83e756d8c12fd569eae9f2a519086f333e7407f4168f4ce188a7a95feba37f.lean/declarations/iscompactoperator-of-tendsto--37cedf21e51bbb7dddfb84e7.md) | 464 | `result-track:37cedf21e51bbb7dddfb84e70af3fd3701bb3765ec5672825580e7fe393d2588` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
