# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CarrierGrid.Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef862603cb95ceb119d5977afaa20f841d512341",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef862603cb95ceb119d5977afaa20f841d512341`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean.json)

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
| 1 | `structure` | [NormalizedPoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/normalizedpoint--0ade5008413331c24e1d3756.md) | 26 | `declaration-track:0ade5008413331c24e1d3756e5434c4a682709ee21b233beabd2074cfee93c28` |
| 2 | `def` | [InClosedUnitInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/inclosedunitinterval--fa1582144f949995b41af338.md) | 32 | `declaration-track:fa1582144f949995b41af338dd408f144c5fcfd86582e398e5bc98759ffc3e2f` |
| 3 | `def` | [AxisSupports](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/axissupports--4292a377f9643966f76c3e41.md) | 37 | `declaration-track:4292a377f9643966f76c3e419d470cb1f17e4f38dc4745af867ab4a9a3833cd9` |
| 4 | `instance` | [axisSupportsDecidable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/axissupportsdecidable--5faf74494db3f34c86392d52.md) | 41 | `declaration-track:5faf74494db3f34c86392d5275a41a1522ee27bda1e5772c82d3e699a37521d1` |
| 5 | `def` | [axisCarriers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/axiscarriers--4ccb1ce86a3bd86c9882627a.md) | 48 | `declaration-track:4ccb1ce86a3bd86c9882627acb64a9f8be94c62ec2b723ea14fd811b41147565` |
| 6 | `def` | [ExactCarrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/exactcarrier--5d1013613688728298956d3a.md) | 53 | `declaration-track:5d1013613688728298956d3a6174eb17d972edda293afe70353fad5322c88f7f` |
| 7 | `instance` | [exactCarrierDecidablePred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/exactcarrierdecidablepred--0eebff580f1bfc0891951dc8.md) | 58 | `declaration-track:0eebff580f1bfc0891951dc8cae33023b24455ba8d1772fa356fd2d1d56390fa` |
| 8 | `def` | [carrierMultiplicity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/carriermultiplicity--0c17725988dbfa32b6a355cf.md) | 64 | `declaration-track:0c17725988dbfa32b6a355cf3f926ddfa34e7f2eeee9e434b7ab56217f4b3b20` |
| 9 | `def` | [AxisOriginMatches](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/axisoriginmatches--667a82fa694333f4e983b2f4.md) | 69 | `declaration-track:667a82fa694333f4e983b2f4baf7379a20f347bec59ff2d312987bc5e8501d64` |
| 10 | `def` | [OriginMatches](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/originmatches--50549cc6401bd95e8178942f.md) | 73 | `declaration-track:50549cc6401bd95e8178942f9c78e7775377e6c300b15ab2bc6a46baaada5c6b` |
| 11 | `theorem` | [mem_axisCarriers_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/mem-axiscarriers-iff--b91422bbc514a5f3934760c4.md) | 79 | `result-track:b91422bbc514a5f3934760c42417027826d35747aa0bcc12667c2776bf987871` |
| 12 | `theorem` | [exactCarrier_iff_axis_membership](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/exactcarrier-iff-axis-membership--1092a6818028c63fb0c02642.md) | 87 | `result-track:1092a6818028c63fb0c02642d84611c8e805017873097533d886909caaa5031c` |
| 13 | `def` | [exactCarrierEquivAxisCarriers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/exactcarrierequivaxiscarriers--d82b7cb6e3a5b2fc290cdf76.md) | 96 | `declaration-track:d82b7cb6e3a5b2fc290cdf767e73b9005262ad0e5be269e88a9903da797120cc` |
| 14 | `theorem` | [card_exactCarrier_eq_carrierMultiplicity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/card-exactcarrier-eq-carriermultiplicity--dc17e9374eeb1115137af19b.md) | 116 | `result-track:dc17e9374eeb1115137af19bc5d93889b7521168a5838cb3d5daed8d9bc897f1` |
| 15 | `theorem` | [axisOriginMatches_implies_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/axisoriginmatches-implies-support--01df8e8474c2114605ad1ab8.md) | 127 | `result-track:01df8e8474c2114605ad1ab893b572c4974e47bbebb9c8c46f6f10ef04a276f5` |
| 16 | `theorem` | [originMatches_implies_exactCarrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/originmatches-implies-exactcarrier--cb7482dc3f2fdc3bcab6ca69.md) | 137 | `result-track:cb7482dc3f2fdc3bcab6ca69197b7d1ddf5697b89a831403fdd29570f71aeb4f` |
| 17 | `inductive` | [InteriorAxisStratum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/interioraxisstratum--54147595770fe18a4a845b62.md) | 153 | `declaration-track:54147595770fe18a4a845b62137cacf22fe0d22cfb2b9aeb126dc12c70a5246a` |
| 18 | `def` | [InteriorAxisStratum.codimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/interioraxisstratum-codimension--25e4dc911dc724998cf281c3.md) | 162 | `declaration-track:25e4dc911dc724998cf281c39f5cf0d9e0cc0877df9b049620076c1ef97ad194` |
| 19 | `theorem` | [fin_eq_of_val_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/fin-eq-of-val-eq--d3ee98b7c0567f0827e313a8.md) | 168 | `result-track:d3ee98b7c0567f0827e313a857d8e1cbbc6f977c3d3e397feedc35d5caecbad5` |
| 20 | `theorem` | [axisCarriers_eq_singleton_of_cell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/axiscarriers-eq-singleton-of-cell--54715c3914c8a0010acd0b08.md) | 173 | `result-track:54715c3914c8a0010acd0b08633e65094d5d27f942edcf7679e85b2a5aede81c` |
| 21 | `theorem` | [axisCarriers_eq_pair_of_internalBoundary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/axiscarriers-eq-pair-of-internalboundary--bb56458facb1de7025ceccaa.md) | 200 | `result-track:bb56458facb1de7025ceccaadc6e7c13d3a6335dc4a01b5eb548202997237277` |
| 22 | `structure` | [InteriorGridStratum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/interiorgridstratum--4586da16a863ccc8afb8dbf4.md) | 235 | `declaration-track:4586da16a863ccc8afb8dbf407b15a3c29f618682b5e777726c1bbaa4fbdac30` |
| 23 | `def` | [InteriorGridStratum.codimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/interiorgridstratum-codimension--8ca6681f2cb67f1fbee2afd9.md) | 240 | `declaration-track:8ca6681f2cb67f1fbee2afd92526c10c9f0902dfdfe163f0022ab0505439ce46` |
| 24 | `theorem` | [carrierMultiplicity_eq_two_pow_codimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/carriermultiplicity-eq-two-pow-codimension--881c529a49af02fe53a04232.md) | 247 | `result-track:881c529a49af02fe53a04232a4d3ac87f9293d3209b2ddc999171f428b058237` |
| 25 | `def` | [center](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/center--16a7e3c1da416666ea51f8ba.md) | 292 | `declaration-track:16a7e3c1da416666ea51f8bada70419b2e312b8d3433531ba9a50601101eccfa` |
| 26 | `def` | [oddCenterIndex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/oddcenterindex--31b6fa2c3e2d7c0e7012c576.md) | 294 | `declaration-track:31b6fa2c3e2d7c0e7012c576ebb171e2ffe752c3ab985b515f7b84b69f15086f` |
| 27 | `def` | [evenCenterLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/evencenterleft--850d692c4a201c707f0928e2.md) | 297 | `declaration-track:850d692c4a201c707f0928e2f38af0d70d37ada47caae2305ff262ed843bf563` |
| 28 | `def` | [evenCenterRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/evencenterright--0b4d2b673774d8a18cbf035e.md) | 300 | `declaration-track:0b4d2b673774d8a18cbf035e003de9e5c8f1447398adc9eab2089516e9d85174` |
| 29 | `theorem` | [odd_center_axisCarriers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/odd-center-axiscarriers--980c7ede321804122fb45748.md) | 304 | `result-track:980c7ede321804122fb457484888a66b7b4bea1c551408312593d3cd18c89e2f` |
| 30 | `theorem` | [even_center_axisCarriers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/even-center-axiscarriers--6dc898b2793b412c139f074b.md) | 315 | `result-track:6dc898b2793b412c139f074b65e3877d8ce06b6a6f6b204b37c24752ad2d8c8c` |
| 31 | `theorem` | [odd_center_carrierMultiplicity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/odd-center-carriermultiplicity--d776b5cd2d44f1e2ce2e4a71.md) | 325 | `result-track:d776b5cd2d44f1e2ce2e4a717e4673ae21998a413f5dd99fa3d5aa2a162ccd39` |
| 32 | `theorem` | [even_center_carrierMultiplicity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/even-center-carriermultiplicity--95517019db37e4f2125d98c0.md) | 331 | `result-track:95517019db37e4f2125d98c0a4cafe8e07319905631875dfa98cdc2a53151d3a` |
| 33 | `theorem` | [odd_center_axisOriginMatches_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/odd-center-axisoriginmatches-iff--c18990935da04dbf5ba5e438.md) | 344 | `result-track:c18990935da04dbf5ba5e43854eff763c594eaca4e9700146107e0f92ed21436` |
| 34 | `theorem` | [even_center_axisOriginMatches_false](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/declarations/even-center-axisoriginmatches-false--5ac39dafd9d9c4a3e7f9c82f.md) | 365 | `result-track:5ac39dafd9d9c4a3e7f9c82f818038c78f73e53977bf8ac28e65b1e980419e40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
