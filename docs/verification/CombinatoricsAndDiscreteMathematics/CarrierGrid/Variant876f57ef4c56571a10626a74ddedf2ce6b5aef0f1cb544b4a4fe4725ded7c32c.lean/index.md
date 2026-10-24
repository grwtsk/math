# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CarrierGrid.Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12d82ed2af813090359f3c90581ce0c90f916569",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12d82ed2af813090359f3c90581ce0c90f916569`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GridCell` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NormalizedPoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/normalizedpoint--8849a9914f4b2f5486d6b713.md) | 18 | `declaration-track:8849a9914f4b2f5486d6b713100338c299927fc65a1f6faa1bd478532fc5e756` |
| 2 | `def` | [InClosedUnitInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/inclosedunitinterval--c7244729bb2a565145bd3999.md) | 24 | `declaration-track:c7244729bb2a565145bd399970a30821dbcc726a0a720e262ee5d496f0f8ad95` |
| 3 | `def` | [AxisSupports](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/axissupports--306e4f6db00f2559c5d78262.md) | 29 | `declaration-track:306e4f6db00f2559c5d78262909337372b172b691baa7cce9220ffd7bc9b8cb5` |
| 4 | `instance` | [axisSupportsDecidable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/axissupportsdecidable--4c4a942d86739e18aaa1493b.md) | 33 | `declaration-track:4c4a942d86739e18aaa1493b8e121dbe71bf5a28e857bc329a082a783d5a0056` |
| 5 | `def` | [axisCarriers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/axiscarriers--4c7be313aaa2e7860722f31e.md) | 40 | `declaration-track:4c7be313aaa2e7860722f31e198bbe4de09a0f93b2919dcfdecae85d27319bb1` |
| 6 | `def` | [ExactCarrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/exactcarrier--3277fc02ec91106ca822e9f1.md) | 45 | `declaration-track:3277fc02ec91106ca822e9f1a266045b8c26e8c14883316d02686de4c0a35f55` |
| 7 | `instance` | [exactCarrierDecidablePred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/exactcarrierdecidablepred--57d87fa1e4d6e6b89224f69a.md) | 50 | `declaration-track:57d87fa1e4d6e6b89224f69a73d3ed67fe92c1409d98e92a4ac9eee93b88298a` |
| 8 | `def` | [carrierMultiplicity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/carriermultiplicity--cde3b7366ff11eb3faa22c7d.md) | 56 | `declaration-track:cde3b7366ff11eb3faa22c7d937908b945ced01d0c282043b76fd27e3548483e` |
| 9 | `def` | [AxisOriginMatches](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/axisoriginmatches--84784e35a22670fcfda219dd.md) | 61 | `declaration-track:84784e35a22670fcfda219ddda03922fed38b4898b358fe04584be2a063d2068` |
| 10 | `def` | [OriginMatches](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/originmatches--07edbb12f32bce256ae6afa3.md) | 65 | `declaration-track:07edbb12f32bce256ae6afa37f2dc27c05730fd57db130166b2028f8a17314d6` |
| 11 | `theorem` | [mem_axisCarriers_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/mem-axiscarriers-iff--a1168af497e16547b27b17a2.md) | 71 | `result-track:a1168af497e16547b27b17a2711f60908b13fdd27efeed2466a354974de21d57` |
| 12 | `theorem` | [exactCarrier_iff_axis_membership](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/exactcarrier-iff-axis-membership--cc6be1c7af04df6d1d84f5dc.md) | 79 | `result-track:cc6be1c7af04df6d1d84f5dcff845757ffdc3cf39aa98f851223aa550b032c42` |
| 13 | `def` | [exactCarrierEquivAxisCarriers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/exactcarrierequivaxiscarriers--8bb1c014cf13c061297d7c5a.md) | 88 | `declaration-track:8bb1c014cf13c061297d7c5a29937dd5dec3cd22e5034a1e4dde96975b9733f7` |
| 14 | `theorem` | [card_exactCarrier_eq_carrierMultiplicity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/card-exactcarrier-eq-carriermultiplicity--2890a118862a1287b96114d5.md) | 108 | `result-track:2890a118862a1287b96114d540dc6f6109975a5201716f10a811bc90867ba10b` |
| 15 | `theorem` | [axisOriginMatches_implies_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/axisoriginmatches-implies-support--6ff9e31552af37dd62f1808e.md) | 119 | `result-track:6ff9e31552af37dd62f1808ee5eefdd062d7299b7f91ad0f54103dabf2201f2c` |
| 16 | `theorem` | [originMatches_implies_exactCarrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/originmatches-implies-exactcarrier--296a891c697aadc7f53be395.md) | 129 | `result-track:296a891c697aadc7f53be395a4de8c92619abbd55852d34e52dfe81ad4265ea3` |
| 17 | `inductive` | [InteriorAxisStratum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/interioraxisstratum--ab995f4bbe581fe1d5050403.md) | 145 | `declaration-track:ab995f4bbe581fe1d5050403d63897317c7217cf3b68fa7bd1aba3f60dad245b` |
| 18 | `def` | [InteriorAxisStratum.codimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/interioraxisstratum-codimension--3b0a9ce97432eeb644e0290d.md) | 154 | `declaration-track:3b0a9ce97432eeb644e0290d8ef9e99f7359ccc7afb00ecbe9b00de3c6e1bb60` |
| 19 | `theorem` | [fin_eq_of_val_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/fin-eq-of-val-eq--303a63174f7ec22cfbb1abb6.md) | 160 | `result-track:303a63174f7ec22cfbb1abb6dcadd4852b939a4ad7d2478439a15989d1471c22` |
| 20 | `theorem` | [axisCarriers_eq_singleton_of_cell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/axiscarriers-eq-singleton-of-cell--504e594676a105da0ec74097.md) | 165 | `result-track:504e594676a105da0ec740970222bdc01c45636d6071babe2cc2c9a05f770a28` |
| 21 | `theorem` | [axisCarriers_eq_pair_of_internalBoundary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/axiscarriers-eq-pair-of-internalboundary--d42defecdd1fa728dfff3274.md) | 192 | `result-track:d42defecdd1fa728dfff32749f424dcdcd4514c07bd003dc6423b7f0fbd711f3` |
| 22 | `structure` | [InteriorGridStratum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/interiorgridstratum--521867a66cf5e1bdca04ff40.md) | 227 | `declaration-track:521867a66cf5e1bdca04ff40b9365f9346461fbbaf7683f2ffc85780bd7576fe` |
| 23 | `def` | [InteriorGridStratum.codimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/interiorgridstratum-codimension--e1f7b65d5008ccc60a43bffe.md) | 232 | `declaration-track:e1f7b65d5008ccc60a43bffe69a035b462e2aa87349e40e1544015708deaf307` |
| 24 | `theorem` | [carrierMultiplicity_eq_two_pow_codimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/carriermultiplicity-eq-two-pow-codimension--8f9b21dbc8b37c4c84be0592.md) | 239 | `result-track:8f9b21dbc8b37c4c84be0592bc19a8cccaab4dfe017bb31cb8b3858ab570a9d1` |
| 25 | `def` | [center](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/center--b87958a27806db0a4183429c.md) | 284 | `declaration-track:b87958a27806db0a4183429ccffa19c28ce12efc6b83d7d29a5b8b267310ac73` |
| 26 | `def` | [oddCenterIndex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/oddcenterindex--0dbca3093fea7f27c3f0a601.md) | 286 | `declaration-track:0dbca3093fea7f27c3f0a601bd31fa7c383d66ad1610dcb9461aa46eb96a41e2` |
| 27 | `def` | [evenCenterLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/evencenterleft--e664a69d95dbdcc0f3f05d13.md) | 289 | `declaration-track:e664a69d95dbdcc0f3f05d13bcad0d5dfa10c77eb2125c630236bcf83e7194bd` |
| 28 | `def` | [evenCenterRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/evencenterright--b583ff33016c8512f6e8d40c.md) | 292 | `declaration-track:b583ff33016c8512f6e8d40c1d072586f33b19d6ea6be446eb17385f0653550e` |
| 29 | `theorem` | [odd_center_axisCarriers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/odd-center-axiscarriers--8365c870b3353d84cc85f9ac.md) | 296 | `result-track:8365c870b3353d84cc85f9ace36a53f71fcf4054e006d69e5b40d1049ea9a32e` |
| 30 | `theorem` | [even_center_axisCarriers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/even-center-axiscarriers--f7e42f54cc376e876357b92a.md) | 307 | `result-track:f7e42f54cc376e876357b92a5b0c6d1fa9ce57e6a08a0bde69caa98a79c8193d` |
| 31 | `theorem` | [odd_center_carrierMultiplicity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/odd-center-carriermultiplicity--8b2404c815a3f6d981a8f8fd.md) | 317 | `result-track:8b2404c815a3f6d981a8f8fdf4739d4a8aa40d4721d166fd20a8c757f68a66ae` |
| 32 | `theorem` | [even_center_carrierMultiplicity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/even-center-carriermultiplicity--4694040ff2d1ba9a95670d7c.md) | 323 | `result-track:4694040ff2d1ba9a95670d7ca0654a2cbaf813a7fc8e1603f223d08ed1f53b9c` |
| 33 | `theorem` | [odd_center_axisOriginMatches_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/odd-center-axisoriginmatches-iff--9ede1d7bb9ea0a224a10a54a.md) | 336 | `result-track:9ede1d7bb9ea0a224a10a54a8a48a0ea9c67401e44f5b6a1d9874360389550e5` |
| 34 | `theorem` | [even_center_axisOriginMatches_false](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/declarations/even-center-axisoriginmatches-false--3dfda0ca9f2e6f69d0267fbb.md) | 357 | `result-track:3dfda0ca9f2e6f69d0267fbbd2bf7ee2a62954a24c17cd51b8c509ea65fbe3ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
