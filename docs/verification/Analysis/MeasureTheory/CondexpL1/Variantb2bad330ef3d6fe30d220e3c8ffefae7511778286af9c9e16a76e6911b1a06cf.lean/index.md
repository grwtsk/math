# Verification target: GRWTSK.Analysis.MeasureTheory.CondexpL1.Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8f9b9d015697d9b4e6f4fcc21b2e845b950199a",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8f9b9d015697d9b4e6f4fcc21b2e845b950199a`.

Source path: `GRWTSK/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConditionalExpectation.CondexpL2` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Real` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [condExpIndL1Fin](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpindl1fin--8dd26642668c5031c0bb9300.md) | 71 | `declaration-track:8dd26642668c5031c0bb93001888844659e1e23e202a5152e717a65ebe266087` |
| 2 | `theorem` | [condExpIndL1Fin_ae_eq_condExpIndSMul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpindl1fin-ae-eq-condexpindsmul--6846a89daf1a5acc62f22994.md) | 77 | `result-track:6846a89daf1a5acc62f229942cfebe8115ba918bc84f578958342a29610d6782` |
| 3 | `theorem` | [q](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/q--cc5f0def5087b4f3964ccb22.md) | 89 | `result-track:cc5f0def5087b4f3964ccb22ed7f4bd24c9eb4f022d4efa37f3c6d7b2235a1ab` |
| 4 | `theorem` | [condExpIndL1Fin_add](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpindl1fin-add--b90a573170e4cdb394e6187d.md) | 93 | `result-track:b90a573170e4cdb394e6187dc7d2fdeb8c07926a96ab0af81e9140ced4cdb711` |
| 5 | `theorem` | [condExpIndL1Fin_smul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpindl1fin-smul--650e9ce9fbfadc25e7c5bc0c.md) | 107 | `result-track:650e9ce9fbfadc25e7c5bc0c4da1b5da4ec6608e8cc244f8f02b9c3bcb794793` |
| 6 | `theorem` | [condExpIndL1Fin_smul'](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpindl1fin-smul--6f33da2738eba57d018b489b.md) | 119 | `result-track:6f33da2738eba57d018b489b70a8ada4a25b693ac945f654b670f5c7b7f9c09c` |
| 7 | `theorem` | [norm_condExpIndL1Fin_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/norm-condexpindl1fin-le--748383ab5bb39d1e5a846aeb.md) | 132 | `result-track:748383ab5bb39d1e5a846aeb6bc2a9d679cc0c9c9f8456b9f92b402074fa2baf` |
| 8 | `theorem` | [condExpIndL1Fin_disjoint_union](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpindl1fin-disjoint-union--efa58ed41e7de02faebe5870.md) | 150 | `result-track:efa58ed41e7de02faebe587093b134ba7c04a482cb5258ceb3fa45b2bcbdcb54` |
| 9 | `def` | [condExpIndL1](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpindl1--3f04182013f99a8d8a3aa83e.md) | 181 | `declaration-track:3f04182013f99a8d8a3aa83ea5fbdab04a10d58f1833092bffcbeb8c6fdc9974` |
| 10 | `theorem` | [condExpIndL1_of_measurableSet_of_measure_ne_top](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpindl1-of-measurableset-of-measure-ne-top--9690a6653b10df72ce32627f.md) | 189 | `result-track:9690a6653b10df72ce32627f8ee6e13c3b91f0d2395665f21f9ac30eabece5e8` |
| 11 | `theorem` | [condExpIndL1_of_measure_eq_top](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpindl1-of-measure-eq-top--d837a12bc664d1bfc2c9a0a4.md) | 197 | `result-track:d837a12bc664d1bfc2c9a0a4863c935f7bfe0dde1cc1f866575b40cd3544e6c9` |
| 12 | `theorem` | [condExpIndL1_of_not_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpindl1-of-not-measurableset--2e3814f244ef9e95b755558c.md) | 204 | `result-track:2e3814f244ef9e95b755558cdb006d0e270a33f59538b393a5268e60a9c54635` |
| 13 | `theorem` | [condExpIndL1_add](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpindl1-add--47047e78f17a069c916528d7.md) | 211 | `result-track:47047e78f17a069c916528d792f4453d7e61d8c420bf77f2310f00d288220f8b` |
| 14 | `theorem` | [condExpIndL1_smul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpindl1-smul--6d3056ac8c60c9beebd17c56.md) | 222 | `result-track:6d3056ac8c60c9beebd17c56fdb9c501e9c2e4ae793ec8c70bd03bef2753b296` |
| 15 | `theorem` | [condExpIndL1_smul'](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpindl1-smul--4c0a1b4140706684c4004546.md) | 233 | `result-track:4c0a1b4140706684c400454614d9bfc49d37034b8f867632b76c11bbc7ebcc6d` |
| 16 | `theorem` | [norm_condExpIndL1_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/norm-condexpindl1-le--29123f3f05fbdca9149c8c44.md) | 244 | `result-track:29123f3f05fbdca9149c8c44abefc268bf48afd3e505d19d7004a641f6a1d574` |
| 17 | `theorem` | [continuous_condExpIndL1](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/continuous-condexpindl1--6e12fdd16fdb4e1740a57f3d.md) | 257 | `result-track:6e12fdd16fdb4e1740a57f3d9406b4a0fe056ec2cc607356e97f13b906cdb537` |
| 18 | `theorem` | [condExpIndL1_disjoint_union](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpindl1-disjoint-union--d292da98006b4815ccf85022.md) | 262 | `result-track:d292da98006b4815ccf85022401296da47b6649b17316e8a31a360650868569c` |
| 19 | `def` | [condExpInd](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpind--3862618b8022577b6108636a.md) | 280 | `declaration-track:3862618b8022577b6108636afc665db0e9bac595c44e50fe89ccc04dc5e11930` |
| 20 | `theorem` | [condExpInd_ae_eq_condExpIndSMul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpind-ae-eq-condexpindsmul--b623280f3e4afaa1b2dd9be5.md) | 291 | `result-track:b623280f3e4afaa1b2dd9be580443989eef4511bd554582007d17506ae053e3c` |
| 21 | `theorem` | [aestronglyMeasurable_condExpInd](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/aestronglymeasurable-condexpind--417088c7977452daae4344ff.md) | 302 | `result-track:417088c7977452daae4344ffc228324c064b2281e6f7dcd3663f6d77ae05ffc6` |
| 22 | `theorem` | [condExpInd_empty](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpind-empty--843bb7eec7c7a1c73b810c0e.md) | 314 | `result-track:843bb7eec7c7a1c73b810c0e4072222dd42c6a066b1aaf4b50416a42edb0785f` |
| 23 | `theorem` | [condExpInd_smul'](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpind-smul--6d43fb9a9847a3f0cf4684a1.md) | 325 | `result-track:6d43fb9a9847a3f0cf4684a194ffb3d104aed6759214421c63f5e9ed417eea94` |
| 24 | `theorem` | [norm_condExpInd_apply_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/norm-condexpind-apply-le--76a02c49ffd213c41804a242.md) | 331 | `result-track:76a02c49ffd213c41804a242baa7185765be3523484c15a5f88afa32825f59c5` |
| 25 | `theorem` | [norm_condExpInd_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/norm-condexpind-le--ec34a8b3ee144f1a3a255438.md) | 336 | `result-track:ec34a8b3ee144f1a3a25543893fd775fbcfccef2e326a28a512bee36bfbcc491` |
| 26 | `theorem` | [condExpInd_disjoint_union_apply](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpind-disjoint-union-apply--180b1edadd2bad67e71a638f.md) | 341 | `result-track:180b1edadd2bad67e71a638f6a21734a6d391b0bed0d5e71b22527d59e55a393` |
| 27 | `theorem` | [condExpInd_disjoint_union](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpind-disjoint-union--1f124ab246991bb965b88131.md) | 349 | `result-track:1f124ab246991bb965b88131528bf764a54e516b6cb69c5e21a8fbdb150facd7` |
| 28 | `theorem` | [dominatedFinMeasAdditive_condExpInd](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/dominatedfinmeasadditive-condexpind--b65c3e227d2217943975ba7c.md) | 358 | `result-track:b65c3e227d2217943975ba7c4abeb2d30071af3a089c5e92c236b2b8e7c4be75` |
| 29 | `theorem` | [setIntegral_condExpInd](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/setintegral-condexpind--496bebb58c5cace00f807b4e.md) | 368 | `result-track:496bebb58c5cace00f807b4e02787f5527797e9a18208b7c1f963619e5281dff` |
| 30 | `theorem` | [condExpInd_of_measurable](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpind-of-measurable--3fa7863d90df8a7bc39e4127.md) | 378 | `result-track:3fa7863d90df8a7bc39e4127558fe6c45c4ac9f5ce1e61a1249931e933a449fd` |
| 31 | `theorem` | [condExpInd_nonneg](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpind-nonneg--66f488e17df715cdc6b5503b.md) | 392 | `result-track:66f488e17df715cdc6b5503b1f18782f9985b7b2ed39b84b5e898f35c101a517` |
| 32 | `def` | [condExpL1CLM](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpl1clm--c57f64a942630a6f62340c30.md) | 412 | `declaration-track:c57f64a942630a6f62340c30651ce807d1308a773eee114b7130fbce9225b6f0` |
| 33 | `theorem` | [condExpL1CLM_smul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpl1clm-smul--16680f5e99e7d9daa0b7d805.md) | 420 | `result-track:16680f5e99e7d9daa0b7d8052aab368ae087ef337518f62bbf63eb671595dfd5` |
| 34 | `theorem` | [condExpL1CLM_indicatorConstLp](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpl1clm-indicatorconstlp--c8a9b44804e15e9e4ec914cc.md) | 427 | `result-track:c8a9b44804e15e9e4ec914cce52af597630046efb4960136e861e824d21473b6` |
| 35 | `theorem` | [condExpL1CLM_indicatorConst](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpl1clm-indicatorconst--08d0e0433fd6fbcb5af41338.md) | 434 | `result-track:08d0e0433fd6fbcb5af4133882a7fd9f00e7c834c5cc11f2f2775b226e0e96eb` |
| 36 | `theorem` | [setIntegral_condExpL1CLM_of_measure_ne_top](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/setintegral-condexpl1clm-of-measure-ne-top--093727a1ecd6117a22d3b5ab.md) | 442 | `result-track:093727a1ecd6117a22d3b5ab009e0750ffffbaff75e16b4108fcee9cdd2cb537` |
| 37 | `theorem` | [setIntegral_condExpL1CLM](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/setintegral-condexpl1clm--c26c7914d410f9c1f0a643c8.md) | 470 | `result-track:c26c7914d410f9c1f0a643c80e9bf74e613ab1a8e4d08605f42736bc49c29103` |
| 38 | `theorem` | [aestronglyMeasurable_condExpL1CLM](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/aestronglymeasurable-condexpl1clm--0207e3da7715ed459732802f.md) | 504 | `result-track:0207e3da7715ed459732802fe253e29580d9815eb26898b8bdb7c9c0dc73c232` |
| 39 | `theorem` | [condExpL1CLM_lpMeas](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpl1clm-lpmeas--9951201b541f7ccf6b966f49.md) | 529 | `result-track:9951201b541f7ccf6b966f49780afc161701482e2445bf60a672ae4ef8d84d8a` |
| 40 | `theorem` | [condExpL1CLM_of_aestronglyMeasurable'](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpl1clm-of-aestronglymeasurable--cd2bbca419861536c156d5ec.md) | 554 | `result-track:cd2bbca419861536c156d5ec82cf0d77fc6d3ffd309de882e164e4f586bb862e` |
| 41 | `def` | [condExpL1](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpl1--fc9a61d3e630e56042ed7864.md) | 563 | `declaration-track:fc9a61d3e630e56042ed7864de269332c740a56b0370d8caef347fe29da647e0` |
| 42 | `theorem` | [condExpL1_undef](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpl1-undef--3cfac5fdfb5180bda5b685a5.md) | 568 | `result-track:3cfac5fdfb5180bda5b685a51073622e1e854de51436c4e0ace729431b5c51ba` |
| 43 | `theorem` | [condExpL1_eq](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpl1-eq--f219b1353441478b8c8e3abe.md) | 573 | `result-track:f219b1353441478b8c8e3abe22e2742be5a974974cb3bab61cfdd6bc59f48ecf` |
| 44 | `theorem` | [condExpL1_zero](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpl1-zero--1953a77f7987f010d2c51ef1.md) | 579 | `result-track:1953a77f7987f010d2c51ef14970b780255a48d6caded432af249760a3d1c061` |
| 45 | `theorem` | [condExpL1_measure_zero](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpl1-measure-zero--aefd16a4a097a2ccc5a9832f.md) | 585 | `result-track:aefd16a4a097a2ccc5a9832fc9b054dc70c7c9656a181e896ca60a8bb83016a9` |
| 46 | `theorem` | [aestronglyMeasurable_condExpL1](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/aestronglymeasurable-condexpl1--70c5baae47045cad71410168.md) | 590 | `result-track:70c5baae47045cad71410168cf3eba43e7d314aa52dfa6c95980199dac7e390a` |
| 47 | `theorem` | [condExpL1_congr_ae](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpl1-congr-ae--196e34ec8e806ceb1c7eb07d.md) | 607 | `result-track:196e34ec8e806ceb1c7eb07d736793c6faef8575302db0848feb6b62b3654cbd` |
| 48 | `theorem` | [integrable_condExpL1](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/integrable-condexpl1--b65f8d76039ccbb3bb4db463.md) | 613 | `result-track:b65f8d76039ccbb3bb4db46336e3de402799d552a6ffdc0ee8fbf9b93f5362f4` |
| 49 | `theorem` | [setIntegral_condExpL1](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/setintegral-condexpl1--5fa738165af98d3a3aecc2f3.md) | 621 | `result-track:5fa738165af98d3a3aecc2f34576ba7f0aeb203fadae32a519d4b41ff9cac9ea` |
| 50 | `theorem` | [condExpL1_add](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpl1-add--b7a6384ab1d725c801c0b791.md) | 629 | `result-track:b7a6384ab1d725c801c0b7915a5f78efc33ee253e15822db2997a7154d4a69e2` |
| 51 | `theorem` | [condExpL1_neg](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpl1-neg--07b612377f9ec97796b3204f.md) | 635 | `result-track:07b612377f9ec97796b3204ff60332dc4bc3e75dd7322360643124f5dd700b63` |
| 52 | `theorem` | [condExpL1_smul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpl1-smul--186bb51a3896f2711381a6ee.md) | 640 | `result-track:186bb51a3896f2711381a6ee49d9e86609545d3dbd1a996c8f728eb6e1f5a2b0` |
| 53 | `theorem` | [condExpL1_sub](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpl1-sub--2c33193ae914aa161a291889.md) | 646 | `result-track:2c33193ae914aa161a29188951903623b5f803a00cb0c1b4a9517cf25514a80c` |
| 54 | `theorem` | [condExpL1_of_aestronglyMeasurable'](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpl1-of-aestronglymeasurable--a135ca8d48e139eb22fac66b.md) | 652 | `result-track:a135ca8d48e139eb22fac66b0129eafff0f7ce7199413cc069f3bbb1005bb64b` |
| 55 | `theorem` | [condExpL1_mono](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/declarations/condexpl1-mono--cd7539d9da4063aa4ab006dd.md) | 662 | `result-track:cd7539d9da4063aa4ab006ddfefab978a02580641308cbefef61f7370ead24c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
