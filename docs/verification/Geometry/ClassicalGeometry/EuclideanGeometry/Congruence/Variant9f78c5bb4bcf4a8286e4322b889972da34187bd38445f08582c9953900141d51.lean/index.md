# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Congruence.Variant9f78c5bb4bcf4a8286e4322b889972da34187bd38445f08582c9953900141d51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf84e6d5f724493874e01999caa8d7760a32c34b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant9f78c5bb4bcf4a8286e4322b889972da34187bd38445f08582c9953900141d51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant9f78c5bb4bcf4a8286e4322b889972da34187bd38445f08582c9953900141d51.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant9f78c5bb4bcf4a8286e4322b889972da34187bd38445f08582c9953900141d51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf84e6d5f724493874e01999caa8d7760a32c34b`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant9f78c5bb4bcf4a8286e4322b889972da34187bd38445f08582c9953900141d51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant9f78c5bb4bcf4a8286e4322b889972da34187bd38445f08582c9953900141d51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Geometry.Primitive` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CongruenceSignature](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant9f78c5bb4bcf4a8286e4322b889972da34187bd38445f08582c9953900141d51.lean/declarations/congruencesignature--2a74d39129eae2ffd33c939b.md) | 24 | `declaration-track:2a74d39129eae2ffd33c939b21a15680dbb12deb22f59cb80f58176191985c93` |
| 2 | `def` | [SegmentCongruenceReflexive](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant9f78c5bb4bcf4a8286e4322b889972da34187bd38445f08582c9953900141d51.lean/declarations/segmentcongruencereflexive--2a4e50c3cab1cfaca78b5a5b.md) | 28 | `declaration-track:2a4e50c3cab1cfaca78b5a5bcfc42a9a38bfcfd6e564cd03979fe0f5e59cd2cb` |
| 3 | `def` | [SegmentCongruenceSymmetric](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant9f78c5bb4bcf4a8286e4322b889972da34187bd38445f08582c9953900141d51.lean/declarations/segmentcongruencesymmetric--71c33be102c52b023c56c189.md) | 33 | `declaration-track:71c33be102c52b023c56c189433c339a3bdcaae05a1303dda07a40274febdb57` |
| 4 | `def` | [SegmentCongruenceTransitive](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant9f78c5bb4bcf4a8286e4322b889972da34187bd38445f08582c9953900141d51.lean/declarations/segmentcongruencetransitive--56f3d620d1cc7dc5895294ee.md) | 40 | `declaration-track:56f3d620d1cc7dc5895294ee4371a7aeb36b0470558e088a3f712cf20ba6a972` |
| 5 | `def` | [AngleCongruenceReflexive](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant9f78c5bb4bcf4a8286e4322b889972da34187bd38445f08582c9953900141d51.lean/declarations/anglecongruencereflexive--597ac3670d443aab51a9e6d7.md) | 48 | `declaration-track:597ac3670d443aab51a9e6d73203d937155a46a430d47bc6954fc5f029211100` |
| 6 | `def` | [IsEquilateral](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Congruence/Variant9f78c5bb4bcf4a8286e4322b889972da34187bd38445f08582c9953900141d51.lean/declarations/isequilateral--d0a795ee84ed3840ec6cd81f.md) | 54 | `declaration-track:d0a795ee84ed3840ec6cd81f9f3c9af024aa22f65c446b37f5abc07304a26ca0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
