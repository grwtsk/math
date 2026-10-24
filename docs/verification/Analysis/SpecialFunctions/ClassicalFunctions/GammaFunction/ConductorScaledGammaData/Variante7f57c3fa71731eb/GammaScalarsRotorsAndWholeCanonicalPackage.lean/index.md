# Verification target: GRWTSK.Analysis.SpecialFunctions.ClassicalFunctions.GammaFunction.ConductorScaledGammaData.Variante7f57c3fa71731eb.GammaScalarsRotorsAndWholeCanonicalPackage

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc909a7c58a4cc1245d24ae92b9725a8848ba7f9",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc909a7c58a4cc1245d24ae92b9725a8848ba7f9`.

Source path: `GRWTSK/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.DirichletCharacterProfile` — import line 19; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Finite` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Reflection` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PrimitiveCharacter](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/primitivecharacter--232db5a3e957288afd5baa69.md) | 50 | `declaration-track:232db5a3e957288afd5baa6998f2bf0f6e78d287b763a614a493ba466167a867` |
| 2 | `def` | [conductorScale](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/conductorscale--c3ee6332caa45493e6833e59.md) | 53 | `declaration-track:c3ee6332caa45493e6833e59d0b6a6b28abb9b94410ef84795c88752f117b8b1` |
| 3 | `theorem` | [conductorScale_pos](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/conductorscale-pos--c0a068ebc6f7b2b9e6714ed0.md) | 56 | `result-track:c0a068ebc6f7b2b9e6714ed08f23e9b447183572a9ff32959967eae52630c91b` |
| 4 | `theorem` | [conductorScale_conjugate](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/conductorscale-conjugate--1a5004a76f24392426a16907.md) | 61 | `result-track:1a5004a76f24392426a169070d9bebd192988a69f39485f4827239d9d26017c1` |
| 5 | `def` | [parityScalar](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/parityscalar--c9f1dff825e3dc5c6ab057ed.md) | 66 | `declaration-track:c9f1dff825e3dc5c6ab057ed5a069394f90d376ab42b5f6b4ae2b0dec1fd7b12` |
| 6 | `def` | [gammaFactor](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/gammafactor--ea4a1273d437cc2367744a35.md) | 74 | `declaration-track:ea4a1273d437cc2367744a3579e620e5a4a087828095d50c51300a6deaf7bc48` |
| 7 | `theorem` | [gammaFactor_conj](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/gammafactor-conj--228445176d6ae3f35372d857.md) | 79 | `result-track:228445176d6ae3f35372d857aa9c2900ae0c1a3f4e2d36c688e9e5d5d3b5c2e6` |
| 8 | `theorem` | [gammaFactor_characterConjugate](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/gammafactor-characterconjugate--446c7dbd4420550c3940bbbb.md) | 96 | `result-track:446c7dbd4420550c3940bbbbe4a4020911ae5c9005083f86ee1545b815165085` |
| 9 | `def` | [criticalLine](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/criticalline--4c5a3ed4025d84daaeb7c669.md) | 102 | `declaration-track:4c5a3ed4025d84daaeb7c669ca7d1c0168bf67d076e0342c8ef349913798183c` |
| 10 | `theorem` | [criticalLine_neg](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/criticalline-neg--dd96e4f1a556d22761764002.md) | 105 | `result-track:dd96e4f1a556d22761764002750bf69cfe264e3ca74b3ef589e9e6363595010e` |
| 11 | `theorem` | [digamma_conj](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/digamma-conj--9b2d96674cc7e5ca316f8a81.md) | 114 | `result-track:9b2d96674cc7e5ca316f8a81aca7e49b50eb90bee52250ee90cc929e5f6bbf59` |
| 12 | `def` | [criticalGammaFactor](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/criticalgammafactor--b84abb055e67fba02149a5d8.md) | 132 | `declaration-track:b84abb055e67fba02149a5d8d2d2b037b8f0e3c6610d62a3488eade4a1706a51` |
| 13 | `theorem` | [criticalArgument_re_pos](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/criticalargument-re-pos--cdea7aa3383a972a032c3ba3.md) | 135 | `result-track:cdea7aa3383a972a032c3ba3730cf48e6b72aa39084095430bf7c0db16a70f23` |
| 14 | `theorem` | [criticalGammaFactor_ne_zero](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/criticalgammafactor-ne-zero--e174c9a5a0e0fbc11aa6d0b2.md) | 145 | `result-track:e174c9a5a0e0fbc11aa6d0b234f4a588a6123d077a1835ce70442153292b5443` |
| 15 | `def` | [gammaRotor](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/gammarotor--6502b0df1be4dec8e8f8e977.md) | 156 | `declaration-track:6502b0df1be4dec8e8f8e977178d35efe693f7bb01e41cae0e9f49f38b6367d3` |
| 16 | `theorem` | [gammaRotor_unitary](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/gammarotor-unitary--06895135ec2f95a267e8b59c.md) | 160 | `result-track:06895135ec2f95a267e8b59cbe481aef6ac37bac7913af95bba454530cf570b8` |
| 17 | `theorem` | [gammaRotor_eq_reflected_factor](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/gammarotor-eq-reflected-factor--b7233be81047ea443e3b4df6.md) | 167 | `result-track:b7233be81047ea443e3b4df65d1683415639db1cf51bb319288d4760f2c8d919` |
| 18 | `def` | [gammaSpindleProfile](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/gammaspindleprofile--e2e60d4dc6cc538de2c85eb2.md) | 176 | `declaration-track:e2e60d4dc6cc538de2c85eb24b065a59e44d3c6f40772ca6394f36fb34a8c4f9` |
| 19 | `theorem` | [gammaSpindleProfile_real](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/gammaspindleprofile-real--af7a52dcd6591f139d696849.md) | 183 | `result-track:af7a52dcd6591f139d6968493e3f9635795d1d36bc46c6301de05edcdcfb6cfe` |
| 20 | `theorem` | [gammaSpindleProfile_even](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/gammaspindleprofile-even--4c51ee2997660c1d1c1bfd7e.md) | 188 | `result-track:4c51ee2997660c1d1c1bfd7ed66a9a3c94b0cc24e6425841c124681e4ac46a60` |
| 21 | `theorem` | [gammaSpindleProfile_characterConjugate](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/gammaspindleprofile-characterconjugate--84a4fa9157094ed00554bde1.md) | 204 | `result-track:84a4fa9157094ed00554bde14de8db0d755e4c16fdd8951627b085e8f02f49ea` |
| 22 | `def` | [boundedGammaSymbol](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/boundedgammasymbol--8aba753c88c084fcb7adaf12.md) | 210 | `declaration-track:8aba753c88c084fcb7adaf12274c2598fa37eb8ff0d195794cfc32fd644ea85c` |
| 23 | `theorem` | [gammaSpindle_norm_le_one](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/gammaspindle-norm-le-one--4cf3c88d87fe7de70c1aa89b.md) | 215 | `result-track:4cf3c88d87fe7de70c1aa89b37aa09978f8a6dc615a8c4277d35d38f3a79ee10` |
| 24 | `structure` | [ArchimedeanGammaSpindle](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/archimedeangammaspindle--38ea2beecc8920460c5f4da2.md) | 229 | `declaration-track:38ea2beecc8920460c5f4da27b16f05c95aadf1a4119c3a41e97c1704ff0036a` |
| 25 | `def` | [canonicalArchimedeanGammaSpindle](../../../../../../../../mathematics/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/declarations/canonicalarchimedeangammaspindle--0f655cabb926d81d66c89b3d.md) | 239 | `declaration-track:0f655cabb926d81d66c89b3d0b23081d8a96dd028090b836ea612ea9644b3b48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
