# Verification target: GRWTSK.Analysis.MeasureTheory.PartialTraj.Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f24d4c905deecfb1b3a50c3d52d112a75e5492d",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f24d4c905deecfb1b3a50c3d52d112a75e5492d`.

Source path: `GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean.json)

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
| 1 | `def` | [partialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/partialtraj--1a99362878e7e6ce22215f3c.md) | 102 | `declaration-track:1a99362878e7e6ce22215f3cbc64c73fb7accdff954a5afb02621119979f0397` |
| 2 | `lemma` | [partialTraj_le](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/partialtraj-le--bc116b16a17ac3ecd99e8aa7.md) | 112 | `result-track:bc116b16a17ac3ecd99e8aa7d813610fc40e2d974d64c72099deb1ab4017048e` |
| 3 | `lemma` | [partialTraj_self](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/partialtraj-self--6d4179ce617b1dbce423e9ac.md) | 117 | `result-track:6d4179ce617b1dbce423e9acb4e43a95ae214b885db47ff9535f7fe58bcc04c5` |
| 4 | `lemma` | [partialTraj_zero](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/partialtraj-zero--691ae21f361b6553af20d632.md) | 120 | `result-track:691ae21f361b6553af20d632b9fe24a7bda4d69bf06c00674781387e31f7b209` |
| 5 | `lemma` | [partialTraj_le_def](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/partialtraj-le-def--d08ddb4200e44e835aa4dd94.md) | 124 | `result-track:d08ddb4200e44e835aa4dd94b4aac251f687ad1d8c735728cc891136d60e732a` |
| 6 | `lemma` | [partialTraj_succ_of_le](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/partialtraj-succ-of-le--96488463bdef7e4583b4bfb0.md) | 132 | `result-track:96488463bdef7e4583b4bfb0c4f0a0400a80faa28787fe9b36c5fdfd364a88d8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/instance--de25250af4f8217dfe22ed3f.md) | 140 | `declaration-track:de25250af4f8217dfe22ed3f141591367f83b522d77c27982896e5e76203262b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/instance--1ffb614d407092cbcf54ee6a.md) | 147 | `declaration-track:1ffb614d407092cbcf54ee6a6cbcd58a0cd2e3d290ff60f9d64b5f53d835e460` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/instance--6e870f4d29c0a8e6426d5524.md) | 154 | `declaration-track:6e870f4d29c0a8e6426d5524bcc7447e664176dd405c5b89441eae921146a05e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/instance--99ee3811ab078d850fe6120b.md) | 162 | `declaration-track:99ee3811ab078d850fe6120be70bc5638deca805bc85ed2746c636a5a76f6929` |
| 11 | `lemma` | [partialTraj_succ_self](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/partialtraj-succ-self--75e3c7f37e0a5f1b62721938.md) | 173 | `result-track:75e3c7f37e0a5f1b627219386ebdcb59fc4f1ae0ca133c586984d3c17d23d500` |
| 12 | `lemma` | [partialTraj_succ_eq_comp](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/partialtraj-succ-eq-comp--9c3d202d97c6ec3d90cdec99.md) | 178 | `result-track:9c3d202d97c6ec3d90cdec999e2452545b7859ad69533271334563ff386f961f` |
| 13 | `theorem` | [partialTraj_comp_partialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/partialtraj-comp-partialtraj--835e08ea57d91206d7e75af4.md) | 185 | `result-track:835e08ea57d91206d7e75af44985362ff8cacbc004a016c564a059a2ffa0bf62` |
| 14 | `lemma` | [fst_prod_comp_id_prod](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/fst-prod-comp-id-prod--65958a6b7c0b8e0b89306b39.md) | 195 | `result-track:65958a6b7c0b8e0b89306b3901e713b2f9300c89310962dd80f72af374a6b547` |
| 15 | `lemma` | [partialTraj_eq_prod](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/partialtraj-eq-prod--051e4cecffad5e1e6e91af97.md) | 208 | `result-track:051e4cecffad5e1e6e91af976456a68bd4e426e0c501cb4ddbb50008528fdfa0` |
| 16 | `lemma` | [map_partialTraj_succ_self](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/map-partialtraj-succ-self--befdaba0fcad938293431016.md) | 247 | `result-track:befdaba0fcad9382934310168abc0b91d32029edbc6527d82af404f939b80e05` |
| 17 | `lemma` | [partialTraj_succ_map_frestrictLe₂](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/partialtraj-succ-map-frestrictle--95a6cea59b9f3d537a6887db.md) | 257 | `result-track:95a6cea59b9f3d537a6887db9b86c7a4516d7fed584006065ec38a22a92c8fa8` |
| 18 | `theorem` | [partialTraj_map_frestrictLe₂](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/partialtraj-map-frestrictle--0546fab2132398e51c37bbf9.md) | 270 | `result-track:0546fab2132398e51c37bbf95a3b4a492eb91a73b1e7a1c58cd0566cbe665887` |
| 19 | `lemma` | [partialTraj_map_frestrictLe₂_apply](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/partialtraj-map-frestrictle-apply--2f890357da38af200a0d0cdd.md) | 279 | `result-track:2f890357da38af200a0d0cdd6bb0acd3e360f83da8c404b40666b96561ddbb00` |
| 20 | `lemma` | [partialTraj_comp_partialTraj'](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/partialtraj-comp-partialtraj--f032d6286deabc4d65b95baa.md) | 284 | `result-track:f032d6286deabc4d65b95baaf69138737771692c5d727846e4caa991ed6d6c41` |
| 21 | `lemma` | [partialTraj_comp_partialTraj''](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/partialtraj-comp-partialtraj--1b08a5154ae5c3fd4a405567.md) | 291 | `result-track:1b08a5154ae5c3fd4a4055671cadf18ef9a4d3ee0da844963ea9d3d4c0eeaec6` |
| 22 | `def` | [lmarginalPartialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/lmarginalpartialtraj--31c5f899da2cb825c37ee7c6.md) | 308 | `declaration-track:31c5f899da2cb825c37ee7c65700a00eac4fdd97465f459443e76da47bbf964c` |
| 23 | `lemma` | [lmarginalPartialTraj_le](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/lmarginalpartialtraj-le--95fea7e6110e92d02be48749.md) | 312 | `result-track:95fea7e6110e92d02be487491dd701a0f559160802ae06b1ff07dc6c5513dfee` |
| 24 | `lemma` | [lmarginalPartialTraj_mono](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/lmarginalpartialtraj-mono--d795fbb1c1b489d71df528ac.md) | 322 | `result-track:d795fbb1c1b489d71df528ac0612bf4fe827028a1b123f17103fb2d88bb96b39` |
| 25 | `lemma` | [lmarginalPartialTraj_eq_lintegral_map](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/lmarginalpartialtraj-eq-lintegral-map--deb60a58930893507178564d.md) | 328 | `result-track:deb60a58930893507178564db99b1669e3b651ff4c665f0e06b407fe65417cf9` |
| 26 | `lemma` | [lmarginalPartialTraj_succ](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/lmarginalpartialtraj-succ--3f1e88c2bb39cbd7def8e253.md) | 342 | `result-track:3f1e88c2bb39cbd7def8e253b5579db66516ccb472a76470d6fa76b61e2c84cd` |
| 27 | `lemma` | [measurable_lmarginalPartialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/measurable-lmarginalpartialtraj--b2f00aeec4865637e527d597.md) | 355 | `result-track:b2f00aeec4865637e527d5976dd8738e529aadd71a810ea8e5d411f68004bcd6` |
| 28 | `theorem` | [lmarginalPartialTraj_self](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/lmarginalpartialtraj-self--59ea34e80ca6ac1e8de495a1.md) | 366 | `result-track:59ea34e80ca6ac1e8de495a11b061401e90a9ef30dd39a3b1d5335203bdb9591` |
| 29 | `theorem` | [lmarginalPartialTraj_of_le](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/lmarginalpartialtraj-of-le--a381b5e9235111df6e7b5b51.md) | 391 | `result-track:a381b5e9235111df6e7b5b51b20f7904e7561b7bb1685f4e0d4b76c7d5a8b0ce` |
| 30 | `theorem` | [lmarginalPartialTraj_const_right](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/lmarginalpartialtraj-const-right--59ffee36aa8784a144663c5e.md) | 404 | `result-track:59ffee36aa8784a144663c5e30c8b0d97580ee41a619d81b92b60870b6d5a56d` |
| 31 | `theorem` | [dependsOn_lmarginalPartialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/declarations/dependson-lmarginalpartialtraj--2d489f0b21f6e3f9f8533d74.md) | 416 | `result-track:2d489f0b21f6e3f9f8533d74dedd854c4fea008a9b6d397b2aedfee6eb22cfac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
