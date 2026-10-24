# Verification target: GRWTSK.Algebra.LinearAlgebra.CocycleProduct

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bc42c586526a55c7feb86b1df86a48ad18e82ec",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CocycleProduct.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceb5bffab815bf751db331a991.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceb5bffab815bf751db331a991.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bc42c586526a55c7feb86b1df86a48ad18e82ec`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CocycleProduct.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CocycleProduct.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.LinearAlgebra.OrderedProductDeterminant`](../../../../mathematics/Algebra/LinearAlgebra/OrderedProductDeterminant__SourceOccurrenceef2a8a2e90df61d611424743.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Logic.Function.Iterate` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cocycleProduct](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceb5bffab815bf751db331a991.lean/declarations/cocycleproduct--e9d2ac2d9a2fa0e1972cfcc0.md) | 50 | `declaration-track:e9d2ac2d9a2fa0e1972cfcc0587f5b7a64cb0d57293fdf782514fc35f68548e5` |
| 2 | `theorem` | [cocycleProduct_zero](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceb5bffab815bf751db331a991.lean/declarations/cocycleproduct-zero--9cd5eb81765890114f9551b5.md) | 58 | `result-track:9cd5eb81765890114f9551b550745a9b99cbeca1dbedfdb9030409ef9c3b4110` |
| 3 | `theorem` | [cocycleProduct_succ](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceb5bffab815bf751db331a991.lean/declarations/cocycleproduct-succ--c23dfe0bbe08e58379a1116f.md) | 64 | `result-track:c23dfe0bbe08e58379a1116fed523ef1cc1ee360a3fc11416711f5ae4fb44c5b` |
| 4 | `theorem` | [cocycleProduct_eq_orderedProduct](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceb5bffab815bf751db331a991.lean/declarations/cocycleproduct-eq-orderedproduct--95da3c25ebbb58ff7aa88b6a.md) | 71 | `result-track:95da3c25ebbb58ff7aa88b6a9481e23d20096b0b3aa570791f356d1d776eaeb5` |
| 5 | `theorem` | [cocycleProduct_add](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceb5bffab815bf751db331a991.lean/declarations/cocycleproduct-add--aadc3d6d38b74ce29496f1e0.md) | 81 | `result-track:aadc3d6d38b74ce29496f1e08c66b7cdf812edfd989ad67c85c69a2b22fa9817` |
| 6 | `def` | [cocycleGaugeTransfer](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceb5bffab815bf751db331a991.lean/declarations/cocyclegaugetransfer--ac157fdfcc87f2d713a4c011.md) | 94 | `declaration-track:ac157fdfcc87f2d713a4c011d1f19a28d56e8a8d622281e364d36f394d0ba9a7` |
| 7 | `theorem` | [cocycleProduct_gauge](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceb5bffab815bf751db331a991.lean/declarations/cocycleproduct-gauge--3a631431e09ef6cef697d497.md) | 100 | `result-track:3a631431e09ef6cef697d4975f32c3b5c928e35fd852428a1caeb93295dfc328` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
