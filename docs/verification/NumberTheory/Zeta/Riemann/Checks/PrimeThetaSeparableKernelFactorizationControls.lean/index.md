# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PrimeThetaSeparableKernelFactorizationControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4f70897034aea70c8bf78728c69de1f36895c6d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PrimeThetaSeparableKernelFactorizationControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaSeparableKernelFactorizationControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaSeparableKernelFactorizationControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4f70897034aea70c8bf78728c69de1f36895c6d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PrimeThetaSeparableKernelFactorizationControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PrimeThetaSeparableKernelFactorizationControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPrimeThetaSeparableKernel`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaSeparableKernel.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positivePolarity](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaSeparableKernelFactorizationControls.lean/declarations/positivepolarity--3f2e92dc6f9dd624cf6f5b84.md) | 15 | `declaration-track:3f2e92dc6f9dd624cf6f5b840f3b53e34d5634a3532414ffb7a27814516202ab` |
| 2 | `theorem` | [concrete_three_clause_separable_criterion](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaSeparableKernelFactorizationControls.lean/declarations/concrete-three-clause-separable-criterion--84ecd4f025a4abcc95e2097b.md) | 19 | `result-track:84ecd4f025a4abcc95e2097b7320db00d447d0b86e2b8a5236af6c670ada0abe` |
| 3 | `theorem` | [concrete_two_clause_separable_criterion](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaSeparableKernelFactorizationControls.lean/declarations/concrete-two-clause-separable-criterion--ce04e5d5b979c09ae61c0f69.md) | 26 | `result-track:ce04e5d5b979c09ae61c0f699ecca099ecc9a88c77957b8ead3c927f531209a4` |
| 4 | `def` | [emptyFactorStage](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaSeparableKernelFactorizationControls.lean/declarations/emptyfactorstage--158a5825a5468c488990c045.md) | 36 | `declaration-track:158a5825a5468c488990c0457d9adc86411dd5b303a63b560232007224af35a8` |
| 5 | `theorem` | [emptyFactorStage_inducedKernel](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaSeparableKernelFactorizationControls.lean/declarations/emptyfactorstage-inducedkernel--2988b8a169179b318f9b7446.md) | 49 | `result-track:2988b8a169179b318f9b74465b79ed8403a3c8a79c039364ba6db6e940c959e4` |
| 6 | `theorem` | [emptyFactorStage_absoluteFactorMass](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaSeparableKernelFactorizationControls.lean/declarations/emptyfactorstage-absolutefactormass--cbab961d6d4c7194d49e94f1.md) | 56 | `result-track:cbab961d6d4c7194d49e94f129437ae341a79703191fb304fb38ce26c57b33ac` |
| 7 | `theorem` | [emptyFactorStage_response](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaSeparableKernelFactorizationControls.lean/declarations/emptyfactorstage-response--636ebe199a148ad6dda79588.md) | 63 | `result-track:636ebe199a148ad6dda795886b05dc0db230f6852fe1ca91c7613409c04fc310` |
| 8 | `theorem` | [empty_factor_stage_not_source_majorant](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaSeparableKernelFactorizationControls.lean/declarations/empty-factor-stage-not-source-majorant--1f5d9a228d61023b83da5be8.md) | 72 | `result-track:1f5d9a228d61023b83da5be859b68ad9aae46fa129eff922bbae7a706c11bed6` |
| 9 | `def` | [requiredSourceObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaSeparableKernelFactorizationControls.lean/declarations/requiredsourceobligations--c8d7bd27bbe61cb2f6a1426b.md) | 83 | `declaration-track:c8d7bd27bbe61cb2f6a1426b504596372378badbbf0f4d5fc1a674a9456a77de` |
| 10 | `def` | [prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimeThetaSeparableKernelFactorizationControls.lean/declarations/prohibitedpromotions--df02e0ecdd00ae2a8e135f4f.md) | 91 | `declaration-track:df02e0ecdd00ae2a8e135f4fbf991be159555ba87860caf98f02b9ae777f9fbd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
