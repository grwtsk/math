# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicThetaVonKochAdapter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "264730f1e44045cd27e7084a286fc99692635206",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicThetaVonKochAdapter.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaVonKochAdapter.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaVonKochAdapter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `264730f1e44045cd27e7084a286fc99692635206`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicThetaVonKochAdapter.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicThetaVonKochAdapter.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicThetaOctaveSupplier`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ClassicalThetaSqrtLogSqBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaVonKochAdapter.lean/declarations/classicalthetasqrtlogsqbound--172ed4c1460dcb404c9998de.md) | 48 | `declaration-track:172ed4c1460dcb404c9998de6687d1663a919dd522dc796afcf7655414a2e7b4` |
| 2 | `theorem` | [eventually_log_sq_le_rpow](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaVonKochAdapter.lean/declarations/eventually-log-sq-le-rpow--479a38a43ec424022291ed7d.md) | 54 | `result-track:479a38a43ec424022291ed7dc24291b6d9c3515480bb68ae2cf1cafbcc199a55` |
| 3 | `theorem` | [classicalThetaSqrtLogSqBound_to_thetaOctave](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaVonKochAdapter.lean/declarations/classicalthetasqrtlogsqbound-to-thetaoctave--32c769ce11ac39dcf1c1b96b.md) | 66 | `result-track:32c769ce11ac39dcf1c1b96bb19208e8f81ffcccf18d2648bb9dd3e0104bfe00` |
| 4 | `theorem` | [classicalThetaSqrtLogSqBound_to_allDyadicEnergyBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaVonKochAdapter.lean/declarations/classicalthetasqrtlogsqbound-to-alldyadicenergybound--5e3fba6aef792f5704d847c6.md) | 205 | `result-track:5e3fba6aef792f5704d847c63578ae065f743298fa47d8ecfb4f02ef06b61700` |
| 5 | `theorem` | [riemannHypothesis_of_classicalThetaSqrtLogSqBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaVonKochAdapter.lean/declarations/riemannhypothesis-of-classicalthetasqrtlogsqbound--cb39ab6d8d04d3800c3d852c.md) | 211 | `result-track:cb39ab6d8d04d3800c3d852c6e4a71eab55745ad1d2cfeea375b91a63b405a98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
