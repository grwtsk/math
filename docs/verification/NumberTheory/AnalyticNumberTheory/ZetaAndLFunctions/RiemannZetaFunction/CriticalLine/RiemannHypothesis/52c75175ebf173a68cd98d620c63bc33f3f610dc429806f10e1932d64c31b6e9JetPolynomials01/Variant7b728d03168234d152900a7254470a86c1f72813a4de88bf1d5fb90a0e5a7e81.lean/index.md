# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9JetPolynomials01.Variant7b728d03168234d152900a7254470a86c1f72813a4de88bf1d5fb90a0e5a7e81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f569b4256b789d58783b81c98c4f58ebb7a57ff",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9JetPolynomials01/Variant7b728d03168234d152900a7254470a86c1f72813a4de88bf1d5fb90a0e5a7e81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9JetPolynomials01/Variant7b728d03168234d152900a7254470a86c1f72813a4de88bf1d5fb90a0e5a7e81.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9JetPolynomials01/Variant7b728d03168234d152900a7254470a86c1f72813a4de88bf1d5fb90a0e5a7e81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f569b4256b789d58783b81c98c4f58ebb7a57ff`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9JetPolynomials01/Variant7b728d03168234d152900a7254470a86c1f72813a4de88bf1d5fb90a0e5a7e81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9JetPolynomials01/Variant7b728d03168234d152900a7254470a86c1f72813a4de88bf1d5fb90a0e5a7e81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiJetPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9JetPolynomials01/Variant7b728d03168234d152900a7254470a86c1f72813a4de88bf1d5fb90a0e5a7e81.lean/declarations/thetaphijetpolynomial--27fe871f7e9c7ec13cd4e1ea.md) | 25 | `declaration-track:27fe871f7e9c7ec13cd4e1ea8bfd5000f532c1c85a260af18923ab500aead458` |
| 2 | `theorem` | [thetaPhiJetPolynomial_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9JetPolynomials01/Variant7b728d03168234d152900a7254470a86c1f72813a4de88bf1d5fb90a0e5a7e81.lean/declarations/thetaphijetpolynomial-abs-le--87671cbdc129881c30f17203.md) | 34 | `result-track:87671cbdc129881c30f17203c22b8dd8c743d637667330d1d9658c31131a7d7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
