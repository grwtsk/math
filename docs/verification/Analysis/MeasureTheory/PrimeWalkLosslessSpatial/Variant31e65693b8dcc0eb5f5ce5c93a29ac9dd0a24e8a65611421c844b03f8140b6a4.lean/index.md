# Verification target: GRWTSK.Analysis.MeasureTheory.PrimeWalkLosslessSpatial.Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a47e19ca32e5c29896e2a6e4aa91ba4424e10dae",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a47e19ca32e5c29896e2a6e4aa91ba4424e10dae`.

Source path: `GRWTSK/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Operator.Bilinear` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SpatialPoint](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/spatialpoint--e84e67e69a58e220ca2cd03c.md) | 51 | `declaration-track:e84e67e69a58e220ca2cd03c89d504f6dd1f274058b2d17b1ef2ae2032dc49a4` |
| 2 | `abbrev` | [SpatialL2](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/spatiall2--e66888138ffd016c0be31118.md) | 55 | `declaration-track:e66888138ffd016c0be3111862f1d66c90e3e849e2302c6a79bdbc321d9fc9aa` |
| 3 | `def` | [indexedMatrixAmplitude](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/indexedmatrixamplitude--f3caf2fd127d0718134273aa.md) | 63 | `declaration-track:f3caf2fd127d0718134273aa948530a21999da089e1db5ad19ac637fd4431a14` |
| 4 | `theorem` | [indexedMatrixAmplitude_norm](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/indexedmatrixamplitude-norm--981820a6e5ffe22b0af4be43.md) | 69 | `result-track:981820a6e5ffe22b0af4be43baffa2a9e0c31cb40d73ccb7c83e178715f45d66` |
| 5 | `structure` | [UniformLosslessSpatialCodec](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/uniformlosslessspatialcodec--b2fe77809699aa36b09ec008.md) | 83 | `declaration-track:b2fe77809699aa36b09ec008d74c9e2434132288a900c980f2a9de0687f80337` |
| 6 | `structure` | [UnitSpatialProfile](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/unitspatialprofile--2b5dec6981068cdd3ee38de2.md) | 95 | `declaration-track:2b5dec6981068cdd3ee38de20aa22834a9268ec378efad61ff396e41a6067e84` |
| 7 | `def` | [UnitSpatialProfile.encoder](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/unitspatialprofile-encoder--c78fdcf6b277265f85c0d2e9.md) | 101 | `declaration-track:c78fdcf6b277265f85c0d2e907dd90adedd07e8dd39e1e6a07db0a07b5a7562d` |
| 8 | `def` | [UnitSpatialProfile.decoder](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/unitspatialprofile-decoder--f4cb4d07d83d1cfea0cbd459.md) | 107 | `declaration-track:f4cb4d07d83d1cfea0cbd4591378e142bc512419fb4d96a094d9bfc0bfdfca18` |
| 9 | `theorem` | [UnitSpatialProfile.decoder_encoder](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/unitspatialprofile-decoder-encoder--8f9fde3e8c3c83610b71a144.md) | 112 | `result-track:8f9fde3e8c3c83610b71a14461b1689022cd04fcd3ac43969b966108ef575acf` |
| 10 | `def` | [UnitSpatialProfile.codec](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/unitspatialprofile-codec--a1a064cbaf2a7f67b99fc1ea.md) | 123 | `declaration-track:a1a064cbaf2a7f67b99fc1eaba53e38ff6188e6e5f5aed4b7a7e046d327ddae7` |
| 11 | `def` | [unitBallIndicator](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/unitballindicator--20b4855d790841eb4d0c1f3d.md) | 141 | `declaration-track:20b4855d790841eb4d0c1f3d86cda76a1d56e4c3eac796841a32935b7b01ed23` |
| 12 | `theorem` | [unitBallIndicator_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/unitballindicator-ne-zero--5f9d7baf1f2bd7059064c468.md) | 148 | `result-track:5f9d7baf1f2bd7059064c468e23830db2d56f4f8299645687a24ad12c6bdf3ef` |
| 13 | `def` | [normalizedUnitBallMode](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/normalizedunitballmode--9e93422dc3f4569a141d9200.md) | 168 | `declaration-track:9e93422dc3f4569a141d920025107d2b9a4dc9c33a670fb68b9c72fa2db6cc91` |
| 14 | `theorem` | [normalizedUnitBallMode_norm](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/normalizedunitballmode-norm--af9d4e8a51d01f899a310765.md) | 172 | `result-track:af9d4e8a51d01f899a310765d6a948186ad86698f15346a6c941a18b3a1985a4` |
| 15 | `def` | [canonicalUnitSpatialProfile](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/canonicalunitspatialprofile--5e9539771a0913cede5b3776.md) | 179 | `declaration-track:5e9539771a0913cede5b377604273dbc4d29584aa2aca1eadfded916be608da8` |
| 16 | `def` | [canonicalLosslessSpatialCodec](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/canonicallosslessspatialcodec--ceef57a766ba8ef5dde636ab.md) | 185 | `declaration-track:ceef57a766ba8ef5dde636abae8faae14b6dadf5ff77cafff4d4f1a9da2e2794` |
| 17 | `structure` | [LosslessSpatialScale](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/losslessspatialscale--9e0b452d76bcef8802db74d1.md) | 193 | `declaration-track:9e0b452d76bcef8802db74d13e26e6fa3b0e984dc1bb813468cd44d13d36a59c` |
| 18 | `structure` | [CompleteConductorThreeSpatialRoute](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/completeconductorthreespatialroute--3eb7592117dd2fc6c0a00af4.md) | 204 | `declaration-track:3eb7592117dd2fc6c0a00af4e819f0cea322544e723e80fda2600c9204450171` |
| 19 | `def` | [CompleteConductorThreeSpatialRoute.ofCodec](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/completeconductorthreespatialroute-ofcodec--f1a1f36ffdfceacc66a3c80e.md) | 211 | `declaration-track:f1a1f36ffdfceacc66a3c80ec1fba673fae83cc2936fcda6b12635a8f97ee72e` |
| 20 | `def` | [canonicalActualSpatialRoute](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/canonicalactualspatialroute--8ddf07a4c247152cd6d9e111.md) | 224 | `declaration-track:8ddf07a4c247152cd6d9e11160044c4cc88a8af3286467f660affe293b46067a` |
| 21 | `def` | [CompleteConductorThreeSpatialRoute.sampleFunctional](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/completeconductorthreespatialroute-samplefunctional--450d820f69aaf17b028006eb.md) | 231 | `declaration-track:450d820f69aaf17b028006ebd22c7fd91197af823e3e7d3ff204194521417950` |
| 22 | `theorem` | [CompleteConductorThreeSpatialRoute.sampleFunctional_norm_le](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/completeconductorthreespatialroute-samplefunctional-norm-le--d1ee7df5ecef7bed21cb72cf.md) | 238 | `result-track:d1ee7df5ecef7bed21cb72cff550263667936d39c5a1abec8cbbf5f2f7a62d17` |
| 23 | `theorem` | [CompleteConductorThreeSpatialRoute.sample_reconstructs_matrixAmplitude](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/completeconductorthreespatialroute-sample-reconstructs-matrixamplitude--4b528f4bc8e40fe2526f8ab0.md) | 246 | `result-track:4b528f4bc8e40fe2526f8ab03b60afd16d4b9fc80cdf579541f9d577c9d0a50a` |
| 24 | `def` | [SpatialCriticalDecay](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/spatialcriticaldecay--865a2777e96dcc3abaaa7d51.md) | 256 | `declaration-track:865a2777e96dcc3abaaa7d517a798f2009f29e2acd717e030767c826ffb4c792` |
| 25 | `theorem` | [matrixCriticalDecay_iff_spatialCriticalDecay](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/matrixcriticaldecay-iff-spatialcriticaldecay--37a0573dc4b8ce4a14609f86.md) | 267 | `result-track:37a0573dc4b8ce4a14609f8618ea443ca623bef13841543ae3d988cb87bb0e66` |
| 26 | `theorem` | [actualMatrixCriticalDecay_iff_spatialCriticalDecay](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/actualmatrixcriticaldecay-iff-spatialcriticaldecay--f1052564fff9e9bc4dd7d17a.md) | 318 | `result-track:f1052564fff9e9bc4dd7d17a05672c3c25568b4886737ee5daa8cca38cb9f888` |
| 27 | `theorem` | [actualMatrixCriticalDecay_iff_canonicalSpatialCriticalDecay](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/declarations/actualmatrixcriticaldecay-iff-canonicalspatialcriticaldecay--6ef822de49688482c9b79142.md) | 325 | `result-track:6ef822de49688482c9b7914256a46c3b28019b31991f180a10c2296503fba395` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
