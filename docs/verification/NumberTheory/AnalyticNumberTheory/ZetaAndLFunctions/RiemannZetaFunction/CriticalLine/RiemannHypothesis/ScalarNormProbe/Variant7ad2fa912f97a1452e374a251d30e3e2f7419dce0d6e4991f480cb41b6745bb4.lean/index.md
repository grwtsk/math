# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScalarNormProbe.Variant7ad2fa912f97a1452e374a251d30e3e2f7419dce0d6e4991f480cb41b6745bb4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b33ee62074b080570c9a62069df2bde5996e8c0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarNormProbe/Variant7ad2fa912f97a1452e374a251d30e3e2f7419dce0d6e4991f480cb41b6745bb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarNormProbe/Variant7ad2fa912f97a1452e374a251d30e3e2f7419dce0d6e4991f480cb41b6745bb4.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarNormProbe/Variant7ad2fa912f97a1452e374a251d30e3e2f7419dce0d6e4991f480cb41b6745bb4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b33ee62074b080570c9a62069df2bde5996e8c0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarNormProbe/Variant7ad2fa912f97a1452e374a251d30e3e2f7419dce0d6e4991f480cb41b6745bb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarNormProbe/Variant7ad2fa912f97a1452e374a251d30e3e2f7419dce0d6e4991f480cb41b6745bb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceProjectionReadout` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtNorm` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [scalarContinuumAnchor_norm_le_two](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarNormProbe/Variant7ad2fa912f97a1452e374a251d30e3e2f7419dce0d6e4991f480cb41b6745bb4.lean/declarations/scalarcontinuumanchor-norm-le-two--76116f2467e03f2b52fef3c5.md) | 12 | `result-track:76116f2467e03f2b52fef3c5c10699106c312a288e28c1ecc77800d65a94ff64` |
| 2 | `theorem` | [scalarCompensatedPrimeOperator_norm_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarNormProbe/Variant7ad2fa912f97a1452e374a251d30e3e2f7419dce0d6e4991f480cb41b6745bb4.lean/declarations/scalarcompensatedprimeoperator-norm-lower--457853b28c54ad177d07f258.md) | 24 | `result-track:457853b28c54ad177d07f2587374675682e9d0acf0b05045d0d0e9e40f8912aa` |
| 3 | `theorem` | [scalarCompensatedPrimeOperator_norm_not_eventually_bounded](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarNormProbe/Variant7ad2fa912f97a1452e374a251d30e3e2f7419dce0d6e4991f480cb41b6745bb4.lean/declarations/scalarcompensatedprimeoperator-norm-not-eventually-bounded--06db3d07d7a5d0369bab43f8.md) | 33 | `result-track:06db3d07d7a5d0369bab43f847f72bb65799b2072afb0ceb3a45051a508ad393` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
