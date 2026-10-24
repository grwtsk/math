# Verification target: GRWTSK.Algebra.LinearAlgebra.Archimedean.Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6724a5cafae42411a7c1245dedb2df4e67073b41",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6724a5cafae42411a7c1245dedb2df4e67073b41`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean.json)

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
| 1 | `theorem` | [mk_smul](../../../../../mathematics/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean/declarations/mk-smul--6cc94c73d865c760d1155ce0.md) | 29 | `result-track:6cc94c73d865c760d1155ce04961944747a61c8d99a1c3d364e25b0f66b47451` |
| 2 | `theorem` | [mk_le_mk_smul](../../../../../mathematics/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean/declarations/mk-le-mk-smul--cc7ec594eae17c88a03194dd.md) | 41 | `result-track:cc7ec594eae17c88a03194dde4d35bc78d5043e5a51c507cd4626d96757234d6` |
| 3 | `def` | [submodule](../../../../../mathematics/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean/declarations/submodule--9946b4ba99bcbaf249161df1.md) | 55 | `declaration-track:9946b4ba99bcbaf249161df17e290dfc3deaa229d0fe6bdaa8a4ab5cbd8ce592` |
| 4 | `theorem` | [submodule_strictAnti](../../../../../mathematics/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean/declarations/submodule-strictanti--f929fe445162fa741e13188c.md) | 60 | `result-track:f929fe445162fa741e13188c059343004811d897e6b8876fe6012f5f1dfd2d3a` |
| 5 | `abbrev` | [ball](../../../../../mathematics/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean/declarations/ball--79ebc22276c3d9f348df3e68.md) | 67 | `declaration-track:79ebc22276c3d9f348df3e6800e5d527c7fa0ea0a0c60a2a196698f0bd5da3ae` |
| 6 | `abbrev` | [closedBall](../../../../../mathematics/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean/declarations/closedball--e70640e2acb863162639c6b5.md) | 73 | `declaration-track:e70640e2acb863162639c6b541b6a9a9aac57ed028697d321f448fdb2a7da184` |
| 7 | `theorem` | [toAddSubgroup_ball](../../../../../mathematics/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean/declarations/toaddsubgroup-ball--8ee9cdc2a840b8b98bacd91f.md) | 76 | `result-track:8ee9cdc2a840b8b98bacd91f89963ef6a1fab79e27ca23579dc2e5eb482ec0f1` |
| 8 | `theorem` | [toAddSubgroup_closedBall](../../../../../mathematics/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean/declarations/toaddsubgroup-closedball--e2fa9fe535fd28df130bd30d.md) | 80 | `result-track:e2fa9fe535fd28df130bd30d5b49c59876feb86faa1881022230cec93fa5ff5a` |
| 9 | `theorem` | [mem_ball_iff](../../../../../mathematics/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean/declarations/mem-ball-iff--205e49820328673317e6a1e6.md) | 84 | `result-track:205e49820328673317e6a1e67f72922402f271f1eac3a6c51ada65baa6cdd8dd` |
| 10 | `theorem` | [mem_closedBall_iff](../../../../../mathematics/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean/declarations/mem-closedball-iff--6d87ef4c1d09e347c6040190.md) | 89 | `result-track:6d87ef4c1d09e347c60401908bffad3993aeca26c309dc61194f25e111eeaa71` |
| 11 | `theorem` | [ball_strictAnti](../../../../../mathematics/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean/declarations/ball-strictanti--c3a1715221c445a5b122aae9.md) | 93 | `result-track:c3a1715221c445a5b122aae9a4b159d5acbf58d2879f326f6048e5846adb3ef2` |
| 12 | `theorem` | [ball_lt_closedBall](../../../../../mathematics/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean/declarations/ball-lt-closedball--944a6be8b5c5899892c6b5c9.md) | 95 | `result-track:944a6be8b5c5899892c6b5c9f78f660e5b8534335b1e90d5ebca1e189ddc5a6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
