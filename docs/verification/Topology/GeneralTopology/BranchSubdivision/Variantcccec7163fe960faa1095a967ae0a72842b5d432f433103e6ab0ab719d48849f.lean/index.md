# Verification target: GRWTSK.Topology.GeneralTopology.BranchSubdivision.Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "895b733bb679fb6a458800744e769385f6e54f2c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `895b733bb679fb6a458800744e769385f6e54f2c`.

Source path: `GRWTSK/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.ComplexAnalysis.RectangleContour` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [corner](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/declarations/corner--f39a47059c04ea80f8a0651f.md) | 46 | `declaration-track:f39a47059c04ea80f8a0651f2fd10c33963deb4f404a8a647b970765575fdf4b` |
| 2 | `theorem` | [corner_eq_add_mul_I](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/declarations/corner-eq-add-mul-i--32b491fd2df48631f35538df.md) | 49 | `result-track:32b491fd2df48631f35538dfd63098869241d6cbc6c38cdce58d8c645eacd4e6` |
| 3 | `def` | [horizontal](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/declarations/horizontal--c4e8d80b57d4d96276d24ff8.md) | 54 | `declaration-track:c4e8d80b57d4d96276d24ff82401c93280afc27e0664f298680700c7ce1bcba5` |
| 4 | `def` | [vertical](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/declarations/vertical--c68215c079e390a5b49bcaf4.md) | 58 | `declaration-track:c68215c079e390a5b49bcaf4892a2d66fdd415daf183380484f03313673ef98f` |
| 5 | `def` | [boundary](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/declarations/boundary--59369643a385f22a5398e967.md) | 62 | `declaration-track:59369643a385f22a5398e96742ea8ed2a4f0368b883df83ee48ba0c7eae09829` |
| 6 | `theorem` | [boundary_eq_rectangleBoundaryIntegral](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/declarations/boundary-eq-rectangleboundaryintegral--77a2ae9229d02f34e3cd9dbd.md) | 66 | `result-track:77a2ae9229d02f34e3cd9dbd29d9ebe44199f6b94cf734e6f6b0c83c0da4d457` |
| 7 | `theorem` | [horizontal_intervalIntegrable_of_continuousOn](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/declarations/horizontal-intervalintegrable-of-continuouson--6d035a6d91ef82dea498a186.md) | 73 | `result-track:6d035a6d91ef82dea498a186a6188a35c58c25f4d11071b14173eb98fa05206a` |
| 8 | `theorem` | [vertical_intervalIntegrable_of_continuousOn](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/declarations/vertical-intervalintegrable-of-continuouson--36d48590cfbe9b7aaa9bcc18.md) | 91 | `result-track:36d48590cfbe9b7aaa9bcc18dade0132d7ee125ff0cf535e146cfe69d0143fea` |
| 9 | `theorem` | [horizontal_add_three](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/declarations/horizontal-add-three--45d9002417000f884647175f.md) | 109 | `result-track:45d9002417000f884647175f01e3e5fa1a14b31e7b27b2316a47ca2bda5cf433` |
| 10 | `theorem` | [vertical_add_three](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/declarations/vertical-add-three--f0d41957914e4267a069034e.md) | 141 | `result-track:f0d41957914e4267a069034e6af22556fea5c56e37c7a89f710b763430842c31` |
| 11 | `theorem` | [four_rectangles_boundary_sum](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/declarations/four-rectangles-boundary-sum--0ee086ae72b17ce5761a3675.md) | 170 | `result-track:0ee086ae72b17ce5761a3675d1a88a444206cf0bbfe01cc96e25ecdc207cd4e3` |
| 12 | `theorem` | [rectangleBoundaryIntegral_eq_innerRectangle](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/declarations/rectangleboundaryintegral-eq-innerrectangle--91f043a7838e668509357fdd.md) | 218 | `result-track:91f043a7838e668509357fdd893f521ec5a589338dbfb9ebda3c9f8dd2d24379` |
| 13 | `theorem` | [rectangleBoundaryIntegral_eq_innerRectangle_of_continuousOn](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/declarations/rectangleboundaryintegral-eq-innerrectangle-of-continuouson--b71b2870f8401cc362ae4877.md) | 253 | `result-track:b71b2870f8401cc362ae487765788fcc5abf8bacf72eb01b858c5f96404b098a` |
| 14 | `structure` | [OrderedRectangle](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/declarations/orderedrectangle--496192eb86069d791ce14d92.md) | 299 | `declaration-track:496192eb86069d791ce14d92563b3f83b2f164cc7f2cb82b739826ad6725db1d` |
| 15 | `def` | [lowerCorner](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/declarations/lowercorner--169e761790e0379fe1ff80ce.md) | 309 | `declaration-track:169e761790e0379fe1ff80ceb03a516d122bf0af11b028ebc5767a7472b1c3f1` |
| 16 | `def` | [upperCorner](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/declarations/uppercorner--7556150f24f70842845ec9dc.md) | 311 | `declaration-track:7556150f24f70842845ec9dc20607e523748976b232bd47d192f5398c6fafc0b` |
| 17 | `def` | [boundaryIntegral](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/declarations/boundaryintegral--1fa5115665242d5a621c1419.md) | 313 | `declaration-track:1fa5115665242d5a621c1419dd4407a3395236b94624c460b8a9dc1e0a8d3424` |
| 18 | `structure` | [Contains](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/declarations/contains--a9fe381aa626dc28eee61b8a.md) | 317 | `declaration-track:a9fe381aa626dc28eee61b8abbb02b7ef95c4f63850ad8287586a66b4766509b` |
| 19 | `theorem` | [boundaryIntegral_eq_inner](../../../../../mathematics/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/declarations/boundaryintegral-eq-inner--dab30db5f50f09e8b144e719.md) | 326 | `result-track:dab30db5f50f09e8b144e71955e445b641464e827eae89b102b40be9ecba5b96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
