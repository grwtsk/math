# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedDirichletPolynomialProduct.Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9838709d88a2425a6882c3b03fb36ea6c86421a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9838709d88a2425a6882c3b03fb36ea6c86421a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.DirichletPolynomialProduct` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.WeightMultiplicativity` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletPolynomialPairProductComplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181.lean/declarations/dirichletpolynomialpairproductcomplex--56bcf3991669f63fc28e68d2.md) | 19 | `declaration-track:56bcf3991669f63fc28e68d21309d12c2b36aab51a829968693ad0b998c3ff5d` |
| 2 | `theorem` | [dirichletPolynomialComplex_mul_pair_expanded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181.lean/declarations/dirichletpolynomialcomplex-mul-pair-expanded--d8273231c1a6f13acd166df4.md) | 33 | `result-track:d8273231c1a6f13acd166df421e98b787bb6779c9faad58c53a61cb18771ccc1` |
| 3 | `theorem` | [dirichletPolynomialComplex_mul_pair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181.lean/declarations/dirichletpolynomialcomplex-mul-pair--80e01db11cd1b0f8bcecf6c9.md) | 63 | `result-track:80e01db11cd1b0f8bcecf6c90fa05faf5c2f87ea353ed73b2f1e5a0647092747` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
