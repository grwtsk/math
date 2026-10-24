# Verification target: GRWTSK.Algebra.LinearAlgebra.OrderedTransfer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "839c14741c9710257f648cc42a5d29d97cdf66cd",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OrderedTransfer.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/OrderedTransfer__SourceOccurrence49cd56cf5deb6b17a201ddc3.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/OrderedTransfer__SourceOccurrence49cd56cf5deb6b17a201ddc3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `839c14741c9710257f648cc42a5d29d97cdf66cd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OrderedTransfer.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OrderedTransfer.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.OrderedProduct`](../../../../mathematics/Algebra/OrderedProduct.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Algebra.LinearAlgebra.JacobiTransfer`](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orderedTransfer](../../../../mathematics/Algebra/LinearAlgebra/OrderedTransfer__SourceOccurrence49cd56cf5deb6b17a201ddc3.lean/declarations/orderedtransfer--addc580917d4cb2dc2607688.md) | 44 | `declaration-track:addc580917d4cb2dc2607688690fcda5f584444af70caa8d50cc6ffb0eaabe4e` |
| 2 | `theorem` | [state_eq_orderedProduct_mulVec](../../../../mathematics/Algebra/LinearAlgebra/OrderedTransfer__SourceOccurrence49cd56cf5deb6b17a201ddc3.lean/declarations/state-eq-orderedproduct-mulvec--fefd8d9d1167c9daececa63d.md) | 50 | `result-track:fefd8d9d1167c9daececa63d847bce0efce404b9534ffd0b5f06e0916559cc78` |
| 3 | `theorem` | [state_eq_orderedTransfer_mulVec](../../../../mathematics/Algebra/LinearAlgebra/OrderedTransfer__SourceOccurrence49cd56cf5deb6b17a201ddc3.lean/declarations/state-eq-orderedtransfer-mulvec--6609b8c70e35ed06482c4c16.md) | 63 | `result-track:6609b8c70e35ed06482c4c16c9a7106d6bfdb7d697a83a8f3b324aed07d11330` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
