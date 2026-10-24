# Verification target: GRWTSK.NumberTheory.VonMangoldt.AdaptiveResidualBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "721dbf722972911c9ca48bcf006d5da294ed7fcc",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/VonMangoldt/AdaptiveResidualBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/AdaptiveResidualBudget.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/AdaptiveResidualBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `721dbf722972911c9ca48bcf006d5da294ed7fcc`.

Source path: `GRWTSK/NumberTheory/VonMangoldt/AdaptiveResidualBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/VonMangoldt/AdaptiveResidualBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quantile_interior](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/AdaptiveResidualBudget.lean/declarations/quantile-interior--4f831fa4f4c456cb588fe0eb.md) | 19 | `result-track:4f831fa4f4c456cb588fe0ebc49a6ef8f79893653f866c8366776d808730a354` |
| 2 | `theorem` | [add_last_background](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/AdaptiveResidualBudget.lean/declarations/add-last-background--ebc2d6f0f777e008d982fd63.md) | 27 | `result-track:ebc2d6f0f777e008d982fd631253d0b3c58deb6b12f6006d72798c2668f7c39f` |
| 3 | `theorem` | [rational_padding](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/AdaptiveResidualBudget.lean/declarations/rational-padding--965aaa1d3a846de1ff402696.md) | 32 | `result-track:965aaa1d3a846de1ff402696de761dee00c488b5ca1a9b5b84d3bac98368fbf2` |
| 4 | `theorem` | [padded_fine_budget](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/AdaptiveResidualBudget.lean/declarations/padded-fine-budget--f45d5ba6c44ba268d101e584.md) | 37 | `result-track:f45d5ba6c44ba268d101e5847c768eda66f1aa26cc9fc655bbfdc7b226e8b927` |
| 5 | `theorem` | [complete_linear_budget](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/AdaptiveResidualBudget.lean/declarations/complete-linear-budget--af3cbbc9bbd46ae80ae85b79.md) | 47 | `result-track:af3cbbc9bbd46ae80ae85b7958748cc319da98997fa876b754f01d4a59660d3a` |
| 6 | `theorem` | [rational_linear_budget](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/AdaptiveResidualBudget.lean/declarations/rational-linear-budget--5f0e4193e62cf5c8af6743fe.md) | 56 | `result-track:5f0e4193e62cf5c8af6743fe44b5a04dce6b93effcf8eb93162d143a19f54376` |
| 7 | `theorem` | [residual_lower](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/AdaptiveResidualBudget.lean/declarations/residual-lower--94303395131eaab3f753f726.md) | 65 | `result-track:94303395131eaab3f753f7260b36bc95b7a3610ed4f62f3e6f01448c0b771754` |
| 8 | `theorem` | [residual_upper](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/AdaptiveResidualBudget.lean/declarations/residual-upper--9f0fe734164439548bc49894.md) | 67 | `result-track:9f0fe734164439548bc49894eaa3bfa21548fd728cd27024310ca9e91aa6b12d` |
| 9 | `theorem` | [zero_mass_nonzero_pair](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/AdaptiveResidualBudget.lean/declarations/zero-mass-nonzero-pair--2f674f5efab14b246fa19817.md) | 70 | `result-track:2f674f5efab14b246fa1981715eb7d962c3d41ffc23e0cda0dd4db3cb377c394` |
| 10 | `theorem` | [partition_independent_residual](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/AdaptiveResidualBudget.lean/declarations/partition-independent-residual--13df2de44f897d0ac6f2d47a.md) | 74 | `result-track:13df2de44f897d0ac6f2d47a61c162a8cb9262a63ef3b66fa4d194fcf2adfb39` |
| 11 | `theorem` | [canonical_linear_budget](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/AdaptiveResidualBudget.lean/declarations/canonical-linear-budget--3c6a7c2a30233c3cc263a27a.md) | 79 | `result-track:3c6a7c2a30233c3cc263a27a419d149d3aa69d4ec84982c58b921875780e3762` |
| 12 | `theorem` | [canonical_rational_budget](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/AdaptiveResidualBudget.lean/declarations/canonical-rational-budget--987812479dff37cd0b3de80b.md) | 87 | `result-track:987812479dff37cd0b3de80bea2d5d70af21f97b344edc46b76a3a2ed0e42858` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
