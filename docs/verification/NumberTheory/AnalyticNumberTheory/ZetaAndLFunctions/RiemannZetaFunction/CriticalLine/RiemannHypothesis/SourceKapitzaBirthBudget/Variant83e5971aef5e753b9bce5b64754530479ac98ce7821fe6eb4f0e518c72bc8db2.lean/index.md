# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceKapitzaBirthBudget.Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "420c2dfd53d63db79881e3ba2df8042f6a35d11c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `420c2dfd53d63db79881e3ba2df8042f6a35d11c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean/declarations/boundarypolynomial--9eb5eb9b703c5c1b814ec9a2.md) | 25 | `declaration-track:9eb5eb9b703c5c1b814ec9a24b7803d804dd5282bdf60dad244db29b2a340621` |
| 2 | `theorem` | [boundaryPolynomial_relative_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean/declarations/boundarypolynomial-relative-lower--267dd0d0eb332bff5914a8f3.md) | 30 | `result-track:267dd0d0eb332bff5914a8f3f0ed93c4994371a71745adaed391830847647d03` |
| 3 | `theorem` | [boundaryPolynomial_source_collar](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean/declarations/boundarypolynomial-source-collar--fae097badcfe5e00f00d3308.md) | 48 | `result-track:fae097badcfe5e00f00d330816f3bbce60f15e73dfa6c6442de442b3351b93c3` |
| 4 | `theorem` | [boundaryPolynomial_source_collar_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean/declarations/boundarypolynomial-source-collar-pos--f9a2bbe2744e15821cd28ff3.md) | 54 | `result-track:f9a2bbe2744e15821cd28ff3d94e414f86c4f6fb7cb13f5347d72bb7d9fb7f5a` |
| 5 | `theorem` | [boundaryPolynomial_upper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean/declarations/boundarypolynomial-upper--0a5f52dec49c3cba9070513a.md) | 62 | `result-track:0a5f52dec49c3cba9070513ae3f3c72774ecdee74a068faff3e69b517e2fa2fd` |
| 6 | `def` | [cellStencil](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean/declarations/cellstencil--9c78cc5e275b5340a08793ca.md) | 72 | `declaration-track:9c78cc5e275b5340a08793cac0547a949562d492a2a855f85de00e3e13755ae3` |
| 7 | `theorem` | [cellStencil_at_birth_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean/declarations/cellstencil-at-birth-nonneg--50a364763cbffda3db854fcb.md) | 75 | `result-track:50a364763cbffda3db854fcb87c532f5012163bcaa90a5ff7e268f576d14301a` |
| 8 | `theorem` | [inverse_square_le_difference](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean/declarations/inverse-square-le-difference--7f420671b79f00b7790dabe7.md) | 81 | `result-track:7f420671b79f00b7790dabe75b1c0ecec515826c789d7ffabff970eb70fbc130` |
| 9 | `theorem` | [inverse_square_sum_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean/declarations/inverse-square-sum-le--38520ea21dfc03cfe4b651ca.md) | 91 | `result-track:38520ea21dfc03cfe4b651ca5fb3c1534a9ab6d954383f26b87d44a7681b4464` |
| 10 | `theorem` | [selected_birth_budget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean/declarations/selected-birth-budget--d0e8c991ca748623711c9f93.md) | 106 | `result-track:d0e8c991ca748623711c9f930b57a9cff1d6dcfa6aee5bc1ed9d534019e383ed` |
| 11 | `theorem` | [lower_increment_with_positive_births](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean/declarations/lower-increment-with-positive-births--d9bcfda6b977331e75cc26f3.md) | 132 | `result-track:d9bcfda6b977331e75cc26f3aa0715fc75e69a3b1978a798d88c1cb102cff85b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
