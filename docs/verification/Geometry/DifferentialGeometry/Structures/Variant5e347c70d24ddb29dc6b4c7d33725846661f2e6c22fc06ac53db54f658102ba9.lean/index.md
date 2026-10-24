# Verification target: GRWTSK.Geometry.DifferentialGeometry.Structures.Variant5e347c70d24ddb29dc6b4c7d33725846661f2e6c22fc06ac53db54f658102ba9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff44e18ffc8ab1fca92250e27d1163f636b96862",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Structures/Variant5e347c70d24ddb29dc6b4c7d33725846661f2e6c22fc06ac53db54f658102ba9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant5e347c70d24ddb29dc6b4c7d33725846661f2e6c22fc06ac53db54f658102ba9.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant5e347c70d24ddb29dc6b4c7d33725846661f2e6c22fc06ac53db54f658102ba9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff44e18ffc8ab1fca92250e27d1163f636b96862`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Structures/Variant5e347c70d24ddb29dc6b4c7d33725846661f2e6c22fc06ac53db54f658102ba9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Structures/Variant5e347c70d24ddb29dc6b4c7d33725846661f2e6c22fc06ac53db54f658102ba9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Algebra.LieGroup` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContMDiffRing](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant5e347c70d24ddb29dc6b4c7d33725846661f2e6c22fc06ac53db54f658102ba9.lean/declarations/contmdiffring--1e61178cdb0956401f14f53b.md) | 34 | `declaration-track:1e61178cdb0956401f14f53b11779cdb351334b4f90b7f7d97bb62ddbf92939a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant5e347c70d24ddb29dc6b4c7d33725846661f2e6c22fc06ac53db54f658102ba9.lean/declarations/instance--743558079452e86da8614b54.md) | 42 | `declaration-track:743558079452e86da8614b543ef4e633447ced7631836c1d32a46ebdcec8ae06` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant5e347c70d24ddb29dc6b4c7d33725846661f2e6c22fc06ac53db54f658102ba9.lean/declarations/instance--7efc7bca58812913024094fa.md) | 48 | `declaration-track:7efc7bca58812913024094faca1d042bf0d3729dbe5103fce4d6317fdf0ae68c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant5e347c70d24ddb29dc6b4c7d33725846661f2e6c22fc06ac53db54f658102ba9.lean/declarations/instance--2c76f92059da79507c098585.md) | 57 | `declaration-track:2c76f92059da79507c0985850ac5c481868fffa4fb1cad4414e473e8174e1c68` |
| 5 | `theorem` | [topologicalSemiring_of_contMDiffRing](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant5e347c70d24ddb29dc6b4c7d33725846661f2e6c22fc06ac53db54f658102ba9.lean/declarations/topologicalsemiring-of-contmdiffring--a0937169cbf8dc4e79cb5fb4.md) | 74 | `result-track:a0937169cbf8dc4e79cb5fb46f08c5fef31022babf6d4588e8f032e4177aa21a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
