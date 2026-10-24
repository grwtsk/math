# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CoreTailSplit.Variantaf4d1e7c577fd259f2a8bc6363f02aecc98c6c277a40e5590dbf7617db1f8b8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3eaa6d1b51d68814fa98f851df51e2519bb640ed",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variantaf4d1e7c577fd259f2a8bc6363f02aecc98c6c277a40e5590dbf7617db1f8b8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variantaf4d1e7c577fd259f2a8bc6363f02aecc98c6c277a40e5590dbf7617db1f8b8f.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variantaf4d1e7c577fd259f2a8bc6363f02aecc98c6c277a40e5590dbf7617db1f8b8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3eaa6d1b51d68814fa98f851df51e2519bb640ed`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variantaf4d1e7c577fd259f2a8bc6363f02aecc98c6c277a40e5590dbf7617db1f8b8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variantaf4d1e7c577fd259f2a8bc6363f02aecc98c6c277a40e5590dbf7617db1f8b8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fullResidualVector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variantaf4d1e7c577fd259f2a8bc6363f02aecc98c6c277a40e5590dbf7617db1f8b8f.lean/declarations/fullresidualvector--31cd140ea8e27f70fb84bf27.md) | 14 | `declaration-track:31cd140ea8e27f70fb84bf2792fc46b4310284a5b386b4042dd766f88cc9cc7d` |
| 2 | `def` | [coreResidualVector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variantaf4d1e7c577fd259f2a8bc6363f02aecc98c6c277a40e5590dbf7617db1f8b8f.lean/declarations/coreresidualvector--f7ba6d5261d4b8b6aad0f201.md) | 18 | `declaration-track:f7ba6d5261d4b8b6aad0f201544ae232a5d13b4cb34a0b8bdad42a8ae963c28b` |
| 3 | `theorem` | [fullResidualVector_ae](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variantaf4d1e7c577fd259f2a8bc6363f02aecc98c6c277a40e5590dbf7617db1f8b8f.lean/declarations/fullresidualvector-ae--f4cd25062276e07b2f9a7727.md) | 23 | `result-track:f4cd25062276e07b2f9a772712a642ae6f7c3a06a50b50620e7897622a3068c4` |
| 4 | `theorem` | [coreResidualVector_ae](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variantaf4d1e7c577fd259f2a8bc6363f02aecc98c6c277a40e5590dbf7617db1f8b8f.lean/declarations/coreresidualvector-ae--49abdaafe0489692d24d2bb7.md) | 28 | `result-track:49abdaafe0489692d24d2bb78d9966b9c6d4fc5bde8d4ed57293379bfc0e19d6` |
| 5 | `theorem` | [fullResidualVector_decomposition](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variantaf4d1e7c577fd259f2a8bc6363f02aecc98c6c277a40e5590dbf7617db1f8b8f.lean/declarations/fullresidualvector-decomposition--1d286bbeb2651c3d98222610.md) | 34 | `result-track:1d286bbeb2651c3d9822261037feb1761a3790c4b03002ad804d3b3387c57081` |
| 6 | `theorem` | [filtered_full_norm_le_core_tails](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variantaf4d1e7c577fd259f2a8bc6363f02aecc98c6c277a40e5590dbf7617db1f8b8f.lean/declarations/filtered-full-norm-le-core-tails--1f9b24f289b0a8bfb1f6f05a.md) | 75 | `result-track:1f9b24f289b0a8bfb1f6f05ac6a2514f2bc94ede996041c0a1c61f8f78206bda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
