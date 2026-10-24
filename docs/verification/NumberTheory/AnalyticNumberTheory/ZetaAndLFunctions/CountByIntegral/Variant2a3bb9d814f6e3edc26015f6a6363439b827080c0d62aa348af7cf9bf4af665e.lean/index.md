# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.CountByIntegral.Variant2a3bb9d814f6e3edc26015f6a6363439b827080c0d62aa348af7cf9bf4af665e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6dc0b19f21a4a031573ad63c3edd2c75c193e00",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variant2a3bb9d814f6e3edc26015f6a6363439b827080c0d62aa348af7cf9bf4af665e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variant2a3bb9d814f6e3edc26015f6a6363439b827080c0d62aa348af7cf9bf4af665e.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variant2a3bb9d814f6e3edc26015f6a6363439b827080c0d62aa348af7cf9bf4af665e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6dc0b19f21a4a031573ad63c3edd2c75c193e00`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variant2a3bb9d814f6e3edc26015f6a6363439b827080c0d62aa348af7cf9bf4af665e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variant2a3bb9d814f6e3edc26015f6a6363439b827080c0d62aa348af7cf9bf4af665e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Analytic.RectangleLogDeriv` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.Statement.SeamClosed` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [analyticAt_completedRiemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variant2a3bb9d814f6e3edc26015f6a6363439b827080c0d62aa348af7cf9bf4af665e.lean/declarations/analyticat-completedriemannzeta--aa9f9c1f360df1d49a223ff2.md) | 32 | `result-track:aa9f9c1f360df1d49a223ff2d5833cd7a030db0380a2e49c95b1c93694363066` |
| 2 | `lemma` | [completedRiemannZeta_eq_Gammaℝ_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variant2a3bb9d814f6e3edc26015f6a6363439b827080c0d62aa348af7cf9bf4af665e.lean/declarations/completedriemannzeta-eq-gamma-mul--810e26b014e9e44d8c6c9abb.md) | 41 | `result-track:810e26b014e9e44d8c6c9abb89d5eadc5269b5a5ce7adc67dd6e6ec2c74a6e71` |
| 3 | `lemma` | [completedRiemannZeta_eq_zero_iff_of_re_pos](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variant2a3bb9d814f6e3edc26015f6a6363439b827080c0d62aa348af7cf9bf4af665e.lean/declarations/completedriemannzeta-eq-zero-iff-of-re-pos--b80c33772894156fd2ebf34b.md) | 46 | `result-track:b80c33772894156fd2ebf34ba0ab3f1754ba0ab468e759ad29c705c026de9fc8` |
| 4 | `lemma` | [completedRiemannZeta_ne_zero_of_one_le_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variant2a3bb9d814f6e3edc26015f6a6363439b827080c0d62aa348af7cf9bf4af665e.lean/declarations/completedriemannzeta-ne-zero-of-one-le-re--7012da1281341df504788c98.md) | 53 | `result-track:7012da1281341df504788c98404aea2eef9f4b5a9d1abcdfd90d7ad22d45f33d` |
| 5 | `lemma` | [completedRiemannZeta_ne_zero_of_re_nonpos](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variant2a3bb9d814f6e3edc26015f6a6363439b827080c0d62aa348af7cf9bf4af665e.lean/declarations/completedriemannzeta-ne-zero-of-re-nonpos--192c60730d043a5f50ff118c.md) | 58 | `result-track:192c60730d043a5f50ff118cb4f084b64e1167637bf72493e4f824a33cf26909` |
| 6 | `lemma` | [completedRiemannZeta_eq_zero_iff](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variant2a3bb9d814f6e3edc26015f6a6363439b827080c0d62aa348af7cf9bf4af665e.lean/declarations/completedriemannzeta-eq-zero-iff--b3f7a7fc972e13e567952743.md) | 65 | `result-track:b3f7a7fc972e13e5679527432a3ef58f0b8e9a4db47f8587a793fce3be179de2` |
| 7 | `lemma` | [analyticOrderNatAt_completedRiemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variant2a3bb9d814f6e3edc26015f6a6363439b827080c0d62aa348af7cf9bf4af665e.lean/declarations/analyticordernatat-completedriemannzeta--f8d950378400d10036e4ab76.md) | 81 | `result-track:f8d950378400d10036e4ab7637719981b2a9cf95f0e892c3bd66c78fae0ceb3b` |
| 8 | `theorem` | [rectangleIntegral'_logDeriv_completedZeta_eq_Ncount](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CountByIntegral/Variant2a3bb9d814f6e3edc26015f6a6363439b827080c0d62aa348af7cf9bf4af665e.lean/declarations/rectangleintegral-logderiv-completedzeta-eq-ncount--52e2ab4b197cb5978c43e6f2.md) | 98 | `result-track:52e2ab4b197cb5978c43e6f2c37cc41e1310e7bf34eca5bda1160623ec5ad72d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
