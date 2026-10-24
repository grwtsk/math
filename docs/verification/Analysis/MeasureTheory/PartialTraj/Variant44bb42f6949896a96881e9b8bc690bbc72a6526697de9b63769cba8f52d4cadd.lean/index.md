# Verification target: GRWTSK.Analysis.MeasureTheory.PartialTraj.Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4ee8f1d8ef16e1185f87af376704ea9a33fcd71",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4ee8f1d8ef16e1185f87af376704ea9a33fcd71`.

Source path: `GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean.json)

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
| 1 | `def` | [partialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/partialtraj--3f9d4705f6988a73bf868a01.md) | 110 | `declaration-track:3f9d4705f6988a73bf868a01028ab0c2b964ee557f16b74fe5367b556bbf1874` |
| 2 | `lemma` | [partialTraj_le](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/partialtraj-le--3c8b3bf1d70b750d334c2543.md) | 120 | `result-track:3c8b3bf1d70b750d334c25430cf6bc190d0bc25fc4717bc22da190d5801db9d5` |
| 3 | `lemma` | [partialTraj_self](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/partialtraj-self--73a0091fe94b432fb794dfae.md) | 125 | `result-track:73a0091fe94b432fb794dfae0c8ef282fab01c5118243c35569abf3fc9b400da` |
| 4 | `lemma` | [partialTraj_zero](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/partialtraj-zero--c4cc9f6a6897ed320f35b70d.md) | 128 | `result-track:c4cc9f6a6897ed320f35b70de8afda6f7fe6a9b60b187487e0be8de758ab75c2` |
| 5 | `lemma` | [partialTraj_le_def](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/partialtraj-le-def--a4611115b70e26a559e80ab3.md) | 132 | `result-track:a4611115b70e26a559e80ab3cd1abc025bdf8391d9643b8d7927f09ac89bf837` |
| 6 | `lemma` | [partialTraj_succ_of_le](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/partialtraj-succ-of-le--042cc1529162689335d0cf58.md) | 140 | `result-track:042cc1529162689335d0cf586ae6216017b22649ff58bbd986e581ff622bcf85` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/instance--efcd5f81e0b2027b7f8ed630.md) | 148 | `declaration-track:efcd5f81e0b2027b7f8ed6304e7cfd2000f119b5e0d84190fe2c73707d434402` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/instance--f5d14b0ab0fda60e2893c91f.md) | 155 | `declaration-track:f5d14b0ab0fda60e2893c91f48918a8200c573cb8d89e9bb8c4544f80b390666` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/instance--fe9c6bcf46df47b8b6fcd1a6.md) | 162 | `declaration-track:fe9c6bcf46df47b8b6fcd1a666ce856170d3906c9d25501d0a6072d43260e692` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/instance--102d76feb5a321d6944d6041.md) | 170 | `declaration-track:102d76feb5a321d6944d6041fad0b562d9b78a69af85198fa7127012608ae188` |
| 11 | `lemma` | [partialTraj_succ_self](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/partialtraj-succ-self--6e9b9094605f6c46f9d1f821.md) | 181 | `result-track:6e9b9094605f6c46f9d1f8218206f6015bdb7c081f78a0564129d678e1f46153` |
| 12 | `lemma` | [partialTraj_succ_eq_comp](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/partialtraj-succ-eq-comp--2b0b227a824ce5da8c3719ca.md) | 186 | `result-track:2b0b227a824ce5da8c3719ca0675c999b687d29738070c16a9e4db96c400cb13` |
| 13 | `theorem` | [partialTraj_comp_partialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/partialtraj-comp-partialtraj--dc45910926efe256c958f779.md) | 193 | `result-track:dc45910926efe256c958f77985d479eeb3cd590459b108d93505843f0155b94c` |
| 14 | `lemma` | [fst_prod_comp_id_prod](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/fst-prod-comp-id-prod--9664021b5b84c71a7948fcc9.md) | 203 | `result-track:9664021b5b84c71a7948fcc983d432b790568aad3672648d06ef4339012f75bb` |
| 15 | `lemma` | [partialTraj_eq_prod](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/partialtraj-eq-prod--ba49d97b603f162953fbb459.md) | 216 | `result-track:ba49d97b603f162953fbb459b42802022db56e8e1d7cc582b6880e551e4a82bc` |
| 16 | `lemma` | [map_partialTraj_succ_self](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/map-partialtraj-succ-self--e26f078cf20afc3423dfd5be.md) | 255 | `result-track:e26f078cf20afc3423dfd5beeb5294a9760fd80b0c46415efa47947589b1bf0b` |
| 17 | `lemma` | [partialTraj_succ_map_frestrictLe₂](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/partialtraj-succ-map-frestrictle--d6f5d9d589c29ac0f54433ea.md) | 265 | `result-track:d6f5d9d589c29ac0f54433ea5b92f5140c15789172bf4effc8576e09d668210b` |
| 18 | `theorem` | [partialTraj_map_frestrictLe₂](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/partialtraj-map-frestrictle--02e875a1754451569cca3a55.md) | 278 | `result-track:02e875a1754451569cca3a552dba9c4aa1d0d40b42fe448321e69dbcfa974144` |
| 19 | `lemma` | [partialTraj_map_frestrictLe₂_apply](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/partialtraj-map-frestrictle-apply--a8ee0f27201ab9b953777b2d.md) | 287 | `result-track:a8ee0f27201ab9b953777b2d6f29591693c231e5b6749e6ee78bacd8797287da` |
| 20 | `lemma` | [partialTraj_comp_partialTraj'](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/partialtraj-comp-partialtraj--95f703f94bb4ef37e77bdb53.md) | 292 | `result-track:95f703f94bb4ef37e77bdb539b41a199471bdec44a150832139c90d4717d1d77` |
| 21 | `lemma` | [partialTraj_comp_partialTraj''](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/partialtraj-comp-partialtraj--4ac431fc9e38bb39038e32a7.md) | 299 | `result-track:4ac431fc9e38bb39038e32a7f4ed275f132c0a8b9eadaf1ae0322a9f2a1eb25b` |
| 22 | `def` | [lmarginalPartialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/lmarginalpartialtraj--63b4d8846a5e932e7bfff2e7.md) | 316 | `declaration-track:63b4d8846a5e932e7bfff2e7e9b6bc6cbe24cedfd66ff7c601fc812281b6337e` |
| 23 | `lemma` | [lmarginalPartialTraj_le](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/lmarginalpartialtraj-le--b126be2406918ceaaee9f044.md) | 320 | `result-track:b126be2406918ceaaee9f044059e03cb55fc8e9c0e94851c259633734da2d436` |
| 24 | `lemma` | [lmarginalPartialTraj_mono](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/lmarginalpartialtraj-mono--332f86d21d5aea37e76086c4.md) | 330 | `result-track:332f86d21d5aea37e76086c4626afdb2dc0478f12d31fd6b6096efdf3428b72d` |
| 25 | `lemma` | [lmarginalPartialTraj_eq_lintegral_map](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/lmarginalpartialtraj-eq-lintegral-map--a63c146cfed17eee90ff4feb.md) | 336 | `result-track:a63c146cfed17eee90ff4febffcf7482522ba56043c4b11672378cbf445561dc` |
| 26 | `lemma` | [lmarginalPartialTraj_succ](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/lmarginalpartialtraj-succ--3bb3513e08c204ab0b51dc15.md) | 350 | `result-track:3bb3513e08c204ab0b51dc15028fa4479aa86fadbce91d80879de5fee685e53f` |
| 27 | `lemma` | [measurable_lmarginalPartialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/measurable-lmarginalpartialtraj--3212ba7939acaab403aa322d.md) | 363 | `result-track:3212ba7939acaab403aa322d4409a2dbb80402b05ed78f9ef53f19dcaccec191` |
| 28 | `theorem` | [lmarginalPartialTraj_self](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/lmarginalpartialtraj-self--65e0ece4ad41ea8ca820ef6f.md) | 374 | `result-track:65e0ece4ad41ea8ca820ef6f008c1f8883eeea71fbc03eb641337a66d39b4f57` |
| 29 | `theorem` | [lmarginalPartialTraj_of_le](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/lmarginalpartialtraj-of-le--a89c78a553c48bf99b897b6b.md) | 399 | `result-track:a89c78a553c48bf99b897b6b079f29cdcf094ba2815183545d2e100e4d154769` |
| 30 | `theorem` | [lmarginalPartialTraj_const_right](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/lmarginalpartialtraj-const-right--179e0e0d0f991b20bed03f2e.md) | 412 | `result-track:179e0e0d0f991b20bed03f2e1306eec56330cfc749264f66278ac5d97d90796a` |
| 31 | `theorem` | [dependsOn_lmarginalPartialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/declarations/dependson-lmarginalpartialtraj--7e0a23afa7d44b8695bb3a37.md) | 424 | `result-track:7e0a23afa7d44b8695bb3a3736e8a30a31a860c973e759eb9cdfe4a2caeb6746` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
