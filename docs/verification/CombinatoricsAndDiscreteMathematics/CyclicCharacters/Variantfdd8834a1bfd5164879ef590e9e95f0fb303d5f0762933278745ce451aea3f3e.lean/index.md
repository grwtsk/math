# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CyclicCharacters.Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12a4c44a8c8b263c063549c4a0d7af018da77194",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12a4c44a8c8b263c063549c4a0d7af018da77194`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Oracle.Naming.CyclicCubical` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CyclicSignal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean/declarations/cyclicsignal--ec702c43d6e87f354e09f94f.md) | 28 | `declaration-track:ec702c43d6e87f354e09f94fc0c779f8da8dca84e1830836e1bb1bde09236907` |
| 2 | `def` | [cyclicCharacter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean/declarations/cycliccharacter--7b565960f608056318958e07.md) | 31 | `declaration-track:7b565960f608056318958e077550eaa0846a116b3aa9068b29e6f4abdaad4578` |
| 3 | `def` | [cyclicCharacterCoefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean/declarations/cycliccharactercoefficient--ba44f1f15cdb20125b25a9eb.md) | 35 | `declaration-track:ba44f1f15cdb20125b25a9eb0a94ad8d72beb25179248e2dd36297fbc9ac0727` |
| 4 | `def` | [cyclicCharacterProjector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean/declarations/cycliccharacterprojector--89da14f361189d983f6e5b47.md) | 43 | `declaration-track:89da14f361189d983f6e5b471dbf2ee919ea7ea39d0897e668f95bbf6438d13a` |
| 5 | `def` | [cyclicInnerProduct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean/declarations/cyclicinnerproduct--4ce547ee5323931069bd57f9.md) | 50 | `declaration-track:4ce547ee5323931069bd57f983b6baf778b0f99595bfe791c4a4f92d531db0ec` |
| 6 | `theorem` | [cyclicCharacter_normSq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean/declarations/cycliccharacter-normsq--85ad9bc309ad313718113596.md) | 54 | `result-track:85ad9bc309ad313718113596fa560a81ece659e31d42e42830049d501eb84cc5` |
| 7 | `theorem` | [cyclicCharacter_conj_mul_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean/declarations/cycliccharacter-conj-mul-self--732d5673639fc27872533da9.md) | 60 | `result-track:732d5673639fc27872533da9d2fe882ca7c6296be0e95ea827302533e08d5133` |
| 8 | `theorem` | [cyclicCharacterCoefficient_projector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean/declarations/cycliccharactercoefficient-projector--81f2506dadbd1f024546a212.md) | 65 | `result-track:81f2506dadbd1f024546a212e427844e7b659ccbf3216c5aee70f3816213e9b7` |
| 9 | `theorem` | [cyclicCharacterProjector_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean/declarations/cycliccharacterprojector-idempotent--c00cd0c9f32d142e0d947e95.md) | 102 | `result-track:c00cd0c9f32d142e0d947e954482c1f853067760cede9af5c99f648064946d95` |
| 10 | `theorem` | [conj_cyclicCharacterCoefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean/declarations/conj-cycliccharactercoefficient--e66dccf1d9702b73cf0ee7e4.md) | 114 | `result-track:e66dccf1d9702b73cf0ee7e4623f30497f144eaaa91bee54eb4e555bc5cd2d3e` |
| 11 | `theorem` | [conj_natCast_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean/declarations/conj-natcast-inv--2d41d407678da08bf4e39b7d.md) | 128 | `result-track:2d41d407678da08bf4e39b7d17b37d2d526202b6af6e9e25feefbf06337c3f0f` |
| 12 | `theorem` | [cyclicInnerProduct_projector_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean/declarations/cyclicinnerproduct-projector-left--446866df7b7cb439c9e21ea6.md) | 132 | `result-track:446866df7b7cb439c9e21ea6f0ed1c10389dd5984104417a2fa656859f482a92` |
| 13 | `theorem` | [cyclicInnerProduct_projector_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean/declarations/cyclicinnerproduct-projector-right--04881fa93d9493e56be65073.md) | 162 | `result-track:04881fa93d9493e56be6507391cd56a4101b850051a32a2080d5989e9d0bc2ab` |
| 14 | `theorem` | [cyclicCharacterProjector_selfAdjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean/declarations/cycliccharacterprojector-selfadjoint--ad7be189b07a37f2775c9107.md) | 194 | `result-track:ad7be189b07a37f2775c910744f16fa87be8392072e3b0cd31e1f687dc1c3f09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
