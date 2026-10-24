# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.SourceActualPsiComplexMellin.Variant590a6edcb7472f3071b937fb924791da46730a7bf24b1f1e29735bb4c77d8cd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b05af6d2f2f60a1dcee077f72da076852d9ee7cb",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant590a6edcb7472f3071b937fb924791da46730a7bf24b1f1e29735bb4c77d8cd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant590a6edcb7472f3071b937fb924791da46730a7bf24b1f1e29735bb4c77d8cd0.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant590a6edcb7472f3071b937fb924791da46730a7bf24b1f1e29735bb4c77d8cd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b05af6d2f2f60a1dcee077f72da076852d9ee7cb`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant590a6edcb7472f3071b937fb924791da46730a7bf24b1f1e29735bb4c77d8cd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant590a6edcb7472f3071b937fb924791da46730a7bf24b1f1e29735bb4c77d8cd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiExponentialEnvelope` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.SumCoeff` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualPsiComplexMellin](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant590a6edcb7472f3071b937fb924791da46730a7bf24b1f1e29735bb4c77d8cd0.lean/declarations/actualpsicomplexmellin--a8dda830246b767a488aa58b.md) | 27 | `declaration-track:a8dda830246b767a488aa58bf121886f8dfdeda729742660a78250981efc950c` |
| 2 | `theorem` | [psi_eq_closed_sum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant590a6edcb7472f3071b937fb924791da46730a7bf24b1f1e29735bb4c77d8cd0.lean/declarations/psi-eq-closed-sum--b094494591818dc3924d43e6.md) | 30 | `result-track:b094494591818dc3924d43e64b30e2c380ab5cc01f18dfbdb2b114f61ff13423` |
| 3 | `theorem` | [actual_vonMangoldt_prefix_bigO](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant590a6edcb7472f3071b937fb924791da46730a7bf24b1f1e29735bb4c77d8cd0.lean/declarations/actual-vonmangoldt-prefix-bigo--2c3068047a8dba89ec597e18.md) | 35 | `result-track:2c3068047a8dba89ec597e1837ba3b4eb48712564c5974add54828a65b6ae86f` |
| 4 | `theorem` | [actual_psi_measurable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant590a6edcb7472f3071b937fb924791da46730a7bf24b1f1e29735bb4c77d8cd0.lean/declarations/actual-psi-measurable--cc9f7d58d9a4f53ffd55a21e.md) | 46 | `result-track:cc9f7d58d9a4f53ffd55a21ef813a4f06a0349e14ad0835f4c3df6614dda31f2` |
| 5 | `theorem` | [actualPsiComplexMellin_integrableOn](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant590a6edcb7472f3071b937fb924791da46730a7bf24b1f1e29735bb4c77d8cd0.lean/declarations/actualpsicomplexmellin-integrableon--d852db3f9b0d16720a95cb17.md) | 56 | `result-track:d852db3f9b0d16720a95cb178a01f7eea3cf40a0fcadf202a7fe6393f841b682` |
| 6 | `theorem` | [actualPsiComplexMellin_mul_eq_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant590a6edcb7472f3071b937fb924791da46730a7bf24b1f1e29735bb4c77d8cd0.lean/declarations/actualpsicomplexmellin-mul-eq-lseries--fac60f8712479fe8adf92eda.md) | 86 | `result-track:fac60f8712479fe8adf92eda41546470de228607123c81754315218c908978fa` |
| 7 | `theorem` | [actualPsiComplexMellin_mul_eq_neg_zeta_deriv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant590a6edcb7472f3071b937fb924791da46730a7bf24b1f1e29735bb4c77d8cd0.lean/declarations/actualpsicomplexmellin-mul-eq-neg-zeta-deriv--34a472a4b841b42d04ea6051.md) | 101 | `result-track:34a472a4b841b42d04ea6051896b4914ecd62ffe1623ccf4e56fe04e5657a94a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
