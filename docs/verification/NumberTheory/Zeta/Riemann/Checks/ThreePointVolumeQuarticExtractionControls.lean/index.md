# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.ThreePointVolumeQuarticExtractionControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "804e47b00c9fc454d5e56aad6347c03a68a5328d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/ThreePointVolumeQuarticExtractionControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ThreePointVolumeQuarticExtractionControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ThreePointVolumeQuarticExtractionControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `804e47b00c9fc454d5e56aad6347c03a68a5328d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/ThreePointVolumeQuarticExtractionControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/ThreePointVolumeQuarticExtractionControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ThreePointVolumeQuarticExtraction`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/ThreePointVolumeQuarticExtraction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [collinearPacking](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ThreePointVolumeQuarticExtractionControls.lean/declarations/collinearpacking--7b0e970d0438161663b3ca01.md) | 14 | `declaration-track:7b0e970d0438161663b3ca01539ef3211511a65e47611ad7141bc88a9ca55cb3` |
| 2 | `theorem` | [collinearPacking_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ThreePointVolumeQuarticExtractionControls.lean/declarations/collinearpacking-zero--d87c0f4622ed9ae2c3eae26d.md) | 19 | `result-track:d87c0f4622ed9ae2c3eae26dd1129ad89f67d50bbe74d8a91ead0b5d386dbc50` |
| 3 | `def` | [unitCornerPacking](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ThreePointVolumeQuarticExtractionControls.lean/declarations/unitcornerpacking--fd16166c14f9ece0f3547f6b.md) | 26 | `declaration-track:fd16166c14f9ece0f3547f6bedd23aa49cbd63a2a61aa748f545231b95e7dd05` |
| 4 | `theorem` | [unitCornerPacking_one](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ThreePointVolumeQuarticExtractionControls.lean/declarations/unitcornerpacking-one--10c23c4d8e28035bdf270b4f.md) | 31 | `result-track:10c23c4d8e28035bdf270b4f3b42cf14f0876ee3d0a6c63c437419b22b5eb091` |
| 5 | `theorem` | [packing_volume_ne_negative](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ThreePointVolumeQuarticExtractionControls.lean/declarations/packing-volume-ne-negative--e3e9566ec2706f750d4e03a4.md) | 38 | `result-track:e3e9566ec2706f750d4e03a4dab56664ef1f769ade7b2522f65a04dc1b2b4551` |
| 6 | `theorem` | [positive_packing_does_not_identify_signed_quartic](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ThreePointVolumeQuarticExtractionControls.lean/declarations/positive-packing-does-not-identify-signed-quartic--e159f3ca7dce79cb95a6e190.md) | 45 | `result-track:e159f3ca7dce79cb95a6e1906dded64ef89d3c9e0555b025c600f6bef3de0d3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
