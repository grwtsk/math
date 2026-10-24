# Verification target: GRWTSK.Algebra.GroupTheory.CompletionEquivariance.Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0654cd0edd7d423d9f7f11fbe7427a75a8993ca",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0654cd0edd7d423d9f7f11fbe7427a75a8993ca`.

Source path: `GRWTSK/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Completion.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.Symmetry.Canonical` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transportFinset](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean/declarations/transportfinset--c1bb35b77ee5c804a3f8189b.md) | 25 | `declaration-track:c1bb35b77ee5c804a3f8189b14a9877a5749f21791d2d22b40358311799808a3` |
| 2 | `theorem` | [mem_transportFinset](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean/declarations/mem-transportfinset--9686b6908d2cf68050f6c432.md) | 37 | `result-track:9686b6908d2cf68050f6c432429607591fc7880a53737ebb247dd089128cbbf7` |
| 3 | `theorem` | [transportFinset_one](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean/declarations/transportfinset-one--584078642a77836ec72296b4.md) | 52 | `result-track:584078642a77836ec72296b4efa0ea46c34ab14d68cea83356638ccdc4c243b9` |
| 4 | `theorem` | [transportFinset_mul](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean/declarations/transportfinset-mul--a061525165d9a559f77efc5b.md) | 64 | `result-track:a061525165d9a559f77efc5b1fc2de6da97c63a365f8e7d228bdac88be0c984e` |
| 5 | `theorem` | [transportFinset_inverse_left](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean/declarations/transportfinset-inverse-left--4ff108e737c5723e078b7542.md) | 78 | `result-track:4ff108e737c5723e078b7542a6e6c99b8c57cc2f1e78ad16bdcce0c21259ae17` |
| 6 | `theorem` | [transportFinset_subset](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean/declarations/transportfinset-subset--f25cfb7c87231af6859b9412.md) | 92 | `result-track:f25cfb7c87231af6859b941297b20ffc6a59f3416b705e3e6f4d8b8c9782fef4` |
| 7 | `theorem` | [transportFinset_nonempty](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean/declarations/transportfinset-nonempty--029c793169250e36a0577bfc.md) | 111 | `result-track:029c793169250e36a0577bfc600981c5183a2515d8a016359807825914def564` |
| 8 | `theorem` | [transportFinset_erase](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean/declarations/transportfinset-erase--94f42edd6f3f8608d6054a4a.md) | 129 | `result-track:94f42edd6f3f8608d6054a4a3993ec7e9f4d1b97699b56297b02c9a9db4449f5` |
| 9 | `structure` | [CompletionEquivariance](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean/declarations/completionequivariance--addccca8be9d6b905dbb43a3.md) | 145 | `declaration-track:addccca8be9d6b905dbb43a391ac53832a34cd91f80ec6ecebb4e22c8825b273` |
| 10 | `theorem` | [CompletionEquivariance.satisfiesAll_equivariant](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean/declarations/completionequivariance-satisfiesall-equivariant--5fe79ded609016e479a054f3.md) | 175 | `result-track:5fe79ded609016e479a054f3e03c8f126fd81ff3b84d89afdcb781fd6c436449` |
| 11 | `theorem` | [CompletionEquivariance.feasible_equivariant](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean/declarations/completionequivariance-feasible-equivariant--2df2ef16ad7dc17b01b4f20e.md) | 223 | `result-track:2df2ef16ad7dc17b01b4f20ea40fe3161ae435f026432214df6675432212dc06` |
| 12 | `theorem` | [CompletionEquivariance.infeasible_equivariant](../../../../../mathematics/Algebra/GroupTheory/CompletionEquivariance/Variant3d2f021dab6aece5715630af9cf39ff3ff291ae763bffd07ecbbc57bd81a7acc.lean/declarations/completionequivariance-infeasible-equivariant--5c42eb3acc56a11e1fa4e5af.md) | 275 | `result-track:5c42eb3acc56a11e1fa4e5af1c997c2fe08a21253ed73f07d393e3d923cfa402` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
