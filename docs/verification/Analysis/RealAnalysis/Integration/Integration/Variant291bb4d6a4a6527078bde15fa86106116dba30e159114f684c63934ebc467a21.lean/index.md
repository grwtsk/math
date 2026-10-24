# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integration.Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "311dd7c19f7fb27658208c4be11e77820aa7f316",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `311dd7c19f7fb27658208c4be11e77820aa7f316`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEval` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Integrate` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ProveContinuous` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uniformPartitionCore](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/uniformpartitioncore--756ce5a8548a6af42f3c4cc4.md) | 58 | `declaration-track:756ce5a8548a6af42f3c4cc4f558d6f26604599e772fe672be654c3e1c0df3e9` |
| 2 | `def` | [sumIntervalBoundsCore](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/sumintervalboundscore--0991896d907741d7ffdbb605.md) | 74 | `declaration-track:0991896d907741d7ffdbb605cb943b5d034075e23f3236804166d101c5a1ab99` |
| 3 | `def` | [integrateIntervalCore](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integrateintervalcore--a519f1b381e12dc32432cd30.md) | 85 | `declaration-track:a519f1b381e12dc32432cd303ddb3cf3c753285612c4e9983481370ba4f5f5bf` |
| 4 | `def` | [integrateInterval1Core](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integrateinterval1core--01457bf02826dc6d6a3997f9.md) | 90 | `declaration-track:01457bf02826dc6d6a3997f99917438a0b845d0053eee5daa4b1512e809b6dde` |
| 5 | `theorem` | [exprSupportedCore_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/exprsupportedcore-intervalintegrable--40e09005c9a01f1b03b7f6f8.md) | 104 | `result-track:40e09005c9a01f1b03b7f6f81b8742a2c59a6ab9d71d500c0f2b3bc34e7081a5` |
| 6 | `theorem` | [integrateInterval1Core_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integrateinterval1core-correct--d0a236df5fab76d16365323a.md) | 122 | `result-track:d0a236df5fab76d16365323a4beb727136466b797ba919e9cf609326367871b7` |
| 7 | `def` | [checkIntegralBoundsCore](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/checkintegralboundscore--edbc40f253f744e66705d803.md) | 177 | `declaration-track:edbc40f253f744e66705d803d1ad40a8e4b854719e2d0d5280c8dac6488f6c6d` |
| 8 | `theorem` | [verify_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/verify-integral-bound--e6c1ba5d442e692714099098.md) | 195 | `result-track:e6c1ba5d442e6927140990980264c3be054b589f50e4fa8d6830aaf8651c8d13` |
| 9 | `def` | [getIntegralBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/getintegralbound--004606a14cf698678a7968a5.md) | 205 | `declaration-track:004606a14cf698678a7968a5250ded08482b94c98682b71fdd6e0535b965b23f` |
| 10 | `theorem` | [integral_in_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integral-in-bound--08a7a8a9d8c3c78a5b85103b.md) | 211 | `result-track:08a7a8a9d8c3c78a5b85103b86850a83f6d8fe7d3b62f129dfa8cb4b25a16ca5` |
| 11 | `def` | [integrateInterval1WithInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integrateinterval1withinv--da301d7de3386652fdb460f3.md) | 224 | `declaration-track:da301d7de3386652fdb460f3d6277a565405252adcc7f2eb0bee2122bf7edf7d` |
| 12 | `theorem` | [integrateInterval1WithInv_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integrateinterval1withinv-correct--9e8a96505cd17eb1bf5e36c0.md) | 231 | `result-track:9e8a96505cd17eb1bf5e36c08d6cf0207758a5899cd9d55bccf7b64096be0eb6` |
| 13 | `def` | [checkIntegralBoundsWithInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/checkintegralboundswithinv--2183aedaec70b86ac2f71cd1.md) | 291 | `declaration-track:2183aedaec70b86ac2f71cd14e784174124b53b9fc83825733c11584bb81c31a` |
| 14 | `theorem` | [verify_integral_bound_withInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/verify-integral-bound-withinv--7ac9ca4e03301018d2a1ac62.md) | 302 | `result-track:7ac9ca4e03301018d2a1ac62a8f608661a7fbfeac5fdfea3ab6a08a60d567d1f` |
| 15 | `def` | [collectBoundsWithInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/collectboundswithinv--de6353b8025c1cef3745c273.md) | 325 | `declaration-track:de6353b8025c1cef3745c273afc78d77ada017cc809fbf70c1183046539502d6` |
| 16 | `def` | [integratePartitionWithInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integratepartitionwithinv--de441522fc7dee39b1267dc8.md) | 334 | `declaration-track:de441522fc7dee39b1267dc8154c43e57e194ad8bb7b80f9a9e6ae8bc5cf1f4f` |
| 17 | `theorem` | [collectBoundsWithInv_length](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/collectboundswithinv-length--857320064edf7c3e2cdeeabb.md) | 342 | `result-track:857320064edf7c3e2cdeeabbf1a642c85d855a15c112642ad06316361c9f8d0f` |
| 18 | `theorem` | [collectBoundsWithInv_getElem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/collectboundswithinv-getelem--b85c4d3f4d3ee0c669f98b29.md) | 363 | `result-track:b85c4d3f4d3ee0c669f98b292e5d285bcc75056095b268d577d75ab97292adc3` |
| 19 | `theorem` | [integral_subinterval_bounded_withInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integral-subinterval-bounded-withinv--6b5d0100723d1d17808eac8d.md) | 393 | `result-track:6b5d0100723d1d17808eac8db5856dddc0727bb7833fe85e9259cff5acc94360` |
| 20 | `theorem` | [integratePartitionWithInv_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integratepartitionwithinv-correct--9a38e1c3027dc0b5205f9236.md) | 404 | `result-track:9a38e1c3027dc0b5205f9236a26a186f076adac232866d4d124206b6cc00af31` |
| 21 | `structure` | [AdaptiveResultWithInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/adaptiveresultwithinv--d354e8916a25dfc7255beeab.md) | 475 | `declaration-track:d354e8916a25dfc7255beeabb7347d79c5ae1bf00f90f7dcb657565108c88a0f` |
| 22 | `def` | [adaptiveErrorEstimate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/adaptiveerrorestimate--643d60d55904f6dde415410d.md) | 483 | `declaration-track:643d60d55904f6dde415410dd880a752d7481cf034f26f064205a32c83655f87` |
| 23 | `def` | [integrateRefinedWithInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integraterefinedwithinv--9999b285c20cd927fd1ac05d.md) | 487 | `declaration-track:9999b285c20cd927fd1ac05d789b3d4039ec90d2f7ab6e079c3c5f15cf4c3070` |
| 24 | `def` | [integrateAdaptiveAuxWithInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integrateadaptiveauxwithinv--90845f4e19b8c12bf2b35166.md) | 494 | `declaration-track:90845f4e19b8c12bf2b351666f9185834df43e84f10ee5e2436d9c72759bd3b3` |
| 25 | `def` | [integrateAdaptiveWithInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integrateadaptivewithinv--46be64637ac96611fd731d8e.md) | 524 | `declaration-track:46be64637ac96611fd731d8e396e31ba8a2bf5a79195d9f4b92f63824a2a7b04` |
| 26 | `theorem` | [integrateRefinedWithInv_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integraterefinedwithinv-correct--401f972d3b32be1d5291491b.md) | 531 | `result-track:401f972d3b32be1d5291491bd66a06062461d004569a18a738ee7e31c64ae94b` |
| 27 | `theorem` | [intervalIntegrable_splitMid_left_withInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/intervalintegrable-splitmid-left-withinv--fcd40e49624eaa42f8af09dc.md) | 539 | `result-track:fcd40e49624eaa42f8af09dc8d83eb066bfca4daf1d7f135c1d2c1a5d796810c` |
| 28 | `theorem` | [intervalIntegrable_splitMid_right_withInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/intervalintegrable-splitmid-right-withinv--2d89285f9f92e698d3fb8edb.md) | 547 | `result-track:2d89285f9f92e698d3fb8edbcb9249af6b6be428503372e0a2a8bd172a7676fa` |
| 29 | `theorem` | [integral_split_mid_withInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integral-split-mid-withinv--b7d4bb4bbbf584606abfa4c3.md) | 555 | `result-track:b7d4bb4bbbf584606abfa4c3878ffdc2ead66e9328da0583c718f7dac774b10e` |
| 30 | `theorem` | [integrateAdaptiveAuxWithInv_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integrateadaptiveauxwithinv-correct--f0f259095af00d4886650a4e.md) | 568 | `result-track:f0f259095af00d4886650a4e4f5c228a044e43b05a3b527a2efa6b6acd52fa09` |
| 31 | `theorem` | [integrateAdaptiveWithInv_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integrateadaptivewithinv-correct--5adbc9411aeb384a066e2f2c.md) | 617 | `result-track:5adbc9411aeb384a066e2f2c1006fe686c4f6a38e6d99eb5e039aedbbe45c53d` |
| 32 | `def` | [checkIntegralAdaptiveLowerBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/checkintegraladaptivelowerbound--aed57e6488a6db0bc3618dd6.md) | 628 | `declaration-track:aed57e6488a6db0bc3618dd6b7fdcd90c999a2aef1a475c910e4322346d7f412` |
| 33 | `def` | [checkIntegralAdaptiveUpperBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/checkintegraladaptiveupperbound--25fc6473349c6d6f10b7e49b.md) | 636 | `declaration-track:25fc6473349c6d6f10b7e49b3579f30e5d8a3ea03faec9b1ec3fbde68137720a` |
| 34 | `theorem` | [integral_adaptive_lower_of_check](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integral-adaptive-lower-of-check--9e6683bf053d296b57745990.md) | 643 | `result-track:9e6683bf053d296b577459905cafc2f2f764677a20a7a0505b76fd47fc1fe965` |
| 35 | `theorem` | [integral_adaptive_upper_of_check](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integral-adaptive-upper-of-check--593e143c1d91aba2542f6f7d.md) | 659 | `result-track:593e143c1d91aba2542f6f7d2c077b1fec3cc2ccd953f3e0898c317a916dfc42` |
| 36 | `def` | [searchPartitionLowerAux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/searchpartitionloweraux--d5c8431ed20cb9893a9ea2ae.md) | 690 | `declaration-track:d5c8431ed20cb9893a9ea2aeabd64184b59ff1523417352ce0d7f975d3d8a03a` |
| 37 | `def` | [searchPartitionLower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/searchpartitionlower--cd193d39ad633ffda2bc9388.md) | 705 | `declaration-track:cd193d39ad633ffda2bc9388cb366a19a35bc73f378b9de09ba5f70368a60f1d` |
| 38 | `def` | [searchPartitionUpperAux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/searchpartitionupperaux--77aa3cbb3735da005397aed3.md) | 710 | `declaration-track:77aa3cbb3735da005397aed3b48081e427db69f7a82357f3e28836a300b2f1ba` |
| 39 | `def` | [searchPartitionUpper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/searchpartitionupper--06f7457690458c591d4a9191.md) | 725 | `declaration-track:06f7457690458c591d4a919136e32f566fc4ef0cd49128591f915b037ccd7793` |
| 40 | `def` | [checkIntegralSearchLowerBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/checkintegralsearchlowerbound--454a944059d0eb9762a1d4c2.md) | 733 | `declaration-track:454a944059d0eb9762a1d4c2cfea0d9e4f55ef80c0553073e365bb02be044280` |
| 41 | `def` | [checkIntegralSearchUpperBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/checkintegralsearchupperbound--7758c6bd9f2bb4574fd1f3e8.md) | 738 | `declaration-track:7758c6bd9f2bb4574fd1f3e80ff545f206d6b89dc52cfd629ed624fd3c68d07a` |
| 42 | `theorem` | [searchPartitionLowerAux_spec](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/searchpartitionloweraux-spec--ccb43ac0955ca5a049c755fc.md) | 743 | `result-track:ccb43ac0955ca5a049c755fc8deb6b8755786dc6084c4e506b6a8512e1c96618` |
| 43 | `theorem` | [searchPartitionUpperAux_spec](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/searchpartitionupperaux-spec--66b613a6b50344979500c606.md) | 765 | `result-track:66b613a6b50344979500c60662164e9d592f874e6c7a8ea38b6721eb95804fd0` |
| 44 | `theorem` | [searchPartitionLowerAux_valid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/searchpartitionloweraux-valid--a14205d9857e87f883c94a42.md) | 787 | `result-track:a14205d9857e87f883c94a425cb84f493c3ceddc2975f3e084e33a248b53cb34` |
| 45 | `theorem` | [searchPartitionUpperAux_valid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/searchpartitionupperaux-valid--5d3f53f322ab80e43d5c201e.md) | 815 | `result-track:5d3f53f322ab80e43d5c201e11129fb6aaf6c28e2232fe2d01e85834177abc15` |
| 46 | `theorem` | [integral_search_lower_of_check](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integral-search-lower-of-check--3b45908783a0a6f56d312aa9.md) | 843 | `result-track:3b45908783a0a6f56d312aa9972ca891d019cf23ce6e779ae32b03d2df4ee26f` |
| 47 | `theorem` | [integral_search_upper_of_check](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/declarations/integral-search-upper-of-check--7679ab39dfec3e04343986a8.md) | 858 | `result-track:7679ab39dfec3e04343986a87551fd72935d25c1b0a0abbaf172e15694605cfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
