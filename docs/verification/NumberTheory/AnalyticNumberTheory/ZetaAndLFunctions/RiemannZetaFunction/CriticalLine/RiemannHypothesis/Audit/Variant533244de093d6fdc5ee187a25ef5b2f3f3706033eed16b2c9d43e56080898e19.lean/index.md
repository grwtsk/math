# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Audit.Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8443268ad088ff9337085f5dc050a89dad9f8e4",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8443268ad088ff9337085f5dc050a89dad9f8e4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean.json)

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
| 1 | `def` | [boundaryPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean/declarations/boundarypolynomial--22f0e2d38fd522b823da2b98.md) | 17 | `declaration-track:22f0e2d38fd522b823da2b98afd004d1a56a378e5faab24386cbdd97759f7262` |
| 2 | `theorem` | [boundaryPolynomial_relative_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean/declarations/boundarypolynomial-relative-lower--76afab70f84bf2ac020ce47f.md) | 22 | `result-track:76afab70f84bf2ac020ce47f0c7d969aaf77f38dd84429e115db7b6c9522228c` |
| 3 | `theorem` | [boundaryPolynomial_source_collar](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean/declarations/boundarypolynomial-source-collar--663deb5004dce99db70c0f7a.md) | 40 | `result-track:663deb5004dce99db70c0f7aa416389f01b2fdd488df7c343b738f799478495f` |
| 4 | `theorem` | [boundaryPolynomial_source_collar_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean/declarations/boundarypolynomial-source-collar-pos--09ac98fb1b6513b0aa2af94a.md) | 46 | `result-track:09ac98fb1b6513b0aa2af94a7be300d0f877e6d5eb6d3b0f3c66f72e86b2239d` |
| 5 | `theorem` | [boundaryPolynomial_upper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean/declarations/boundarypolynomial-upper--163c5ceca5d231f1a7bac241.md) | 54 | `result-track:163c5ceca5d231f1a7bac241c7aa896fa41eb811e1a11914990317e0c4edf52c` |
| 6 | `def` | [cellStencil](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean/declarations/cellstencil--413d6e914d74696134df6aed.md) | 64 | `declaration-track:413d6e914d74696134df6aed69e6276219088e5a4495607250b9ad6f2807a545` |
| 7 | `theorem` | [cellStencil_at_birth_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean/declarations/cellstencil-at-birth-nonneg--b6a0922d2a6b3a5514893d7d.md) | 67 | `result-track:b6a0922d2a6b3a5514893d7dd73bacde08ac8adf0d881a93d636516866d00bd5` |
| 8 | `theorem` | [inverse_square_le_difference](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean/declarations/inverse-square-le-difference--af37a7e926f1a9ea67d64cf4.md) | 73 | `result-track:af37a7e926f1a9ea67d64cf47e27e1d4d6bbd16249b827234d1a8bd12b35c5d8` |
| 9 | `theorem` | [inverse_square_sum_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean/declarations/inverse-square-sum-le--56281f5f1ab6b8e7c6945b14.md) | 83 | `result-track:56281f5f1ab6b8e7c6945b141f0a09c17697a6a174ec235c162f5f3470d43815` |
| 10 | `theorem` | [selected_birth_budget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean/declarations/selected-birth-budget--c017517d00338cceeed51f5b.md) | 98 | `result-track:c017517d00338cceeed51f5bb832cb03298579b603483e3b5e2261b09c9a6e51` |
| 11 | `theorem` | [lower_increment_with_positive_births](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean/declarations/lower-increment-with-positive-births--99f2603454e5dc551fd13d1c.md) | 124 | `result-track:99f2603454e5dc551fd13d1cc8623ba4763d2648a59a654a5f491a9cfe439079` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
