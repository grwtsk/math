# Verification target: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuadraticEnvelope

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46930434177d17555a32065d0e7b15762b019a90",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46930434177d17555a32065d0e7b15762b019a90`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftPrefixSquareEnergy`](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftPrefixSquareEnergy.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DyadicQuadraticMertensTwoPointPrefix`](../../../../mathematics/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coreGrowingShiftPrefix_sq_le_shiftEnvelope](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean/declarations/coregrowingshiftprefix-sq-le-shiftenvelope--1f27005a08f908a48ce17fdc.md) | 23 | `result-track:1f27005a08f908a48ce17fdc92f9e143110a37c42e0b7a3b9abbac0d3f0324d8` |
| 2 | `theorem` | [coreGrowingShiftBinaryPrefixSquareDepth_le_shiftSquareSum](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean/declarations/coregrowingshiftbinaryprefixsquaredepth-le-shiftsquaresum--c67057a026c670b400f4d201.md) | 65 | `result-track:c67057a026c670b400f4d2018feb12082cd4ef8f6a78296433174201be6f9291` |
| 3 | `theorem` | [coreGrowingShiftBinaryPrefixSquareEnergy_le_quadraticEnvelope](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean/declarations/coregrowingshiftbinaryprefixsquareenergy-le-quadraticenvelope--180576f36d8559c14935211b.md) | 105 | `result-track:180576f36d8559c14935211b914092e6048a5050e1396a23d18b765188d6f01c` |
| 4 | `theorem` | [subpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy_of_quadratic](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean/declarations/subpolynomialcoregrowingshiftbinaryprefixsquareenergy-of-quadratic--d30f27860c82b36f477fe67a.md) | 141 | `result-track:d30f27860c82b36f477fe67a5b4fb19fb906f516a963c5f93318463d5198b51c` |
| 5 | `theorem` | [subpolynomialCoreGrowingShiftFirstDifferencePacket_of_quadratic](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean/declarations/subpolynomialcoregrowingshiftfirstdifferencepacket-of-quadratic--2af1915d267fc7ea6e7ea25d.md) | 171 | `result-track:2af1915d267fc7ea6e7ea25db1b6dd40cfad26f5494c97767a5829c6318db649` |
| 6 | `def` | [dyadicQuadraticTwoPointGrowingShiftSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean/declarations/dyadicquadratictwopointgrowingshiftsource--037a7d748668e8f764848e7b.md) | 179 | `declaration-track:037a7d748668e8f764848e7ba3359db5ae162ad24c44b3ff6a7177713d8279b3` |
| 7 | `def` | [dyadicQuadraticTwoPointToCoreGrowingShiftAdapter](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean/declarations/dyadicquadratictwopointtocoregrowingshiftadapter--c49b002b0d33769d9e6c6487.md) | 190 | `declaration-track:c49b002b0d33769d9e6c64873a5b58f050de3dbbe080ac3411bf5b36f2cdbeeb` |
| 8 | `theorem` | [riemannHypothesis_of_quadraticTwoPoint_via_coreGrowingShift](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean/declarations/riemannhypothesis-of-quadratictwopoint-via-coregrowingshift--3c3e934f679eb5a77fa62cd3.md) | 200 | `result-track:3c3e934f679eb5a77fa62cd38247f4ad056b6136b0301ab7faa27b8732c907d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
