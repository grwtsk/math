# Verification target: GRWTSK.Analysis.MeasureTheory.Measure.Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c01e468cbfdfa507caec45ee2ac2006321c4b5b",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c01e468cbfdfa507caec45ee2ac2006321c4b5b`.

Source path: `GRWTSK/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Haar.InnerProductSpace` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/instance--4ed55bd81f176bdbe87f1f46.md) | 51 | `declaration-track:4ed55bd81f176bdbe87f1f4640691a1a564de71d0fe6614e8ff94cb841dadb63` |
| 2 | `def` | [MeasureTheory.Measure.euclideanHausdorffMeasure](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/measuretheory-measure-euclideanhausdorffmeasure--ff5f77df85ef08e2468eadcb.md) | 65 | `declaration-track:ff5f77df85ef08e2468eadcba365cb25affaad79cf2771cba7255dbb6d8a250a` |
| 3 | `theorem` | [MeasureTheory.Measure.euclideanHausdorffMeasure_def](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/measuretheory-measure-euclideanhausdorffmeasure-def--cc53260d4f28f03f1f15879e.md) | 71 | `result-track:cc53260d4f28f03f1f15879e6d7133e3f2c8a2364b1790b6f032426b1f792901` |
| 4 | `theorem` | [MeasureTheory.Measure.euclideanHausdorffMeasure_zero](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/measuretheory-measure-euclideanhausdorffmeasure-zero--3ed39fbb75eaf1cbee9d30e5.md) | 79 | `result-track:3ed39fbb75eaf1cbee9d30e54a2d238b933e2a464a6b07af77e7688ff2caeed6` |
| 5 | `theorem` | [MeasureTheory.Measure.addHaarScalarFactor_volume_hausdorffMeasure_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/measuretheory-measure-addhaarscalarfactor-volume-hausdorffmeasure-ne-zer--e3c5190987807332af2b5ef7.md) | 93 | `result-track:e3c5190987807332af2b5ef79b5ccd011251dba737ce2c4b1324be8acc8e6832` |
| 6 | `instance` | [MeasureTheory.isAddHaarMeasure_euclideanHausdorffMeasure](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/measuretheory-isaddhaarmeasure-euclideanhausdorffmeasure--9512b71b9fab0ad38f35872d.md) | 101 | `declaration-track:9512b71b9fab0ad38f35872d8e786d8f0d9ee404dd0eeeb05f4665d8e6dc78ad` |
| 7 | `theorem` | [MeasureTheory.Measure.euclideanHausdorffMeasure_zero_or_top](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/measuretheory-measure-euclideanhausdorffmeasure-zero-or-top--98ceb91c204fb2d3d47e2c81.md) | 111 | `result-track:98ceb91c204fb2d3d47e2c813e29b5613ec6585cd432c6d0163395d72b8c7386` |
| 8 | `theorem` | [IsometryEquiv.measurePreserving_euclideanHausdorffMeasure](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/isometryequiv-measurepreserving-euclideanhausdorffmeasure--cb68256d9505a4bd192c9021.md) | 124 | `result-track:cb68256d9505a4bd192c9021a8c735ec63c8832c8f588bc58ad4194124cbc981` |
| 9 | `theorem` | [Isometry.euclideanHausdorffMeasure_image](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/isometry-euclideanhausdorffmeasure-image--02127cfc9945de5c0492b6bc.md) | 128 | `result-track:02127cfc9945de5c0492b6bcd23a4c60cf42870e092b499f7db994be478012c8` |
| 10 | `theorem` | [Isometry.euclideanHausdorffMeasure_preimage](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/isometry-euclideanhausdorffmeasure-preimage--7b60d864bb8c2c6bdb250875.md) | 133 | `result-track:7b60d864bb8c2c6bdb25087549486790e688fa03a9387ed189e9f4c9c908257b` |
| 11 | `theorem` | [Isometry.map_euclideanHausdorffMeasure](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/isometry-map-euclideanhausdorffmeasure--35af99f126c81af7f2c6d0f7.md) | 138 | `result-track:35af99f126c81af7f2c6d0f7854dc0408be21385e634e829a2434f334b0f4811` |
| 12 | `theorem` | [MeasureTheory.Measure.euclideanHausdorffMeasure_smul₀](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/measuretheory-measure-euclideanhausdorffmeasure-smul--eeb7191a552a276fea42c1f3.md) | 149 | `result-track:eeb7191a552a276fea42c1f3938f0fa6a8d5b44af0856b8449c14f177126178d` |
| 13 | `theorem` | [MeasureTheory.euclideanHausdorffMeasure_homothety_image](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/measuretheory-euclideanhausdorffmeasure-homothety-image--8f6e7471979fcca7971b134b.md) | 161 | `result-track:8f6e7471979fcca7971b134b6f01f298148de7c4ce9a779b6f33d71ef3864e43` |
| 14 | `theorem` | [MeasureTheory.euclideanHausdorffMeasure_homothety_preimage](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/measuretheory-euclideanhausdorffmeasure-homothety-preimage--40f8d43f9116b8ee82995134.md) | 167 | `result-track:40f8d43f9116b8ee829951347c500f4e7589bb6d900876892036ffddf99efc24` |
| 15 | `theorem` | [EuclideanSpace.euclideanHausdorffMeasure_eq_volume](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/euclideanspace-euclideanhausdorffmeasure-eq-volume--32a4781d1101f71e09884001.md) | 184 | `result-track:32a4781d1101f71e098840015a87c182cd1375d80d403af14f7c7f9d68225820` |
| 16 | `theorem` | [InnerProductSpace.euclideanHausdorffMeasure_eq_volume](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/innerproductspace-euclideanhausdorffmeasure-eq-volume--27e555c2a45b2203f9e6e186.md) | 188 | `result-track:27e555c2a45b2203f9e6e1862ac65c408c3fb6a278c042d94f1fd93bbbf30415` |
| 17 | `theorem` | [EuclideanGeometry.euclideanHausdorffMeasure_eq](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/euclideangeometry-euclideanhausdorffmeasure-eq--990a4ecb6cc316a25dc05500.md) | 202 | `result-track:990a4ecb6cc316a25dc05500fca14089ef5ecd748cda30c3e112af79b131c749` |
| 18 | `theorem` | [EuclideanGeometry.measurePreserving_vaddConst](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/euclideangeometry-measurepreserving-vaddconst--fe4903f3d257396b08d3886a.md) | 209 | `result-track:fe4903f3d257396b08d3886ab248f4aa25da8baf88a7ac85717631b2f3a1cc5c` |
| 19 | `theorem` | [AffineSubspace.euclideanHausdorffMeasure_coe_image](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/affinesubspace-euclideanhausdorffmeasure-coe-image--5d8dac01915473b276ab9e05.md) | 221 | `result-track:5d8dac01915473b276ab9e05d773eaad89f5742341e9c34695cace8b52b42f9a` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/instance--14356d431c451477de403259.md) | 229 | `declaration-track:14356d431c451477de403259738d027d6bc57f02c9af4750521e72d5e57199dd` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/instance--c5f8651b4ff9d353cf5bbfed.md) | 234 | `declaration-track:c5f8651b4ff9d353cf5bbfedfd63e1b875cc3fb32620d24bbbe5307449f935b8` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/instance--27b2b846a9f7bc8fa6a0631a.md) | 239 | `declaration-track:27b2b846a9f7bc8fa6a0631a93640792a2df0b9c4a2a51e4ced34d1c9c208e6f` |
| 23 | `def` | [Submodule.measurableEquivProd](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/submodule-measurableequivprod--6f17adbb7a5e1f21353f677c.md) | 255 | `declaration-track:6f17adbb7a5e1f21353f677c08bf8b8ada556c30f02da6f68febf74e4cffcf83` |
| 24 | `theorem` | [Submodule.measurableEquivProd_apply](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/submodule-measurableequivprod-apply--5a8c851be4e7678c394a9703.md) | 261 | `result-track:5a8c851be4e7678c394a97033f5c483f4c3f95f3eda58da8475f504a53644749` |
| 25 | `theorem` | [Submodule.measurableEquivProd_symm_apply](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/submodule-measurableequivprod-symm-apply--44ce8b5088ac97f448295596.md) | 267 | `result-track:44ce8b5088ac97f448295596c3eaf86d5f4622e76f5c587a810639101c04ee60` |
| 26 | `theorem` | [Submodule.measurePreserving_measurableEquivProd](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/submodule-measurepreserving-measurableequivprod--36ad8f2b482bbd7ae54e63b4.md) | 271 | `result-track:36ad8f2b482bbd7ae54e63b424db7bba997cb98370c604798152c021cb85d340` |
| 27 | `theorem` | [AffineSubspace.euclideanHausdorffMeasure_eq_lintegral](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/affinesubspace-euclideanhausdorffmeasure-eq-lintegral--6987adb8c0248fce38416b82.md) | 280 | `result-track:6987adb8c0248fce38416b82b9885d8a95a176e0bcedf96508e2dd75eda19160` |
| 28 | `theorem` | [EuclideanGeometry.euclideanHausdorffMeasure_eq_lintegral](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/declarations/euclideangeometry-euclideanhausdorffmeasure-eq-lintegral--36074240f7a69ad8f08c80cb.md) | 316 | `result-track:36074240f7a69ad8f08c80cb1c3c3df0f387010bbb02bc3ddd1dc4582de0ac1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
