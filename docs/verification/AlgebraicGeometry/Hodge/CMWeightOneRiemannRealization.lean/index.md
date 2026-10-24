# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMWeightOneRiemannRealization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e632f5554fdc09dafe2880ed91b404169b0b3d99",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e632f5554fdc09dafe2880ed91b404169b0b3d99`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.Hodge.CMRiemannForm`](../../../../mathematics/AlgebraicGeometry/Hodge/CMRiemannForm.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.Hodge.CMRealRescaling`](../../../../mathematics/AlgebraicGeometry/Hodge/CMRealRescaling.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.Hodge.CMEmbeddingLines`](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEigenlines`](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WeightOneCMRealization](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization--7a7bd192e508855e36f6989f.md) | 55 | `declaration-track:7a7bd192e508855e36f6989f696ef9b1777eaeec342d51a1357207fba0bc5dd2` |
| 2 | `def` | [WeightOneCMRealization.H10](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-h10--f8e292a03ec51bce8db2107c.md) | 106 | `declaration-track:f8e292a03ec51bce8db2107c3542b59f743242b955a006c76ca1b389087c927c` |
| 3 | `def` | [WeightOneCMRealization.H01](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-h01--e82789a4e0ceb4e3025b507e.md) | 115 | `declaration-track:e82789a4e0ceb4e3025b507ea8566c91dcbb9d505a0e81597bbe94d9508e33f4` |
| 4 | `def` | [WeightOneCMRealization.actualWeil](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-actualweil--99d08447337a9f41e3c192c1.md) | 124 | `declaration-track:99d08447337a9f41e3c192c12b86f2b60827eace0f7e01d401e76affb0bd4514` |
| 5 | `theorem` | [WeightOneCMRealization.mem_H10_iff](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-mem-h10-iff--721026becbe25307a5ddd831.md) | 134 | `result-track:721026becbe25307a5ddd8314882fad4d8b68587429aa8414e5de147e85a91e7` |
| 6 | `theorem` | [WeightOneCMRealization.mem_H01_iff](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-mem-h01-iff--32ce56691754de508ad1a2b5.md) | 144 | `result-track:32ce56691754de508ad1a2b5c7dbe894592d96a6fd4535c5861dca5d338e3483` |
| 7 | `theorem` | [WeightOneCMRealization.actualWeil_H10](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-actualweil-h10--707973f726a17e62bb6049c9.md) | 154 | `result-track:707973f726a17e62bb6049c94fa99d7948ce68d8e5323ca614e47f34ad65c025` |
| 8 | `theorem` | [WeightOneCMRealization.actualWeil_H01](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-actualweil-h01--e45a472dc95cefe0a10a8c2a.md) | 168 | `result-track:e45a472dc95cefe0a10a8c2a88f46bc4217bbf69dbf5fb10f02948587b7ed39a` |
| 9 | `def` | [WeightOneCMRealization.typeSubspace](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-typesubspace--59a44b1fef5dc3ff45ed2e9f.md) | 182 | `declaration-track:59a44b1fef5dc3ff45ed2e9f32c46767e2c909cfc4b7f3bafba4e0f2399200a3` |
| 10 | `def` | [WeightOneCMRealization.IsOfType](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-isoftype--154f98f4457a11d697d6a724.md) | 192 | `declaration-track:154f98f4457a11d697d6a724b2f548c0d7e3da17561dd0161b19c867ecac5566` |
| 11 | `theorem` | [WeightOneCMRealization.isOfType_holomorphic_iff](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-isoftype-holomorphic-iff--ff39c3ffb2f41b7d888e6a41.md) | 201 | `result-track:ff39c3ffb2f41b7d888e6a41086d991b6ddd79dcf1080f2632ea78479e134d89` |
| 12 | `theorem` | [WeightOneCMRealization.isOfType_antiholomorphic_iff](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-isoftype-antiholomorphic-iff--e4748e86ca7f864ce7ac7da0.md) | 210 | `result-track:e4748e86ca7f864ce7ac7da07a44a7a596eff3fd173e0c8184166637e07f1140` |
| 13 | `theorem` | [WeightOneCMRealization.isOfType_holomorphic_of_coordinates](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-isoftype-holomorphic-of-coordinates--48945b0c5ae684ca0da567f1.md) | 219 | `result-track:48945b0c5ae684ca0da567f1655243f0e3b77a47a6a493a27ea932d7025c3484` |
| 14 | `theorem` | [WeightOneCMRealization.isOfType_antiholomorphic_of_coordinates](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-isoftype-antiholomorphic-of-coordinates--814c9d9ba9b8daa80b571bfa.md) | 230 | `result-track:814c9d9ba9b8daa80b571bfa0e59c97f6ddf7285b72457d76bbf22524de6fcaf` |
| 15 | `def` | [canonicalTensorComplexCoordinate](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/canonicaltensorcomplexcoordinate--2f25079340b9791417fd1980.md) | 243 | `declaration-track:2f25079340b9791417fd1980ab0adf86f1e1af8ec1f90398e086da1b64c7401c` |
| 16 | `theorem` | [canonicalTensorComplexCoordinate_tmul](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/canonicaltensorcomplexcoordinate-tmul--e22e03d13f840f89474d1f49.md) | 254 | `result-track:e22e03d13f840f89474d1f49205fdce7962d545eb309eb31ab8ba9de18f51b93` |
| 17 | `theorem` | [canonicalTensorComplexCoordinate_eq_zero_of_ne](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/canonicaltensorcomplexcoordinate-eq-zero-of-ne--b99715e11c066e060081930c.md) | 267 | `result-track:b99715e11c066e060081930cd86c67129be77570c40823a27f8b77f366963bd5` |
| 18 | `def` | [WeightOneCMRealization.tensorBilinearToActual](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-tensorbilineartoactual--14516505b79f2c099d212975.md) | 299 | `declaration-track:14516505b79f2c099d2129751a29a239d6aa9896037bbe1cc6a2bf618016f3fc` |
| 19 | `def` | [WeightOneCMRealization.canonicalTensorToActual](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-canonicaltensortoactual--0351c486d1d7433c5f2fc01b.md) | 323 | `declaration-track:0351c486d1d7433c5f2fc01b6720e1964a479aa8166b3492bc8e572ec594f0e1` |
| 20 | `theorem` | [WeightOneCMRealization.canonicalTensorToActual_tmul](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-canonicaltensortoactual-tmul--f16a1c56b556c1504dc19ec7.md) | 331 | `result-track:f16a1c56b556c1504dc19ec7785e8b96ba52b414058abc454b0e67a77b996a3c` |
| 21 | `def` | [WeightOneCMRealization.pureTensorCoordinate](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-puretensorcoordinate--a600efb1a01b6d94a1ca4255.md) | 344 | `declaration-track:a600efb1a01b6d94a1ca42554dddd8f86e958a12c2b7301de39f6c1ec8ce9d81` |
| 22 | `theorem` | [WeightOneCMRealization.canonicalTensorToActual_coordinates_tmul](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-canonicaltensortoactual-coordinates-tmul--f6e9d9b6d1f918ec678eeed7.md) | 355 | `result-track:f6e9d9b6d1f918ec678eeed73e7008726a16675f0f49e465f0978ef3ecedaeda` |
| 23 | `structure` | [PureTensorActualH1Comparison](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/puretensoractualh1comparison--7d79302f7a5cffdbe54ce874.md) | 373 | `declaration-track:7d79302f7a5cffdbe54ce8742aec33d25264896558c525c3f00a0c5f696eabf7` |
| 24 | `def` | [WeightOneCMRealization.pureTensorActualH1Comparison](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-puretensoractualh1comparison--7e5c6d703b3f9626545f2863.md) | 386 | `declaration-track:7e5c6d703b3f9626545f2863709bbcb2c3859bde647c5846e9e6e771e109d586` |
| 25 | `structure` | [CanonicalTensorActualH1Comparison](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/canonicaltensoractualh1comparison--499c5ff8587268bb9a8b4498.md) | 401 | `declaration-track:499c5ff8587268bb9a8b4498011a305d4b81a461977fdd814eec707ede474589` |
| 26 | `theorem` | [PureTensorActualH1Comparison.coordinate_compatibility](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/puretensoractualh1comparison-coordinate-compatibility--a9a3823b02eec73f964eda68.md) | 414 | `result-track:a9a3823b02eec73f964eda688da7c118980ded36da17f2d121778b91f3ce4b39` |
| 27 | `def` | [PureTensorActualH1Comparison.toCanonicalComparison](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/puretensoractualh1comparison-tocanonicalcomparison--8c33f49d02acb7734efcb251.md) | 432 | `declaration-track:8c33f49d02acb7734efcb25120177dd0ede9138172d346d40d9667c4f073fc24` |
| 28 | `def` | [WeightOneCMRealization.canonicalTensorActualH1Comparison](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/weightonecmrealization-canonicaltensoractualh1comparison--780b7ea42ed8f7ba4afada93.md) | 444 | `declaration-track:780b7ea42ed8f7ba4afada93aba4967e576f58752aba55924a5a39069758af9f` |
| 29 | `theorem` | [CanonicalTensorActualH1Comparison.isOfType_holomorphic](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/canonicaltensoractualh1comparison-isoftype-holomorphic--ed857558fc698ec26fdd2a8d.md) | 452 | `result-track:ed857558fc698ec26fdd2a8d3f56d6826be00272602a8b0064e4bdb1547eff09` |
| 30 | `theorem` | [CanonicalTensorActualH1Comparison.isOfType_antiholomorphic](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/canonicaltensoractualh1comparison-isoftype-antiholomorphic--65d37381d36f041e26ca0944.md) | 475 | `result-track:65d37381d36f041e26ca0944d7487de9b61e574256961e84dbfae53a9b26dece` |
| 31 | `theorem` | [CanonicalTensorActualH1Comparison.isOfType_typeOfSign](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/canonicaltensoractualh1comparison-isoftype-typeofsign--9b5817800fc7180920db314a.md) | 499 | `result-track:9b5817800fc7180920db314ab7df924ef70d883356f36f552313861a06dda2d8` |
| 32 | `structure` | [RiemannExistenceSupplier](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/riemannexistencesupplier--bead45dd45333ad1741d9fca.md) | 524 | `declaration-track:bead45dd45333ad1741d9fca3638cb99270fb6faa1ac949759e12e1678ae87f8` |
| 33 | `def` | [realizeWeightOneCM](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/realizeweightonecm--683c3e0967236957101555af.md) | 534 | `declaration-track:683c3e0967236957101555af5fe145431ba32290376be66826676e1426d3d1ad` |
| 34 | `def` | [realizeWeightOneCM_canonical](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/realizeweightonecm-canonical--766c15940bfd789a11fb67c1.md) | 544 | `declaration-track:766c15940bfd789a11fb67c1a1039381dcb8c2e73fc998c1d3f8a85a205fcc5b` |
| 35 | `theorem` | [nonempty_weightOneCMRealization_of_supplier](../../../../mathematics/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/declarations/nonempty-weightonecmrealization-of-supplier--325c8ba1bc71fec06be41e4c.md) | 556 | `result-track:325c8ba1bc71fec06be41e4c54125009fef4fad3fbf11228951bfc54f75d898e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
