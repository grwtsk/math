# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedDirichletPolynomialProduct.Variant1abbace59cc18afccfc82f9b9ec611a18db9f4b8723e79ef7901c434d23c1332

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b636be8d2890125f8653515ee8a3ae934411e6a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant1abbace59cc18afccfc82f9b9ec611a18db9f4b8723e79ef7901c434d23c1332.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant1abbace59cc18afccfc82f9b9ec611a18db9f4b8723e79ef7901c434d23c1332.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant1abbace59cc18afccfc82f9b9ec611a18db9f4b8723e79ef7901c434d23c1332.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b636be8d2890125f8653515ee8a3ae934411e6a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant1abbace59cc18afccfc82f9b9ec611a18db9f4b8723e79ef7901c434d23c1332.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant1abbace59cc18afccfc82f9b9ec611a18db9f4b8723e79ef7901c434d23c1332.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.DirichletPolynomialProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.WeightMultiplicativity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletPolynomialPairProductComplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant1abbace59cc18afccfc82f9b9ec611a18db9f4b8723e79ef7901c434d23c1332.lean/declarations/dirichletpolynomialpairproductcomplex--9ee7777f513a7b4c11b3f1f5.md) | 27 | `declaration-track:9ee7777f513a7b4c11b3f1f5405020cbe384c06b71872407f88b2fc482819863` |
| 2 | `theorem` | [dirichletPolynomialComplex_mul_pair_expanded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant1abbace59cc18afccfc82f9b9ec611a18db9f4b8723e79ef7901c434d23c1332.lean/declarations/dirichletpolynomialcomplex-mul-pair-expanded--8ed33a4a22fb47adb5373e1b.md) | 41 | `result-track:8ed33a4a22fb47adb5373e1b400dcee3b82fe97882bbade974d7fd4d29e8dfd2` |
| 3 | `theorem` | [dirichletPolynomialComplex_mul_pair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant1abbace59cc18afccfc82f9b9ec611a18db9f4b8723e79ef7901c434d23c1332.lean/declarations/dirichletpolynomialcomplex-mul-pair--e4186abf55be3c7131945e6d.md) | 71 | `result-track:e4186abf55be3c7131945e6d5bbff684b53f367344a61f7611bc42e3468ce0f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
