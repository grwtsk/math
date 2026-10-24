# Verification target: GRWTSK.Analysis.MeasureTheory.PrimeWalkTwoScaleGrains.Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7ecb8bba1cfd742bb799c32ad6050542d1a0021",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7ecb8bba1cfd742bb799c32ad6050542d1a0021`.

Source path: `GRWTSK/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TwoScaleParameters](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/declarations/twoscaleparameters--12379151f123ed9b6ac0e3db.md) | 53 | `declaration-track:12379151f123ed9b6ac0e3db48b0323637f9d420a91ad0fb9d4fbbad686b7196` |
| 2 | `def` | [finsetShadingUnion](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/declarations/finsetshadingunion--49a4b49c94257faf2ede8275.md) | 71 | `declaration-track:49a4b49c94257faf2ede8275486ee6b5194f82b9d173c6116dede40a14d8985f` |
| 3 | `def` | [objectsAt](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/declarations/objectsat--9a38f84f0b5470b21d3d38ae.md) | 78 | `declaration-track:9a38f84f0b5470b21d3d38ae07025ea31c799ca9e935182564d9de2965d014ba` |
| 4 | `def` | [fiberShadingUnion](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/declarations/fibershadingunion--c43e75f95cd56a2f6f80d971.md) | 86 | `declaration-track:c43e75f95cd56a2f6f80d9711822028f4d770820e469d735fea972622e2083bf` |
| 5 | `def` | [shadingMultiplicity](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/declarations/shadingmultiplicity--927de501f91a43579e3fe99e.md) | 95 | `declaration-track:927de501f91a43579e3fe99e82293385bb704bdbe6db6b18ff8a2475df4301bb` |
| 6 | `theorem` | [finsetShadingUnion_eq_coarseFibers](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/declarations/finsetshadingunion-eq-coarsefibers--97f3e8a531810e45513289c0.md) | 104 | `result-track:97f3e8a531810e45513289c03f138b5550b5e533aa7ff2a2ed5fb13a526690bc` |
| 7 | `structure` | [TubeGrainGeometry](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/declarations/tubegraingeometry--20b4b1b7879e65a7835e001f.md) | 138 | `declaration-track:20b4b1b7879e65a7835e001f079585c9a201f7d49ad6ae984322e68750c377b4` |
| 8 | `structure` | [RobustTwoScaleGrains](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/declarations/robusttwoscalegrains--bba1b6a77b4894a405a1a94c.md) | 162 | `declaration-track:bba1b6a77b4894a405a1a94c0506a0ec541ba2477a26c9a253efa51a2906601a` |
| 9 | `theorem` | [fineShadingUnion_eq_grainShadingUnion](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/declarations/fineshadingunion-eq-grainshadingunion--4a9df5649879a58d0da3578e.md) | 237 | `result-track:4a9df5649879a58d0da3578ead4d34b79c698d4daf2a42a53918c9ec57747cec` |
| 10 | `theorem` | [grain_coarse_unique](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/declarations/grain-coarse-unique--430861784b936191cf065a31.md) | 261 | `result-track:430861784b936191cf065a31d6eafa7fa3a38367fe7223183e128b51870ec7cf` |
| 11 | `def` | [spatialSuperlevelSet](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/declarations/spatialsuperlevelset--d5e2e9d5826d5cd5ff8550bc.md) | 275 | `declaration-track:d5e2e9d5826d5cd5ff8550bc95bc2119d56c6a25bd6be97d2efae94c8a8d11d0` |
| 12 | `structure` | [SpatialWavePacketEncoding](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/declarations/spatialwavepacketencoding--3b767194d9fda4bdc783f5f1.md) | 283 | `declaration-track:3b767194d9fda4bdc783f5f1e936d5c1fc438f8045f7c5c4a0dcaa4fceda969a` |
| 13 | `structure` | [TemporalSpatialSuperlevelLink](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/declarations/temporalspatialsuperlevellink--c816072d14163ce0bcdf214c.md) | 296 | `declaration-track:c816072d14163ce0bcdf214c242a06930bfaa102057df65edf086e7db35b867c` |
| 14 | `theorem` | [spatialSuperlevelSet_eq_grainShadingUnion](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/declarations/spatialsuperlevelset-eq-grainshadingunion--d4e3620bc85f09178b16ba60.md) | 310 | `result-track:d4e3620bc85f09178b16ba60604dd3439bc3ec0fc3369043db9af3ea6963ad0a` |
| 15 | `theorem` | [measure_spatialSuperlevelSet_le_grain_sum](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant8b9b5f51c31d74b716a4f035e3ac70b436b365348720f0f1ef2c281d9145d466.lean/declarations/measure-spatialsuperlevelset-le-grain-sum--464434fabc358c19f7d534ea.md) | 323 | `result-track:464434fabc358c19f7d534eacec8bf1041715e81a8a88408418d2fa064b296a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
