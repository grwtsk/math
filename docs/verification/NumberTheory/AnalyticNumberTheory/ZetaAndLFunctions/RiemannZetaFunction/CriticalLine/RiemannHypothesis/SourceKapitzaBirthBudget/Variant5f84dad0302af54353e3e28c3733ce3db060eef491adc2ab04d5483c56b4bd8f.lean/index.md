# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceKapitzaBirthBudget.Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "822a743f44ff982ba0d3f0ade77ceea2ecafa742",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `822a743f44ff982ba0d3f0ade77ceea2ecafa742`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean/declarations/boundarypolynomial--102f21420dfd0dd0d594a370.md) | 17 | `declaration-track:102f21420dfd0dd0d594a370acb8765f356e015d277a027f456675aa993619e4` |
| 2 | `theorem` | [boundaryPolynomial_relative_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean/declarations/boundarypolynomial-relative-lower--879ea9a0f530d1978dd6e334.md) | 22 | `result-track:879ea9a0f530d1978dd6e334829a84a4372a486350406e0e8d0281b4cb0b2508` |
| 3 | `theorem` | [boundaryPolynomial_source_collar](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean/declarations/boundarypolynomial-source-collar--c047d61b41ca3be980cf83e7.md) | 40 | `result-track:c047d61b41ca3be980cf83e7cfa381782e4d5f053b7cd76c98cf5188c0a5ffad` |
| 4 | `theorem` | [boundaryPolynomial_source_collar_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean/declarations/boundarypolynomial-source-collar-pos--5bac464df6985fc90de1ee0c.md) | 46 | `result-track:5bac464df6985fc90de1ee0c3bb82151f23531c6c6afcd58935476a0ff44bec0` |
| 5 | `theorem` | [boundaryPolynomial_upper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean/declarations/boundarypolynomial-upper--2875fc40a53a6d9f394ba594.md) | 54 | `result-track:2875fc40a53a6d9f394ba5945e7f9167510f6a5c3c5df70801f835ad3dec7fea` |
| 6 | `def` | [cellStencil](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean/declarations/cellstencil--4bfcb2b6eb5e66f2faf30fe8.md) | 64 | `declaration-track:4bfcb2b6eb5e66f2faf30fe86c51af45ec649fe358916f8c2f5401eb930b1db1` |
| 7 | `theorem` | [cellStencil_at_birth_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean/declarations/cellstencil-at-birth-nonneg--d9966ecb051a734cc7ba0693.md) | 67 | `result-track:d9966ecb051a734cc7ba069336648b70933321f2f0c53d562d8ea4182e48aa97` |
| 8 | `theorem` | [inverse_square_le_difference](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean/declarations/inverse-square-le-difference--b0fdde723673c91e9a75a74a.md) | 73 | `result-track:b0fdde723673c91e9a75a74a4af0f9881a250ddd609173284a038187da5d5e7c` |
| 9 | `theorem` | [inverse_square_sum_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean/declarations/inverse-square-sum-le--475f09ed51517de2e24028bb.md) | 83 | `result-track:475f09ed51517de2e24028bbd8f433984e58da66f7f73be050f8622d0c1b4732` |
| 10 | `theorem` | [selected_birth_budget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean/declarations/selected-birth-budget--fef2b4b770eb9b357f488e12.md) | 98 | `result-track:fef2b4b770eb9b357f488e12c56d662245835c9febd2ae0c445ef27b397058f5` |
| 11 | `theorem` | [lower_increment_with_positive_births](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean/declarations/lower-increment-with-positive-births--554accd6f86aeb491a597dca.md) | 124 | `result-track:554accd6f86aeb491a597dca78a47fed31f28a7a48f596976680f7814866918c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
