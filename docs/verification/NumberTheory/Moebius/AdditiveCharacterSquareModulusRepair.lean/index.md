# Verification target: GRWTSK.NumberTheory.Moebius.AdditiveCharacterSquareModulusRepair

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d43c5324923c0019b728634a661ba6b84dc187e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d43c5324923c0019b728634a661ba6b84dc187e`.

Source path: `GRWTSK/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.DirichletNonunitResidueObstruction`](../../../../mathematics/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Analysis.Fourier.ZMod` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [additiveZeroResidueSelector](../../../../mathematics/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/declarations/additivezeroresidueselector--e22bca032f4f5699561797e0.md) | 41 | `declaration-track:e22bca032f4f5699561797e0277c6e6d1d848347cdc9d8c2a39633a596f01523` |
| 2 | `theorem` | [additiveZeroResidueSelector_eq_indicator](../../../../mathematics/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/declarations/additivezeroresidueselector-eq-indicator--7c6b8cb2635de11adf0ce0f4.md) | 48 | `result-track:7c6b8cb2635de11adf0ce0f465d2af5de310bc8e88811b7ba315440219b095ae` |
| 3 | `def` | [additiveSquareDivisorSelector](../../../../mathematics/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/declarations/additivesquaredivisorselector--8fa6938d7d855635ffbc729d.md) | 66 | `declaration-track:8fa6938d7d855635ffbc729d5ccec42154b2bf3b5d31eaa52a5691a39ebd93d8` |
| 4 | `theorem` | [additiveSquareDivisorSelector_eq_indicator](../../../../mathematics/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/declarations/additivesquaredivisorselector-eq-indicator--cf8eee01ad4044b2b765a0b2.md) | 75 | `result-track:cf8eee01ad4044b2b765a0b20a4a4bc223948a2d0188dcdcda2e21c383e5c8d8` |
| 5 | `def` | [complexMertensEndpointCrossCongruenceFibre](../../../../mathematics/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/declarations/complexmertensendpointcrosscongruencefibre--5bcbc7a7ef8ae7b212cc1536.md) | 97 | `declaration-track:5bcbc7a7ef8ae7b212cc15364064477096659c431e77557de27b3c746a0fcb84` |
| 6 | `theorem` | [complexMertensEndpointCrossCongruenceFibre_eq_cast](../../../../mathematics/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/declarations/complexmertensendpointcrosscongruencefibre-eq-cast--fa8dade03b5045827bcee2dc.md) | 105 | `result-track:fa8dade03b5045827bcee2dc6098bfa883f48841e9be5d7440b23ca01a806354` |
| 7 | `def` | [additiveSelectorEndpointCrossFibre](../../../../mathematics/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/declarations/additiveselectorendpointcrossfibre--203f56dbb4a8a691d85b8b9a.md) | 116 | `declaration-track:203f56dbb4a8a691d85b8b9ab4087af5a2c92d6befb694ba6964e92187b710f0` |
| 8 | `theorem` | [complexMertensEndpointCrossCongruenceFibre_eq_additiveSelector](../../../../mathematics/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/declarations/complexmertensendpointcrosscongruencefibre-eq-additiveselector--70f854e57e7bab67ea1434f9.md) | 126 | `result-track:70f854e57e7bab67ea1434f9095f68f6da1432a33ca4c6d2fc5445cb793aba43` |
| 9 | `def` | [additiveTwistedEndpointCrossCorrelation](../../../../mathematics/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/declarations/additivetwistedendpointcrosscorrelation--d3980e367e2738c35b050ddc.md) | 150 | `declaration-track:d3980e367e2738c35b050ddcab19cae564d809d80716420e39c9a19904b6906d` |
| 10 | `def` | [additiveFourierEndpointCrossCongruenceFibre](../../../../mathematics/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/declarations/additivefourierendpointcrosscongruencefibre--8ec092cd39515364ff14bc4b.md) | 162 | `declaration-track:8ec092cd39515364ff14bc4bdf74c203df048d96fdedb6cdd889f471068c1c28` |
| 11 | `theorem` | [additiveSelectorEndpointCrossFibre_eq_fourier](../../../../mathematics/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/declarations/additiveselectorendpointcrossfibre-eq-fourier--97ac992b775eb9d70c8069b2.md) | 172 | `result-track:97ac992b775eb9d70c8069b2a6a90697703434bb901b32654b1d9b6f2201164f` |
| 12 | `theorem` | [complex_cast_mertensEndpointCrossCongruenceFibre_eq_additiveFourier](../../../../mathematics/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/declarations/complex-cast-mertensendpointcrosscongruencefibre-eq-additivefourier--ac38a6cd38fed8abf72c25da.md) | 198 | `result-track:ac38a6cd38fed8abf72c25daa3ec006cca14c2f005bfb16cdbc42f9d9b1839a0` |
| 13 | `structure` | [AdditiveCharacterResidueRepair](../../../../mathematics/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/declarations/additivecharacterresiduerepair--bdeb50c62f9f5524c45b4288.md) | 212 | `declaration-track:bdeb50c62f9f5524c45b42888c0bc494104f4ac972da52aaf31922367a482e3d` |
| 14 | `def` | [additiveCharacterResidueRepair](../../../../mathematics/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/declarations/additivecharacterresiduerepair--45fc0641b2760369ff806e64.md) | 220 | `declaration-track:45fc0641b2760369ff806e646e2c40a32331ef74abf9f8982653e600ffbd82e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
