# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Primitive.Variant9aa5794bc66807c58d3203937bd33dd9db56484999e21eb2ebedc25ceb0b1415

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ae8c7590c447db9e8fe1379fb1a23851c97ffc4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant9aa5794bc66807c58d3203937bd33dd9db56484999e21eb2ebedc25ceb0b1415.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant9aa5794bc66807c58d3203937bd33dd9db56484999e21eb2ebedc25ceb0b1415.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant9aa5794bc66807c58d3203937bd33dd9db56484999e21eb2ebedc25ceb0b1415.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ae8c7590c447db9e8fe1379fb1a23851c97ffc4`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant9aa5794bc66807c58d3203937bd33dd9db56484999e21eb2ebedc25ceb0b1415.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant9aa5794bc66807c58d3203937bd33dd9db56484999e21eb2ebedc25ceb0b1415.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Core.Id` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Segment](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant9aa5794bc66807c58d3203937bd33dd9db56484999e21eb2ebedc25ceb0b1415.lean/declarations/segment--048f08f8b2a446a6490d420a.md) | 23 | `declaration-track:048f08f8b2a446a6490d420a74e08537b5e0c4c4bd753a71cc328765b7a09720` |
| 2 | `def` | [reverse](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant9aa5794bc66807c58d3203937bd33dd9db56484999e21eb2ebedc25ceb0b1415.lean/declarations/reverse--9f27bf75fd5225689d7840ad.md) | 30 | `declaration-track:9f27bf75fd5225689d7840ad7679c90413a012f1a3591ed583520a6930558aa2` |
| 3 | `theorem` | [reverse_start](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant9aa5794bc66807c58d3203937bd33dd9db56484999e21eb2ebedc25ceb0b1415.lean/declarations/reverse-start--34a169d7729e2ae2b1e54edf.md) | 34 | `result-track:34a169d7729e2ae2b1e54edfbf0e853a46d1afe88753fff9916d53b8031d1764` |
| 4 | `theorem` | [reverse_finish](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant9aa5794bc66807c58d3203937bd33dd9db56484999e21eb2ebedc25ceb0b1415.lean/declarations/reverse-finish--4c8b938c871f323c2c47531a.md) | 37 | `result-track:4c8b938c871f323c2c47531ab9e6e49954734423d9803c176cd4fd919304b2e9` |
| 5 | `theorem` | [reverse_reverse](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant9aa5794bc66807c58d3203937bd33dd9db56484999e21eb2ebedc25ceb0b1415.lean/declarations/reverse-reverse--4dd7b293940252fea356f7bc.md) | 40 | `result-track:4dd7b293940252fea356f7bca28900df921d180d43530da5242b952a85234314` |
| 6 | `structure` | [Triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant9aa5794bc66807c58d3203937bd33dd9db56484999e21eb2ebedc25ceb0b1415.lean/declarations/triangle--0494ffedcedb267d4a7de9c7.md) | 48 | `declaration-track:0494ffedcedb267d4a7de9c77e0c5b33d556b7cc8301bb645aa695689b794056` |
| 7 | `def` | [firstSecond](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant9aa5794bc66807c58d3203937bd33dd9db56484999e21eb2ebedc25ceb0b1415.lean/declarations/firstsecond--63402b0defd1b978e2bca1e6.md) | 55 | `declaration-track:63402b0defd1b978e2bca1e6d846c312d5d6bd7bb04458b259b4de197ab5ec29` |
| 8 | `def` | [firstThird](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant9aa5794bc66807c58d3203937bd33dd9db56484999e21eb2ebedc25ceb0b1415.lean/declarations/firstthird--122ba2b0ee9c01de4695d065.md) | 58 | `declaration-track:122ba2b0ee9c01de4695d06526a81f66394299ad061474b2c5e2d85897831735` |
| 9 | `def` | [secondThird](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant9aa5794bc66807c58d3203937bd33dd9db56484999e21eb2ebedc25ceb0b1415.lean/declarations/secondthird--ff1f843396e45bc58e366891.md) | 61 | `declaration-track:ff1f843396e45bc58e36689188922b1483791cbd3f8deb5b0a19f719288bb363` |
| 10 | `structure` | [Angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant9aa5794bc66807c58d3203937bd33dd9db56484999e21eb2ebedc25ceb0b1415.lean/declarations/angle--7864941954df05c1e6154244.md) | 67 | `declaration-track:7864941954df05c1e615424496d71fb6fb1b22954ad45ee11557dbc9a826f079` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
