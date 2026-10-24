# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant48c072320ea17b65b5a169fb159704b0f3d51d677b0b70a1a16447b11128399e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0516a2e93f75d0822ee70059ace6e6aad28e3870",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant48c072320ea17b65b5a169fb159704b0f3d51d677b0b70a1a16447b11128399e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48c072320ea17b65b5a169fb159704b0f3d51d677b0b70a1a16447b11128399e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48c072320ea17b65b5a169fb159704b0f3d51d677b0b70a1a16447b11128399e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0516a2e93f75d0822ee70059ace6e6aad28e3870`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant48c072320ea17b65b5a169fb159704b0f3d51d677b0b70a1a16447b11128399e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant48c072320ea17b65b5a169fb159704b0f3d51d677b0b70a1a16447b11128399e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [linearMapEquivFun](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48c072320ea17b65b5a169fb159704b0f3d51d677b0b70a1a16447b11128399e.lean/declarations/linearmapequivfun--b78d8e3f9710337ba064337e.md) | 48 | `declaration-track:b78d8e3f9710337ba064337e0e02ba18ad18910b72c64bef1d88f46f6ad8ad94` |
| 2 | `instance` | [Module.Free.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48c072320ea17b65b5a169fb159704b0f3d51d677b0b70a1a16447b11128399e.lean/declarations/module-free-linearmap--9d9d719aaf6df217fb278ecb.md) | 52 | `declaration-track:9d9d719aaf6df217fb278ecbe850ee82099e429ba8c464f7f61986b338aa718d` |
| 3 | `instance` | [Module.Finite.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48c072320ea17b65b5a169fb159704b0f3d51d677b0b70a1a16447b11128399e.lean/declarations/module-finite-linearmap--4511451ce510d1dcc9c6f2a0.md) | 55 | `declaration-track:4511451ce510d1dcc9c6f2a02bf22640b4b11e8344dbf3590bb7963fcc67deea` |
| 4 | `theorem` | [Module.rank_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48c072320ea17b65b5a169fb159704b0f3d51d677b0b70a1a16447b11128399e.lean/declarations/module-rank-linearmap--63f9155c696a76f776b99b56.md) | 61 | `result-track:63f9155c696a76f776b99b56cc619cf6cecad28086c29db7d75046ec03e848be` |
| 5 | `theorem` | [Module.finrank_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48c072320ea17b65b5a169fb159704b0f3d51d677b0b70a1a16447b11128399e.lean/declarations/module-finrank-linearmap--75007263d0a9bc195c41ba34.md) | 67 | `result-track:75007263d0a9bc195c41ba3433e7455f0033d3290a086e0caa905acfaa5b6091` |
| 6 | `theorem` | [Module.rank_linearMap_self](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48c072320ea17b65b5a169fb159704b0f3d51d677b0b70a1a16447b11128399e.lean/declarations/module-rank-linearmap-self--af2f57b9aea5baca4200428a.md) | 73 | `result-track:af2f57b9aea5baca4200428a3b294df177a87b8bcc9229dfac7e503aaf2787bb` |
| 7 | `theorem` | [Module.finrank_linearMap_self](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48c072320ea17b65b5a169fb159704b0f3d51d677b0b70a1a16447b11128399e.lean/declarations/module-finrank-linearmap-self--1b25c5c044f7a6968ca68b88.md) | 77 | `result-track:1b25c5c044f7a6968ca68b88750c194b818629ae3670eaf16502c1449f5d1331` |
| 8 | `instance` | [Finite.algHom](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48c072320ea17b65b5a169fb159704b0f3d51d677b0b70a1a16447b11128399e.lean/declarations/finite-alghom--e55db9de8357cdc7fa91d431.md) | 87 | `declaration-track:e55db9de8357cdc7fa91d4314ec3d3e3b1d9b7dc08fd07f7fd2202e97e86b4b7` |
| 9 | `theorem` | [cardinalMk_algHom_le_rank](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48c072320ea17b65b5a169fb159704b0f3d51d677b0b70a1a16447b11128399e.lean/declarations/cardinalmk-alghom-le-rank--64d04bc2bd8d264416395fa2.md) | 92 | `result-track:64d04bc2bd8d264416395fa2ab30116c6d94efff7ee95df44d3d0068df715da8` |
| 10 | `theorem` | [card_algHom_le_finrank](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48c072320ea17b65b5a169fb159704b0f3d51d677b0b70a1a16447b11128399e.lean/declarations/card-alghom-le-finrank--ba1c8d24f035682d128bd700.md) | 99 | `result-track:ba1c8d24f035682d128bd700b33b51af7f52ef6f68e8cd00d3832df552c4efd9` |
| 11 | `instance` | [Module.Finite.addMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48c072320ea17b65b5a169fb159704b0f3d51d677b0b70a1a16447b11128399e.lean/declarations/module-finite-addmonoidhom--30294b3ddad5c7e8d676f3ac.md) | 110 | `declaration-track:30294b3ddad5c7e8d676f3ac5a495a58bb3d2f0d70437cd42f173d72759784c4` |
| 12 | `instance` | [Module.Free.addMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48c072320ea17b65b5a169fb159704b0f3d51d677b0b70a1a16447b11128399e.lean/declarations/module-free-addmonoidhom--62d475f749594622b5cb18a1.md) | 113 | `declaration-track:62d475f749594622b5cb18a16577f1dca0fc462421a2ce33e34ee48387f7fa41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
