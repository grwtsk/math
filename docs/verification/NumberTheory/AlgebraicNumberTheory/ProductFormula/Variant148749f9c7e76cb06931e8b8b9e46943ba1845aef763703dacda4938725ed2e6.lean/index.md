# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.ProductFormula.Variant148749f9c7e76cb06931e8b8b9e46943ba1845aef763703dacda4938725ed2e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b83d89ab97b46fe03b1282f4dfb786a5125d9951",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant148749f9c7e76cb06931e8b8b9e46943ba1845aef763703dacda4938725ed2e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant148749f9c7e76cb06931e8b8b9e46943ba1845aef763703dacda4938725ed2e6.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant148749f9c7e76cb06931e8b8b9e46943ba1845aef763703dacda4938725ed2e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b83d89ab97b46fe03b1282f4dfb786a5125d9951`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant148749f9c7e76cb06931e8b8b9e46943ba1845aef763703dacda4938725ed2e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant148749f9c7e76cb06931e8b8b9e46943ba1845aef763703dacda4938725ed2e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.FinitePlaces` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.InfinitePlace.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [FinitePlace.prod_eq_inv_abs_norm_int](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant148749f9c7e76cb06931e8b8b9e46943ba1845aef763703dacda4938725ed2e6.lean/declarations/finiteplace-prod-eq-inv-abs-norm-int--1793f63b6f1cfe759e3a74e3.md) | 49 | `result-track:1793f63b6f1cfe759e3a74e305235e7f7fb28a8ec9731bad6f27ea63862a0fc7` |
| 2 | `theorem` | [FinitePlace.prod_eq_inv_abs_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant148749f9c7e76cb06931e8b8b9e46943ba1845aef763703dacda4938725ed2e6.lean/declarations/finiteplace-prod-eq-inv-abs-norm--3c24ec565ef4b263dd4e2906.md) | 81 | `result-track:3c24ec565ef4b263dd4e2906c2e25ee3f3d9199727c843faff2a6f5885714b67` |
| 3 | `theorem` | [prod_abs_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant148749f9c7e76cb06931e8b8b9e46943ba1845aef763703dacda4938725ed2e6.lean/declarations/prod-abs-eq-one--29ba83ee410bd44f23ff438a.md) | 101 | `result-track:29ba83ee410bd44f23ff438aea8a271b7170747ecd22c96e2ec0dd4677b46eee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
