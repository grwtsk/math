# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.RasterCubicalComplex.Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36e8775f3dfa24907508695278fa425a19345412",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36e8775f3dfa24907508695278fa425a19345412`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GridCell` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Vertex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/vertex--d5a0fad5652f1852b9711043.md) | 18 | `declaration-track:d5a0fad5652f1852b9711043a62ac1a2ec0c5a9d493a921200a638e26c829d3c` |
| 2 | `structure` | [HorizontalEdge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/horizontaledge--655cba764c15f7332a7460df.md) | 24 | `declaration-track:655cba764c15f7332a7460df51fe51fc730ed60a0fb51f0a630641039d4739d4` |
| 3 | `structure` | [VerticalEdge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/verticaledge--df8429db3b4044c925a45a1b.md) | 30 | `declaration-track:df8429db3b4044c925a45a1b4752f1d5a23bccc76265317b727394316fa58d6a` |
| 4 | `def` | [horizontalEndpoints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/horizontalendpoints--bfba6845ddf5a5321900e4c6.md) | 36 | `declaration-track:bfba6845ddf5a5321900e4c659b16f17b17541a57a4179109626f9e5bde740ee` |
| 5 | `def` | [verticalEndpoints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/verticalendpoints--a324433c8062d29850542c92.md) | 43 | `declaration-track:a324433c8062d29850542c923661cd7db40b0d8f2e84848dd635b4eb5877f209` |
| 6 | `structure` | [SquareBoundary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/squareboundary--5eeb12485a8b3e5e17c48fd3.md) | 50 | `declaration-track:5eeb12485a8b3e5e17c48fd34228668fdb4f6b9cbd9acb989db5fdd1e0da7728` |
| 7 | `def` | [squareBoundary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/squareboundary--1e95d2611463a6c716620b41.md) | 58 | `declaration-track:1e95d2611463a6c716620b4101244b190eb09803ea36654ef67ae6188898c755` |
| 8 | `inductive` | [Cell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/cell--26636d512ca7ec1683d4e177.md) | 69 | `declaration-track:26636d512ca7ec1683d4e177c8f953514dc9653eef4cfbb98583f83cf7138253` |
| 9 | `def` | [Cell.dimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/cell-dimension--3a5da2e97bb1416a7a3aef36.md) | 77 | `declaration-track:3a5da2e97bb1416a7a3aef3614c587c15f7b6bb41c184af5971a0577204ba31e` |
| 10 | `instance` | [vertexFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/vertexfintype--2091d42e4769374f7017a387.md) | 82 | `declaration-track:2091d42e4769374f7017a387198a1e0af49be7e769d71bbeef143433547f597d` |
| 11 | `instance` | [horizontalEdgeFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/horizontaledgefintype--26f947d9fd94cb3de9190463.md) | 89 | `declaration-track:26f947d9fd94cb3de9190463bbb39445591ca2d7a21f1459cef221cc982cf5fb` |
| 12 | `instance` | [verticalEdgeFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/verticaledgefintype--792b33914e85818a59de03e1.md) | 97 | `declaration-track:792b33914e85818a59de03e16f0ce17ab1b71b2eb7bc8729ef73307f8c65b5c2` |
| 13 | `instance` | [cellFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/cellfintype--3cf0a90b19fa3e25da6067ba.md) | 105 | `declaration-track:3cf0a90b19fa3e25da6067bac4888edd7ed9a84bf2e2f80f5bef4d1a9ad074e4` |
| 14 | `structure` | [Complex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/complex--4a4dfbcfc4eb5295a1b958db.md) | 126 | `declaration-track:4a4dfbcfc4eb5295a1b958db31f340a994a56ebceacb3f2354b84702279f7bdc` |
| 15 | `def` | [rectangularComplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/rectangularcomplex--347143a0a50b180435641576.md) | 131 | `declaration-track:347143a0a50b18043564157677e7c8e90fd5288c89f7798100db78228919126a` |
| 16 | `theorem` | [mem_rectangularComplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/mem-rectangularcomplex--a70274b516e85e6483f8671c.md) | 136 | `result-track:a70274b516e85e6483f8671c55b644323a00938664bedab7aeed78857157d0e9` |
| 17 | `def` | [EdgeAdjacent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/edgeadjacent--fbafb24f23e9159482f3e688.md) | 142 | `declaration-track:fbafb24f23e9159482f3e688e18feca0e393ddbd357463ffab454fba189bf4f5` |
| 18 | `instance` | [edgeAdjacentDecidable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/edgeadjacentdecidable--223f423149c216e1d05e00f7.md) | 151 | `declaration-track:223f423149c216e1d05e00f703d6902637f5528372dde5430a49471f193e98cc` |
| 19 | `theorem` | [edgeAdjacent_symmetric](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/edgeadjacent-symmetric--579ffd41b12504246416a7f4.md) | 157 | `result-track:579ffd41b12504246416a7f483245c22c222035d4c28eddd6c5b322e741f3ed4` |
| 20 | `theorem` | [not_edgeAdjacent_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/not-edgeadjacent-self--fa727ef452770f66773e30b8.md) | 166 | `result-track:fa727ef452770f66773e30b846f44381300bb7b4856082741e56bb0500b3ddb4` |
| 21 | `def` | [NeighboringCoordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/neighboringcoordinate--d5b7c25aacacfbd35150cd47.md) | 172 | `declaration-track:d5b7c25aacacfbd35150cd47103c199b5620daae30c7628489e5992ecf8de5a7` |
| 22 | `instance` | [neighboringCoordinateDecidable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/neighboringcoordinatedecidable--0d87aa42812a13961d0762c5.md) | 175 | `declaration-track:0d87aa42812a13961d0762c572305affa6605480ba834b5e918216d92a1e6b0e` |
| 23 | `theorem` | [neighboringCoordinate_symmetric](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/neighboringcoordinate-symmetric--5340eefc940cb4ea6ce75e5d.md) | 180 | `result-track:5340eefc940cb4ea6ce75e5d3f68281fe0c7cdba789444d1881d699478df710e` |
| 24 | `def` | [VertexAdjacent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/vertexadjacent--609754d82fa82bd81a36b14e.md) | 194 | `declaration-track:609754d82fa82bd81a36b14e65c351a7322d376179b0430f20143eabc2f35a4d` |
| 25 | `instance` | [vertexAdjacentDecidable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/vertexadjacentdecidable--231ad84349df51a1b3bbfe6e.md) | 200 | `declaration-track:231ad84349df51a1b3bbfe6e5508f59ea83f8bc84ae43e715c18b55fe2267935` |
| 26 | `theorem` | [vertexAdjacent_symmetric](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/vertexadjacent-symmetric--a2cd6f7b97a202cd2263da58.md) | 206 | `result-track:a2cd6f7b97a202cd2263da5891cd0e25c1c91afaf6dc82ecc5d3f4d0b4726831` |
| 27 | `theorem` | [not_vertexAdjacent_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean/declarations/not-vertexadjacent-self--ea2c4ae7c2aab4d0507073a4.md) | 217 | `result-track:ea2c4ae7c2aab4d0507073a4c3eb7b1900b04a139b174b4dd097aad28a3e3894` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
