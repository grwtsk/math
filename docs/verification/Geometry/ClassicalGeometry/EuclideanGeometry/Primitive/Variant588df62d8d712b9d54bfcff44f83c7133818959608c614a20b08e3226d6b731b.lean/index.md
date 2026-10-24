# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Primitive.Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3379ab09b4ede1424418336ca5eb40ad386f725",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3379ab09b4ede1424418336ca5eb40ad386f725`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Core.Id` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Segment](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b.lean/declarations/segment--6c5df71eb09a70de38c33e1e.md) | 15 | `declaration-track:6c5df71eb09a70de38c33e1e281d3b5e16742cee2de1eb469af99f3ac4ef6a5d` |
| 2 | `def` | [reverse](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b.lean/declarations/reverse--7c86f482e520e5e4fab51b5b.md) | 22 | `declaration-track:7c86f482e520e5e4fab51b5ba986d8f6e504d2757e86eacd189b68fe84fea409` |
| 3 | `theorem` | [reverse_start](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b.lean/declarations/reverse-start--b5c7bcd5688b5b0b8dcad6ae.md) | 26 | `result-track:b5c7bcd5688b5b0b8dcad6ae1d70c088578079873161163051dd6743c59c2534` |
| 4 | `theorem` | [reverse_finish](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b.lean/declarations/reverse-finish--13b0939a6c2ed325ca1f40a9.md) | 29 | `result-track:13b0939a6c2ed325ca1f40a9860dd3d5a706c8befe6f1ba1855e1af2cd48656e` |
| 5 | `theorem` | [reverse_reverse](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b.lean/declarations/reverse-reverse--07faf28d87b463ba916017ac.md) | 32 | `result-track:07faf28d87b463ba916017ac1897e6e99e47dc801c87a181c99a2f063dccc17d` |
| 6 | `structure` | [Triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b.lean/declarations/triangle--68929cd16c3c6c62acb7f48e.md) | 40 | `declaration-track:68929cd16c3c6c62acb7f48e94b690b3cf2ba63c8f19b3ab4b004e8a73842f99` |
| 7 | `def` | [firstSecond](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b.lean/declarations/firstsecond--e4e34d113d10c62c359250d1.md) | 47 | `declaration-track:e4e34d113d10c62c359250d10a30c095e4296d32c342fcb3888802160b586112` |
| 8 | `def` | [firstThird](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b.lean/declarations/firstthird--479579455a0b3e432d05bfc3.md) | 50 | `declaration-track:479579455a0b3e432d05bfc319160c11f0c7a8b4d84a830f51d8cb73cff07bda` |
| 9 | `def` | [secondThird](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b.lean/declarations/secondthird--7a026327355a8a875fe1084e.md) | 53 | `declaration-track:7a026327355a8a875fe1084ed6d92aa9771df3de6e7e7237906b1347ef08a9e0` |
| 10 | `structure` | [Angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Primitive/Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b.lean/declarations/angle--0a4a0d1a68cbf56555de8da8.md) | 59 | `declaration-track:0a4a0d1a68cbf56555de8da873e77a7edd7984521ab91f301b525a1fc8703d2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
