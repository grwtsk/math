# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Noise.Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a75cf9e9d13bd299fc604f652d8c11972c91194e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a75cf9e9d13bd299fc604f652d8c11972c91194e`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.WalshFourier.Energy` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [noiseMultiplier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/noisemultiplier--82ea00742c0413d2fdc3eaaa.md) | 16 | `declaration-track:82ea00742c0413d2fdc3eaaa0d277828792321f95306e174736b7afb05109a3f` |
| 2 | `def` | [NoiseOperator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/noiseoperator--279ea0b3672a3e4c310fbe12.md) | 28 | `declaration-track:279ea0b3672a3e4c310fbe12107133dc8a818901d38d65666094690cc2794f67` |
| 3 | `def` | [noiseCoordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/noisecoordinate--84331a5f54f2cdcd1dd1a057.md) | 37 | `declaration-track:84331a5f54f2cdcd1dd1a0576bd6f2514752e1d2a0576834ea25f7fc4b1a2021` |
| 4 | `def` | [weightedSpectralMassNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/weightedspectralmassnumerator--dbd29372fb42b8144ae76edc.md) | 46 | `declaration-track:dbd29372fb42b8144ae76edc10005899f0027c52a220ecc33186be61205c121a` |
| 5 | `def` | [spectralMassNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/spectralmassnumerator--f3f9c4d2b708b9d0db25b743.md) | 55 | `declaration-track:f3f9c4d2b708b9d0db25b743a872ca0094e9ccb43df28d0522a3ad5f947e309d` |
| 6 | `def` | [noiseStabilityNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/noisestabilitynumerator--270103aa1c258965b19bdb12.md) | 61 | `declaration-track:270103aa1c258965b19bdb12f48ccbc521e8d678645ccb8ae582254d32ac8df0` |
| 7 | `def` | [coordinateInfluenceSpectralMassNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/coordinateinfluencespectralmassnumerator--cc9961bf16da958ab9226a42.md) | 70 | `declaration-track:cc9961bf16da958ab9226a428149efaecaf482ed11a6e6511a7b38b4d0520a16` |
| 8 | `def` | [influenceSpectralMassNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/influencespectralmassnumerator--f5e1c8b460bd25f474e558e2.md) | 79 | `declaration-track:f5e1c8b460bd25f474e558e2db6fb60a8538146b401043cdeab35592b4c1a92b` |
| 9 | `theorem` | [int_one_pow](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/int-one-pow--d65d2164c7a50b65d3eef2e4.md) | 86 | `result-track:d65d2164c7a50b65d3eef2e40fe9fe46811db1df0a60ad1343f20c61865c785e` |
| 10 | `theorem` | [noiseMultiplier_one](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/noisemultiplier-one--15f2305ec2f32d735e96b2b4.md) | 94 | `result-track:15f2305ec2f32d735e96b2b4230c5dc753f37e2c550ea2c2b5753f1845faaac1` |
| 11 | `theorem` | [NoiseOperator_projectionNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/noiseoperator-projectionnumerator--b6be35642552585dfb26289b.md) | 99 | `result-track:b6be35642552585dfb26289b4db24ee02505a5dbf7e6ddac0c86005559e01fd3` |
| 12 | `theorem` | [NoiseOperator_one](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/noiseoperator-one--ccc425e52f8ccdebefc9ae9c.md) | 107 | `result-track:ccc425e52f8ccdebefc9ae9c1d70c97b1c1ba4aabece836274d0dbd98839da72` |
| 13 | `theorem` | [noiseCoordinate_numerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/noisecoordinate-numerator--ee1719d08524352b842ee517.md) | 114 | `result-track:ee1719d08524352b842ee5172bae918eccb830865db36195c98bb8da9a0054b6` |
| 14 | `theorem` | [noiseCoordinate_exponent](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/noisecoordinate-exponent--e291fe6bb60b61b6e00413f7.md) | 121 | `result-track:e291fe6bb60b61b6e00413f70c6807ebf7ffde1d8f37064f353e2a77ef8491b0` |
| 15 | `theorem` | [spectralMassNumerator_eq_energy](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/spectralmassnumerator-eq-energy--4a1c43fc76e69e91493896b8.md) | 127 | `result-track:4a1c43fc76e69e91493896b8cdfc66f6d1bc3d09a84019a13a3eb44d20003ab0` |
| 16 | `theorem` | [noiseStability_eq_weightedSpectralMass](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/noisestability-eq-weightedspectralmass--95ddd45211a2914479591029.md) | 132 | `result-track:95ddd45211a29144795910293908dfa2525d1d9f8c2b074bda4b40e31876716e` |
| 17 | `theorem` | [noiseStability_one](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/noisestability-one--713bada195039021f8f30cd2.md) | 140 | `result-track:713bada195039021f8f30cd2f7e8913f37e428ed67492e813bd07193d8033a29` |
| 18 | `theorem` | [spectralMass_eq_scaled_sampleEnergy](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/spectralmass-eq-scaled-sampleenergy--bb2021a595a06883b28947c3.md) | 151 | `result-track:bb2021a595a06883b28947c3684ade5cc1997b7974ef49bd9ebda51f8aedefd6` |
| 19 | `theorem` | [noiseStability_one_eq_scaled_sampleEnergy](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/noisestability-one-eq-scaled-sampleenergy--aa71c0f78ac6e9b1e132740c.md) | 157 | `result-track:aa71c0f78ac6e9b1e132740c8939061d449d64e6115fdf7cb3d0ce8e44db979f` |
| 20 | `theorem` | [coordinateInfluenceSpectralMass_eq_weightedSpectralMass](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/coordinateinfluencespectralmass-eq-weightedspectralmass--d69b10dab53e105d8f77f901.md) | 164 | `result-track:d69b10dab53e105d8f77f9015e68759562e0c13c2577c42fa9757e807abeeed9` |
| 21 | `theorem` | [influenceSpectralMass_eq_degreeWeightedSpectralMass](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Noise/Variantcc1e523293b6f473c3c7de0cd1eea52953ee552fe5b19a76826f551a3770f9c7.lean/declarations/influencespectralmass-eq-degreeweightedspectralmass--ad8fe9b35a4d9e7d063f2827.md) | 172 | `result-track:ad8fe9b35a4d9e7d063f2827d4bb10f452dd4be9432309a551d6575b7fe2c455` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
