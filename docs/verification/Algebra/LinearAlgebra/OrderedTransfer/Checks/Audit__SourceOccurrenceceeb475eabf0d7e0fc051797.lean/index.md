# Verification target: GRWTSK.LinearAlgebra.OrderedTransfer.Checks.Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47131d3b0d8d022df2eaf4e3d4fc27317041076e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/OrderedTransfer/Checks/Audit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Algebra/LinearAlgebra/OrderedTransfer/Checks/Audit__SourceOccurrenceceeb475eabf0d7e0fc051797.lean/index.md) · [Full source](../../../../../../mathematics/Algebra/LinearAlgebra/OrderedTransfer/Checks/Audit__SourceOccurrenceceeb475eabf0d7e0fc051797.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47131d3b0d8d022df2eaf4e3d4fc27317041076e`.

Source path: `GRWTSK/LinearAlgebra/OrderedTransfer/Checks/Audit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/OrderedTransfer/Checks/Audit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.OrderedTransfer`](../../../../../../mathematics/Algebra/LinearAlgebra/OrderedTransfer__SourceOccurrence4675c44af7e0e47a6f6a51c5.lean/index.md) — import line 1; pinned internal source present.
- `Lean` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [use_product](../../../../../../mathematics/Algebra/LinearAlgebra/OrderedTransfer/Checks/Audit__SourceOccurrenceceeb475eabf0d7e0fc051797.lean/declarations/use-product--20ea34ee6fefa2e6948372c2.md) | 5 | `result-track:20ea34ee6fefa2e6948372c2a9ed2c834c53f408a5ef3b1abf89121d5537be0f` |
| 2 | `theorem` | [use_endpoint](../../../../../../mathematics/Algebra/LinearAlgebra/OrderedTransfer/Checks/Audit__SourceOccurrenceceeb475eabf0d7e0fc051797.lean/declarations/use-endpoint--2a9e264679e6fe006b221842.md) | 6 | `result-track:2a9e264679e6fe006b221842f39eb64f68920eb0d89b801b6c3907716170ede1` |
| 3 | `elab` | [(anonymous)](../../../../../../mathematics/Algebra/LinearAlgebra/OrderedTransfer/Checks/Audit__SourceOccurrenceceeb475eabf0d7e0fc051797.lean/declarations/elab--bf9beede98b927ee30da02e7.md) | 8 | `declaration-track:bf9beede98b927ee30da02e70db6bda0e21d85917c221b133e539031b7b8b8e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
