# Verification target: GRWTSK.Algebra.LinearAlgebra.OrderedProductDeterminant

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79138776331d174b0d76c26edac9cd3096ea6b04",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OrderedProductDeterminant.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/OrderedProductDeterminant__SourceOccurrenceef2a8a2e90df61d611424743.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/OrderedProductDeterminant__SourceOccurrenceef2a8a2e90df61d611424743.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79138776331d174b0d76c26edac9cd3096ea6b04`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OrderedProductDeterminant.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OrderedProductDeterminant.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.OrderedProduct`](../../../../mathematics/Algebra/OrderedProduct.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Algebra.LinearAlgebra.JacobiTransfer`](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Algebra.LinearAlgebra.OrderedTransfer`](../../../../mathematics/Algebra/LinearAlgebra/OrderedTransfer__SourceOccurrence49cd56cf5deb6b17a201ddc3.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_orderedProduct_eq_one](../../../../mathematics/Algebra/LinearAlgebra/OrderedProductDeterminant__SourceOccurrenceef2a8a2e90df61d611424743.lean/declarations/det-orderedproduct-eq-one--bfea2ed7e5ecf5e5906bc5c8.md) | 48 | `result-track:bfea2ed7e5ecf5e5906bc5c8bf838b095b0f9f9daddae8a8790ef512d7bd4845` |
| 2 | `theorem` | [det_weightedJacobi_orderedProduct](../../../../mathematics/Algebra/LinearAlgebra/OrderedProductDeterminant__SourceOccurrenceef2a8a2e90df61d611424743.lean/declarations/det-weightedjacobi-orderedproduct--7db7d987318e779dad8e6e4a.md) | 58 | `result-track:7db7d987318e779dad8e6e4ae4fa484fbba4b558d5d66db95dc375095a435116` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
