# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.FixedPoint.Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ee5f99fbca4c07ceeb2c16dcf9b377de48cc5b7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ee5f99fbca4c07ceeb2c16dcf9b377de48cc5b7`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.FixedPoints.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Relaxation.Operator` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FixedPoint](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean/declarations/fixedpoint--cb183c9b897b08671358797a.md) | 9 | `declaration-track:cb183c9b897b08671358797a4a4a0e0bcecce2bb60ba5c1800b42eacabff26e1` |
| 2 | `theorem` | [eventually_fixed](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean/declarations/eventually-fixed--868a7d8caed141626be234a0.md) | 19 | `result-track:868a7d8caed141626be234a0e8f303cd72a0224a06ed6f090104ad76c8207c13` |
| 3 | `theorem` | [reaches_fixed_point](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean/declarations/reaches-fixed-point--3a4fd4a849bda805ec79357e.md) | 43 | `result-track:3a4fd4a849bda805ec79357e74a0fc6a10939eb7c2a743469e7ae70e758848db` |
| 4 | `theorem` | [iterates_preserve_constraints](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean/declarations/iterates-preserve-constraints--660ccc4abf72372302c526df.md) | 51 | `result-track:660ccc4abf72372302c526df996fdc9919f5d923ba054f265b2af944bb122785` |
| 5 | `theorem` | [iterates_preserve_scope](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean/declarations/iterates-preserve-scope--859f7763e695470395033712.md) | 71 | `result-track:859f7763e695470395033712914570209fa527792f27cad8c7eac8c7b086d46a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
