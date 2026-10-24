# Verification target: GRWTSK.GeometryOfNumbers.PrimitiveLinearScaledArea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b106efe2886be623ec3f1bbf501aab8736fa0296",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/GeometryOfNumbers/PrimitiveLinearScaledArea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b106efe2886be623ec3f1bbf501aab8736fa0296`.

Source path: `GRWTSK/GeometryOfNumbers/PrimitiveLinearScaledArea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/GeometryOfNumbers/PrimitiveLinearScaledArea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.GeometryOfNumbers.PrimitiveLinearUnimodularFrame`](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CrossProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [castIntVector](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/castintvector--8a69af096bb24d7d1696165b.md) | 43 | `declaration-track:8a69af096bb24d7d1696165b5e509084eebb20c9cb4b90d593d32a7e744e8bc6` |
| 2 | `def` | [anisotropicScale](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/anisotropicscale--7bd397f820e9dd48c965ae2e.md) | 47 | `declaration-track:7bd397f820e9dd48c965ae2e15d0e025c18398f8ca1898729698f1d1902fc905` |
| 3 | `def` | [scaledFirstVector](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/scaledfirstvector--fe6df4faa5f67f326873cf15.md) | 51 | `declaration-track:fe6df4faa5f67f326873cf150399a1d6ac707bb78d22597b8ad33696f169d017` |
| 4 | `def` | [scaledSecondVector](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/scaledsecondvector--5d956f5eac591e8d9d011abf.md) | 55 | `declaration-track:5d956f5eac591e8d9d011abf48975670cb04cfd29a8a50c679e48b63109f3b51` |
| 5 | `def` | [scaledNormalCross](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/scalednormalcross--6c205762db29dc858c7a206b.md) | 59 | `declaration-track:6c205762db29dc858c7a206b5cd6104ca7368013d441c7702720c09bb231a652` |
| 6 | `theorem` | [castIntVector_cross](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/castintvector-cross--0ce2709ea37a8f365381c64a.md) | 65 | `result-track:0ce2709ea37a8f365381c64a87b83c83ffad6598499bdf1ac03667d6317cdb9c` |
| 7 | `theorem` | [anisotropicScale_cross](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/anisotropicscale-cross--f98f0584f026dfceec6bfe6d.md) | 74 | `result-track:f98f0584f026dfceec6bfe6d4f273ba09c6b196fd13538f9626a074e94fbd3d2` |
| 8 | `theorem` | [scaledFirst_cross_scaledSecond](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/scaledfirst-cross-scaledsecond--aa230069e47eb209eece9d2d.md) | 91 | `result-track:aa230069e47eb209eece9d2d420df34c38b05192dbd6afaea1c3deac46119f80` |
| 9 | `def` | [squaredNorm3](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/squarednorm3--0bc6d828fcfe4295db5c525e.md) | 107 | `declaration-track:0bc6d828fcfe4295db5c525e629606a43e29c0cff996a1e8aed415ca072ef904` |
| 10 | `def` | [scaledAreaSq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/scaledareasq--123f9378bf3b8fe2ecdcb26f.md) | 111 | `declaration-track:123f9378bf3b8fe2ecdcb26f2bd162247e7cb5b1135333d7ece326c688c43107` |
| 11 | `def` | [scaledNormalSq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/scalednormalsq--7b88b5fbfd3eaeb3129abbd2.md) | 115 | `declaration-track:7b88b5fbfd3eaeb3129abbd27ce6af45ca5b1c70fb986d1e78805619c7b3c893` |
| 12 | `def` | [boxVolume](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/boxvolume--d9f18ea77fcf24880d83b017.md) | 121 | `declaration-track:d9f18ea77fcf24880d83b01770df1c560e89066b7b8fe6a80c2059c081cb472a` |
| 13 | `theorem` | [boxVolume_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/boxvolume-pos--b6f5a342279aeaa5ebad0496.md) | 125 | `result-track:b6f5a342279aeaa5ebad049637611d144051a851c5382765c5c304fc1c23a91a` |
| 14 | `theorem` | [boxVolume_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/boxvolume-ne-zero--2380fb2cefd6015126b21891.md) | 129 | `result-track:2380fb2cefd6015126b21891d95b742cc02381f1565c31309eb60e5ca22a0849` |
| 15 | `theorem` | [scaledAreaSq_nonneg](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/scaledareasq-nonneg--422b8b2296d277dfcc9aff35.md) | 134 | `result-track:422b8b2296d277dfcc9aff35f71cb0914bea0b35ca08ac8f2c008c6823a6f1c3` |
| 16 | `theorem` | [scaledAreaSq_eq_scaledNormalSq_div](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/scaledareasq-eq-scalednormalsq-div--87299b5f9f07477f45adf569.md) | 140 | `result-track:87299b5f9f07477f45adf569eba0c8c6a01a9321d83a4fb2a81f1bb216cfa162` |
| 17 | `theorem` | [scaledAreaSq_mul_boxVolume_sq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/scaledareasq-mul-boxvolume-sq--85f36fb5c2e439704108e79c.md) | 152 | `result-track:85f36fb5c2e439704108e79cffc665521bc13006bb84dfb9ee82e5927e77d2fe` |
| 18 | `theorem` | [scaleHeight_sq_le_scaledNormalSq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/scaleheight-sq-le-scalednormalsq--f05598f7191548caf67ab319.md) | 159 | `result-track:f05598f7191548caf67ab319b7962af8d9cbff906b45950668c8722a4baac7bb` |
| 19 | `theorem` | [scaleHeight_sq_le_scaledAreaSq_mul_boxVolume_sq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/scaleheight-sq-le-scaledareasq-mul-boxvolume-sq--3c2b1d47e144bb5882b36819.md) | 185 | `result-track:3c2b1d47e144bb5882b368198d55f2b8a846c7d724f080729572b44cbce5ddac` |
| 20 | `theorem` | [scaledAreaSq_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/scaledareasq-pos--8127d0c0d441f8c73c3df242.md) | 193 | `result-track:8127d0c0d441f8c73c3df2424b9ffdbb330e4475c6c1cf96d49b0a12f458381e` |
| 21 | `def` | [scaledArea](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/scaledarea--f49a83a8a2c19248c06bb647.md) | 203 | `declaration-track:f49a83a8a2c19248c06bb64701b1fa9ad40834e02bf163b537d81a0ac011063b` |
| 22 | `theorem` | [scaledArea_sq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/scaledarea-sq--c9cfb0923f94232cd2867a66.md) | 207 | `result-track:c9cfb0923f94232cd2867a662c2cd1e5d3755d53bd7a3259f49801391eddaaf5` |
| 23 | `theorem` | [normalizedHeight_nonneg](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/normalizedheight-nonneg--82fb5bc95e9403dc9ac11659.md) | 213 | `result-track:82fb5bc95e9403dc9ac11659d6c37e345269707af6cd980a24d1a5cfd2018456` |
| 24 | `theorem` | [normalizedHeight_sq_le_scaledAreaSq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/normalizedheight-sq-le-scaledareasq--62144db533178ca8d31a347a.md) | 218 | `result-track:62144db533178ca8d31a347ad9fc1c5305ea0cd22749d10d2f7ea1ab7a7a8cba` |
| 25 | `theorem` | [normalizedHeight_le_scaledArea](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/normalizedheight-le-scaledarea--81377b5b480df3c2c771eada.md) | 228 | `result-track:81377b5b480df3c2c771eada2e87440acf7a31b2166e7880b2221f738f76e4eb` |
| 26 | `structure` | [ScaledAreaCertificate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/scaledareacertificate--41c41af482c33452fff42d96.md) | 236 | `declaration-track:41c41af482c33452fff42d96f67116e5c4bde663b5d07ff27049177ea612c18d` |
| 27 | `theorem` | [canonicalScaledAreaCertificate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/declarations/canonicalscaledareacertificate--5e392fba1c627d0493af36e6.md) | 248 | `result-track:5e392fba1c627d0493af36e6d529ba555daf07386e86fb4c8cfabd539a38653f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
