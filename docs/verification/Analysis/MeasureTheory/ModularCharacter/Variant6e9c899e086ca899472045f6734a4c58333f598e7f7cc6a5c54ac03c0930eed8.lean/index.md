# Verification target: GRWTSK.Analysis.MeasureTheory.ModularCharacter.Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1a0c998ea5aad725e72b4a5c8ab8573e986b0fe",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1a0c998ea5aad725e72b4a5c8ab8573e986b0fe`.

Source path: `GRWTSK/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.LocallyIntegrable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Measure` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Urysohn` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Unique` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [modularCharacterFun](../../../../../mathematics/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean/declarations/modularcharacterfun--33a3cb780ed566115035e9a0.md) | 54 | `declaration-track:33a3cb780ed566115035e9a070379a1c232c034fceded4e3f8ccab1c442c5e4e` |
| 2 | `lemma` | [modularCharacterFun_eq_haarScalarFactor](../../../../../mathematics/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean/declarations/modularcharacterfun-eq-haarscalarfactor--65d6a99bf65ae585e86c4372.md) | 61 | `result-track:65d6a99bf65ae585e86c437253e6fa8fc8fe6e1eb52215a470bd2123a8db8df3` |
| 3 | `lemma` | [map_right_mul_eq_modularCharacterFun_smul](../../../../../mathematics/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean/declarations/map-right-mul-eq-modularcharacterfun-smul--982ea5277b71f75afd3c40fe.md) | 102 | `result-track:982ea5277b71f75afd3c40fe09d22532e923fb769ea74917b3459a0b667b2270` |
| 4 | `lemma` | [modularCharacterFun_pos](../../../../../mathematics/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean/declarations/modularcharacterfun-pos--1704fb72132d32fcb7825481.md) | 108 | `result-track:1704fb72132d32fcb782548147783ab3d91e4b06e952e16c5fc878fa50f79209` |
| 5 | `lemma` | [modularCharacterFun_map_one](../../../../../mathematics/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean/declarations/modularcharacterfun-map-one--f478ff48da9b152d56298e01.md) | 114 | `result-track:f478ff48da9b152d56298e01315464bc2d5c7e011cfcfc8cb2fd5bdf74a8ccca` |
| 6 | `lemma` | [modularCharacterFun_map_mul](../../../../../mathematics/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean/declarations/modularcharacterfun-map-mul--ef129b4e0e6f0f8ecc501721.md) | 118 | `result-track:ef129b4e0e6f0f8ecc501721fb5607ef14f136b9f400411f0f5b5eb21f95307e` |
| 7 | `def` | [modularCharacter](../../../../../mathematics/Analysis/MeasureTheory/ModularCharacter/Variant6e9c899e086ca899472045f6734a4c58333f598e7f7cc6a5c54ac03c0930eed8.lean/declarations/modularcharacter--428f7d08c6b3870746390197.md) | 139 | `declaration-track:428f7d08c6b3870746390197dbd76aa8b1e41ed69a88094ec6390ecacf37a982` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
