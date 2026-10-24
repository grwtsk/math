# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02.Variant0f3757bb404c3ecd1112dea8f16caeaf0338c25a7a2bf825feec9c93bba01693

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d08eadb7b4cf7efccfa98459d8cd75095504e5be",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02/Variant0f3757bb404c3ecd1112dea8f16caeaf0338c25a7a2bf825feec9c93bba01693.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02/Variant0f3757bb404c3ecd1112dea8f16caeaf0338c25a7a2bf825feec9c93bba01693.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02/Variant0f3757bb404c3ecd1112dea8f16caeaf0338c25a7a2bf825feec9c93bba01693.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d08eadb7b4cf7efccfa98459d8cd75095504e5be`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02/Variant0f3757bb404c3ecd1112dea8f16caeaf0338c25a7a2bf825feec9c93bba01693.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02/Variant0f3757bb404c3ecd1112dea8f16caeaf0338c25a7a2bf825feec9c93bba01693.lean.json)

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
| 1 | `def` | [thetaPhiJetPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02/Variant0f3757bb404c3ecd1112dea8f16caeaf0338c25a7a2bf825feec9c93bba01693.lean/declarations/thetaphijetpolynomial--cc197f2fc1e47ee7654d369b.md) | 25 | `declaration-track:cc197f2fc1e47ee7654d369b797c886e018322a310607f4b23970ef7ed0ae807` |
| 2 | `theorem` | [thetaPhiJetPolynomial_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02/Variant0f3757bb404c3ecd1112dea8f16caeaf0338c25a7a2bf825feec9c93bba01693.lean/declarations/thetaphijetpolynomial-abs-le--6bd60c0e04840f308a598b0f.md) | 34 | `result-track:6bd60c0e04840f308a598b0f21c7d636981956352339a5c47cd770cfbbaa8a84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
