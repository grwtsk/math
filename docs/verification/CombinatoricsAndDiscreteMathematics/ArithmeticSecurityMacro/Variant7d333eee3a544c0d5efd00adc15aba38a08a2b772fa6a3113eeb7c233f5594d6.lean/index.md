# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticSecurityMacro.Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "640aac49d617fcde57bea49d2b079d1c3246769e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `640aac49d617fcde57bea49d2b079d1c3246769e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.ArithmeticSecurityDependency` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ArithmeticSecurityMacroObligation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/declarations/arithmeticsecuritymacroobligation--469796189f6b1a1a4b75863e.md) | 21 | `declaration-track:469796189f6b1a1a4b75863e7a00fb841ffb1c3c0c5b8c8dc7bff57ae7fc3376` |
| 2 | `def` | [terminalArithmeticSecurityMacroOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/declarations/terminalarithmeticsecuritymacroorder--663efb156c10c0f909f3c8e3.md) | 28 | `declaration-track:663efb156c10c0f909f3c8e329e82ce5ee97107009935df73fd2ac84661736de` |
| 3 | `theorem` | [terminalArithmeticSecurityMacroOrder_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/declarations/terminalarithmeticsecuritymacroorder-nodup--c9e3861cbb3ba8f93f4ed303.md) | 36 | `result-track:c9e3861cbb3ba8f93f4ed30308ca2f219f601b80822f580014407121df842989` |
| 4 | `def` | [ArithmeticSecurityMacroObligation.refinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/declarations/arithmeticsecuritymacroobligation-refinement--ef9232d73aabe8bc89929272.md) | 40 | `declaration-track:ef9232d73aabe8bc89929272902a630d3cec37ce4384888396efc9e53593879c` |
| 5 | `theorem` | [arithmeticSecurityFunctor_refinement_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/declarations/arithmeticsecurityfunctor-refinement-card--a9091b33b73745235061f5c0.md) | 69 | `result-track:a9091b33b73745235061f5c09c5deffe834049c6e7774f11771119aea6adc06a` |
| 6 | `theorem` | [traceToAdversaryBridge_refinement_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/declarations/tracetoadversarybridge-refinement-card--cc72e920b5f2f1973ef4edf2.md) | 74 | `result-track:cc72e920b5f2f1973ef4edf230abcfcb6c263a3e7aab323e25b90e965d2e3c2c` |
| 7 | `theorem` | [purityToHardnessBridge_refinement_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/declarations/puritytohardnessbridge-refinement-card--72ef047cdf773c70ae52898b.md) | 79 | `result-track:72ef047cdf773c70ae52898b0c3d66c73aeb9be71c37ec5b5328a749318faeda` |
| 8 | `def` | [terminalArithmeticSecurityMacros](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/declarations/terminalarithmeticsecuritymacros--3d7dbe8ad4ee39d7e530adcd.md) | 84 | `declaration-track:3d7dbe8ad4ee39d7e530adcdc0f33aaa5d07ec47970f9544ccc61440f52f4be6` |
| 9 | `theorem` | [terminalArithmeticSecurityMacroOrder_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/declarations/terminalarithmeticsecuritymacroorder-tofinset--7cb3c38b94867e12d6c66f1b.md) | 88 | `result-track:7cb3c38b94867e12d6c66f1bfd3f1df5380ca4480068e9e42dfe3857d8b779c6` |
| 10 | `theorem` | [terminalArithmeticSecurityMacros_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/declarations/terminalarithmeticsecuritymacros-card--f36a3e7d13c3d6e1628f286a.md) | 93 | `result-track:f36a3e7d13c3d6e1628f286ae9b24e81c1a621069b7eb805e876ccc448f40d3e` |
| 11 | `inductive` | [ArithmeticSecurityMacroVerdict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/declarations/arithmeticsecuritymacroverdict--f5692cdc3e454c937414a416.md) | 97 | `declaration-track:f5692cdc3e454c937414a416675e660f00e2f1d6c58b87d6911ef0f4f079fcf3` |
| 12 | `def` | [IsCertified](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/declarations/iscertified--25679821607763ed1826a5ea.md) | 108 | `declaration-track:25679821607763ed1826a5eab2e443209840cec4c17cfa743b7181e03aa8abf5` |
| 13 | `def` | [IsRefuted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/declarations/isrefuted--27d625bba1fffe4f36505982.md) | 113 | `declaration-track:27d625bba1fffe4f365059823dbeb3a40b8362e158e3f2167a530bf059296e50` |
| 14 | `def` | [unknowns](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/declarations/unknowns--cc3048f71bd3ae8e13532106.md) | 118 | `declaration-track:cc3048f71bd3ae8e13532106f360c22d4072f86c9b2b58378cbe28648c79b571` |
| 15 | `def` | [terminalArithmeticSecurityVerdict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/declarations/terminalarithmeticsecurityverdict--f5791071a9ad35237f70f968.md) | 127 | `declaration-track:f5791071a9ad35237f70f9683e33517a7417341402b49d9449f4397caa24597d` |
| 16 | `theorem` | [terminalArithmeticSecurityVerdict_unknowns](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/declarations/terminalarithmeticsecurityverdict-unknowns--e027f60df5a13bba753423fc.md) | 135 | `result-track:e027f60df5a13bba753423fc84b15567696b8fc7188423470d07822d97c7b099` |
| 17 | `theorem` | [terminalArithmeticSecurityVerdict_not_certified](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/declarations/terminalarithmeticsecurityverdict-not-certified--a177da2e396bf29e42764489.md) | 142 | `result-track:a177da2e396bf29e42764489fd7ac6166a9a5d0114308dbc852efed7c7dfaf82` |
| 18 | `theorem` | [terminalArithmeticSecurityVerdict_not_refuted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant7d333eee3a544c0d5efd00adc15aba38a08a2b772fa6a3113eeb7c233f5594d6.lean/declarations/terminalarithmeticsecurityverdict-not-refuted--58624aec4a0be0e4a82e6890.md) | 148 | `result-track:58624aec4a0be0e4a82e6890832a7aa5492824400f833ec3d2d09e17d18008ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
