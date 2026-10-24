# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SquaredDistance.Variantde9cd9634188b190c7a5ae4936bae42c2dbef99906c68589f908c093c9382b3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "142a41f7f625b7d11000f29bca4b5d71fa86b5e0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variantde9cd9634188b190c7a5ae4936bae42c2dbef99906c68589f908c093c9382b3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variantde9cd9634188b190c7a5ae4936bae42c2dbef99906c68589f908c093c9382b3e.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variantde9cd9634188b190c7a5ae4936bae42c2dbef99906c68589f908c093c9382b3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `142a41f7f625b7d11000f29bca4b5d71fa86b5e0`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variantde9cd9634188b190c7a5ae4936bae42c2dbef99906c68589f908c093c9382b3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variantde9cd9634188b190c7a5ae4936bae42c2dbef99906c68589f908c093c9382b3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Geometry.Plane` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [planeSquaredDistance](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variantde9cd9634188b190c7a5ae4936bae42c2dbef99906c68589f908c093c9382b3e.lean/declarations/planesquareddistance--6c506f2c8aec75ad3ca568d1.md) | 13 | `declaration-track:6c506f2c8aec75ad3ca568d1192761a2ced4786c431adc2c6b74a5660ea13c97` |
| 2 | `theorem` | [planeSquaredDistance_coordinates](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variantde9cd9634188b190c7a5ae4936bae42c2dbef99906c68589f908c093c9382b3e.lean/declarations/planesquareddistance-coordinates--1f510da1aab2083ef325fa86.md) | 16 | `result-track:1f510da1aab2083ef325fa8682ebd53119e92af38a0e3db9377887a71de83447` |
| 3 | `theorem` | [planeSquaredDistance_nonnegative](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variantde9cd9634188b190c7a5ae4936bae42c2dbef99906c68589f908c093c9382b3e.lean/declarations/planesquareddistance-nonnegative--bbcdc0f632810c63212d547a.md) | 21 | `result-track:bbcdc0f632810c63212d547a0f4d08cbc1891e207097836fbda558e96e817fa6` |
| 4 | `theorem` | [planeSquaredDistance_self](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variantde9cd9634188b190c7a5ae4936bae42c2dbef99906c68589f908c093c9382b3e.lean/declarations/planesquareddistance-self--b866fb6ba4455d2d119c95d8.md) | 25 | `result-track:b866fb6ba4455d2d119c95d85fc2f98e8f1ea129df2fa3714a40b0ccd10162d5` |
| 5 | `theorem` | [planeSquaredDistance_symmetric](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variantde9cd9634188b190c7a5ae4936bae42c2dbef99906c68589f908c093c9382b3e.lean/declarations/planesquareddistance-symmetric--d03c099b99bcd0ad26e9b4cc.md) | 29 | `result-track:d03c099b99bcd0ad26e9b4cc991b382641b6877cb9cb40d30ef3207287d920d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
