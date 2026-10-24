# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenIntegerRefinement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c9e2dcd8afe2009b993096146349dbf799db6e7",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c9e2dcd8afe2009b993096146349dbf799db6e7`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.IntegerJetStateFold`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/IntegerJetStateFold.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenFoldRefinement`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [state](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/declarations/state--b78468d54befef3e32bce936.md) | 24 | `declaration-track:b78468d54befef3e32bce9362e6e01492053f623b146720ffe49e8e1290963f1` |
| 2 | `theorem` | [state_eq](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/declarations/state-eq--278483f9a220e62b8929cc3f.md) | 28 | `result-track:278483f9a220e62b8929cc3f3c24439de0a8c54e42cf3349c57f080452ceaf17` |
| 3 | `def` | [imageAt](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/declarations/imageat--33cb94669185a97bd80e035c.md) | 31 | `declaration-track:33cb94669185a97bd80e035ca29d434e3ef52e964b759bc657ef42b33f9406f4` |
| 4 | `theorem` | [imageAt_eq](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/declarations/imageat-eq--5207fbb5350f4d8d0433fd4b.md) | 38 | `result-track:5207fbb5350f4d8d0433fd4bd952b80492d05fc19d4d2271194931d93356399f` |
| 5 | `def` | [image](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/declarations/image--69feb0997429043b4a511362.md) | 41 | `declaration-track:69feb0997429043b4a51136209b10835d911194e0c282c0b8f8965220960d2ea` |
| 6 | `theorem` | [image_eq](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/declarations/image-eq--cb317327fb2f95c0143eebbb.md) | 43 | `result-track:cb317327fb2f95c0143eebbb017dfb1d1ea5471af620fae8b51ddcc087373a95` |
| 7 | `def` | [test](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/declarations/test--0ffff0f6e5cb87aed81152b7.md) | 47 | `declaration-track:0ffff0f6e5cb87aed81152b70ef60a3ce03e5fa002ea385db9d96a4426ba08c4` |
| 8 | `def` | [term](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/declarations/term--04def6de628aad22fd2620f9.md) | 58 | `declaration-track:04def6de628aad22fd2620f9548413579085bf8bc5e0add543e4f6431ee509f9` |
| 9 | `theorem` | [test_eq](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/declarations/test-eq--cd889a95e75fd81aff0879cd.md) | 60 | `result-track:cd889a95e75fd81aff0879cd67ec84ac367e62f386fd258464cb38c5c090d982` |
| 10 | `theorem` | [term_eq](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/declarations/term-eq--e8203119e695d2637c48c6e6.md) | 63 | `result-track:e8203119e695d2637c48c6e6578aa421c0934f568a87fea362bbdbec137bc296` |
| 11 | `theorem` | [chunk_eq](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/declarations/chunk-eq--3479d1e6b43a2c2153cc49f1.md) | 66 | `result-track:3479d1e6b43a2c2153cc49f12fdd9603d6314ae215575af9a2276a638aa4292c` |
| 12 | `def` | [IntegerBlockObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/declarations/integerblockobligations--ea1b56e586e8bed8ca0117b8.md) | 72 | `declaration-track:ea1b56e586e8bed8ca0117b8b7a39160a1c4bb30dfb2c928a969cface9f4eab2` |
| 13 | `def` | [verifyExpected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/declarations/verifyexpected--546fb6aed389d43aba252c94.md) | 75 | `declaration-track:546fb6aed389d43aba252c94a674d2618f8980848de43914ab8a0400aee89bad` |
| 14 | `theorem` | [obligations_iff](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/declarations/obligations-iff--85ee533a4216a6fba5feb986.md) | 78 | `result-track:85ee533a4216a6fba5feb986f9d8d35a9dd81fa2bd646e028a13af74f981a7ba` |
| 15 | `theorem` | [verifyExpected_eq](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/declarations/verifyexpected-eq--65801767003b1e2641457451.md) | 84 | `result-track:65801767003b1e2641457451f098680686b4e11227082564eb4f5e2b500e61f2` |
| 16 | `theorem` | [success_of_integer_blocks](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/declarations/success-of-integer-blocks--de927259f4cbe60b44250f4c.md) | 89 | `result-track:de927259f4cbe60b44250f4c412068e0215b04f587ab37df964b31375fbd1b17` |
| 17 | `theorem` | [count_one_of_integer_blocks](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/declarations/count-one-of-integer-blocks--f59fb1f6fff12d4b6b3858ca.md) | 92 | `result-track:f59fb1f6fff12d4b6b3858cabe745d3b23ea2cd856781f5185bb0b89f40a2fc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
