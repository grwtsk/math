# Verification target: GRWTSK.NumberTheory.LSeries.ClosedMoebiusPolynomial

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c3a3052330aeaac88775840489ff6922f8c2958",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/LSeries/ClosedMoebiusPolynomial.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/LSeries/ClosedMoebiusPolynomial.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/LSeries/ClosedMoebiusPolynomial.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c3a3052330aeaac88775840489ff6922f8c2958`.

Source path: `GRWTSK/NumberTheory/LSeries/ClosedMoebiusPolynomial.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/LSeries/ClosedMoebiusPolynomial.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.LSeries.TruncatedMoebiusSeries`](../../../../mathematics/NumberTheory/LSeries/TruncatedMoebiusSeries.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [closed_moebius_series_finite](../../../../mathematics/NumberTheory/LSeries/ClosedMoebiusPolynomial.lean/declarations/closed-moebius-series-finite--f2f62f4c5d4841f6a0ba239d.md) | 20 | `result-track:f2f62f4c5d4841f6a0ba239dcede99e96bfad5eac46600a8b203d4e80ddef727` |
| 2 | `theorem` | [closed_moebius_series_exp](../../../../mathematics/NumberTheory/LSeries/ClosedMoebiusPolynomial.lean/declarations/closed-moebius-series-exp--2c75a2f81caf317a40f2606c.md) | 45 | `result-track:2c75a2f81caf317a40f2606c8850c0cf7174f52fd2dd36c263354bbf981ee170` |
| 3 | `theorem` | [closed_moebius_series_analyticAt](../../../../mathematics/NumberTheory/LSeries/ClosedMoebiusPolynomial.lean/declarations/closed-moebius-series-analyticat--834cb6e102fabce0115d3bb3.md) | 56 | `result-track:834cb6e102fabce0115d3bb367f848a32f301ac76bab1c6a26181de081e1a7e6` |
| 4 | `theorem` | [closed_moebius_series_zero](../../../../mathematics/NumberTheory/LSeries/ClosedMoebiusPolynomial.lean/declarations/closed-moebius-series-zero--8d5efca675063da607592c30.md) | 67 | `result-track:8d5efca675063da607592c3067626e74576c59e5432622b765cba9dbd5e7f506` |
| 5 | `theorem` | [closed_moebius_series_one](../../../../mathematics/NumberTheory/LSeries/ClosedMoebiusPolynomial.lean/declarations/closed-moebius-series-one--4d968159b34e526141408db8.md) | 72 | `result-track:4d968159b34e526141408db83dfabe5ed0437676a713779c14e360b0f401e27f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
