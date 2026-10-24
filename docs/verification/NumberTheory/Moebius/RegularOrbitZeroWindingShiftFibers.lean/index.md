# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitZeroWindingShiftFibers

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3105c3c2e1215d1e3b6b0be4dfba188a3b43055b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3105c3c2e1215d1e3b6b0be4dfba188a3b43055b`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitZeroWindingFiberEnergy`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zeroWindingHalfIndexFromCoordinate](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean/declarations/zerowindinghalfindexfromcoordinate--518e73571a29aeb01e0f91e2.md) | 42 | `declaration-track:518e73571a29aeb01e0f91e2b0bf6adef0fe1c48b40063300876c01e2755c12f` |
| 2 | `def` | [zeroWindingAdmissibleShiftSet](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean/declarations/zerowindingadmissibleshiftset--b3da0c6a28b093cd423c7927.md) | 47 | `declaration-track:b3da0c6a28b093cd423c79273877fac04b9222561c5c7ec8d1fb1134479c981f` |
| 3 | `theorem` | [zeroWindingHalfIndexFromCoordinate_eq](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean/declarations/zerowindinghalfindexfromcoordinate-eq--31431caba5d0ea6930a086bc.md) | 57 | `result-track:31431caba5d0ea6930a086bc96459b65b360154671caf190a5fde46d7a9f143b` |
| 4 | `theorem` | [zeroWindingCoordinate_conditions](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean/declarations/zerowindingcoordinate-conditions--25489d86b49b264087d1811b.md) | 66 | `result-track:25489d86b49b264087d1811bac8d26af5db76cd6fd28aaf7c2c4569eeef9a404` |
| 5 | `theorem` | [zeroWindingCoordinate_reconstruct](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean/declarations/zerowindingcoordinate-reconstruct--8c1c7ccd5ada40c8c9f9d640.md) | 74 | `result-track:8c1c7ccd5ada40c8c9f9d640ed48d87c4b098e782ebb89448c78e31b77aadf9f` |
| 6 | `theorem` | [mem_zeroWindingAdmissibleShiftSet](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean/declarations/mem-zerowindingadmissibleshiftset--d40110fae9db45069d27d4ee.md) | 83 | `result-track:d40110fae9db45069d27d4eee8735af2063ecbdf919fc781c139814b5d4e3e58` |
| 7 | `theorem` | [sum_halfIndex_eq_coordinate_single](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean/declarations/sum-halfindex-eq-coordinate-single--4cad71e0a737307199d7a079.md) | 96 | `result-track:4cad71e0a737307199d7a0799300cee1f34ff01c653f59220304e5fb82dbb036` |
| 8 | `def` | [parityZeroWindingShiftFiberCorrelation](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean/declarations/parityzerowindingshiftfibercorrelation--7a0488fa9b781b91bc7e26ce.md) | 143 | `declaration-track:7a0488fa9b781b91bc7e26cebf48e99b84db4968eb5aa6d1fc857144915e49ab` |
| 9 | `theorem` | [parityHalfIndexZeroWindingFiber_eq_shiftCorrelation](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean/declarations/parityhalfindexzerowindingfiber-eq-shiftcorrelation--2a7ead75125a466686838069.md) | 152 | `result-track:2a7ead75125a466686838069fad6b290fa43feaec330c5295aeaaa6c526848d5` |
| 10 | `theorem` | [parityHalfIndexZeroWindingFiberEnergy_eq_shiftCorrelation](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean/declarations/parityhalfindexzerowindingfiberenergy-eq-shiftcorrelation--63953811c96deab183412245.md) | 166 | `result-track:63953811c96deab1834122452024c3172c88218bacbce751d9aebe13d3bc9949` |
| 11 | `structure` | [RegularZeroWindingShiftFiberSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean/declarations/regularzerowindingshiftfibersourcedata--540f83797ddde3951a7cfcff.md) | 180 | `declaration-track:540f83797ddde3951a7cfcff3cd2e5900abb4398c12952b3d6e6315bc53cd251` |
| 12 | `def` | [RegularZeroWindingShiftFiberSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingShiftFibers.lean/declarations/regularzerowindingshiftfibersource--da9213e50ede414db072b1b7.md) | 190 | `declaration-track:da9213e50ede414db072b1b7ea984b92c92927c4720d885f49f54570c9c68a22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
