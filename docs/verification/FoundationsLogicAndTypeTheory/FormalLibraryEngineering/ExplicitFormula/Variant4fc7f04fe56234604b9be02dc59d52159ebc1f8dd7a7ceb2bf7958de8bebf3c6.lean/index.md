# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExplicitFormula.Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f015e38ec874784e589a32f7d68433f3504e6e0d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f015e38ec874784e589a32f7d68433f3504e6e0d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredTwistedPsiCriticalRate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean/declarations/centeredtwistedpsicriticalrate--036b9da3017b47b54b33c7ef.md) | 28 | `declaration-track:036b9da3017b47b54b33c7ef7627900c53d5ad1aa86336442dea705e2b7ee8b4` |
| 2 | `def` | [CenteredTwistedPsiCriticalBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean/declarations/centeredtwistedpsicriticalbound--00aa51a25ddb395adb593be9.md) | 33 | `declaration-track:00aa51a25ddb395adb593be90cd0e26101ad2bc90dc6f0d44eaef9c49157ea3a` |
| 3 | `theorem` | [centeredTwistedPsiCriticalRate_le_halfPlusEpsilon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean/declarations/centeredtwistedpsicriticalrate-le-halfplusepsilon--1da2951d8450b42d1ef3d972.md) | 42 | `result-track:1da2951d8450b42d1ef3d972a771f5fb7a3761589d9b7fcc149c3def29863009` |
| 4 | `theorem` | [centeredTwistedPsiCriticalBound_implies_halfPlusEpsilon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean/declarations/centeredtwistedpsicriticalbound-implies-halfplusepsilon--0f232f204d710247ef7ccc9e.md) | 99 | `result-track:0f232f204d710247ef7ccc9ee775473b1db30f125fff2ed53675165ab4ac4b94` |
| 5 | `structure` | [PrimitiveExplicitFormulaSquare](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean/declarations/primitiveexplicitformulasquare--4e5aa4415e8a06ccc27d55ff.md) | 120 | `declaration-track:4e5aa4415e8a06ccc27d55ff639dac73a0154530f68d7da8fdfde80acf3ac902` |
| 6 | `def` | [IsCenteredCriticalRateBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean/declarations/iscenteredcriticalratebound--9b4a018ae8b77c73034d8179.md) | 141 | `declaration-track:9b4a018ae8b77c73034d8179dcb764041a727000118a5d55ba990e1d92fddc0d` |
| 7 | `def` | [PrimitiveExplicitFormulaBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean/declarations/primitiveexplicitformulabounds--a800bcade2c8f0b56b6849c1.md) | 151 | `declaration-track:a800bcade2c8f0b56b6849c1f832c542d101c97fce007223db7387e49915b69b` |
| 8 | `theorem` | [grh_implies_centeredTwistedPsiCriticalBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean/declarations/grh-implies-centeredtwistedpsicriticalbound--883fa84deac93c386ff6f20b.md) | 165 | `result-track:883fa84deac93c386ff6f20b95226cd22a9a9c36b50600e357fd74e74a061234` |
| 9 | `theorem` | [grh_implies_centeredTwistedPsiHalfPlusEpsilon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean/declarations/grh-implies-centeredtwistedpsihalfplusepsilon--9808fbde6ad17a582ef46535.md) | 235 | `result-track:9808fbde6ad17a582ef465358acdceb279aadb50691e94ff04e93beffed71166` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
