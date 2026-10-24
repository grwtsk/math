# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitZeroWindingAdditiveEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d662d6d429dfa15b15a767dd62a4c314ffbe67b3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingAdditiveEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingAdditiveEnergy.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingAdditiveEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d662d6d429dfa15b15a767dd62a4c314ffbe67b3`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingAdditiveEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitZeroWindingAdditiveEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitQuarticWindingSplit`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitQuarticWindingSplit.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfIndexZeroWindingCoordinate](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingAdditiveEnergy.lean/declarations/halfindexzerowindingcoordinate--d7372f94f7b83e47bcff09e6.md) | 40 | `declaration-track:d7372f94f7b83e47bcff09e6dfd1d0c15947e542f2dfc8dd9138d67c9bd5aebf` |
| 2 | `theorem` | [parityAffineShiftCollisionCoordinateNat_reconstructed](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingAdditiveEnergy.lean/declarations/parityaffineshiftcollisioncoordinatenat-reconstructed--b1e31fe1ae17ba333f20dd1c.md) | 46 | `result-track:b1e31fe1ae17ba333f20dd1ca07fe24c5929782952e7ec28a8089f2fd640c6e1` |
| 3 | `abbrev` | [zeroWindingHalfIndexBaseSet](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingAdditiveEnergy.lean/declarations/zerowindinghalfindexbaseset--5ea58996ec29adb0176b987f.md) | 56 | `declaration-track:5ea58996ec29adb0176b987f3aa9d88782bc49ae2f8c92e938170f91180178b3` |
| 4 | `def` | [halfIndexQuarticMobiusCoefficient](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingAdditiveEnergy.lean/declarations/halfindexquarticmobiuscoefficient--9d8a4c9aa16ffcf0d28d822d.md) | 61 | `declaration-track:9d8a4c9aa16ffcf0d28d822d6fe7887799c773cbcef9603dbb6370c5701e3852` |
| 5 | `def` | [parityHalfIndexSignedQuarticZeroWinding](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingAdditiveEnergy.lean/declarations/parityhalfindexsignedquarticzerowinding--6e205a246e75b5b218a23e34.md) | 70 | `declaration-track:6e205a246e75b5b218a23e34eadc65e24ee4ba53a0481fbe10ed5434ad16cba8` |
| 6 | `theorem` | [regularQuarticMobiusCoefficient_reconstructed](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingAdditiveEnergy.lean/declarations/regularquarticmobiuscoefficient-reconstructed--0cfc324cc3f398a73a11a400.md) | 84 | `result-track:0cfc324cc3f398a73a11a40058b72b28b5e7f73583fb902383a0b0c23327ff0c` |
| 7 | `theorem` | [sum_two_parityAffineShiftBaseSet_eq_halfIndex](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingAdditiveEnergy.lean/declarations/sum-two-parityaffineshiftbaseset-eq-halfindex--d91341c89a18f64c13168192.md) | 93 | `result-track:d91341c89a18f64c1316819261855b443c18cb2f6eb4f2f6b39008fed41716fb` |
| 8 | `theorem` | [parityHalfShiftSignedQuarticZeroWinding_eq_halfIndex](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingAdditiveEnergy.lean/declarations/parityhalfshiftsignedquarticzerowinding-eq-halfindex--aa50de4a2964030af9a142da.md) | 110 | `result-track:aa50de4a2964030af9a142da1267ec5a5dacfd74ab30217258b11cd7212c40f8` |
| 9 | `theorem` | [halfIndexZeroWindingCoordinate_eq_iff](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingAdditiveEnergy.lean/declarations/halfindexzerowindingcoordinate-eq-iff--9b17e28e42bfc1a4fed7fb99.md) | 134 | `result-track:9b17e28e42bfc1a4fed7fb9929868b56eb35295b16dada9681825ac50a7e5c41` |
| 10 | `theorem` | [halfIndexZeroWinding_eq_shiftDifference](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingAdditiveEnergy.lean/declarations/halfindexzerowinding-eq-shiftdifference--3046f37d8106c16ea5ef301b.md) | 142 | `result-track:3046f37d8106c16ea5ef301b2c08412aee7ef1f48797b9e40c40a6f1fc952062` |
| 11 | `structure` | [RegularZeroWindingAdditiveEnergySourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingAdditiveEnergy.lean/declarations/regularzerowindingadditiveenergysourcedata--7445c7d5291909ae74191140.md) | 152 | `declaration-track:7445c7d5291909ae74191140ee3580984e21a0b15bdecfc6ca911e1feb768a11` |
| 12 | `def` | [RegularZeroWindingAdditiveEnergySource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingAdditiveEnergy.lean/declarations/regularzerowindingadditiveenergysource--d6ccae77cabcb5fce5fc7a68.md) | 164 | `declaration-track:d6ccae77cabcb5fce5fc7a68c8bf66dd7d8c129e9abb514892c77383cd253654` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
