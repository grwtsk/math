# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CarrierGrid.Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c150aa123482d10b5dfd8be666ae753b2ec3af31",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c150aa123482d10b5dfd8be666ae753b2ec3af31`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean.json)

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
| 1 | `structure` | [NormalizedPoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/normalizedpoint--d5670e49fa6029f30d00657c.md) | 18 | `declaration-track:d5670e49fa6029f30d00657c87f262d15136c8a7c5774b0e2aaea13d2e1a7643` |
| 2 | `def` | [InClosedUnitInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/inclosedunitinterval--cdefd88acaea93b8ee1436b3.md) | 24 | `declaration-track:cdefd88acaea93b8ee1436b3fefd7895717c203b1a1f5c0244d2386a9399afae` |
| 3 | `def` | [AxisSupports](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/axissupports--a63c14ca84355bdc23e6c6df.md) | 29 | `declaration-track:a63c14ca84355bdc23e6c6df5a6b0c59db16c7ab05ce709bcfaeb5fc07be9e9e` |
| 4 | `instance` | [axisSupportsDecidable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/axissupportsdecidable--8eafec63b4049b425eead610.md) | 33 | `declaration-track:8eafec63b4049b425eead6101e22dd72eae746c0fb6a6028330dead813da6d74` |
| 5 | `def` | [axisCarriers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/axiscarriers--d34c8d4a1a4f51faa99c46b6.md) | 40 | `declaration-track:d34c8d4a1a4f51faa99c46b6a5cd99cb1a3f47b5b8ba95b1cd7c3aaa83678ca2` |
| 6 | `def` | [ExactCarrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/exactcarrier--60b0a15ee1ba224cd8f92abb.md) | 45 | `declaration-track:60b0a15ee1ba224cd8f92abb08da4e59b3be57b2799058abc7f08ceafc00ff51` |
| 7 | `instance` | [exactCarrierDecidablePred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/exactcarrierdecidablepred--7e95d8baab1a6b7074eb032d.md) | 50 | `declaration-track:7e95d8baab1a6b7074eb032d19eb8c84442045d9c5ce71609aed56b054d80ffa` |
| 8 | `def` | [carrierMultiplicity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/carriermultiplicity--d55025210e5e02ed0037296f.md) | 56 | `declaration-track:d55025210e5e02ed0037296f300378c79239b85fafe0628699d2700bfcc868e7` |
| 9 | `def` | [AxisOriginMatches](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/axisoriginmatches--2957b1344477999aae07c7b1.md) | 61 | `declaration-track:2957b1344477999aae07c7b1cf1890d42f3198d9148445491d873725c430f14f` |
| 10 | `def` | [OriginMatches](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/originmatches--1b76f84cb07c5474b4e4305f.md) | 65 | `declaration-track:1b76f84cb07c5474b4e4305fcb795f7784c2a4ec7d026af3c5ab250ebe6cfc40` |
| 11 | `theorem` | [mem_axisCarriers_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/mem-axiscarriers-iff--08f2ab09baa40e0df532d0e0.md) | 71 | `result-track:08f2ab09baa40e0df532d0e0609a26cc87761677e506662d00b32783b94bc2ab` |
| 12 | `theorem` | [exactCarrier_iff_axis_membership](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/exactcarrier-iff-axis-membership--36ff67c82e4a1770208d6a62.md) | 79 | `result-track:36ff67c82e4a1770208d6a626fff818d41678b86be9fc74194202b458339e84f` |
| 13 | `def` | [exactCarrierEquivAxisCarriers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/exactcarrierequivaxiscarriers--63b856e42230b21934d47fbd.md) | 88 | `declaration-track:63b856e42230b21934d47fbdf9bf77376c0d1dbd9d0697dd5e45643b6ef904e7` |
| 14 | `theorem` | [card_exactCarrier_eq_carrierMultiplicity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/card-exactcarrier-eq-carriermultiplicity--bdd9b0ee4a08e08253f795ca.md) | 108 | `result-track:bdd9b0ee4a08e08253f795ca5f05181d924efffa41f4610c8f938b0e4c1bbfe0` |
| 15 | `theorem` | [axisOriginMatches_implies_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/axisoriginmatches-implies-support--0fa2663ba3eb4b7d99fe63c4.md) | 119 | `result-track:0fa2663ba3eb4b7d99fe63c4bd6a599a54e88bf4867e359eabcf284a00a8a75d` |
| 16 | `theorem` | [originMatches_implies_exactCarrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/originmatches-implies-exactcarrier--f62131b5893d5b113142be34.md) | 129 | `result-track:f62131b5893d5b113142be34245881dd0b6b0ade6bf49de5c06b286e67c5e6ea` |
| 17 | `inductive` | [InteriorAxisStratum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/interioraxisstratum--f24b3b1183bfa5513557e226.md) | 145 | `declaration-track:f24b3b1183bfa5513557e2264a855b814b48e12f9d7af6bbf2d34f867d2457c8` |
| 18 | `def` | [InteriorAxisStratum.codimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/interioraxisstratum-codimension--d584b879342f93915b57a8ed.md) | 154 | `declaration-track:d584b879342f93915b57a8ed1242bb55be2a289f0559615e5f3050e2b78de3ae` |
| 19 | `theorem` | [fin_eq_of_val_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/fin-eq-of-val-eq--ec22ebfcc88bbf243fa5455f.md) | 160 | `result-track:ec22ebfcc88bbf243fa5455fc558510ca1a4a76725f026ca241af24bacfa231f` |
| 20 | `theorem` | [axisCarriers_eq_singleton_of_cell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/axiscarriers-eq-singleton-of-cell--1720ff5063a5fb47b8431277.md) | 165 | `result-track:1720ff5063a5fb47b84312773d240b63ba5889eafcc4c450631d10bed6be14b5` |
| 21 | `theorem` | [axisCarriers_eq_pair_of_internalBoundary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/axiscarriers-eq-pair-of-internalboundary--dd93022ca4d4be2668e63413.md) | 192 | `result-track:dd93022ca4d4be2668e6341395261640053e86a1b0f5500516394dde02500787` |
| 22 | `structure` | [InteriorGridStratum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/interiorgridstratum--6fe5eb3e26e22ebbcc0a1e95.md) | 227 | `declaration-track:6fe5eb3e26e22ebbcc0a1e95ed36d31561e9729c060270584ac9ae67ff6c7b41` |
| 23 | `def` | [InteriorGridStratum.codimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/interiorgridstratum-codimension--0c256cd54f86eb6caf4a48f2.md) | 232 | `declaration-track:0c256cd54f86eb6caf4a48f2361f500d1119279b89b036d06e872f555c159086` |
| 24 | `theorem` | [carrierMultiplicity_eq_two_pow_codimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/carriermultiplicity-eq-two-pow-codimension--7dd601a8a53035d7a641d700.md) | 239 | `result-track:7dd601a8a53035d7a641d70097fa4e16f19dc145d85e547cbd6855b48622a57e` |
| 25 | `def` | [center](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/center--26be32d8f0d45b9c23425928.md) | 284 | `declaration-track:26be32d8f0d45b9c23425928f1350ea0e478e4f8b9dc77295e772fc30c1d6e57` |
| 26 | `def` | [oddCenterIndex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/oddcenterindex--c7b3c3a08fb1685493209dac.md) | 286 | `declaration-track:c7b3c3a08fb1685493209dacdf7a48e198ce0c90e4d0cdf4a440641d09112c78` |
| 27 | `def` | [evenCenterLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/evencenterleft--0010cb6426150b293c19a7c3.md) | 289 | `declaration-track:0010cb6426150b293c19a7c3473e2db3ba2c36aa12fd37e2e69014604782c0fd` |
| 28 | `def` | [evenCenterRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/evencenterright--2fc3e1527860c2080c689b02.md) | 292 | `declaration-track:2fc3e1527860c2080c689b02705613cc326b21b3a596cb40b4b7b60f41000649` |
| 29 | `theorem` | [odd_center_axisCarriers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/odd-center-axiscarriers--7b08cd168f2d0388b68b356c.md) | 296 | `result-track:7b08cd168f2d0388b68b356c748bdc23b63dd1dce8c44a882c10f6f1ce686c48` |
| 30 | `theorem` | [even_center_axisCarriers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/even-center-axiscarriers--78c349dbda24ecfb1d3f7efd.md) | 307 | `result-track:78c349dbda24ecfb1d3f7efd2e41c690463f4658d635e4c4e10138cefcf7c7b5` |
| 31 | `theorem` | [odd_center_carrierMultiplicity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/odd-center-carriermultiplicity--555479a3d6e10028d82c491c.md) | 317 | `result-track:555479a3d6e10028d82c491cbf133a037822a588a9d8b3180ecaa886d52bbede` |
| 32 | `theorem` | [even_center_carrierMultiplicity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/even-center-carriermultiplicity--96ca27f9719ea80cd0e4e133.md) | 323 | `result-track:96ca27f9719ea80cd0e4e133990d5809b52129fa9ed9e84378e8ddcbe182d244` |
| 33 | `theorem` | [odd_center_axisOriginMatches_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/odd-center-axisoriginmatches-iff--258c619ca1c9f8bfbbaeaff8.md) | 336 | `result-track:258c619ca1c9f8bfbbaeaff8a58a31ea8bd3bc03e4cbbe3a7948886d1a0bf659` |
| 34 | `theorem` | [even_center_axisOriginMatches_false](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/declarations/even-center-axisoriginmatches-false--e3eb565c883c59c2532f9ae6.md) | 357 | `result-track:e3eb565c883c59c2532f9ae638eb50b27cc721028fe84226d1bd3f45491d9e79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
