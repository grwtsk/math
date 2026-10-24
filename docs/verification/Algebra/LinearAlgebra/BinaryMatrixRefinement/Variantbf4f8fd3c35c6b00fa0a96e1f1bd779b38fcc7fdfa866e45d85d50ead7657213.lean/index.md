# Verification target: GRWTSK.Algebra.LinearAlgebra.BinaryMatrixRefinement.Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2605988f6decd246b07acaaf5d27ad193dafb23",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2605988f6decd246b07acaaf5d27ad193dafb23`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.DiscreteGeometry.FramedCellTopology` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [padMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/padmatrix--faac1d23ab0de251887fc5ae.md) | 31 | `declaration-track:faac1d23ab0de251887fc5aea196245afd91b0143dd77a3448c9ae3f7e13e414` |
| 2 | `theorem` | [padMatrix_rows](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/padmatrix-rows--705e7373ff5aafb5365200af.md) | 49 | `result-track:705e7373ff5aafb5365200af1b3d6778eb9d43f6b753a8d3be82b34fd91ccbe4` |
| 3 | `theorem` | [padMatrix_cols](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/padmatrix-cols--ec8576a06572329dff595a86.md) | 56 | `result-track:ec8576a06572329dff595a869b82a9f883b9d6896960ca25916c1b11621fcbbb` |
| 4 | `structure` | [BinaryMatrixRefinementRule](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/binarymatrixrefinementrule--33e578c2013525c0e391cf66.md) | 63 | `declaration-track:33e578c2013525c0e391cf66466a2157209b4dae41363630cef672f443a8ec87` |
| 5 | `structure` | [ZeroPreservingRefinementRule](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/zeropreservingrefinementrule--7a1bd7a653ede72c3c3df08b.md) | 69 | `declaration-track:7a1bd7a653ede72c3c3df08b3eb19fe8ecdbe960433f3e3f1004fea6b601ab79` |
| 6 | `structure` | [BinaryMatrixRenormalizationRule](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/binarymatrixrenormalizationrule--84492b671bdebf2ebf651566.md) | 78 | `declaration-track:84492b671bdebf2ebf6515660f941c5688610bb25c1419e2891995df2cff35c2` |
| 7 | `def` | [refineMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/refinematrix--393ee0886de1c5c27931c62e.md) | 85 | `declaration-track:393ee0886de1c5c27931c62e6ae13b9577448727dd9b0c71c0c302255370fc6c` |
| 8 | `theorem` | [refineMatrix_rows](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/refinematrix-rows--f830d50f22bd59c35bb632ad.md) | 109 | `result-track:f830d50f22bd59c35bb632add82d33cfb8214bb4a474f8d28c8d17957dcc98ad` |
| 9 | `theorem` | [refineMatrix_cols](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/refinematrix-cols--390f411d5dbab22e4805e82c.md) | 116 | `result-track:390f411d5dbab22e4805e82c8fc77f4bfd3b7c32d69ecbb5694ff23f71f2c472` |
| 10 | `def` | [constRefinementRule](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/constrefinementrule--74892baf71594608f5b8a621.md) | 123 | `declaration-track:74892baf71594608f5b8a621dcab0af0093286dd911d34b8c53c01f29c2f0cbb` |
| 11 | `def` | [constZeroPreservingRefinementRule](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/constzeropreservingrefinementrule--ec6e34e2edd39b63886fcab9.md) | 131 | `declaration-track:ec6e34e2edd39b63886fcab9cfae538831d2e8138514417b66c5fbec72cc54bf` |
| 12 | `def` | [refineConst](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/refineconst--0f213f1aa9999a56b6c84e07.md) | 139 | `declaration-track:0f213f1aa9999a56b6c84e077d60646ef13b1670f0eb360199b2a294d07a0260` |
| 13 | `def` | [zoomOutTopLeft](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/zoomouttopleft--9d27f906bd89c693198bd531.md) | 151 | `declaration-track:9d27f906bd89c693198bd5319940f274ef11a5b54908758187e93ee8fe061678` |
| 14 | `theorem` | [zoomOut_refine_const](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/zoomout-refine-const--6e30bbd775db7bf173398936.md) | 166 | `result-track:6e30bbd775db7bf1733989365ad2fdaebf9efa488d90a2bdbfd31acad2ef2821` |
| 15 | `theorem` | [refineMatrix_zero_of_zeroPreserving](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/refinematrix-zero-of-zeropreserving--c141803c6c2eea61b558a473.md) | 193 | `result-track:c141803c6c2eea61b558a4732376654ef27bdc1bd9d4c093399f47f569fc1619` |
| 16 | `def` | [bitMass](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/bitmass--f5dac150d9e70290f20ef5a6.md) | 207 | `declaration-track:f5dac150d9e70290f20ef5a63e65f7685b81941c30067dfbe539c8d4209072e8` |
| 17 | `def` | [matrixMass](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/matrixmass--917f08327949d09500edff4c.md) | 211 | `declaration-track:917f08327949d09500edff4c89ee5cd992d6f91022bddb07e7d4f9efe8dd348c` |
| 18 | `def` | [matrixDensity](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/matrixdensity--aac21e0c571fef17717af6a0.md) | 215 | `declaration-track:aac21e0c571fef17717af6a085ba7690e1ced4d10b581bbcd0ff7dfae602839b` |
| 19 | `def` | [blockAt](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/blockat--d2ba223555c6e2af8d07a7fe.md) | 226 | `declaration-track:d2ba223555c6e2af8d07a7fe374df767d6ebe6d8b78b3b6d293b71a7af395ea1` |
| 20 | `def` | [renormalizedMass](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/renormalizedmass--51577a747f209657b3bae725.md) | 244 | `declaration-track:51577a747f209657b3bae7252589e9a9e842220d42e64ebf597abc6422d61e69` |
| 21 | `def` | [renormalizedEnergy](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/declarations/renormalizedenergy--77d03cf85572fbecb0ae0772.md) | 252 | `declaration-track:77d03cf85572fbecb0ae077216f17ff01e396cc417845ffdbc613ec7182d916f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
