# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PoleContourHomotopy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "876e8e70dff3271ac3b78dc51bf6bb772605e582",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `876e8e70dff3271ac3b78dc51bf6bb772605e582`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PoleContourHomotopy`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourHomotopy.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.PoleContourCoverage`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourCoverage.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [square_image_is_constant](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean/declarations/square-image-is-constant--b187dd309d11211983c63b43.md) | 30 | `result-track:b187dd309d11211983c63b435ea255d754732a50330966d7e5e1824e245af1fd` |
| 2 | `theorem` | [square_contracts_without_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean/declarations/square-contracts-without-zero--bdaa1a7c132ba43ecfc44dfd.md) | 45 | `result-track:bdaa1a7c132ba43ecfc44dfddeeec4d4ddb34cde33f10aa81b9e1c8c7005b1f6` |
| 3 | `theorem` | [fictitious_values_do_not_supply_enclosures](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean/declarations/fictitious-values-do-not-supply-enclosures--ce30aa40d99db4b6345d9705.md) | 58 | `result-track:ce30aa40d99db4b6345d97053106500c65764752fc95fcdb1cec16a193637f05` |
| 4 | `theorem` | [constant_motion_nonzero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean/declarations/constant-motion-nonzero--99ec2ccee72502f686831431.md) | 62 | `result-track:99ec2ccee72502f68683143173ea4a92219eec6661de4b9ff4fa12faeaf1fe23` |
| 5 | `theorem` | [free_is_not_fixed_base](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean/declarations/free-is-not-fixed-base--1013dc38ae23d13d63cdff48.md) | 71 | `result-track:1013dc38ae23d13d63cdff484c90bec6edb9b800ce1d244ffd89e832cf2e2121` |
| 6 | `theorem` | [opposite_constants_cross_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean/declarations/opposite-constants-cross-zero--f2f8ad8ddcefb0d4d4755b32.md) | 79 | `result-track:f2f8ad8ddcefb0d4d4755b3231ea21002ad2dc529fa37995cc5ba414d7c297be` |
| 7 | `theorem` | [open_chain_stays_open](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean/declarations/open-chain-stays-open--6acac216f245b4ae76e7d1a0.md) | 88 | `result-track:6acac216f245b4ae76e7d1a0f0197754cf314526e801e81d9bd25c4d8eff7b7a` |
| 8 | `theorem` | [identity_square_cells_nonzero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean/declarations/identity-square-cells-nonzero--1cfa1a1e5fb6d35c3ab7141f.md) | 95 | `result-track:1cfa1a1e5fb6d35c3ab7141f787752b3ccdcfe776f555599b73c6e8b5984f0b7` |
| 9 | `theorem` | [identity_still_has_interior_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean/declarations/identity-still-has-interior-zero--8f2d1f6c7dd7ee48b7e5757c.md) | 104 | `result-track:8f2d1f6c7dd7ee48b7e5757cae170480663f9baa63242fe0a60105e076d840ce` |
| 10 | `theorem` | [empty_map_is_initial_vertex](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean/declarations/empty-map-is-initial-vertex--89605a82ccef162a73b28c59.md) | 107 | `result-track:89605a82ccef162a73b28c59ab6ca02720839b84923513e58e62d56a75da2bcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
