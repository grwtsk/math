# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFirstMomentHarmonic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "616625d43a152715df1a9e6854f8b158e39e0f40",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentHarmonic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentHarmonic.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentHarmonic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `616625d43a152715df1a9e6854f8b158e39e0f40`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentHarmonic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentHarmonic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFirstMomentCorrection`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentCorrection.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reciprocal_Icc_one_twoX_eq_harmonic](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentHarmonic.lean/declarations/reciprocal-icc-one-twox-eq-harmonic--ea6cdfd27beeff49e3cca932.md) | 14 | `result-track:ea6cdfd27beeff49e3cca9327a1b0318db9b40b293ebd5b21734ce3a63c99c85` |
| 2 | `theorem` | [reciprocal_Icc_one_twoX_le_one_add_log](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentHarmonic.lean/declarations/reciprocal-icc-one-twox-le-one-add-log--ebcc5e62df80f2b4a34530a0.md) | 22 | `result-track:ebcc5e62df80f2b4a34530a09c17ee0f543e09b4897ff51069b8933046c17431` |
| 3 | `theorem` | [nonAliasingFejerFirstMomentHarmonicBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentHarmonic.lean/declarations/nonaliasingfejerfirstmomentharmonicbound--e9c25899ccdb2017e77a2078.md) | 30 | `result-track:e9c25899ccdb2017e77a20785c3f32da2dc3e42ee63d5debd892a2f3ee2a98b9` |
| 4 | `theorem` | [nonAliasingFejerFirstMomentBudget_le_logSquaredShape](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentHarmonic.lean/declarations/nonaliasingfejerfirstmomentbudget-le-logsquaredshape--204d9116885e5448c4b63a21.md) | 67 | `result-track:204d9116885e5448c4b63a21d7d995a0c205ba96325c1a282aa52edad7377c93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
