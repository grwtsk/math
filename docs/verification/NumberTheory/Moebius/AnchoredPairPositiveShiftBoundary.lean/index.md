# Verification target: GRWTSK.NumberTheory.Moebius.AnchoredPairPositiveShiftBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af3348cd0f04b43b0c57dab364efcdac95be9c24",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af3348cd0f04b43b0c57dab364efcdac95be9c24`.

Source path: `GRWTSK/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.AnchoredPairGreenCoefficientBridge`](../../../../mathematics/NumberTheory/Moebius/AnchoredPairGreenCoefficientBridge.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [anchoredMobiusPair_shift_pos_iff_ge_three](../../../../mathematics/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/declarations/anchoredmobiuspair-shift-pos-iff-ge-three--fa6aab94296240cf702b140f.md) | 48 | `result-track:fa6aab94296240cf702b140f73ad095fa61b8192929dd21b83117f3fb2c66f5a` |
| 2 | `theorem` | [anchoredMobiusPair_shift_zero_iff_one_or_two](../../../../mathematics/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/declarations/anchoredmobiuspair-shift-zero-iff-one-or-two--bd4142cb1768861f6f1a3f94.md) | 59 | `result-track:bd4142cb1768861f6f1a3f9403cffe61e253520596bf512a4f84d92fa61c69e5` |
| 3 | `def` | [anchoredPositiveShiftDivisorTransform](../../../../mathematics/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/declarations/anchoredpositiveshiftdivisortransform--adf74f3cc34456faa92eedd2.md) | 76 | `declaration-track:adf74f3cc34456faa92eedd2f6c39d8cbe57f9d32578cf2daea7f4744b493cfb` |
| 4 | `def` | [anchoredZeroShiftBoundaryTransform](../../../../mathematics/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/declarations/anchoredzeroshiftboundarytransform--d45f0da867448c987448f9fe.md) | 88 | `declaration-track:d45f0da867448c987448f9feaeba7f7de4b399ed1a14529d3de965ff835759ff` |
| 5 | `theorem` | [anchoredFiniteGreenDivisorTransform_eq_positive_add_boundary](../../../../mathematics/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/declarations/anchoredfinitegreendivisortransform-eq-positive-add-boundary--597ee4c3c16d233967083096.md) | 100 | `result-track:597ee4c3c16d2339670830968e1e372f81508059c077a8334db466dfbd01ff44` |
| 6 | `def` | [lowFactorMobiusLog](../../../../mathematics/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/declarations/lowfactormobiuslog--87ca3e6caf8e4d3f74323fd4.md) | 123 | `declaration-track:87ca3e6caf8e4d3f74323fd496ed0402b7fc998b84084cdc3978938fce0c6833` |
| 7 | `theorem` | [firstFactorMobiusLog_eq_log](../../../../mathematics/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/declarations/firstfactormobiuslog-eq-log--bc0f7329c20b7d90d474b9ec.md) | 131 | `result-track:bc0f7329c20b7d90d474b9ec5b87a7f8ab6ea0bfbba09211e96ac9b26149d389` |
| 8 | `theorem` | [secondFactorMobiusLog_eq](../../../../mathematics/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/declarations/secondfactormobiuslog-eq--4acf37c97a8af9e41b0a986b.md) | 165 | `result-track:4acf37c97a8af9e41b0a986b4b4bf709c2547d4cd0ac57ef08d9b7fda6cc8b33` |
| 9 | `theorem` | [lowFactorMobiusLog_eq_boundary](../../../../mathematics/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/declarations/lowfactormobiuslog-eq-boundary--2a1f7dddb6cf14d6ff92178a.md) | 220 | `result-track:2a1f7dddb6cf14d6ff92178aa0971192981e37450b5818f00577b013deaae540` |
| 10 | `theorem` | [anchoredZeroShiftBoundaryTransform_actual](../../../../mathematics/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/declarations/anchoredzeroshiftboundarytransform-actual--0c3dcc423cafb414f5ec296c.md) | 257 | `result-track:0c3dcc423cafb414f5ec296cd77f337d8deeff76efe8f83a8e160956bff20e0a` |
| 11 | `theorem` | [vonMangoldt_eq_positiveAnchored_add_boundary](../../../../mathematics/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/declarations/vonmangoldt-eq-positiveanchored-add-boundary--6ff768b2f9e7dda4d0434f2a.md) | 293 | `result-track:6ff768b2f9e7dda4d0434f2a579af483fe1463476dfb69eb9b5de181dd32a80f` |
| 12 | `theorem` | [anchoredZeroShiftBoundary_two_three_pos](../../../../mathematics/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/declarations/anchoredzeroshiftboundary-two-three-pos--af6fd78ba50ce4a00882a25b.md) | 309 | `result-track:af6fd78ba50ce4a00882a25b184238b92f77a7eb63c0fbf5c47091dd4229cfd2` |
| 13 | `def` | [anchoredPositiveShiftGreenCoordinate](../../../../mathematics/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/declarations/anchoredpositiveshiftgreencoordinate--a05b977004c4dadaa012667d.md) | 321 | `declaration-track:a05b977004c4dadaa012667ddbbfd10637615546c675a55e068e6bc539b5ff1e` |
| 14 | `def` | [anchoredZeroShiftBoundaryGreenCoordinate](../../../../mathematics/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/declarations/anchoredzeroshiftboundarygreencoordinate--2a890f88f4cd6de6109df12f.md) | 330 | `declaration-track:2a890f88f4cd6de6109df12f3f4c43f603be33e8ca66b0bfaf36004bfcd9cee4` |
| 15 | `theorem` | [centeredGreenPrimeCoordinate_eq_positive_add_zeroShift](../../../../mathematics/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/declarations/centeredgreenprimecoordinate-eq-positive-add-zeroshift--a82bfeeff813bfeb56086565.md) | 340 | `result-track:a82bfeeff813bfeb56086565dbb58e5aff78c356198a1bf60ebb90c92d158a3d` |
| 16 | `theorem` | [thinGreenArithmeticFourierCoordinate_eq_positive_sub_boundary](../../../../mathematics/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/declarations/thingreenarithmeticfouriercoordinate-eq-positive-sub-boundary--798afe04ea9ccedd28328eaa.md) | 359 | `result-track:798afe04ea9ccedd28328eaabed0ba1777e3382b6f7db305e34081212bd50c67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
