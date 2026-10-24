# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.WeilPositiveLimit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33d3e6fe90f12a9f2837a6342c9dfb6c4f5b754b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33d3e6fe90f12a9f2837a6342c9dfb6c4f5b754b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WeilCriterion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveGramFamily](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/declarations/positivegramfamily--8b471bd5e4fab505d5a0c94b.md) | 32 | `declaration-track:8b471bd5e4fab505d5a0c94b9f39aa6cf29b3b0a93a1a3b1e15282058b96e942` |
| 2 | `def` | [gram](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/declarations/gram--654535f51b331d1a6afb744a.md) | 48 | `declaration-track:654535f51b331d1a6afb744a03ac149d777d451522978a5410b2543162357b46` |
| 3 | `def` | [diagonal](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/declarations/diagonal--2cc1fbfd20281d76d39808c0.md) | 59 | `declaration-track:2cc1fbfd20281d76d39808c026fee71d4b628ecdc66f03471785ac6672da77c5` |
| 4 | `theorem` | [diagonal_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/declarations/diagonal-nonnegative--3cdedbe6fe2d3a69354f1445.md) | 70 | `result-track:3cdedbe6fe2d3a69354f1445b4f257dcb705bdb3c807ed1d8fc8b6a33c548bc2` |
| 5 | `structure` | [DiagonalPositiveGramLimit](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/declarations/diagonalpositivegramlimit--e6f74b9eff2f2c40ebc4c1b3.md) | 85 | `declaration-track:e6f74b9eff2f2c40ebc4c1b3f6fe105051e4015a80091859d25ed6e19d5ad149` |
| 6 | `theorem` | [positiveDiagonal](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/declarations/positivediagonal--6a3d63861b574b157030f134.md) | 102 | `result-track:6a3d63861b574b157030f134bb5e3980645de4abebb3a76a585ffa3ec0176289` |
| 7 | `theorem` | [riemannHypothesis](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/declarations/riemannhypothesis--435303a3537839808898301c.md) | 117 | `result-track:435303a3537839808898301c456c843f7c607be741f25e83bb371620749dcdd3` |
| 8 | `structure` | [PolarizedPositiveGramLimit](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/declarations/polarizedpositivegramlimit--bdeea4e2cc9145537f5bdbb4.md) | 133 | `declaration-track:bdeea4e2cc9145537f5bdbb439a5299c12d4cacafddf518b97218148a05ab452` |
| 9 | `def` | [toDiagonal](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/declarations/todiagonal--48d010a76a3ad752865a1b0d.md) | 150 | `declaration-track:48d010a76a3ad752865a1b0d37bdb42e21dd8416b1eb1b1b15c2c55f2289c118` |
| 10 | `theorem` | [riemannHypothesis](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/declarations/riemannhypothesis--ae050e09035cd61c5f6ff52d.md) | 172 | `result-track:ae050e09035cd61c5f6ff52de929763ad2753b09b93bc0353b69825cf067b484` |
| 11 | `structure` | [DiagonalErrorBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/declarations/diagonalerrorbound--7cffc31566c0c4c96ff977ae.md) | 188 | `declaration-track:7cffc31566c0c4c96ff977ae31c1deba175fc0467e447fe85620756f1a4bee80` |
| 12 | `theorem` | [tendsto_diagonal](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/declarations/tendsto-diagonal--3553cf0e0082d3e015d3396c.md) | 209 | `result-track:3553cf0e0082d3e015d3396c2b0afd2d33436cb5f71b05958ec73f9c0c22d070` |
| 13 | `def` | [toLimit](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/declarations/tolimit--2741b05d2a8945b423b725ab.md) | 228 | `declaration-track:2741b05d2a8945b423b725ab054a6df3f3b61e0a34b8ce0a015e15027acd9aba` |
| 14 | `theorem` | [no_positiveGramLimit_at_negativeWitness](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/declarations/no-positivegramlimit-at-negativewitness--6db30e939de7be353ddd0983.md) | 246 | `result-track:6db30e939de7be353ddd0983085dc805fcb7650c5841dd420f69ee32dce42ff4` |
| 15 | `theorem` | [nonnegative_limit_of_approximately_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/declarations/nonnegative-limit-of-approximately-nonnegative--f35ae976a0912e3f7041201d.md) | 266 | `result-track:f35ae976a0912e3f7041201de7f7e8b31cd2f273d363f92072141c1265b13438` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
