# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CarrierGrid.Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "532352edb4c09a07b85ea4a479de3d907284722c",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `532352edb4c09a07b85ea4a479de3d907284722c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GridCell` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NormalizedPoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/normalizedpoint--5479e0d0d2d19a99f89d1bb8.md) | 26 | `declaration-track:5479e0d0d2d19a99f89d1bb8328a3d008a58c02a3ba5254fc499b9fae13b65e6` |
| 2 | `def` | [InClosedUnitInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/inclosedunitinterval--02e1de4b55a7a09e85edd518.md) | 32 | `declaration-track:02e1de4b55a7a09e85edd5189aff61789cba85612d1c2ad796a213914e644030` |
| 3 | `def` | [AxisSupports](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/axissupports--3e56bdd4d2db1eb7e2178f7b.md) | 37 | `declaration-track:3e56bdd4d2db1eb7e2178f7bdab7351d6ab0dfb7d69b85e374d5bccf9aad27e3` |
| 4 | `instance` | [axisSupportsDecidable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/axissupportsdecidable--eefa4f49f1730ade5dc89119.md) | 41 | `declaration-track:eefa4f49f1730ade5dc8911908f13c547da9fa3850ab5507820bba273cba0848` |
| 5 | `def` | [axisCarriers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/axiscarriers--cd600e8b1553c89e1f51bb7f.md) | 48 | `declaration-track:cd600e8b1553c89e1f51bb7f8d06a473bb1ac099921028f98ab1d0d779fa313d` |
| 6 | `def` | [ExactCarrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/exactcarrier--6a74f3e0434c0de26172cfdc.md) | 53 | `declaration-track:6a74f3e0434c0de26172cfdc765da92f9fc3767bd773ac369dd138e378f93e96` |
| 7 | `instance` | [exactCarrierDecidablePred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/exactcarrierdecidablepred--dad290179b89e1fb3e6e5992.md) | 58 | `declaration-track:dad290179b89e1fb3e6e5992e04d7ce35c06a1816c0fe1bc3bb7f6cc2a3aebe9` |
| 8 | `def` | [carrierMultiplicity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/carriermultiplicity--cd7dad7ebc4235dcf7d2ca25.md) | 64 | `declaration-track:cd7dad7ebc4235dcf7d2ca25083cb6c2d4dc1d2bd9533e9acf4f41c4b0dedeea` |
| 9 | `def` | [AxisOriginMatches](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/axisoriginmatches--c076df9224b3035ab8deb4be.md) | 69 | `declaration-track:c076df9224b3035ab8deb4be412ec6983df4622bdb4200e1c02c0562c2f3855e` |
| 10 | `def` | [OriginMatches](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/originmatches--9d24d7fe3452a7bec906f77e.md) | 73 | `declaration-track:9d24d7fe3452a7bec906f77e8827edb17b83d8545939f72ce28277511301e4bb` |
| 11 | `theorem` | [mem_axisCarriers_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/mem-axiscarriers-iff--74437b11a5f2035efbfa7db8.md) | 79 | `result-track:74437b11a5f2035efbfa7db8302e6bb7a3693d2f6f9139cfe5c61434fcfd599f` |
| 12 | `theorem` | [exactCarrier_iff_axis_membership](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/exactcarrier-iff-axis-membership--0ac501c510b64afce878a2ab.md) | 87 | `result-track:0ac501c510b64afce878a2ab61decef96aa4371624f1621e488461b763edc86b` |
| 13 | `def` | [exactCarrierEquivAxisCarriers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/exactcarrierequivaxiscarriers--43fec7ae5ab80617b96fd541.md) | 96 | `declaration-track:43fec7ae5ab80617b96fd541dd825c04202d04c6760e2bcfa66f203fddaf2978` |
| 14 | `theorem` | [card_exactCarrier_eq_carrierMultiplicity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/card-exactcarrier-eq-carriermultiplicity--7864fa5f9b2c6714100bb331.md) | 116 | `result-track:7864fa5f9b2c6714100bb3314469dc82e9437f4e86c0b04d599ad2420bc58359` |
| 15 | `theorem` | [axisOriginMatches_implies_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/axisoriginmatches-implies-support--0188cb69d2e6b5f2a4192e2e.md) | 127 | `result-track:0188cb69d2e6b5f2a4192e2e0fe1f22adea4c57feb31ec1957fd2d026d1a9399` |
| 16 | `theorem` | [originMatches_implies_exactCarrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/originmatches-implies-exactcarrier--dfb875cf7abcdcc0e67a36fe.md) | 137 | `result-track:dfb875cf7abcdcc0e67a36feee07534cc3e26147eead20ee233abdb93f57c117` |
| 17 | `inductive` | [InteriorAxisStratum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/interioraxisstratum--c5dcbee7a92ed63a5737ff57.md) | 153 | `declaration-track:c5dcbee7a92ed63a5737ff5763c158b4c78b28f0cd79fbcf5424df02fa764e94` |
| 18 | `def` | [InteriorAxisStratum.codimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/interioraxisstratum-codimension--26d74365220acb7bf4d2bb22.md) | 162 | `declaration-track:26d74365220acb7bf4d2bb22db561ab73fe88d92667adf0aa0aeaa6cf729c69e` |
| 19 | `theorem` | [fin_eq_of_val_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/fin-eq-of-val-eq--b8d555373efbcf4756f5b668.md) | 168 | `result-track:b8d555373efbcf4756f5b6682b0b870744266f272757ee9f120810103a9915da` |
| 20 | `theorem` | [axisCarriers_eq_singleton_of_cell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/axiscarriers-eq-singleton-of-cell--a7732533c90865b6638d1c65.md) | 173 | `result-track:a7732533c90865b6638d1c657858f2ba8562533bff19f88971267a3e9ddcfb2c` |
| 21 | `theorem` | [axisCarriers_eq_pair_of_internalBoundary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/axiscarriers-eq-pair-of-internalboundary--b0598b5a599ff9941251c811.md) | 200 | `result-track:b0598b5a599ff9941251c811b20410bb167be7d9f7588e942a85270daeed1a4b` |
| 22 | `structure` | [InteriorGridStratum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/interiorgridstratum--7101ddfa3c92b118fea4173d.md) | 235 | `declaration-track:7101ddfa3c92b118fea4173d6e0d1aeb1df82072b24c7a5ea9c3533d211d531d` |
| 23 | `def` | [InteriorGridStratum.codimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/interiorgridstratum-codimension--8d5beef571e313f7036297f1.md) | 240 | `declaration-track:8d5beef571e313f7036297f151159bf8b9d3e2e267aeb7c04af735cbc5f11d18` |
| 24 | `theorem` | [carrierMultiplicity_eq_two_pow_codimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/carriermultiplicity-eq-two-pow-codimension--0cf3bc683ee6e0d954e8f131.md) | 247 | `result-track:0cf3bc683ee6e0d954e8f1315009709dd5505f497fd61c2ba55bb8caf81782c2` |
| 25 | `def` | [center](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/center--624fe23d35c9d10689486b19.md) | 292 | `declaration-track:624fe23d35c9d10689486b19dc8c9dd885291eb2000fbcef4d5efee2d47f38c7` |
| 26 | `def` | [oddCenterIndex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/oddcenterindex--8026bb2610466dab0d7c1333.md) | 294 | `declaration-track:8026bb2610466dab0d7c1333dd3ec20bef6ecfa7fdcb8d97d24634ae6c7faebe` |
| 27 | `def` | [evenCenterLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/evencenterleft--85a2c91ce5d85365405b398d.md) | 297 | `declaration-track:85a2c91ce5d85365405b398db287a1ee61963bdb5832f716acc139d51304dd5d` |
| 28 | `def` | [evenCenterRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/evencenterright--2d6e9c05ce8e28d2efaeed41.md) | 300 | `declaration-track:2d6e9c05ce8e28d2efaeed41bb15fa819ca934fa3c94cd7e7cbd829210ec7bd5` |
| 29 | `theorem` | [odd_center_axisCarriers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/odd-center-axiscarriers--14eee239fa57a93f7866644b.md) | 304 | `result-track:14eee239fa57a93f7866644b8490bcbea8b9d730a6fa6270f5a299fc1f861515` |
| 30 | `theorem` | [even_center_axisCarriers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/even-center-axiscarriers--1b2fc377aa69456bf5174734.md) | 315 | `result-track:1b2fc377aa69456bf51747349cbe8b08292d8be9d32e139a1099bd08591f2c90` |
| 31 | `theorem` | [odd_center_carrierMultiplicity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/odd-center-carriermultiplicity--e6c546fc77b4ce5ba3e27b44.md) | 325 | `result-track:e6c546fc77b4ce5ba3e27b4489951f10fa65d06a2ecc9aec65d42cdeea34f72d` |
| 32 | `theorem` | [even_center_carrierMultiplicity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/even-center-carriermultiplicity--0b012df920d700a1678046f4.md) | 331 | `result-track:0b012df920d700a1678046f4582b7106f3e841bd2aa6f882babb29bb1d7c18e6` |
| 33 | `theorem` | [odd_center_axisOriginMatches_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/odd-center-axisoriginmatches-iff--7a58c43bab4a1a68c55f0502.md) | 344 | `result-track:7a58c43bab4a1a68c55f0502e73a626176d1239a7d1a8d7be45c31b42326fdeb` |
| 34 | `theorem` | [even_center_axisOriginMatches_false](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/declarations/even-center-axisoriginmatches-false--299768d83616dc343d8feba3.md) | 365 | `result-track:299768d83616dc343d8feba3e0ad4d22659a05eaf85a4a948dd7a5747dd912e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
