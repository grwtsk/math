# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenCoefficientBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e49784d78674a1f115fd24fa09c64426080a97d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e49784d78674a1f115fd24fa09c64426080a97d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogFinitePacket`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredGreenWindow](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean/declarations/centeredgreenwindow--1d16c159b79631c337dbcc6e.md) | 19 | `declaration-track:1d16c159b79631c337dbcc6e84a159ee712154796f7c21fc6958b1715255d1fd` |
| 2 | `def` | [centeredGreenLocation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean/declarations/centeredgreenlocation--a9653c3381fdded9ed8f5686.md) | 22 | `declaration-track:a9653c3381fdded9ed8f5686cce1760929ac248167eac717e3ee2073a8d2de2d` |
| 3 | `def` | [centeredGreenArithmeticCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean/declarations/centeredgreenarithmeticcoefficient--7065f752c8432258d9a30ea1.md) | 25 | `declaration-track:7065f752c8432258d9a30ea16b92bed0a67959ff2a021bd72ba00f9aafc0841c` |
| 4 | `def` | [centeredGreenCenteredCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean/declarations/centeredgreencenteredcoefficient--b4650a6f0c07124c3f940b21.md) | 29 | `declaration-track:b4650a6f0c07124c3f940b216e74bab379b8bb525302346cd2e18c99703ec004` |
| 5 | `def` | [centeredGreenHarmonicCorrectionCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean/declarations/centeredgreenharmoniccorrectioncoefficient--e5182af1b63ec19fe0f26c8a.md) | 33 | `declaration-track:e5182af1b63ec19fe0f26c8a33f7d1b60a3d2547b56854ae757a548b1d51aacf` |
| 6 | `theorem` | [greenArithmeticCoefficient_eq_centered_add_harmonic](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean/declarations/greenarithmeticcoefficient-eq-centered-add-harmonic--c93b7cc57a8cae1c75239027.md) | 36 | `result-track:c93b7cc57a8cae1c752390270dd5458267e42420587f569f4659806f10b06704` |
| 7 | `def` | [centeredGreenPrimeCoordinate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean/declarations/centeredgreenprimecoordinate--828b92f2ba6b37e25976e53b.md) | 48 | `declaration-track:828b92f2ba6b37e25976e53b40f45829e908f31338e4e103fecf66e4217de81a` |
| 8 | `def` | [centeredGreenCenteredCoordinate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean/declarations/centeredgreencenteredcoordinate--e4d5079254b0120a32cfaad6.md) | 55 | `declaration-track:e4d5079254b0120a32cfaad6cf61d23daab8a4c5aa4c886d2fdf0acbc1a85d43` |
| 9 | `def` | [centeredGreenHarmonicCorrection](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean/declarations/centeredgreenharmoniccorrection--3878273b06eec2dd574d4f98.md) | 62 | `declaration-track:3878273b06eec2dd574d4f98bb97aebe641919e278aa6f7c8ef63db6cb101618` |
| 10 | `theorem` | [centeredGreenPrimeCoordinate_decomposition](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean/declarations/centeredgreenprimecoordinate-decomposition--dbe030fd826077bcc4a5ada4.md) | 70 | `result-track:dbe030fd826077bcc4a5ada47b11c2b86bb1f0e6ccc62a8029073f4594f19043` |
| 11 | `def` | [centeredGreenCoordinateWithBackground](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean/declarations/centeredgreencoordinatewithbackground--1029dbeda11f308371f0af24.md) | 86 | `declaration-track:1029dbeda11f308371f0af24b6d45eb38fee17739b6c47ef83434e9900db383e` |
| 12 | `theorem` | [centeredGreenCoordinateWithBackground_decomposition](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean/declarations/centeredgreencoordinatewithbackground-decomposition--341a689636a3018eec71442b.md) | 92 | `result-track:341a689636a3018eec71442bde585c197d16f029818089e76a06633346c5ce8f` |
| 13 | `theorem` | [centeredGreenCenteredCoordinate_eq_mobiusLogPacket](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCoefficientBridge.lean/declarations/centeredgreencenteredcoordinate-eq-mobiuslogpacket--6b730b6baba397e88ff8953e.md) | 103 | `result-track:6b730b6baba397e88ff8953e574c59439934208ac5aa8e174d44733b32b828c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
