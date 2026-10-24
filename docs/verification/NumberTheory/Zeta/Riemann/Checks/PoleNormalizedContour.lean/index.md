# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PoleNormalizedContour

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0a2cb639cd5546581130b553642428cb726603f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0a2cb639cd5546581130b553642428cb726603f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalPolePatch`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPolePatch.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [model_one_base](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean/declarations/model-one-base--df57af2493e4fc7d0ce9625a.md) | 23 | `result-track:df57af2493e4fc7d0ce9625aa72749b69d7ab001c9e74ba34e5ac71fc86cbf4e` |
| 2 | `theorem` | [derivative_at_removed_pole](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean/declarations/derivative-at-removed-pole--2776398cb019997d3c733203.md) | 28 | `result-track:2776398cb019997d3c733203780ec4f0343d4816df829f00027e02530b7bbea8` |
| 3 | `theorem` | [raw_product_spurious_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean/declarations/raw-product-spurious-zero--b345b89cdca41dd5b26d1388.md) | 35 | `result-track:b345b89cdca41dd5b26d13880c344dc49dae819bd2ff79a47cb7a617271dbabc` |
| 4 | `theorem` | [rational_pole_jet](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean/declarations/rational-pole-jet--5c4082f594221ef592941f00.md) | 41 | `result-track:5c4082f594221ef592941f00cafe929c6dd68a7fc31dd7ed7fabca9b0c392f5e` |
| 5 | `theorem` | [sourced_pole_value](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean/declarations/sourced-pole-value--b37603ac3993f153775cccb0.md) | 45 | `result-track:b37603ac3993f153775cccb0cbb5e792ac26eb4e15500c21b0de311834f04012` |
| 6 | `theorem` | [rational_patch_passes](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean/declarations/rational-patch-passes--973a5f46dd5489ec4713cf2c.md) | 49 | `result-track:973a5f46dd5489ec4713cf2c69d511e6a6fdeb81f616402c98d9f93eb6db7f7c` |
| 7 | `theorem` | [actual_closed_disk_nonzero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean/declarations/actual-closed-disk-nonzero--5ad795374a84d8df167a0e50.md) | 54 | `result-track:5ad795374a84d8df167a0e50c63451fe3fe93330c26b26be84deab5554d997b8` |
| 8 | `theorem` | [equality_margin_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean/declarations/equality-margin-rejected--cf0c8e78be649f4d0aa0a284.md) | 59 | `result-track:cf0c8e78be649f4d0aa0a284153cbae73210554b38a4c4c7ad6031619aabe68a` |
| 9 | `theorem` | [rejected_disk_still_nonzero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean/declarations/rejected-disk-still-nonzero--4509323d23a2e8839f24d961.md) | 64 | `result-track:4509323d23a2e8839f24d961206cd669bde47e4eb35c877f629744592e4e96a3` |
| 10 | `theorem` | [invalid_geometry_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean/declarations/invalid-geometry-rejected--5e6cba45dd7cea1acac0a163.md) | 74 | `result-track:5e6cba45dd7cea1acac0a1632848f8e269b77d2f9937e70cdaed79fa202257f7` |
| 11 | `theorem` | [fictitious_pole_value_passes](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean/declarations/fictitious-pole-value-passes--7917e8bad6634c68514d419a.md) | 81 | `result-track:7917e8bad6634c68514d419a6a1b12b3db69165fb6a902a56a61181b9441a768` |
| 12 | `theorem` | [fictitious_pole_value_has_no_enclosure](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean/declarations/fictitious-pole-value-has-no-enclosure--9fc991c95070b5058c632406.md) | 84 | `result-track:9fc991c95070b5058c6324061a8282fc97f236e09f9efb9cff929e604762d267` |
| 13 | `theorem` | [norm_lower_not_upper](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean/declarations/norm-lower-not-upper--ece9983f9b8ee039cfe79363.md) | 89 | `result-track:ece9983f9b8ee039cfe79363153cbe3d7ed62216e574988287adef30edfff4f3` |
| 14 | `theorem` | [endpoints_alone_do_not_cover](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleNormalizedContour.lean/declarations/endpoints-alone-do-not-cover--9061e532918eb4e342a9c27e.md) | 95 | `result-track:9061e532918eb4e342a9c27e27f64e71ebfad5d3d3c2d805627eac9087952bc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
