# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.RatioInsertionCutoffsAudit.Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e1c3dd16333d4f197e16a5ca35b0b3d6deb1a85",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e1c3dd16333d4f197e16a5ca35b0b3d6deb1a85`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteDensityInsertion` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [max_two_left_bounds](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/declarations/max-two-left-bounds--cdb7cd92445510442d12a11c.md) | 11 | `result-track:cdb7cd92445510442d12a11c4e8ea928900d6301a1eb0d8ae8a812297fab2704` |
| 2 | `theorem` | [commonScale_two_left_bounds](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/declarations/commonscale-two-left-bounds--a5fed212cc9b6fd489264f23.md) | 14 | `result-track:a5fed212cc9b6fd489264f23fb9bd54e0e934d9dcc500fc8c2049ef0cc8987ae` |
| 3 | `theorem` | [commonScale_two_right_bounds](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/declarations/commonscale-two-right-bounds--a1411cb680f845e8373ce6e1.md) | 23 | `result-track:a1411cb680f845e8373ce6e1744cae776c1181dfd7b5c9d8f9ce70c21f51a0d7` |
| 4 | `theorem` | [commonScale_two_left_eq_full](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/declarations/commonscale-two-left-eq-full--59a92722279ee5618da7038a.md) | 28 | `result-track:59a92722279ee5618da7038af1c333e070af8c65773303ee24c6f759a63fca64` |
| 5 | `theorem` | [commonScale_two_left_eq_half](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/declarations/commonscale-two-left-eq-half--e84f593168b61ffb7510c4b5.md) | 32 | `result-track:e84f593168b61ffb7510c4b5bb35739c6e2fc98ceb5d45248fdaa827dfd929c7` |
| 6 | `theorem` | [commonScale_two_left_intermediate](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/declarations/commonscale-two-left-intermediate--b278dee621d165dad968c6f8.md) | 37 | `result-track:b278dee621d165dad968c6f8f0d56e85a0b9c9a8ecc0516031cb901db4c06870` |
| 7 | `theorem` | [commonScale_two_left_cases](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/declarations/commonscale-two-left-cases--b2a7ea334b413bce4d729332.md) | 42 | `result-track:b2a7ea334b413bce4d7293327c62dc8533fb6e85fdcc55d989c2f2f97628688b` |
| 8 | `theorem` | [commonScale_two_left_empty](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/declarations/commonscale-two-left-empty--8af608304a32fa396d1d3e5e.md) | 50 | `result-track:8af608304a32fa396d1d3e5e3a4ffee72db49b83c663190ae05d8e74d8f640ea` |
| 9 | `theorem` | [sqrt_commonScale_two_left_bounds](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/declarations/sqrt-commonscale-two-left-bounds--93e96f1ded4fd33fd986df21.md) | 55 | `result-track:93e96f1ded4fd33fd986df21e9d7e7a723334cbd6dfd0eb5c109f5e698ef3ee8` |
| 10 | `theorem` | [commonScale_eight_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/declarations/commonscale-eight-iff--7c5e84a754e3afe4927f1f13.md) | 61 | `result-track:7c5e84a754e3afe4927f1f1397517dfdfcf26cfaa20e4494094db8229137d63a` |
| 11 | `theorem` | [sqrt_commonScale_two_left_admissible](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/declarations/sqrt-commonscale-two-left-admissible--ea046d7ba6f20b859be5ff43.md) | 65 | `result-track:ea046d7ba6f20b859be5ff43bdca5943055c37253c0b9c5b1627bcd240ce0504` |
| 12 | `theorem` | [signed_two_density_left_cutoffs_error_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/declarations/signed-two-density-left-cutoffs-error-le--00971df8ed22d9c8d93e832a.md) | 75 | `result-track:00971df8ed22d9c8d93e832a24e1288f7ac12fc5e8b3904c04792a7e53a71e50` |
| 13 | `theorem` | [sqrt_commonScale_two_right_admissible](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/declarations/sqrt-commonscale-two-right-admissible--912b6c527c235b065dbfd9ce.md) | 88 | `result-track:912b6c527c235b065dbfd9cea5642e73f4e4fb398b378ac9404e90500fba143e` |
| 14 | `theorem` | [signed_two_density_right_cutoffs_error_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/declarations/signed-two-density-right-cutoffs-error-le--63444d6a5492720cb7d3870c.md) | 95 | `result-track:63444d6a5492720cb7d3870c9cd26765d62213883684986b72675cc394d870a4` |
| 15 | `theorem` | [signed_two_density_both_cutoffs_error_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/declarations/signed-two-density-both-cutoffs-error-le--46380aae00b885d9d475a17f.md) | 108 | `result-track:46380aae00b885d9d475a17fda8155826e48158e3f259c25d00f4dbc3da49d0a` |
| 16 | `theorem` | [actual_two_density_coefficient_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/declarations/actual-two-density-coefficient-eq--a006ddca1d222bc7ceac1ce0.md) | 148 | `result-track:a006ddca1d222bc7ceac1ce0e42981abce1e22dcf352da196f7613ce9071759d` |
| 17 | `theorem` | [actual_two_density_cutoff_error_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/declarations/actual-two-density-cutoff-error-le--3976132baaf9bf06da55f438.md) | 171 | `result-track:3976132baaf9bf06da55f438394e546afa5bf523ac292c84e52849d5c837d6a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
