# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFourierPrimitiveBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "954b5a574c90cffe4b52390088f08e8a5ce72c24",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierPrimitiveBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierPrimitiveBound.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierPrimitiveBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `954b5a574c90cffe4b52390088f08e8a5ce72c24`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierPrimitiveBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierPrimitiveBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenQuadratureDerivative`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureDerivative.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fourierModeValue_eq_phase_difference_thin](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierPrimitiveBound.lean/declarations/fouriermodevalue-eq-phase-difference-thin--e4d3e6c6b42f64424367c42e.md) | 15 | `result-track:e4d3e6c6b42f64424367c42effd0b6da3cf2efe82e461d6e480dc85d421fe4f3` |
| 2 | `theorem` | [norm_fourier_phase_sub_one_le_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierPrimitiveBound.lean/declarations/norm-fourier-phase-sub-one-le-two--272a97d26a5789c5d83ecbf4.md) | 28 | `result-track:272a97d26a5789c5d83ecbf4cd921cff99075ce5f5525fdfa6e1fb51988b9ddc` |
| 3 | `theorem` | [norm_fourierModeValue_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierPrimitiveBound.lean/declarations/norm-fouriermodevalue-le--74cb38b84e1fb5021ee567c5.md) | 39 | `result-track:74cb38b84e1fb5021ee567c5fbc52bab066e13bb2b2b20142cd9d3fcc478aff2` |
| 4 | `theorem` | [norm_fourierModeValue_le_inv_pi](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFourierPrimitiveBound.lean/declarations/norm-fouriermodevalue-le-inv-pi--4bfbd7411d5cc086f53f4306.md) | 65 | `result-track:4bfbd7411d5cc086f53f430662b6ff9b5744821473fd5f9ce9055e623bc2ad49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
