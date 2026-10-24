# Verification target: GRWTSK.LinearAlgebra.Determinant.OrderedProduct.Checks.Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a5c8031c3691cda9c240832f8c41183ac02bd19",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/Determinant/OrderedProduct/Checks/Audit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/LinearAlgebra/Determinant/OrderedProduct/Checks/Audit__SourceOccurrence0e4160db4421a8dc2b6ae132.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/LinearAlgebra/Determinant/OrderedProduct/Checks/Audit__SourceOccurrence0e4160db4421a8dc2b6ae132.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a5c8031c3691cda9c240832f8c41183ac02bd19`.

Source path: `GRWTSK/LinearAlgebra/Determinant/OrderedProduct/Checks/Audit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/Determinant/OrderedProduct/Checks/Audit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.OrderedProductDeterminant`](../../../../../../../mathematics/Algebra/LinearAlgebra/OrderedProductDeterminant__SourceOccurrence273e1154e913af030c730bb8.lean/index.md) — import line 1; pinned internal source present.
- `Lean` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [use_generic](../../../../../../../mathematics/Algebra/LinearAlgebra/Determinant/OrderedProduct/Checks/Audit__SourceOccurrence0e4160db4421a8dc2b6ae132.lean/declarations/use-generic--63456102f5b7319ecd39256a.md) | 5 | `result-track:63456102f5b7319ecd39256ade83b6dad718dfd5e08732bf5b1b734ac7eaf276` |
| 2 | `theorem` | [use_weighted](../../../../../../../mathematics/Algebra/LinearAlgebra/Determinant/OrderedProduct/Checks/Audit__SourceOccurrence0e4160db4421a8dc2b6ae132.lean/declarations/use-weighted--fb190998969dae02488ff32c.md) | 6 | `result-track:fb190998969dae02488ff32c2bc66d8573cf3dc587080cce2751317fdb3699cd` |
| 3 | `elab` | [(anonymous)](../../../../../../../mathematics/Algebra/LinearAlgebra/Determinant/OrderedProduct/Checks/Audit__SourceOccurrence0e4160db4421a8dc2b6ae132.lean/declarations/elab--608cd5f8196be0ef1bf63e41.md) | 8 | `declaration-track:608cd5f8196be0ef1bf63e418cca53fa92ab3094f4debd8375db452f41fb33a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
