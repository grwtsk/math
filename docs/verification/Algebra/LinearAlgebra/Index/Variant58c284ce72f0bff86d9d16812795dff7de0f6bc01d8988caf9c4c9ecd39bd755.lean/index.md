# Verification target: GRWTSK.Algebra.LinearAlgebra.Index.Variant58c284ce72f0bff86d9d16812795dff7de0f6bc01d8988caf9c4c9ecd39bd755

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b771f5ea7904b74a840e4457fbbce257ecabadb5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Index/Variant58c284ce72f0bff86d9d16812795dff7de0f6bc01d8988caf9c4c9ecd39bd755.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Index/Variant58c284ce72f0bff86d9d16812795dff7de0f6bc01d8988caf9c4c9ecd39bd755.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Index/Variant58c284ce72f0bff86d9d16812795dff7de0f6bc01d8988caf9c4c9ecd39bd755.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b771f5ea7904b74a840e4457fbbce257ecabadb5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Index/Variant58c284ce72f0bff86d9d16812795dff7de0f6bc01d8988caf9c4c9ecd39bd755.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Index/Variant58c284ce72f0bff86d9d16812795dff7de0f6bc01d8988caf9c4c9ecd39bd755.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Fintype` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Index` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Quotient` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.RightExactness` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Cardinality` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Finite` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Submodule.finite_quotient_smul](../../../../../mathematics/Algebra/LinearAlgebra/Index/Variant58c284ce72f0bff86d9d16812795dff7de0f6bc01d8988caf9c4c9ecd39bd755.lean/declarations/submodule-finite-quotient-smul--a3a8f2d28ffcef3f40877431.md) | 35 | `result-track:a3a8f2d28ffcef3f408774313309124eae33b1e31690556e9ec8240b61207b4c` |
| 2 | `lemma` | [Submodule.index_smul_le](../../../../../mathematics/Algebra/LinearAlgebra/Index/Variant58c284ce72f0bff86d9d16812795dff7de0f6bc01d8988caf9c4c9ecd39bd755.lean/declarations/submodule-index-smul-le--2f74f951d243fe4d5abbc179.md) | 58 | `result-track:2f74f951d243fe4d5abbc179fe84d396cc62c98edfa4e1fb5e2e85be0d3787ab` |
| 3 | `lemma` | [Ideal.finite_quotient_prod](../../../../../mathematics/Algebra/LinearAlgebra/Index/Variant58c284ce72f0bff86d9d16812795dff7de0f6bc01d8988caf9c4c9ecd39bd755.lean/declarations/ideal-finite-quotient-prod--d1ede8d4c570f1e8b45e409b.md) | 86 | `result-track:d1ede8d4c570f1e8b45e409ba6b5092d2ce75d9b4489739c6ca385f9f92dce36` |
| 4 | `lemma` | [Ideal.finite_quotient_pow](../../../../../mathematics/Algebra/LinearAlgebra/Index/Variant58c284ce72f0bff86d9d16812795dff7de0f6bc01d8988caf9c4c9ecd39bd755.lean/declarations/ideal-finite-quotient-pow--2531bd0336fd4b7b8d8d4b42.md) | 97 | `result-track:2531bd0336fd4b7b8d8d4b42283b57a46440c51cfa71a250eacb2ecfdab2fa9f` |
| 5 | `lemma` | [Ideal.index_pow_le](../../../../../mathematics/Algebra/LinearAlgebra/Index/Variant58c284ce72f0bff86d9d16812795dff7de0f6bc01d8988caf9c4c9ecd39bd755.lean/declarations/ideal-index-pow-le--a29a90575afb091c1a09a938.md) | 105 | `result-track:a29a90575afb091c1a09a9385db6ad22cee439837b147cf177566663f9a5885a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
