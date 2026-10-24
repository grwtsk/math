# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SelfAdjoint.Variant043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c6f23209e1850b7726640787278c9fb2bfc8196",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SelfAdjoint/Variant043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variant043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variant043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c6f23209e1850b7726640787278c9fb2bfc8196`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SelfAdjoint/Variant043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SelfAdjoint/Variant043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.CrossedProduct` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FiniteOperator](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variant043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73.lean/declarations/finiteoperator--735a09e204f8b1ad5a5e04aa.md) | 13 | `declaration-track:735a09e204f8b1ad5a5e04aa2fa1b675f5d2427af5c91856b9a6bbd074f841d4` |
| 2 | `def` | [IsSelfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variant043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73.lean/declarations/isselfadjoint--cf49af6fd4d75f381a4dcecd.md) | 16 | `declaration-track:cf49af6fd4d75f381a4dcecd14d67fabd8224e0c15d494ff44675ef336ee2995` |
| 3 | `def` | [diagonalOperator](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variant043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73.lean/declarations/diagonaloperator--1b7d031f697eb828138ee22f.md) | 21 | `declaration-track:1b7d031f697eb828138ee22fd8ce066098c91de971f6499027529cf9a83709c5` |
| 4 | `def` | [addOperator](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variant043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73.lean/declarations/addoperator--b3eae6d2c9ecee6d5a43ed58.md) | 28 | `declaration-track:b3eae6d2c9ecee6d5a43ed58c68a87f0d7ed52a37f114bf6a55d46ae7ab2b2c8` |
| 5 | `theorem` | [diagonalOperator_selfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variant043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73.lean/declarations/diagonaloperator-selfadjoint--db0583335ff95b365d9f6f9d.md) | 34 | `result-track:db0583335ff95b365d9f6f9d7bc04f1ef23b3edd71c195d551fcda0affcd4ad1` |
| 6 | `structure` | [SelfAdjointCoefficientCertificate](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variant043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73.lean/declarations/selfadjointcoefficientcertificate--8b912c6f5519a7700eabef6f.md) | 45 | `declaration-track:8b912c6f5519a7700eabef6f9aab932156ebadd0e75c61f5a30f625f22734803` |
| 7 | `theorem` | [crossedProductOperator_selfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variant043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73.lean/declarations/crossedproductoperator-selfadjoint--a5e1b438f634de8d6f5e2320.md) | 53 | `result-track:a5e1b438f634de8d6f5e23207b141a02a12f1a68e041668021c78f2ac2eccbe6` |
| 8 | `structure` | [JordanSemisimplicityObligation](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variant043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73.lean/declarations/jordansemisimplicityobligation--291855b3f2e505480449948b.md) | 67 | `declaration-track:291855b3f2e505480449948b686634c5780f60c3276425beb83adea2b065dcc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
