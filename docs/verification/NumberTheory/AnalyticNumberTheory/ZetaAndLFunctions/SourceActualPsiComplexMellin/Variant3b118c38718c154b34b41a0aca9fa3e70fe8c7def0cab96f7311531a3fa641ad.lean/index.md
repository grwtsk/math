# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.SourceActualPsiComplexMellin.Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71c76337b1de25ad5006a608919ebdeed8afdc2a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71c76337b1de25ad5006a608919ebdeed8afdc2a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiExponentialEnvelope` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.SumCoeff` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualPsiComplexMellin](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean/declarations/actualpsicomplexmellin--5ca3dfcbda40319843c7553c.md) | 19 | `declaration-track:5ca3dfcbda40319843c7553c7dbb72be185739fd372228c68196b0eea1977995` |
| 2 | `theorem` | [psi_eq_closed_sum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean/declarations/psi-eq-closed-sum--159bf6db25b8505639f5db89.md) | 22 | `result-track:159bf6db25b8505639f5db891564fe1d7186ac93b4e152d54ac7befd4bbdb1c3` |
| 3 | `theorem` | [actual_vonMangoldt_prefix_bigO](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean/declarations/actual-vonmangoldt-prefix-bigo--43151dfbec41fa0150a36460.md) | 27 | `result-track:43151dfbec41fa0150a36460fbd2670f58a1abd27b01c8c08581d64c0f9baf36` |
| 4 | `theorem` | [actual_psi_measurable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean/declarations/actual-psi-measurable--e0432bcdc1509f9b3b9eed36.md) | 38 | `result-track:e0432bcdc1509f9b3b9eed36283ae8baa26ebbe1514230b1c29508577cb4dd5b` |
| 5 | `theorem` | [actualPsiComplexMellin_integrableOn](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean/declarations/actualpsicomplexmellin-integrableon--6e3a0a87c0580afaf098e2f9.md) | 48 | `result-track:6e3a0a87c0580afaf098e2f9f3cecf55817ae54b252146f674ec42291537f4ff` |
| 6 | `theorem` | [actualPsiComplexMellin_mul_eq_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean/declarations/actualpsicomplexmellin-mul-eq-lseries--cfa4a942bed8fd18073174e7.md) | 78 | `result-track:cfa4a942bed8fd18073174e79dc8ecce43556d952a32dc0dbacdbf3538a5006c` |
| 7 | `theorem` | [actualPsiComplexMellin_mul_eq_neg_zeta_deriv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean/declarations/actualpsicomplexmellin-mul-eq-neg-zeta-deriv--89e06020f44238d4985b7b5d.md) | 93 | `result-track:89e06020f44238d4985b7b5d95f9fba93ce63433657e54a8ec9709ffb69225de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
