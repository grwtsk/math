# Verification target: GRWTSK.LinearAlgebra.CocycleProduct

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41355c7d823fa7acf4384c0255884f8579dc679b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/CocycleProduct.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceee4f1613d9e3f472b7ae66c4.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceee4f1613d9e3f472b7ae66c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41355c7d823fa7acf4384c0255884f8579dc679b`.

Source path: `GRWTSK/LinearAlgebra/CocycleProduct.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/CocycleProduct.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.OrderedProductDeterminant`](../../../../mathematics/Algebra/LinearAlgebra/OrderedProductDeterminant__SourceOccurrence273e1154e913af030c730bb8.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Logic.Function.Iterate` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cocycleProduct](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceee4f1613d9e3f472b7ae66c4.lean/declarations/cocycleproduct--d8e3e06049b87d8bb5622bb0.md) | 50 | `declaration-track:d8e3e06049b87d8bb5622bb0b3b3c31473ee6a3810bfe22db9dbedb93a486b8b` |
| 2 | `theorem` | [cocycleProduct_zero](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceee4f1613d9e3f472b7ae66c4.lean/declarations/cocycleproduct-zero--3fda0138baf45b9400de4fdc.md) | 58 | `result-track:3fda0138baf45b9400de4fdc2d1bba974a458079d9044a480745b89230b9171d` |
| 3 | `theorem` | [cocycleProduct_succ](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceee4f1613d9e3f472b7ae66c4.lean/declarations/cocycleproduct-succ--499435651238e8e1b0a9bc39.md) | 64 | `result-track:499435651238e8e1b0a9bc393775157b536f57c64ad1b2aa9859cccbb2ac9e55` |
| 4 | `theorem` | [cocycleProduct_eq_orderedProduct](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceee4f1613d9e3f472b7ae66c4.lean/declarations/cocycleproduct-eq-orderedproduct--3c4b16c91d3295e46d559a22.md) | 71 | `result-track:3c4b16c91d3295e46d559a224d8594948841a490d1b97a20c81b249400fbed35` |
| 5 | `theorem` | [cocycleProduct_add](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceee4f1613d9e3f472b7ae66c4.lean/declarations/cocycleproduct-add--1957fb21c2f91130fe0ffa0a.md) | 81 | `result-track:1957fb21c2f91130fe0ffa0a12db86462f187172a9b91e3206b48881c08b4e87` |
| 6 | `def` | [cocycleGaugeTransfer](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceee4f1613d9e3f472b7ae66c4.lean/declarations/cocyclegaugetransfer--4f0a013de158a6e68e90d34d.md) | 94 | `declaration-track:4f0a013de158a6e68e90d34df104816605f854ad37f2337fbb64946217361ab0` |
| 7 | `theorem` | [cocycleProduct_gauge](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceee4f1613d9e3f472b7ae66c4.lean/declarations/cocycleproduct-gauge--6d84cfcce05a682f1eb7e8dd.md) | 100 | `result-track:6d84cfcce05a682f1eb7e8dd22fe404821ce20973548612166befeb2a6ad840c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
