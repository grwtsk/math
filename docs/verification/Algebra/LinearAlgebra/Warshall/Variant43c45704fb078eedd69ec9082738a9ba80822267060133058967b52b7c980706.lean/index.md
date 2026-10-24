# Verification target: GRWTSK.Algebra.LinearAlgebra.Warshall.Variant43c45704fb078eedd69ec9082738a9ba80822267060133058967b52b7c980706

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc67668e741f29a9e9e7ac23915384b8b03c8b38",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Warshall/Variant43c45704fb078eedd69ec9082738a9ba80822267060133058967b52b7c980706.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Warshall/Variant43c45704fb078eedd69ec9082738a9ba80822267060133058967b52b7c980706.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Warshall/Variant43c45704fb078eedd69ec9082738a9ba80822267060133058967b52b7c980706.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc67668e741f29a9e9e7ac23915384b8b03c8b38`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Warshall/Variant43c45704fb078eedd69ec9082738a9ba80822267060133058967b52b7c980706.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Warshall/Variant43c45704fb078eedd69ec9082738a9ba80822267060133058967b52b7c980706.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Matrix` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Matrix.warshallStep](../../../../../mathematics/Algebra/LinearAlgebra/Warshall/Variant43c45704fb078eedd69ec9082738a9ba80822267060133058967b52b7c980706.lean/declarations/matrix-warshallstep--ad94aa1f54ac037564c09485.md) | 19 | `declaration-track:ad94aa1f54ac037564c09485bc99afa33bc06112914b605fb67012eeb089100a` |
| 2 | `theorem` | [Matrix.entry_warshallStep](../../../../../mathematics/Algebra/LinearAlgebra/Warshall/Variant43c45704fb078eedd69ec9082738a9ba80822267060133058967b52b7c980706.lean/declarations/matrix-entry-warshallstep--eda594ffacb38eae875ec6ca.md) | 26 | `result-track:eda594ffacb38eae875ec6ca0cb9b039a9d4c7ef165be88861874df9e9734481` |
| 3 | `def` | [Matrix.warshallAux](../../../../../mathematics/Algebra/LinearAlgebra/Warshall/Variant43c45704fb078eedd69ec9082738a9ba80822267060133058967b52b7c980706.lean/declarations/matrix-warshallaux--8aab8d24a47fd3e0fea58056.md) | 43 | `declaration-track:8aab8d24a47fd3e0fea5805671761fec67920196b9c32e62f91b5ad0d4eddbd0` |
| 4 | `def` | [Matrix.warshall](../../../../../mathematics/Algebra/LinearAlgebra/Warshall/Variant43c45704fb078eedd69ec9082738a9ba80822267060133058967b52b7c980706.lean/declarations/matrix-warshall--548efca95101448805538707.md) | 63 | `declaration-track:548efca951014488055387078ae20ff271b9c98796ffeb16e3995e774ca23fe7` |
| 5 | `theorem` | [Matrix.warshallAux_zero](../../../../../mathematics/Algebra/LinearAlgebra/Warshall/Variant43c45704fb078eedd69ec9082738a9ba80822267060133058967b52b7c980706.lean/declarations/matrix-warshallaux-zero--8b888cb4eb564d7a031041e6.md) | 69 | `result-track:8b888cb4eb564d7a031041e678bd43d2cc58bc5e0a531263d5516beacb592a5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
