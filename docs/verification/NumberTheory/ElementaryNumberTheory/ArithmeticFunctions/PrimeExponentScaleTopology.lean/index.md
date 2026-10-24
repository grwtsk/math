# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScaleTopology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33710645eeea127159970acad41da190a2445fc4",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33710645eeea127159970acad41da190a2445fc4`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScale`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Geometry.ThreePlusOne.DynamicWitnessChannel`](../../../../../mathematics/Geometry/ThreePlusOne/DynamicWitnessChannel.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Topology.Instances.Int` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sequences` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveRationalLogScale](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/positiverationallogscale--12f8b659ebe6d9cf477277c4.md) | 35 | `declaration-track:12f8b659ebe6d9cf477277c4050a8cfa72d06eac09154d1aee6df5d142336519` |
| 2 | `theorem` | [positiveRationalLogScale_coordinate](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/positiverationallogscale-coordinate--b78494ba80ecfa54e0bbc0b1.md) | 40 | `result-track:b78494ba80ecfa54e0bbc0b173e82799b18e25eb8fc651539199936437146119` |
| 3 | `theorem` | [positiveRationalLogScale_value](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/positiverationallogscale-value--ec62a93accca6ff13cb49eb7.md) | 46 | `result-track:ec62a93accca6ff13cb49eb707008d2a111e37c7be5f716fcef94a2b82daacf5` |
| 4 | `def` | [nearOneValue](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/nearonevalue--c6ed676d9c080e3e27119e43.md) | 57 | `declaration-track:c6ed676d9c080e3e27119e4383cde649389dd49ee928a423ff6cd0d4bec8ecf2` |
| 5 | `theorem` | [nearOneValue_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/nearonevalue-pos--4c2bfbd1d86003f50c7d6f6f.md) | 60 | `result-track:4c2bfbd1d86003f50c7d6f6f1c499e8d51821a3dcc437cd4af2a69ce70f591cf` |
| 6 | `theorem` | [nearOneValue_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/nearonevalue-ne-zero--ffdc312369e518d116b11dbf.md) | 66 | `result-track:ffdc312369e518d116b11dbf636e944a2928d13b9ec1c1c35297c3db5e2dfda2` |
| 7 | `def` | [nearOnePositiveRational](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/nearonepositiverational--f69f10f1d660de7783837c9f.md) | 71 | `declaration-track:f69f10f1d660de7783837c9f7a4c64cc5c654312b5ec22c90c1c0dac3bd4faab` |
| 8 | `theorem` | [nearOnePositiveRational_value](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/nearonepositiverational-value--61a42e0166a021d5679e7beb.md) | 77 | `result-track:61a42e0166a021d5679e7bebf1b77ae77ad29554a6722debdca7c9822d2d3f49` |
| 9 | `theorem` | [padicValRat_prime_pow_add_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/padicvalrat-prime-pow-add-one--d7aa19b8d4df0f65c29c3f86.md) | 84 | `result-track:d7aa19b8d4df0f65c29c3f863b7c1d84803ce923af6e9e53e7a3c4e8eb7d3494` |
| 10 | `theorem` | [nearOne_valuation](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/nearone-valuation--ae55016ded1e3482408c1f8e.md) | 100 | `result-track:ae55016ded1e3482408c1f8e4d60dec8ae2b9a59787ff2f14afeaa50ce6067b3` |
| 11 | `def` | [nearOneLogScale](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/nearonelogscale--3133dbda6527127dd26070dc.md) | 113 | `declaration-track:3133dbda6527127dd26070dc512178243d0829b594de9ab9577556923d5317f6` |
| 12 | `theorem` | [nearOneLogScale_coordinate](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/nearonelogscale-coordinate--8d65c6df69a02b86bddec295.md) | 118 | `result-track:8d65c6df69a02b86bddec295fc34536da5f49ec5628058b15b83074895eb655e` |
| 13 | `theorem` | [nearOneLogScale_tendsto_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/nearonelogscale-tendsto-zero--6f0d95dc983ee64b49edd2ee.md) | 126 | `result-track:6f0d95dc983ee64b49edd2eedcdc99baca1b6a039afe8f9dea6d87ea2f5fb934` |
| 14 | `theorem` | [nearOneCoordinate_not_tendsto_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/nearonecoordinate-not-tendsto-zero--0c808c12f0b1694ef2a4c32c.md) | 152 | `result-track:0c808c12f0b1694ef2a4c32cb44d7001265baab1065327f199ee9cf12b96c3a0` |
| 15 | `theorem` | [scalePrimeCoordinate_not_continuous](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/scaleprimecoordinate-not-continuous--e5ff7748c0c7e466f985364b.md) | 166 | `result-track:e5ff7748c0c7e466f985364b6b5699e5bba7907bc843bc6de4b639b31596bc42` |
| 16 | `theorem` | [realAddHom_to_int_eq_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/realaddhom-to-int-eq-zero--86b3ffb24267445b52eae23c.md) | 177 | `result-track:86b3ffb24267445b52eae23c00b0d884231a4df490903129952165918340f607` |
| 17 | `theorem` | [no_real_additive_extension_of_primeCoordinate](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/no-real-additive-extension-of-primecoordinate--5ac71202dbd2ad5a8f57443d.md) | 197 | `result-track:5ac71202dbd2ad5a8f57443ddfa5ed7d460acef8daf514cd6f9bcc0306dc0ba8` |
| 18 | `def` | [realLogCombination](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/reallogcombination--f6c3f79e260e5d5170ca8065.md) | 208 | `declaration-track:f6c3f79e260e5d5170ca806543670aac02dcad3bebb1669af931ee6a8b445637` |
| 19 | `def` | [primeTwo](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/primetwo--c9f6a2e3b0bdee3e0d4738f7.md) | 212 | `declaration-track:c9f6a2e3b0bdee3e0d4738f72f5e0b15e0ba5594abdc8987dc38f6a605ed1abd` |
| 20 | `def` | [primeThree](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/primethree--48328d3032396bd46640fbc4.md) | 216 | `declaration-track:48328d3032396bd46640fbc481dd6f2e53d0eb5fccce387319a1db5bbaef96c9` |
| 21 | `def` | [realScalarKernelVector](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/realscalarkernelvector--cfaf26bc08e661658be9a371.md) | 221 | `declaration-track:cfaf26bc08e661658be9a371c3628d8b2db0bdc9bea35724327fd83b2ba9c027` |
| 22 | `theorem` | [realScalarKernelVector_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/realscalarkernelvector-ne-zero--0429a99b21822d567068b762.md) | 225 | `result-track:0429a99b21822d567068b762803db4f22eb5c8d0b3785a52f7ae428b8ed36164` |
| 23 | `theorem` | [realLogCombination_kernelVector](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/reallogcombination-kernelvector--71e1a518b1852b3aebf60d4f.md) | 233 | `result-track:71e1a518b1852b3aebf60d4f77946403b00412facf76c85ba4ec3f8b72fed38a` |
| 24 | `theorem` | [realLogCombination_not_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/declarations/reallogcombination-not-injective--440e4ea1da5c98145a3ceb4e.md) | 242 | `result-track:440e4ea1da5c98145a3ceb4e97fb12d640d72b7c58453e8ccea7c635a1d938d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
