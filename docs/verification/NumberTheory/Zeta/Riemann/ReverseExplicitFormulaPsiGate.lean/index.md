# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ReverseExplicitFormulaPsiGate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1563ac22421e936af1012ebfc5405b4f14c0f6d1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1563ac22421e936af1012ebfc5405b4f14c0f6d1`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.GradedPsiThresholdTransport`](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedPsiThresholdTransport.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThresholdDescentProgram`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicThetaVonKochAdapter`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaVonKochAdapter.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ClassicalPsiPowerLogSqBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean/declarations/classicalpsipowerlogsqbound--c6e8ccfd18a2f86ca91c9d10.md) | 32 | `declaration-track:c6e8ccfd18a2f86ca91c9d104d6c2ba605f1d944835d6cb666b92bdf42b72ad1` |
| 2 | `theorem` | [classicalPsiPowerLogSqBound_to_psiAtThreshold](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean/declarations/classicalpsipowerlogsqbound-to-psiatthreshold--2d8d9b74c4bc71b579075359.md) | 38 | `result-track:2d8d9b74c4bc71b57907535992454303f4de759881ae04a2fde831361bee3217` |
| 3 | `def` | [ZeroFreeToPsiPowerLogSqAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean/declarations/zerofreetopsipowerlogsqat--8913db155630a649bdcf6650.md) | 168 | `declaration-track:8913db155630a649bdcf6650cbf5dd6859c7cd1aa58c00fa912b4f28c744bf9b` |
| 4 | `theorem` | [zeroFree_reversePsiGate_to_theta](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean/declarations/zerofree-reversepsigate-to-theta--bfabc5087852b4f567f2a590.md) | 172 | `result-track:bfabc5087852b4f567f2a59076df355addd22583085b020c4475ea1f3e179529` |
| 5 | `theorem` | [riemannHypothesis_of_acceptedSevenEighths_reversePsi_quadratic](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean/declarations/riemannhypothesis-of-acceptedseveneighths-reversepsi-quadratic--04cf9b917d90634dbe5cb726.md) | 182 | `result-track:04cf9b917d90634dbe5cb726f210b15739ea8b65b1dc4e0c77b7130cc3136881` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
