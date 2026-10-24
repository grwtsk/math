# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.EnclosedZeroInventoryControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cc9b8061f134de441783316b26b2e364bc60a2c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cc9b8061f134de441783316b26b2e364bc60a2c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CanonicalTentEvaluation`](../../../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentEvaluation.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tangent_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean/declarations/tangent-control--2b9c6f9226021f3bb86d68d5.md) | 27 | `result-track:2b9c6f9226021f3bb86d68d50787dbb401ef4327b867919e6c2062f28ef05b52` |
| 2 | `theorem` | [diagonal_and_imaginary_controls](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean/declarations/diagonal-and-imaginary-controls--e4ee56f0852c9f5d58ef52ab.md) | 31 | `result-track:e4ee56f0852c9f5d58ef52ab86c26b1f62b55510249322bc38747989cccfa59e` |
| 3 | `theorem` | [negative_radius_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean/declarations/negative-radius-control--47a60a1614246ef4e3be9b89.md) | 36 | `result-track:47a60a1614246ef4e3be9b89813159a4e17806b7a5c2f782b0ad5209be5afb0a` |
| 4 | `theorem` | [height_boundary_controls](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean/declarations/height-boundary-controls--08e0b1123e591401c6a73cae.md) | 41 | `result-track:08e0b1123e591401c6a73cae88641803484119c670bfcd0076cd74e2f938cb30` |
| 5 | `def` | [syntheticFamily](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean/declarations/syntheticfamily--2d6da3c0da7b7cc7f4c05f10.md) | 46 | `declaration-track:2d6da3c0da7b7cc7f4c05f1076ad754ba1f32465778bb922792275e1e95968ad` |
| 6 | `def` | [syntheticCoordinates](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean/declarations/syntheticcoordinates--bd1304a30d37b9954ada1d7e.md) | 47 | `declaration-track:bd1304a30d37b9954ada1d7e050520ab1cef4378cd598b63d8ddb86a2b16af63` |
| 7 | `theorem` | [geometry_nonvacuous](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean/declarations/geometry-nonvacuous--17b198ba5bb8b2cedde5d9c8.md) | 49 | `result-track:17b198ba5bb8b2cedde5d9c80569320cb4cb9e324be94a167c6308f1c213c5b9` |
| 8 | `theorem` | [exact_radius_shape_controls](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean/declarations/exact-radius-shape-controls--de5d294ac7057e2588985506.md) | 53 | `result-track:de5d294ac7057e2588985506fb44b323d8c251850abafda20d906f6bca032e31` |
| 9 | `theorem` | [cutoff_and_overlap_controls](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean/declarations/cutoff-and-overlap-controls--1839f4f8432216b9b0e5ece3.md) | 57 | `result-track:1839f4f8432216b9b0e5ece394d3a49a709aee4677b327a2a554f2e208c78856` |
| 10 | `theorem` | [empty_geometry_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean/declarations/empty-geometry-control--6305a056cd3c783c86f23dad.md) | 62 | `result-track:6305a056cd3c783c86f23dadfe91ec2a5a205e81a49f58484f7614122d0fec6f` |
| 11 | `theorem` | [positive_weight_model](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean/declarations/positive-weight-model--21b7510c34187057b38eb4e1.md) | 67 | `result-track:21b7510c34187057b38eb4e17fe4a671d6a9b1899d5e8aa0e22a706429b858a9` |
| 12 | `theorem` | [zero_hidden_weight_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean/declarations/zero-hidden-weight-control--3c80190c87645353c5b2a205.md) | 78 | `result-track:3c80190c87645353c5b2a205d647e400e9c290000b33af70a86804af82d0e761` |
| 13 | `theorem` | [duplicate_assignment_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean/declarations/duplicate-assignment-control--4e3055f37386a7d0ed230226.md) | 83 | `result-track:4e3055f37386a7d0ed230226b47997613a88e50c55c4f34aba02f3bf8ecc1c02` |
| 14 | `theorem` | [wrong_count_direction_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean/declarations/wrong-count-direction-control--4cef6f10da17c28276829cbe.md) | 89 | `result-track:4cef6f10da17c28276829cbe2392e81795752e95fb7d7de4e68a80fddfe82daf` |
| 15 | `theorem` | [cluster_is_not_one_weighted_point](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean/declarations/cluster-is-not-one-weighted-point--c5ba0162ca58dfba53b2a409.md) | 94 | `result-track:c5ba0162ca58dfba53b2a409054f4ffef445380a440a556501db9ade087cd6ea` |
| 16 | `theorem` | [counterfeit_order_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EnclosedZeroInventoryControls.lean/declarations/counterfeit-order-control--6de25ecacb3ff1ca86432e94.md) | 99 | `result-track:6de25ecacb3ff1ca86432e94be3d393dd0564bfff0de8f04fbcb51104de524a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
