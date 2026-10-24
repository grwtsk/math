# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.StateFoldControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3714cbc4fddf05862032794930285abd1d599de3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3714cbc4fddf05862032794930285abd1d599de3`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenFoldRefinement`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenFoldRefinement.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [absolute_cursor](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean/declarations/absolute-cursor--bd9cdf1e36520d250bd8e97e.md) | 23 | `result-track:bd9cdf1e36520d250bd8e97ed59317b0852949f878fef58b94184676f946f5d1` |
| 2 | `theorem` | [zero_count](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean/declarations/zero-count--0e98ae336ff70a37fa585ab7.md) | 27 | `result-track:0e98ae336ff70a37fa585ab78f85faa0f48d50dc90a590dc5e1e5ef63da42dda` |
| 3 | `theorem` | [ordered_composition](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean/declarations/ordered-composition--96c09008b1faed1ee30c9893.md) | 29 | `result-track:96c09008b1faed1ee30c9893e600eff4099616f008ce423371ef430533656f0b` |
| 4 | `theorem` | [complex_seed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean/declarations/complex-seed--ead6cf3abbb9ec771a8cbc58.md) | 34 | `result-track:ead6cf3abbb9ec771a8cbc5877543dd45caa82cef7cc99b4d955cea34c369cbd` |
| 5 | `theorem` | [empty_and_constant_seed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean/declarations/empty-and-constant-seed--f8a4caabfd08026bcf242a0c.md) | 38 | `result-track:f8a4caabfd08026bcf242a0ccfc495467f8dda09d3b361013c59c1506e27cc56` |
| 6 | `theorem` | [zero_squarings](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean/declarations/zero-squarings--18ded900f42b5591eabbc5b0.md) | 43 | `result-track:18ded900f42b5591eabbc5b0c3827138daa040cd8ce24aef729b818b5a428edf` |
| 7 | `theorem` | [square_residual_retained](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean/declarations/square-residual-retained--28847af976c1ecccaebe9546.md) | 48 | `result-track:28847af976c1ecccaebe9546edff6587de711b2f5b2d29716d5fdb22a949d06c` |
| 8 | `theorem` | [nonlinear_radius_retained](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean/declarations/nonlinear-radius-retained--b1367998822bb7793cfd01d0.md) | 52 | `result-track:b1367998822bb7793cfd01d0e9a03e987fbc6230d8c2eb955e85118816b81be4` |
| 9 | `theorem` | [signed_coordinate_floor](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean/declarations/signed-coordinate-floor--d1d5d2e7b290c6c539dbc3e5.md) | 56 | `result-track:d1d5d2e7b290c6c539dbc3e5a3e8d88c6df388eabfa9b546ca058bd0cf50a20b` |
| 10 | `theorem` | [rounded_addition_order](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean/declarations/rounded-addition-order--173b19a931de44fe603d9b7b.md) | 61 | `result-track:173b19a931de44fe603d9b7bae1c0440bfef30d4e57ca5e326af5543a0b2dabe` |
| 11 | `theorem` | [positive_prefix](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean/declarations/positive-prefix--223d638b3cf19050041a64b1.md) | 66 | `result-track:223d638b3cf19050041a64b1db41cb0da388c773906ac80ab2bca165b254c350` |
| 12 | `def` | [poleParameters](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean/declarations/poleparameters--9b854c0432312d6459f638ca.md) | 72 | `declaration-track:9b854c0432312d6459f638ca04bee25a0a13a1b4268fe94a2b4152595b66f535` |
| 13 | `theorem` | [pole_snapshot](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean/declarations/pole-snapshot--540b22cc2f021ec4d689fdde.md) | 75 | `result-track:540b22cc2f021ec4d689fddefea8f49ad7ab4e7d86eff2c5cbbae95f1c1a5fe7` |
| 14 | `theorem` | [strict_equality_rejects](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean/declarations/strict-equality-rejects--f2dbc792a56d6c210e247754.md) | 79 | `result-track:f2dbc792a56d6c210e2477547d545fdafb3d1b0ddc819697e65d536df1a8ea71` |
| 15 | `theorem` | [invalid_geometry_and_cutoff](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean/declarations/invalid-geometry-and-cutoff--7d19cb4741d8fda1586b1287.md) | 83 | `result-track:7d19cb4741d8fda1586b1287f40551e3c869ed9cd266713abdd76bffa874243d` |
| 16 | `theorem` | [target_obligations_unchanged](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/StateFoldControls.lean/declarations/target-obligations-unchanged--b71f6bd43dea4c0d7c17c97c.md) | 92 | `result-track:b71f6bd43dea4c0d7c17c97ccd02823b9472a1bae38475e92546a9c2a197d43f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
