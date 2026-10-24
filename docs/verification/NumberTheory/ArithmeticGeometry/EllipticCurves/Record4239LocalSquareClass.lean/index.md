# Verification target: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239LocalSquareClass

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90f1d3a58ee3e654d0b1b43d7a1d3eee4b575086",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90f1d3a58ee3e654d0b1b43d7a1d3eee4b575086`.

Source path: `GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239FiniteCharacterMatrix`](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteCharacterMatrix.lean/index.md) — import line 14; pinned internal source present.
- `Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signBit](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/declarations/signbit--5ddb75ce4bdc85b44c7fdc33.md) | 54 | `declaration-track:5ddb75ce4bdc85b44c7fdc33712c181662e19764a29cd62367385df1adb1306f` |
| 2 | `theorem` | [signBit_mul](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/declarations/signbit-mul--860041556c760a5f0a06f735.md) | 59 | `result-track:860041556c760a5f0a06f735e1dc2ef413f48f9b42d45038387ed746c21e85d9` |
| 3 | `def` | [residueUnitBitHom](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/declarations/residueunitbithom--6b8f8b46e8917c1e05c78bd2.md) | 67 | `declaration-track:6b8f8b46e8917c1e05c78bd286c60494a97b8063eee35294c5bbfb91f7caee47` |
| 4 | `theorem` | [two_smul_zmod_two](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/declarations/two-smul-zmod-two--6bc43a16170540c1104fdd97.md) | 100 | `result-track:6bc43a16170540c1104fdd97eb88aa0cb660dc284dd49b7d33f16fa2f12f081c` |
| 5 | `theorem` | [residueUnitBitHom_square](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/declarations/residueunitbithom-square--dd463975f5bc92ea3e2ef54b.md) | 105 | `result-track:dd463975f5bc92ea3e2ef54bb63262287cfa3bc8723da899ccbe17fd1511dd5b` |
| 6 | `abbrev` | [ResidueSquareClasses](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/declarations/residuesquareclasses--30ffe6d00dac675a5c6d8581.md) | 114 | `declaration-track:30ffe6d00dac675a5c6d8581539ae095ca23a8822fe4fcb873edfc1a5ccb70ba` |
| 7 | `def` | [residueSquareClassBitHom](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/declarations/residuesquareclassbithom--30a2f7b48c62c7d8b66b49ed.md) | 119 | `declaration-track:30a2f7b48c62c7d8b66b49ed937873833ec7e0eae1c598b47055df9df31bd5ce` |
| 8 | `theorem` | [residueSquareClassBitHom_mk](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/declarations/residuesquareclassbithom-mk--191143df8e6adfbd60caf584.md) | 130 | `result-track:191143df8e6adfbd60caf5847e62f0c1e135ca2b9e4b5d93e3a670ff841da234` |
| 9 | `def` | [sourceLocalInteger](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/declarations/sourcelocalinteger--a9695e4bb76dc2fa5f7c1973.md) | 140 | `declaration-track:a9695e4bb76dc2fa5f7c1973e71297aa296c787ea670fc8743399daef2b36fd0` |
| 10 | `theorem` | [sourceLocalInteger_mod_ne_zero](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/declarations/sourcelocalinteger-mod-ne-zero--4a107df712678c36d9793864.md) | 149 | `result-track:4a107df712678c36d97938644e30caa22faf441430d9313f84089f349e326066` |
| 11 | `theorem` | [sourceLocalInteger_cast_ne_zero](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/declarations/sourcelocalinteger-cast-ne-zero--7b0f8b5e9aa47f75883e9bdc.md) | 157 | `result-track:7b0f8b5e9aa47f75883e9bdcca9c965de1c5003209d0ace3df721027f5803680` |
| 12 | `def` | [sourceLocalUnit](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/declarations/sourcelocalunit--719034ec5da3035a48fa18e6.md) | 167 | `declaration-track:719034ec5da3035a48fa18e66b214d2790f3b3224b50967ca3f94c0149abe1bd` |
| 13 | `def` | [sourceQuadraticBit](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/declarations/sourcequadraticbit--d6cd87fd38ba9b775376242d.md) | 177 | `declaration-track:d6cd87fd38ba9b775376242dcc07d297533d9ba228ec1e2a62d25d37317cdc84` |
| 14 | `def` | [SourceBitsMatch](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/declarations/sourcebitsmatch--b1394eeb500be39ac6e38a55.md) | 184 | `declaration-track:b1394eeb500be39ac6e38a552ab7e2a0f41f4cd801619e63285ba17ba979c424` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
