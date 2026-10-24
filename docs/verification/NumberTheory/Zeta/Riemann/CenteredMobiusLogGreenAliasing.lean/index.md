# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenAliasing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1b0c8dcef46994b8ad07b035be53a2dc62b994b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAliasing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAliasing.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAliasing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1b0c8dcef46994b8ad07b035be53a2dc62b994b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAliasing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAliasing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenResidueAbelBound`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueAbelBound.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenContinuumPhaseIntegral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAliasing.lean/declarations/greencontinuumphaseintegral--d738f3eac0476fefafe279d4.md) | 17 | `declaration-track:d738f3eac0476fefafe279d432e8c1d80a3fd664ca776254c8b8066d18bfe75b` |
| 2 | `def` | [greenContinuumConstantIntegral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAliasing.lean/declarations/greencontinuumconstantintegral--24db9a6f66c4b2f0413de133.md) | 22 | `declaration-track:24db9a6f66c4b2f0413de133f3fdd6f23522d51503ba53afabe466b368bb026c` |
| 3 | `theorem` | [fourier_mesh_eq_one_of_aliasing](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAliasing.lean/declarations/fourier-mesh-eq-one-of-aliasing--01bcb6d4b2be10261b2690f5.md) | 26 | `result-track:01bcb6d4b2be10261b2690f5cbc95c7e13cb2913079ef609a686ebe19d3c5b6b` |
| 4 | `theorem` | [greenDiscretePhaseRiemannSum_eq_constant_of_aliasing](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAliasing.lean/declarations/greendiscretephaseriemannsum-eq-constant-of-aliasing--b34182d0a6f9afe2f9ff4d02.md) | 43 | `result-track:b34182d0a6f9afe2f9ff4d02e91ecb64dd8d2b1a7452e236a670386b136b313e` |
| 5 | `theorem` | [phaseResidual_sub_constant_of_aliasing](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAliasing.lean/declarations/phaseresidual-sub-constant-of-aliasing--a2292423c4d2b6de5782272d.md) | 58 | `result-track:a2292423c4d2b6de5782272d94fd1ac6e04dbbe74eb28e8689a51b135f5cfd01` |
| 6 | `theorem` | [greenCenteringResidual_aliasing_exact](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAliasing.lean/declarations/greencenteringresidual-aliasing-exact--59fea84d2d75621cc95878d1.md) | 72 | `result-track:59fea84d2d75621cc95878d133d673cb9e4c2c6467fdabe89a9f51911f9f42fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
