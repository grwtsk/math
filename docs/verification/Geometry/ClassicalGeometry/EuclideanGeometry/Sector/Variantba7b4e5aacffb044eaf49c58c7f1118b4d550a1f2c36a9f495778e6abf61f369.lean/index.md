# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Sector.Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7eebecc34369d0a413bdec21c36422851d434871",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7eebecc34369d0a413bdec21c36422851d434871`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.QuadraticMinors` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sine_step](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/declarations/sine-step--75639ed405eb989aa79b0f27.md) | 22 | `result-track:75639ed405eb989aa79b0f27890088d33a38d54db9aff8f4391c363dc15fd220` |
| 2 | `theorem` | [continuant_mul_sine](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/declarations/continuant-mul-sine--42b5604dc4b29b589a247059.md) | 32 | `result-track:42b5604dc4b29b589a2470590433597a81eda2cced6e1d21d89d999a7293d1b7` |
| 3 | `theorem` | [continuant_eq_sine_ratio](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/declarations/continuant-eq-sine-ratio--6a73e722269e02d14cf3ece6.md) | 69 | `result-track:6a73e722269e02d14cf3ece6fadaf7f0e8d9ee5679790773f58cd415691f52b7` |
| 4 | `theorem` | [continuant_zero_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/declarations/continuant-zero-angle--cf9c010f30d3da3927736b2a.md) | 76 | `result-track:cf9c010f30d3da3927736b2ae4f79deb3797d0375711fed7f5ea256b1706044f` |
| 5 | `theorem` | [continuant_nonnegative](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/declarations/continuant-nonnegative--55fa990aaf6cf5103111c9e7.md) | 89 | `result-track:55fa990aaf6cf5103111c9e70695eedb1ea862632267abcc6e7ab23c9ad39022` |
| 6 | `theorem` | [quadratic_pfOrder](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/declarations/quadratic-pforder--ead4a22cec0cd72c4ea13642.md) | 110 | `result-track:ead4a22cec0cd72c4ea13642d3268eba194d388f44e564cb618eed3cf070559c` |
| 7 | `def` | [transverseAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/declarations/transverseangle--0a6ae16ad981eb4c508c933f.md) | 122 | `declaration-track:0a6ae16ad981eb4c508c933fac32fb0e0b88c7fd68a1720726d6572abfdccefb` |
| 8 | `theorem` | [transverseAngle_lt](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/declarations/transverseangle-lt--66fd8bee08fc40401f410e9d.md) | 125 | `result-track:66fd8bee08fc40401f410e9d04c768933b0993abaeeed0f2722c00450bfcb45d` |
| 9 | `theorem` | [transverseAngle_nonnegative](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/declarations/transverseangle-nonnegative--fe584a6d575f82f99bbc5551.md) | 142 | `result-track:fe584a6d575f82f99bbc555124a689cf3ae3a1e18e4da52cf2f2ede135eb87dc` |
| 10 | `inductive` | [Factor](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/declarations/factor--6b60f4adfc6916e4b6b980b3.md) | 147 | `declaration-track:6b60f4adfc6916e4b6b980b3c9f76a6bc272b46b2953caed1119e19967936e0a` |
| 11 | `def` | [Factor.coefficient](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/declarations/factor-coefficient--1cedf10d15343830fa0aa0f4.md) | 152 | `declaration-track:1cedf10d15343830fa0aa0f422b7d8c3c8e4884dd7d4ca89c501f2ba2b1cf4c4` |
| 12 | `def` | [Factor.Admissible](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/declarations/factor-admissible--6334e8e6930117f14756e231.md) | 157 | `declaration-track:6334e8e6930117f14756e231fbbeb353a1fde464debfd3339bb20fa92a24d10b` |
| 13 | `theorem` | [Factor.pfOrder](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/declarations/factor-pforder--b63a79e44fefad18f5e608f1.md) | 162 | `result-track:b63a79e44fefad18f5e608f178cd76f74267102002c64d1ad551b7f8b4b07d28` |
| 14 | `def` | [productCoefficient](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/declarations/productcoefficient--4d13ac03f979007aa012ced0.md) | 169 | `declaration-track:4d13ac03f979007aa012ced0401614497905dfcdf3bcf98133201fe8d6101989` |
| 15 | `theorem` | [product_pfOrder](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/declarations/product-pforder--85eb31503c164f71f46bf99d.md) | 174 | `result-track:85eb31503c164f71f46bf99d1951a4cd4c48eca86587289bec3a49d0d8e7509f` |
| 16 | `theorem` | [pfOrder_of_product_limit](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/declarations/pforder-of-product-limit--76e8bfc50e819fe87c901883.md) | 183 | `result-track:76e8bfc50e819fe87c9018836ca9ff52607249e37547f901afa7906a7763a3e2` |
| 17 | `theorem` | [fixture_pfThree](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/declarations/fixture-pfthree--1bf1a46ac0414e7a90111df9.md) | 193 | `result-track:1bf1a46ac0414e7a90111df9ae3d5eec96a0d8218e2dc576b0af7faece0e9a3d` |
| 18 | `theorem` | [fixture_negative_orderFour](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/declarations/fixture-negative-orderfour--0c23b8fe5c86d351be7d8cba.md) | 199 | `result-track:0c23b8fe5c86d351be7d8cbabece6048bd20d31bf3af42a208d005f2fe248c8b` |
| 19 | `theorem` | [fixture_not_pfFour](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/declarations/fixture-not-pffour--ad8ea4f34fed954207edfeb7.md) | 212 | `result-track:ad8ea4f34fed954207edfeb7101a6dedc512e4b72d551f12b480133e328cc9fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
