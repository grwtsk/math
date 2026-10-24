# Verification target: GRWTSK.Algebra.LinearAlgebra.ArithmeticDefect.Variant30991dc5ef5da748d31a58dc24147d193816cdebd168cc00dd4a36ac822951ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52e9aad10b6ac15e5fdd4835ea35dd0fd0804b70",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ArithmeticDefect/Variant30991dc5ef5da748d31a58dc24147d193816cdebd168cc00dd4a36ac822951ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant30991dc5ef5da748d31a58dc24147d193816cdebd168cc00dd4a36ac822951ac.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant30991dc5ef5da748d31a58dc24147d193816cdebd168cc00dd4a36ac822951ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52e9aad10b6ac15e5fdd4835ea35dd0fd0804b70`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ArithmeticDefect/Variant30991dc5ef5da748d31a58dc24147d193816cdebd168cc00dd4a36ac822951ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ArithmeticDefect/Variant30991dc5ef5da748d31a58dc24147d193816cdebd168cc00dd4a36ac822951ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SignedDefect` — import line 6; external provider; requires a separately pinned dependency.
- `SourceWeightedOrbitAdapter` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [matrixAt](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant30991dc5ef5da748d31a58dc24147d193816cdebd168cc00dd4a36ac822951ac.lean/declarations/matrixat--b2fe5258daee184868c9cf82.md) | 32 | `declaration-track:b2fe5258daee184868c9cf82d25cd15ed4f342750df756ae6639bf447116a875` |
| 2 | `def` | [firstAt](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant30991dc5ef5da748d31a58dc24147d193816cdebd168cc00dd4a36ac822951ac.lean/declarations/firstat--c03f130739aaca0deb74622d.md) | 37 | `declaration-track:c03f130739aaca0deb74622d576903556bf644b7b7522407a4e00e59d6d805f2` |
| 3 | `def` | [secondAt](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant30991dc5ef5da748d31a58dc24147d193816cdebd168cc00dd4a36ac822951ac.lean/declarations/secondat--c07e6221f797c66c465e0dd5.md) | 39 | `declaration-track:c07e6221f797c66c465e0dd596799f76b11300d0f97db7975a0fc6fd2b87d19c` |
| 4 | `def` | [movedReadout](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant30991dc5ef5da748d31a58dc24147d193816cdebd168cc00dd4a36ac822951ac.lean/declarations/movedreadout--862b10b03342e57898bdcdf3.md) | 43 | `declaration-track:862b10b03342e57898bdcdf3a97bef441be606484f9ac543491dd8d1fdddf11d` |
| 5 | `theorem` | [literal_readout](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant30991dc5ef5da748d31a58dc24147d193816cdebd168cc00dd4a36ac822951ac.lean/declarations/literal-readout--fca74ffb52ab769a290d7184.md) | 48 | `result-track:fca74ffb52ab769a290d71846b2b5e9a66bf7423e6fb2766ab3f2dde65552d91` |
| 6 | `theorem` | [literal_move_defect](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant30991dc5ef5da748d31a58dc24147d193816cdebd168cc00dd4a36ac822951ac.lean/declarations/literal-move-defect--232704a665dfe9abef2a17db.md) | 57 | `result-track:232704a665dfe9abef2a17dbb470560f8a74f4700a708c40c5128c8d5ba2b824` |
| 7 | `def` | [dualMovedReadout](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant30991dc5ef5da748d31a58dc24147d193816cdebd168cc00dd4a36ac822951ac.lean/declarations/dualmovedreadout--f9d86bba2cfb67679dff78e6.md) | 68 | `declaration-track:f9d86bba2cfb67679dff78e62217e83c3126f772c0fc85fb283c6bf7ce7ba1c5` |
| 8 | `theorem` | [literal_dual_compensation](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant30991dc5ef5da748d31a58dc24147d193816cdebd168cc00dd4a36ac822951ac.lean/declarations/literal-dual-compensation--1d4e4e44173bc5393a7c14a7.md) | 75 | `result-track:1d4e4e44173bc5393a7c14a7eada88c8b6a52df60a23bf801a41a634cf5ca5b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
