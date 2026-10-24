# Verification target: GRWTSK.LinearAlgebra.CommonJCounterexamples.Checks.Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "741538c1cd53b90fc5aedabadf7b906456c2c78c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/CommonJCounterexamples/Checks/Audit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples/Checks/Audit__SourceOccurrencef981fc96ee8fcfb324b34183.lean/index.md) · [Full source](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples/Checks/Audit__SourceOccurrencef981fc96ee8fcfb324b34183.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `741538c1cd53b90fc5aedabadf7b906456c2c78c`.

Source path: `GRWTSK/LinearAlgebra/CommonJCounterexamples/Checks/Audit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/CommonJCounterexamples/Checks/Audit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.CommonJCounterexamples`](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence420fb5fdabae1c780b8fda0d.lean/index.md) — import line 1; pinned internal source present.
- `Lean` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [noncommutativity_consumer](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples/Checks/Audit__SourceOccurrencef981fc96ee8fcfb324b34183.lean/declarations/noncommutativity-consumer--98a5acdf0732d0bfb1b5108e.md) | 8 | `result-track:98a5acdf0732d0bfb1b5108ec1110fe0ced476f15dc110eccd9ff4708a25b41b` |
| 2 | `theorem` | [inverse_product_failure_consumer](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples/Checks/Audit__SourceOccurrencef981fc96ee8fcfb324b34183.lean/declarations/inverse-product-failure-consumer--bcb7a606c392abf76f933c5e.md) | 11 | `result-track:bcb7a606c392abf76f933c5efdc9a970919527c4f438f42ea9ba0e6cc64c8b2a` |
| 3 | `elab` | [(anonymous)](../../../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples/Checks/Audit__SourceOccurrencef981fc96ee8fcfb324b34183.lean/declarations/elab--208a729c61d07c5bcd857b57.md) | 17 | `declaration-track:208a729c61d07c5bcd857b5746a4a74984aa13a09380924719ca515ecde4d85f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
