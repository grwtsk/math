# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integration.Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b7d4c1861f6e1e2bb0a88ec270b0b892d196bec",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b7d4c1861f6e1e2bb0a88ec270b0b892d196bec`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEval` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Integrate` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ProveContinuous` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uniformPartitionCore](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/uniformpartitioncore--893cb54f2f5d895d4e9c2e4c.md) | 66 | `declaration-track:893cb54f2f5d895d4e9c2e4cb44ea0aa90caf03d36fca2c22068cacf7579fe0d` |
| 2 | `def` | [sumIntervalBoundsCore](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/sumintervalboundscore--3fc29e32a0eb605368c84e9a.md) | 82 | `declaration-track:3fc29e32a0eb605368c84e9a45976bdf05d2446374bf4708aec9c15815c8001a` |
| 3 | `def` | [integrateIntervalCore](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integrateintervalcore--488cd3d19194811c7c7a8055.md) | 93 | `declaration-track:488cd3d19194811c7c7a8055ebdd89fa7d1fd41a0ce967ebf117e86478569854` |
| 4 | `def` | [integrateInterval1Core](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integrateinterval1core--9f1e70b3d05319650e4deec5.md) | 98 | `declaration-track:9f1e70b3d05319650e4deec559bacb8a3b4e6b89250fc5433e23cec60962be7d` |
| 5 | `theorem` | [exprSupportedCore_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/exprsupportedcore-intervalintegrable--c976c03e113094d6d7812c54.md) | 112 | `result-track:c976c03e113094d6d7812c54c15d90cda665863cb3cbc19abb60f0c6d911fe0d` |
| 6 | `theorem` | [integrateInterval1Core_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integrateinterval1core-correct--204dc13cf05bcb5039f83a1d.md) | 130 | `result-track:204dc13cf05bcb5039f83a1dd89897ae433c2a69717e887378eda23f3f841506` |
| 7 | `def` | [checkIntegralBoundsCore](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/checkintegralboundscore--5d67a8c5da9086729836a588.md) | 185 | `declaration-track:5d67a8c5da9086729836a58831649fb616224c9c17366928b44a9fda6becba5d` |
| 8 | `theorem` | [verify_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/verify-integral-bound--801c5670fe5a50ca567bfdc1.md) | 203 | `result-track:801c5670fe5a50ca567bfdc195d7c7d3855cfa0f9b13bd394c14a1d0edbd7187` |
| 9 | `def` | [getIntegralBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/getintegralbound--9b80e99dd40129a6dd3e9680.md) | 213 | `declaration-track:9b80e99dd40129a6dd3e96801662f8b8b336749dbc049295d2695f783a6fd194` |
| 10 | `theorem` | [integral_in_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integral-in-bound--88d9bd3cead20955fac7b6d9.md) | 219 | `result-track:88d9bd3cead20955fac7b6d923174441f32a2bc011f3b03118692d86934dcd62` |
| 11 | `def` | [integrateInterval1WithInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integrateinterval1withinv--f8eb2117b44afeb106bca429.md) | 232 | `declaration-track:f8eb2117b44afeb106bca4296fb828fffc7fe5dc08af6406511c9d90535352de` |
| 12 | `theorem` | [integrateInterval1WithInv_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integrateinterval1withinv-correct--1314c9277f6409dc03dacf4d.md) | 239 | `result-track:1314c9277f6409dc03dacf4da1f667d02a0617684ae547553f67d34c856cc35d` |
| 13 | `def` | [checkIntegralBoundsWithInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/checkintegralboundswithinv--ca058e2ea14decfeb1ffc55a.md) | 299 | `declaration-track:ca058e2ea14decfeb1ffc55a692f8bb7c5df8b27f8cf8061d7cefd4f9b66709c` |
| 14 | `theorem` | [verify_integral_bound_withInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/verify-integral-bound-withinv--0981193e2f492d65bd5bc324.md) | 310 | `result-track:0981193e2f492d65bd5bc32437cd02e93c98c3db7905c758c6f867b424bb454e` |
| 15 | `def` | [collectBoundsWithInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/collectboundswithinv--9e797e2a32084e642800e23d.md) | 333 | `declaration-track:9e797e2a32084e642800e23dc32dd95974b1681a89630ed7665f67b9eb9d657d` |
| 16 | `def` | [integratePartitionWithInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integratepartitionwithinv--ed465aeb9bf163e127adfeb1.md) | 342 | `declaration-track:ed465aeb9bf163e127adfeb1eedc70839542f2eca19a624e28294a03478aa099` |
| 17 | `theorem` | [collectBoundsWithInv_length](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/collectboundswithinv-length--bc27afc80f635f5aa75ecdb3.md) | 350 | `result-track:bc27afc80f635f5aa75ecdb326a2a9fd637c12a53578244ecc978a23b09b5a2c` |
| 18 | `theorem` | [collectBoundsWithInv_getElem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/collectboundswithinv-getelem--032c978c3ffe80433be77a4e.md) | 371 | `result-track:032c978c3ffe80433be77a4e536ceea08ae1288ecfac6f1636e7bbb49ddc286c` |
| 19 | `theorem` | [integral_subinterval_bounded_withInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integral-subinterval-bounded-withinv--2eea94471882f9c7ce100001.md) | 401 | `result-track:2eea94471882f9c7ce1000014d82d6b96cf37cd431dfee3eff1e09d476b832db` |
| 20 | `theorem` | [integratePartitionWithInv_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integratepartitionwithinv-correct--6cfd85efdfabb2982769c2cf.md) | 412 | `result-track:6cfd85efdfabb2982769c2cf125780dbd67355afb5ee9da8d679a4ee66a8dc6a` |
| 21 | `structure` | [AdaptiveResultWithInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/adaptiveresultwithinv--2b436553cb160ee202ed43ca.md) | 483 | `declaration-track:2b436553cb160ee202ed43ca144bcdba1eeeef47e1e573e45eadaf7001ebae09` |
| 22 | `def` | [adaptiveErrorEstimate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/adaptiveerrorestimate--fd1ebc021789fdc546836c3b.md) | 491 | `declaration-track:fd1ebc021789fdc546836c3b279e1fe6bf6c912c6eda6cd56944615bda958e35` |
| 23 | `def` | [integrateRefinedWithInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integraterefinedwithinv--1bf35ba03763c35d8ff75cef.md) | 495 | `declaration-track:1bf35ba03763c35d8ff75cef2dee3b7cf9e637d0b9682ceb510983414977063a` |
| 24 | `def` | [integrateAdaptiveAuxWithInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integrateadaptiveauxwithinv--b831a19af9f915db2df335e4.md) | 502 | `declaration-track:b831a19af9f915db2df335e4bc3829cc418f4c827248f7e9565935669b36a0e7` |
| 25 | `def` | [integrateAdaptiveWithInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integrateadaptivewithinv--957f17b81efa4b627a389e8d.md) | 532 | `declaration-track:957f17b81efa4b627a389e8dfc37b1f53d07e7089e12a8eb8460a1abd76da502` |
| 26 | `theorem` | [integrateRefinedWithInv_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integraterefinedwithinv-correct--b949e7a1ed4124fb7722e16d.md) | 539 | `result-track:b949e7a1ed4124fb7722e16d60c3768bed05049bc691e616c4b44ffd913c95c9` |
| 27 | `theorem` | [intervalIntegrable_splitMid_left_withInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/intervalintegrable-splitmid-left-withinv--151022e0eb31e998a4385861.md) | 547 | `result-track:151022e0eb31e998a4385861522cc2dc8061f84f06c49fe34288fdd89f0bcc01` |
| 28 | `theorem` | [intervalIntegrable_splitMid_right_withInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/intervalintegrable-splitmid-right-withinv--f2b51876963cadf852f61133.md) | 555 | `result-track:f2b51876963cadf852f61133e090c115b273b787c9e271f93bdd61f44ba19d84` |
| 29 | `theorem` | [integral_split_mid_withInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integral-split-mid-withinv--39e15c8e537febabcb4b60c0.md) | 563 | `result-track:39e15c8e537febabcb4b60c098a2d4a55f2e17925da8f9014ae8a1b9fe480db3` |
| 30 | `theorem` | [integrateAdaptiveAuxWithInv_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integrateadaptiveauxwithinv-correct--d8caefab23f5208032918699.md) | 576 | `result-track:d8caefab23f52080329186999db8cd551664545539859fe400fda5aca89a7269` |
| 31 | `theorem` | [integrateAdaptiveWithInv_correct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integrateadaptivewithinv-correct--5aa81de0d0b21f8150a463de.md) | 625 | `result-track:5aa81de0d0b21f8150a463deafa67514145065a58c61a4c94c2a93e0bb95a07b` |
| 32 | `def` | [checkIntegralAdaptiveLowerBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/checkintegraladaptivelowerbound--3a7b79848c57c8082580e972.md) | 636 | `declaration-track:3a7b79848c57c8082580e9728efd6af9c042f2af6dadd7609bfb1d7206c94130` |
| 33 | `def` | [checkIntegralAdaptiveUpperBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/checkintegraladaptiveupperbound--8de1dcd73722311c2bca4bee.md) | 644 | `declaration-track:8de1dcd73722311c2bca4bee68e6ded9a786ecfeef4285eaf39c960f0c104a78` |
| 34 | `theorem` | [integral_adaptive_lower_of_check](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integral-adaptive-lower-of-check--f202ee0b1cdddcd34e60065f.md) | 651 | `result-track:f202ee0b1cdddcd34e60065f72ed51908eedd22a03a4692b0e2a5b8ac3663b07` |
| 35 | `theorem` | [integral_adaptive_upper_of_check](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integral-adaptive-upper-of-check--ecf62f9ea1a9ca8a234b8208.md) | 667 | `result-track:ecf62f9ea1a9ca8a234b820857a76ae11b775060fcbfcce48c7abf668c772209` |
| 36 | `def` | [searchPartitionLowerAux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/searchpartitionloweraux--c1117bafc8b424e5885a6be6.md) | 698 | `declaration-track:c1117bafc8b424e5885a6be64b4ae8aaca61762f981999fb9c455d35237e3b52` |
| 37 | `def` | [searchPartitionLower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/searchpartitionlower--68057dafd40fcb5b812e2710.md) | 713 | `declaration-track:68057dafd40fcb5b812e2710b173d9cf3601ec05b2c25b01d209d51db59a71af` |
| 38 | `def` | [searchPartitionUpperAux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/searchpartitionupperaux--81430edbd6c9d8f97d582e60.md) | 718 | `declaration-track:81430edbd6c9d8f97d582e603d2975936b4e7d5a797a22e3dd13105d067406bd` |
| 39 | `def` | [searchPartitionUpper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/searchpartitionupper--c343000ca7ab0e88bd2c62ed.md) | 733 | `declaration-track:c343000ca7ab0e88bd2c62ed23823e6ccc3a35d173140d37a114cc6f1f51c1e3` |
| 40 | `def` | [checkIntegralSearchLowerBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/checkintegralsearchlowerbound--8a6a1d40ef4777e267b491d2.md) | 741 | `declaration-track:8a6a1d40ef4777e267b491d2cb64bbe6ac4a515366f5718100d62ff7368058f4` |
| 41 | `def` | [checkIntegralSearchUpperBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/checkintegralsearchupperbound--b1dc9e4cdcf666c822288e18.md) | 746 | `declaration-track:b1dc9e4cdcf666c822288e18a7c186421b59a21b971e4cea90aec0616e934f4b` |
| 42 | `theorem` | [searchPartitionLowerAux_spec](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/searchpartitionloweraux-spec--2f14cd461cf4260f4ddd0035.md) | 751 | `result-track:2f14cd461cf4260f4ddd003519d2ee5c1aeeb61635516aff97ac920960e3af41` |
| 43 | `theorem` | [searchPartitionUpperAux_spec](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/searchpartitionupperaux-spec--d9968a3afbf3edaf83ead612.md) | 773 | `result-track:d9968a3afbf3edaf83ead6124b76ee5214026438972a06999fb7e210ffcb010b` |
| 44 | `theorem` | [searchPartitionLowerAux_valid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/searchpartitionloweraux-valid--b4e85edb89f59f4a1517b7c6.md) | 795 | `result-track:b4e85edb89f59f4a1517b7c62fcb62ec7bd51013b9a88fd9ca9d202666221d63` |
| 45 | `theorem` | [searchPartitionUpperAux_valid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/searchpartitionupperaux-valid--fd601c23b21f9491831c0132.md) | 823 | `result-track:fd601c23b21f9491831c01328f93f2a78aadbbcfb0d19efb731688f9358bbb0f` |
| 46 | `theorem` | [integral_search_lower_of_check](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integral-search-lower-of-check--6ed78b75f2045c692b408c8e.md) | 851 | `result-track:6ed78b75f2045c692b408c8e8c172c975e60d5b9da3b32d0e4d7ebe6d519ddfe` |
| 47 | `theorem` | [integral_search_upper_of_check](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/declarations/integral-search-upper-of-check--2f0e5aa6cb321e79b8954995.md) | 866 | `result-track:2f0e5aa6cb321e79b895499506ced8cfb877e747fe71654869f7109fbe2c052b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
