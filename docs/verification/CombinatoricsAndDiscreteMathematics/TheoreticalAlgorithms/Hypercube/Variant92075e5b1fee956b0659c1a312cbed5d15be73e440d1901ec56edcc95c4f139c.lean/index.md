# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hypercube.Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ef0d6c9254a5dc0b432c74de4609c03b090bf15",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ef0d6c9254a5dc0b432c74de4609c03b090bf15`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Matrix` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Cube.ListTools` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Hypercube.Point](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-point--1d92f88d7452e4e8065b4f49.md) | 17 | `declaration-track:1d92f88d7452e4e8065b4f492f1db121f9e7ff631aa4840121f7398a23ba3e9f` |
| 2 | `abbrev` | [Hypercube.Function](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-function--929b9a1680b71101ab06c329.md) | 21 | `declaration-track:929b9a1680b71101ab06c3290a4816b9b9b795fc59f2055b96c1c539b160c373` |
| 3 | `abbrev` | [Hypercube.ScalarFunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-scalarfunction--3dc87fc49b0d47f2438dc411.md) | 29 | `declaration-track:3dc87fc49b0d47f2438dc411a145cd906aa50fac8885b01c8b40480cce4b2e31` |
| 4 | `def` | [Hypercube.bxor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-bxor--cf388912c491f3e19b920e40.md) | 33 | `declaration-track:cf388912c491f3e19b920e409f3b17f6dc522c8de22face880210e2074c05827` |
| 5 | `def` | [Hypercube.boolDiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-booldiff--694e1ebed2460b7c7846a1dc.md) | 40 | `declaration-track:694e1ebed2460b7c7846a1dc31256afbaf1e4290736e93daf074598270ec3799` |
| 6 | `def` | [Hypercube.bitAtNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-bitatnat--db50e05d44a7cdf2ae7d5127.md) | 44 | `declaration-track:db50e05d44a7cdf2ae7d5127e710c826a47224f2ed425bb583b12c4029f6c454` |
| 7 | `def` | [Hypercube.tableBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-tablebit--ef788eb1e5a29d33bcd448dc.md) | 53 | `declaration-track:ef788eb1e5a29d33bcd448dcc486122427df5441e56a493fa05b918bafebeb90` |
| 8 | `def` | [Hypercube.pointOfIndex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-pointofindex--611ce8230a317b03c351c756.md) | 57 | `declaration-track:611ce8230a317b03c351c7562ac4f2858304c2b25bde0c7ca980c408e9d6dd19` |
| 9 | `def` | [Hypercube.dropLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-droplast--2d7654764de9e8980472271f.md) | 61 | `declaration-track:2d7654764de9e8980472271f4e72fb2dc8353d0b0579555915379ecf20e745fd` |
| 10 | `def` | [Hypercube.last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-last--2caf94807ab5baebb9adaae7.md) | 67 | `declaration-track:2caf94807ab5baebb9adaae75af8425db41382eeeecabba2471a136b4b9b8d72` |
| 11 | `def` | [Hypercube.extend](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-extend--77d35021d74b7b934699cc53.md) | 73 | `declaration-track:77d35021d74b7b934699cc5342eae4e9097ef91c7da4e767893caaeface4649e` |
| 12 | `theorem` | [Hypercube.dropLast_extend](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-droplast-extend--405e280b6db9941ad082a9ff.md) | 83 | `result-track:405e280b6db9941ad082a9ff971494acb90f73f2b12213b4e9209ef26b73be23` |
| 13 | `theorem` | [Hypercube.last_extend](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-last-extend--dbfc9629914c5a47d7bdcdd9.md) | 90 | `result-track:dbfc9629914c5a47d7bdcdd94b977d914f9826f30db3f0574f543aa33d5dd821` |
| 14 | `def` | [Hypercube.vertices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-vertices--db66cdcf33fd91b65ad8d730.md) | 99 | `declaration-track:db66cdcf33fd91b65ad8d730ab07f49a42836184f5ce0a212150150fd22ecc5d` |
| 15 | `theorem` | [Hypercube.vertices_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-vertices-length--d00978d6dff6665678dfbf33.md) | 105 | `result-track:d00978d6dff6665678dfbf330ed2c4db62feb1333b413a63fb4727fbe2d38371` |
| 16 | `theorem` | [Hypercube.bitAtNat_two_mul_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-bitatnat-two-mul-succ--033379e0925cf7c0388db809.md) | 124 | `result-track:033379e0925cf7c0388db809d7cb2403ea7472d91ed51d5d6aa443ad230260bd` |
| 17 | `theorem` | [Hypercube.bitAtNat_two_mul_add_one_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-bitatnat-two-mul-add-one-succ--154d9a871bc40dd8ace99442.md) | 130 | `result-track:154d9a871bc40dd8ace99442867248358ab92cd1e163e553129da7cd47a592dc` |
| 18 | `theorem` | [Hypercube.bitAtNat_two_mul_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-bitatnat-two-mul-zero--6113b155d6a9f78782258dfa.md) | 136 | `result-track:6113b155d6a9f78782258dfac059928d4d31c689071c1681bc99974f1ce8a3f5` |
| 19 | `theorem` | [Hypercube.bitAtNat_two_mul_add_one_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-bitatnat-two-mul-add-one-zero--c255eaed09a2c030a77a91b0.md) | 140 | `result-track:c255eaed09a2c030a77a91b0763e1f4ef9a970ddbf646528b639beecdc9b314b` |
| 20 | `theorem` | [Hypercube.pointOfIndex_two_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-pointofindex-two-mul--51ce9d011ce9702b14d71df1.md) | 144 | `result-track:51ce9d011ce9702b14d71df19a05b74ed08448ef9e45430a6994a17474f336eb` |
| 21 | `theorem` | [Hypercube.pointOfIndex_two_mul_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-pointofindex-two-mul-add-one--ddfc2360ba984fb2eb53a17a.md) | 159 | `result-track:ddfc2360ba984fb2eb53a17a5bb4bdcdaec39cc263ad5341efbf143821e09c00` |
| 22 | `theorem` | [Hypercube.range_two_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-range-two-mul--e1662d368e2d244de945b702.md) | 174 | `result-track:e1662d368e2d244de945b702df17c6e474b343d97b9fe8111d12d28ba117bb3d` |
| 23 | `theorem` | [Hypercube.vertices_eq_range_map_pointOfIndex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-vertices-eq-range-map-pointofindex--54d98746561dc26fc1ee412b.md) | 188 | `result-track:54d98746561dc26fc1ee412b6c60e1523eec9b43dff5e45c2f7c55d82d649bb3` |
| 24 | `def` | [Hypercube.coordinates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-coordinates--d3c20e7c09e493e08db48ae4.md) | 207 | `declaration-track:d3c20e7c09e493e08db48ae486d22374faa3703ec60dbc76a96a793d4420de20` |
| 25 | `def` | [Hypercube.spinOfBool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-spinofbool--83051df5e622ad834e062b78.md) | 211 | `declaration-track:83051df5e622ad834e062b788bea143c20c74a624d47ca45434f098df177ef6d` |
| 26 | `def` | [Hypercube.intOfBool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-intofbool--5e22fa0551a20a91b1a768fe.md) | 216 | `declaration-track:5e22fa0551a20a91b1a768fe01adda6ae5c369032fa1a341319da744f2572681` |
| 27 | `def` | [Hypercube.spinCoordinates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-spincoordinates--434d115574ae6e1b0e20bcfe.md) | 221 | `declaration-track:434d115574ae6e1b0e20bcfecc2ff0dbc696037386e66cd153fd5535d4cf5c70` |
| 28 | `def` | [Hypercube.zeroOneCoordinates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-zeroonecoordinates--cb59690ce66864dbf69d68c6.md) | 225 | `declaration-track:cb59690ce66864dbf69d68c6945072ec924e89c69c4e54bfcdeaa669c70e0981` |
| 29 | `def` | [Hypercube.flip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-flip--00fdce153441a9063f0d5241.md) | 229 | `declaration-track:00fdce153441a9063f0d5241bc3ce63b9985958f1fd8f84bfbdf0e6764c06d2b` |
| 30 | `theorem` | [Hypercube.flip_same](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-flip-same--8fed6cb50acc73a29b215540.md) | 237 | `result-track:8fed6cb50acc73a29b215540dfa6efa153e8578ec1a0243fd46cbed8640cb071` |
| 31 | `theorem` | [Hypercube.flip_other](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-flip-other--5f075c00311c805e49d39ad3.md) | 241 | `result-track:5f075c00311c805e49d39ad3a75770e923968ca8ec141d0a8fdb7df021e20155` |
| 32 | `theorem` | [Hypercube.eq_of_dropLast_eq_last_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-eq-of-droplast-eq-last-eq--f44223f085b71ce0b4bbbd4e.md) | 246 | `result-track:f44223f085b71ce0b4bbbd4e3b6322d6d88c9d212ff4e8810ccd2a3cf9490ce4` |
| 33 | `def` | [Hypercube.pointEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-pointeq--c788c3c2488e1151d5cc8d3d.md) | 263 | `declaration-track:c788c3c2488e1151d5cc8d3d41b4853b46ae32f6107c21d2ce32bde228722cd6` |
| 34 | `def` | [Hypercube.hammingDistance](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-hammingdistance--908e697f420d17a8e38ea57d.md) | 269 | `declaration-track:908e697f420d17a8e38ea57d03ebd5e35d8b6ef624738e2868bd21cbcf086c35` |
| 35 | `def` | [Hypercube.adjacencyMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-adjacencymatrix--2556f6aceb8bb5c4cef429ed.md) | 276 | `declaration-track:2556f6aceb8bb5c4cef429ed625f1d805ae40fe3cd26f3b5db0b98417008003a` |
| 36 | `def` | [Hypercube.boundaryEdgeMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-boundaryedgematrix--6c36f87a490c0debdaaf546c.md) | 289 | `declaration-track:6c36f87a490c0debdaaf546c73f6e4d2502ebf43a5dced1442594713be3259de` |
| 37 | `def` | [Hypercube.edgeChange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-edgechange--f9a29326863c54a96d67cb3b.md) | 298 | `declaration-track:f9a29326863c54a96d67cb3bcf48487078c01962b5bee1fa4d01b5d984c79a22` |
| 38 | `def` | [Hypercube.influenceCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-influencecount--1643a8077a7b909e0dfd0ad1.md) | 309 | `declaration-track:1643a8077a7b909e0dfd0ad16f145161cd8d6e4c7aa140f56b04d883a2550f12` |
| 39 | `def` | [Hypercube.influenceVector](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-influencevector--fe259b554de6678e596b95e2.md) | 316 | `declaration-track:fe259b554de6678e596b95e2b32d7c887073486a4904667f30d1b470e3099696` |
| 40 | `def` | [Hypercube.directedBoundaryCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-directedboundarycount--24a0149d6aa62d75e5b0ec2e.md) | 321 | `declaration-track:24a0149d6aa62d75e5b0ec2e5f1dc55d86897dd7e81f64ea5b7778f65917a619` |
| 41 | `def` | [Hypercube.grayBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-graybit--c6a12c7f78f0f901b0a33514.md) | 328 | `declaration-track:c6a12c7f78f0f901b0a33514878bd1229603a9087bfddbe4a9e32dc454f5cea3` |
| 42 | `def` | [Hypercube.grayPoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-graypoint--288cf53b713b0499e4ba2ec9.md) | 338 | `declaration-track:288cf53b713b0499e4ba2ec9fb0177efe9d35cfe8635b298178810295b556613` |
| 43 | `def` | [Hypercube.grayAxis](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/declarations/hypercube-grayaxis--7e6eab80a95609b24295bdf6.md) | 342 | `declaration-track:7e6eab80a95609b24295bdf6ee3ee571683f3f79cf25262adf09200b69395efb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
