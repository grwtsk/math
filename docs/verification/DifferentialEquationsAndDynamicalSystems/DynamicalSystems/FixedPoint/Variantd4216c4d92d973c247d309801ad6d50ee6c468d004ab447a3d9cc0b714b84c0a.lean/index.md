# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.FixedPoint.Variantd4216c4d92d973c247d309801ad6d50ee6c468d004ab447a3d9cc0b714b84c0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7dbe1b56ad9aeca3710510ad20e03434dc78d13",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantd4216c4d92d973c247d309801ad6d50ee6c468d004ab447a3d9cc0b714b84c0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantd4216c4d92d973c247d309801ad6d50ee6c468d004ab447a3d9cc0b714b84c0a.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantd4216c4d92d973c247d309801ad6d50ee6c468d004ab447a3d9cc0b714b84c0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7dbe1b56ad9aeca3710510ad20e03434dc78d13`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantd4216c4d92d973c247d309801ad6d50ee6c468d004ab447a3d9cc0b714b84c0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantd4216c4d92d973c247d309801ad6d50ee6c468d004ab447a3d9cc0b714b84c0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.FixedPoints.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Relaxation.Operator` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FixedPoint](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantd4216c4d92d973c247d309801ad6d50ee6c468d004ab447a3d9cc0b714b84c0a.lean/declarations/fixedpoint--4b42805d3534128ef203f046.md) | 17 | `declaration-track:4b42805d3534128ef203f046bf36dfefe319b1932eb8a90c07c67004956cf7d6` |
| 2 | `theorem` | [eventually_fixed](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantd4216c4d92d973c247d309801ad6d50ee6c468d004ab447a3d9cc0b714b84c0a.lean/declarations/eventually-fixed--a83dc63fa8a828e2331e6cc4.md) | 27 | `result-track:a83dc63fa8a828e2331e6cc4217e22521791e67dd1f50250c478bed0c58a8066` |
| 3 | `theorem` | [reaches_fixed_point](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantd4216c4d92d973c247d309801ad6d50ee6c468d004ab447a3d9cc0b714b84c0a.lean/declarations/reaches-fixed-point--5815b8fc17985fd754c13efe.md) | 51 | `result-track:5815b8fc17985fd754c13efe07d45f4a322da9570a5041dc9cd79ec96a41f2ce` |
| 4 | `theorem` | [iterates_preserve_constraints](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantd4216c4d92d973c247d309801ad6d50ee6c468d004ab447a3d9cc0b714b84c0a.lean/declarations/iterates-preserve-constraints--2868cb5c913a6b03273ff0fe.md) | 59 | `result-track:2868cb5c913a6b03273ff0fe976c4fbf5dece111c74b85beab6df9447cda002a` |
| 5 | `theorem` | [iterates_preserve_scope](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantd4216c4d92d973c247d309801ad6d50ee6c468d004ab447a3d9cc0b714b84c0a.lean/declarations/iterates-preserve-scope--b101ae3ce952d6cdaf75eb24.md) | 79 | `result-track:b101ae3ce952d6cdaf75eb2473a3bacb7ebc2002bc5b4d82301e11c47f6b1607` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
