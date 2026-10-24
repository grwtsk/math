# Verification target: GRWTSK.Analysis.Convolution.AutocorrelationTranslationEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd43f3e6bc48ac5c4707c782c902a020cd0ff6a5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Convolution/AutocorrelationTranslationEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Convolution/AutocorrelationTranslationEnergy.lean/index.md) · [Full source](../../../../mathematics/Analysis/Convolution/AutocorrelationTranslationEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd43f3e6bc48ac5c4707c782c902a020cd0ff6a5`.

Source path: `GRWTSK/Analysis/Convolution/AutocorrelationTranslationEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Convolution/AutocorrelationTranslationEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.L2Space` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [autocorrelation](../../../../mathematics/Analysis/Convolution/AutocorrelationTranslationEnergy.lean/declarations/autocorrelation--8f8cba988bbc087a79029f97.md) | 25 | `declaration-track:8f8cba988bbc087a79029f97b2e9f277d46e41c0f3d76b3a77041c016077f903` |
| 2 | `theorem` | [translated_memLp](../../../../mathematics/Analysis/Convolution/AutocorrelationTranslationEnergy.lean/declarations/translated-memlp--d6a10a64d2551fb864f872d4.md) | 28 | `result-track:d6a10a64d2551fb864f872d47fcb7bfced02327a21cc5d814eda03204493b200` |
| 3 | `theorem` | [translated_product_integrable](../../../../mathematics/Analysis/Convolution/AutocorrelationTranslationEnergy.lean/declarations/translated-product-integrable--50819042aee56ef3db0f4246.md) | 32 | `result-track:50819042aee56ef3db0f42461071d1c1c7d2aeeb403e97a5a6344ccf2868f29d` |
| 4 | `theorem` | [translated_difference_square_integrable](../../../../mathematics/Analysis/Convolution/AutocorrelationTranslationEnergy.lean/declarations/translated-difference-square-integrable--ec50a0bd31d68526369b32a0.md) | 36 | `result-track:ec50a0bd31d68526369b32a06ade31c047264bcd7481af773809e7e4f8328ebd` |
| 5 | `theorem` | [zero_eq_square_integral](../../../../mathematics/Analysis/Convolution/AutocorrelationTranslationEnergy.lean/declarations/zero-eq-square-integral--266756f78e8e0807880e6cab.md) | 41 | `result-track:266756f78e8e0807880e6cab55c8b43120a868d3d3bd0003219a47813636e955` |
| 6 | `theorem` | [even](../../../../mathematics/Analysis/Convolution/AutocorrelationTranslationEnergy.lean/declarations/even--a5251927df711e631c1a3c1f.md) | 46 | `result-track:a5251927df711e631c1a3c1fdbeca0adf501694330804978c0993efb2a66e2ff` |
| 7 | `theorem` | [defect_eq_half_translation_energy](../../../../mathematics/Analysis/Convolution/AutocorrelationTranslationEnergy.lean/declarations/defect-eq-half-translation-energy--c0dfade919c6c5eed6161fd2.md) | 56 | `result-track:c0dfade919c6c5eed6161fd219cbdf56cb3f798edc8248573ec448a3e681a968` |
| 8 | `theorem` | [defect_nonneg](../../../../mathematics/Analysis/Convolution/AutocorrelationTranslationEnergy.lean/declarations/defect-nonneg--f11ea9c74d36fac0c5f28ac0.md) | 79 | `result-track:f11ea9c74d36fac0c5f28ac0d276eebd4cee690b008a025c796729bda7eafca6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
