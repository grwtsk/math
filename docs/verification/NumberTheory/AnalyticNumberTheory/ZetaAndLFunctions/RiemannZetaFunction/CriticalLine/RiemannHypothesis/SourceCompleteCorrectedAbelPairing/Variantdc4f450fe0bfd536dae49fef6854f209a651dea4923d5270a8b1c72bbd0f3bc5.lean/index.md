# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCompleteCorrectedAbelPairing.Variantdc4f450fe0bfd536dae49fef6854f209a651dea4923d5270a8b1c72bbd0f3bc5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "426345fc25cb651e30f8c9a75a8512431b038762",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteCorrectedAbelPairing/Variantdc4f450fe0bfd536dae49fef6854f209a651dea4923d5270a8b1c72bbd0f3bc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteCorrectedAbelPairing/Variantdc4f450fe0bfd536dae49fef6854f209a651dea4923d5270a8b1c72bbd0f3bc5.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteCorrectedAbelPairing/Variantdc4f450fe0bfd536dae49fef6854f209a651dea4923d5270a8b1c72bbd0f3bc5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `426345fc25cb651e30f8c9a75a8512431b038762`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteCorrectedAbelPairing/Variantdc4f450fe0bfd536dae49fef6854f209a651dea4923d5270a8b1c72bbd0f3bc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteCorrectedAbelPairing/Variantdc4f450fe0bfd536dae49fef6854f209a651dea4923d5270a8b1c72bbd0f3bc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCorrectedOmegaPeanoTaylor` — import line 6; external provider; requires a separately pinned dependency.
- `SourceStrictComplementaryAbel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completeCorrectedAbelPairing](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteCorrectedAbelPairing/Variantdc4f450fe0bfd536dae49fef6854f209a651dea4923d5270a8b1c72bbd0f3bc5.lean/declarations/completecorrectedabelpairing--dfb863b40be994948f81993e.md) | 35 | `declaration-track:dfb863b40be994948f81993eba93f93a0a257032664aa88adbb5b5f92af06457` |
| 2 | `theorem` | [correctedCompleteOmega_eq_complete_pairing](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteCorrectedAbelPairing/Variantdc4f450fe0bfd536dae49fef6854f209a651dea4923d5270a8b1c72bbd0f3bc5.lean/declarations/correctedcompleteomega-eq-complete-pairing--d7a3275f81458237fa0499d7.md) | 41 | `result-track:d7a3275f81458237fa0499d78debf430e9edfc8fa7118b178c2eda67f7efd8d3` |
| 3 | `theorem` | [completeOmega_eq_complete_pairing_add_actualPeanoError](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteCorrectedAbelPairing/Variantdc4f450fe0bfd536dae49fef6854f209a651dea4923d5270a8b1c72bbd0f3bc5.lean/declarations/completeomega-eq-complete-pairing-add-actualpeanoerror--e7cdf2121de82601d4af5245.md) | 48 | `result-track:e7cdf2121de82601d4af5245cbc9428726a7d863e5cbbd9eba71ca5172e71cf7` |
| 4 | `theorem` | [integerJ_eq_complete_pairing_add_actual_errors](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteCorrectedAbelPairing/Variantdc4f450fe0bfd536dae49fef6854f209a651dea4923d5270a8b1c72bbd0f3bc5.lean/declarations/integerj-eq-complete-pairing-add-actual-errors--912e0a7850c0f43e34ab2b8b.md) | 54 | `result-track:912e0a7850c0f43e34ab2b8ba48c08ad1be1606a0681bc25f3a0fc13ccff58d6` |
| 5 | `theorem` | [mertensResidual_eq_complete_pairing_add_plain_add_actual_errors](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteCorrectedAbelPairing/Variantdc4f450fe0bfd536dae49fef6854f209a651dea4923d5270a8b1c72bbd0f3bc5.lean/declarations/mertensresidual-eq-complete-pairing-add-plain-add-actual-errors--2a0bbea61b86810a9fd6b80a.md) | 61 | `result-track:2a0bbea61b86810a9fd6b80a2e05168c6c37fab5f882c9ff43d6cab0c85ffb5b` |
| 6 | `theorem` | [integerJ_sub_complete_pairing_abs_le_of_actual_row_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteCorrectedAbelPairing/Variantdc4f450fe0bfd536dae49fef6854f209a651dea4923d5270a8b1c72bbd0f3bc5.lean/declarations/integerj-sub-complete-pairing-abs-le-of-actual-row-bound--93ae02c1db1f0111a3405820.md) | 70 | `result-track:93ae02c1db1f0111a34058202946b0fa844f2d36e40012e297df811dcaad6bfc` |
| 7 | `theorem` | [residual_sub_complete_pairing_sub_zeta_abs_lt_of_actual_row_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteCorrectedAbelPairing/Variantdc4f450fe0bfd536dae49fef6854f209a651dea4923d5270a8b1c72bbd0f3bc5.lean/declarations/residual-sub-complete-pairing-sub-zeta-abs-lt-of-actual-row-bound--592e07fd710a7fb28ba8b515.md) | 79 | `result-track:592e07fd710a7fb28ba8b515ea8766b4c159933582f2389396f9a8a0625f26c0` |
| 8 | `theorem` | [estimate_of_complete_corrected_Abel_tail_at_radius](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteCorrectedAbelPairing/Variantdc4f450fe0bfd536dae49fef6854f209a651dea4923d5270a8b1c72bbd0f3bc5.lean/declarations/estimate-of-complete-corrected-abel-tail-at-radius--163a02009104a5498184f537.md) | 89 | `result-track:163a02009104a5498184f537a6bc3a5550143417179ebe2a63055c672afe001e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
