# Verification target: GRWTSK.Analysis.MeasureTheory.PrimeWalkSpatialEnergy.Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40618f481850f6d3cfc59b8c194fa4d487812df2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40618f481850f6d3cfc59b8c194fa4d487812df2`.

Source path: `GRWTSK/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareEnergy](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean/declarations/squareenergy--f73c9cb31adf4248cef67c3f.md) | 45 | `declaration-track:f73c9cb31adf4248cef67c3f34a4bc8ddac7d5ab43874cbdb9d03aca56d76984` |
| 2 | `theorem` | [threshold_sq_mul_measure_superlevel_le_squareEnergy](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean/declarations/threshold-sq-mul-measure-superlevel-le-squareenergy--c036438a2e6bbc91fda811da.md) | 51 | `result-track:c036438a2e6bbc91fda811da667884a99029bcb8ecbe960d689659b50d82c124` |
| 3 | `theorem` | [measure_superlevel_ne_top_of_squareEnergy_ne_top](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean/declarations/measure-superlevel-ne-top-of-squareenergy-ne-top--3c94278f3ef60bce8405e537.md) | 82 | `result-track:3c94278f3ef60bce8405e53781ee149039fcb662556c51f613d31645c2714c65` |
| 4 | `theorem` | [threshold_sq_mul_measureReal_superlevel_le_energyReal](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean/declarations/threshold-sq-mul-measurereal-superlevel-le-energyreal--efab578b514e9a432fd43c50.md) | 105 | `result-track:efab578b514e9a432fd43c5049362ec4887e0c0f6a5c685d602defc11f9d1fe1` |
| 5 | `def` | [packetEnergy](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean/declarations/packetenergy--3af208bebb934191707f97d3.md) | 138 | `declaration-track:3af208bebb934191707f97d3152a2291347767f133d44d437eec3103f146a523` |
| 6 | `theorem` | [packetEnergy_ne_top](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean/declarations/packetenergy-ne-top--a4f6e8da3c336529808fb721.md) | 146 | `result-track:a4f6e8da3c336529808fb721482416239283a635bc939e51173472fab7a5e717` |
| 7 | `theorem` | [packetSquareFunction_enorm_sq](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean/declarations/packetsquarefunction-enorm-sq--839a06ce6de94313bd313497.md) | 164 | `result-track:839a06ce6de94313bd3134971aaeb349062c9c2c9c3149c18c568f4683a1d011` |
| 8 | `theorem` | [packetSquareEnergy_eq_sum](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean/declarations/packetsquareenergy-eq-sum--321b0e55a0773ae41ea3eaad.md) | 180 | `result-track:321b0e55a0773ae41ea3eaad978f8dea0a623f8665e530ac4bbb7fca6001ad7d` |
| 9 | `theorem` | [packetSquareEnergy_ne_top](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean/declarations/packetsquareenergy-ne-top--f981b3c5f8ebae18c00196f0.md) | 194 | `result-track:f981b3c5f8ebae18c00196f06f0bc10ad5cfaf8d1283d44961401fe85a2536f3` |
| 10 | `theorem` | [threshold_sq_mul_measure_packetSuperlevel_le_energy](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean/declarations/threshold-sq-mul-measure-packetsuperlevel-le-energy--bb13dc35a2a30455ee706272.md) | 206 | `result-track:bb13dc35a2a30455ee70627264ef652b1c4698564e4a048ac0b4e6719a698852` |
| 11 | `theorem` | [SpatialEncodedTrajectory.threshold_sq_mul_superlevel_le_packetEnergy](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean/declarations/spatialencodedtrajectory-threshold-sq-mul-superlevel-le-packetenergy--52999c3ec663e90995a7a06f.md) | 237 | `result-track:52999c3ec663e90995a7a06f6bcde73e5ed19fa6b820ef1f291a9f49bef8cf5c` |
| 12 | `theorem` | [matrixNorm_le_of_superlevelVolume](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant4360eb51b3d1635dc95e65ae048fd0c3e3b6303afeafaaa5f5b5d5ca713dc8e9.lean/declarations/matrixnorm-le-of-superlevelvolume--e4f402b9f3b58195a407277b.md) | 264 | `result-track:e4f402b9f3b58195a407277b6f96aab3ddf058931252845d11f269c870f076fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
