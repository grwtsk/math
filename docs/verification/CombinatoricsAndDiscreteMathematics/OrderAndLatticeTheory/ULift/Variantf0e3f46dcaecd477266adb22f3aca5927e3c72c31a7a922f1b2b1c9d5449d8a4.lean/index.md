# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ULift.Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9624bded4881b12c0c39cc8e1757cfb7bb365dc6",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9624bded4881b12c0c39cc8e1757cfb7bb365dc6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.ULift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/instance--8f02e4adaec2eaf6e5dfbffe.md) | 23 | `declaration-track:8f02e4adaec2eaf6e5dfbffe7702f0a7cc909a1b081a7b5ae8e846ac9930f9ab` |
| 2 | `theorem` | [up_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/up-le--fedaeb7e35e46fd79d0cbbc6.md) | 25 | `result-track:fedaeb7e35e46fd79d0cbbc6cb1afa72174ef72a8d9384ba33976f8c233d839a` |
| 3 | `theorem` | [down_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/down-le--8cf7819a2166331990d4eea3.md) | 26 | `result-track:8cf7819a2166331990d4eea343ac9ca864f55b58dec772d2bc251e7844441794` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/instance--3b24a3b393567f5ece865c5d.md) | 28 | `declaration-track:3b24a3b393567f5ece865c5d27cb969e1425b295b7022b1832b31063cb84ebfc` |
| 5 | `theorem` | [up_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/up-lt--234e65132d052b12251f33be.md) | 30 | `result-track:234e65132d052b12251f33be6754e5edf0479c00679366d25f7eb556e7d413a6` |
| 6 | `theorem` | [down_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/down-lt--8ac9bf8b9156aaa9531f5c30.md) | 31 | `result-track:8ac9bf8b9156aaa9531f5c30960169cc496aff65a5d37ea28f6cc1f00a0c0a98` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/instance--c81d64c577c186b28dbdba5b.md) | 33 | `declaration-track:c81d64c577c186b28dbdba5b401280ac506ca690ab4ca3e03fb0acc44dccf80a` |
| 8 | `theorem` | [up_beq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/up-beq--c8ce513c5c9502719581bdd7.md) | 35 | `result-track:c8ce513c5c9502719581bdd72f44f88c680f5e6b134d39d8af907c555c2c885d` |
| 9 | `theorem` | [down_beq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/down-beq--0cecffedbf135cb56f8d72f1.md) | 36 | `result-track:0cecffedbf135cb56f8d72f1fcdc59230895f683e3916c618b646d2a2dbd4e61` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/instance--8de01ad2ec05425fce911f5c.md) | 38 | `declaration-track:8de01ad2ec05425fce911f5cf7bca279b4c1d8958db7395f25348bf14bbf1992` |
| 11 | `theorem` | [up_compare](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/up-compare--ab0c68da536c58439fdce87c.md) | 40 | `result-track:ab0c68da536c58439fdce87c429018365287361f4fe588400e3834b0667d5e98` |
| 12 | `theorem` | [down_compare](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/down-compare--9975a2f0502e8b9b936d3635.md) | 41 | `result-track:9975a2f0502e8b9b936d36350c7c6759eb06314c1a5050bfaea35892ae27ce8c` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/instance--0260fdf253a9650f08e9fdfe.md) | 44 | `declaration-track:0260fdf253a9650f08e9fdfe273103edfb14d606466167fa0bc2d4d2aa4d4f54` |
| 14 | `theorem` | [up_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/up-sup--84f0423d078a777fdcd4d9ab.md) | 46 | `result-track:84f0423d078a777fdcd4d9ab307df2bb161ec977efc8232ffa64e15ae591b179` |
| 15 | `theorem` | [down_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/down-sup--8743ef2bc8daae07199cd317.md) | 47 | `result-track:8743ef2bc8daae07199cd317aafae86ebe26cfaa08aaef52c98a11884acac5b5` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/instance--5d9b857439b926ec407da190.md) | 49 | `declaration-track:5d9b857439b926ec407da190f8fe72db724ced231c8197fb2353826953a05638` |
| 17 | `theorem` | [up_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/up-inf--042ed7b0fd2954dc6d424949.md) | 51 | `result-track:042ed7b0fd2954dc6d4249492fb99e1fa3851669d727849dc0adc5d8cf31ea49` |
| 18 | `theorem` | [down_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/down-inf--fb8bfc838fb7885f0411fb98.md) | 52 | `result-track:fb8bfc838fb7885f0411fb98033b5a031d729a5d2742fbd9e69f67358d30325e` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/instance--3123723e04321e590d0da15e.md) | 54 | `declaration-track:3123723e04321e590d0da15efe3c477cb6d927d4947b98894d047c3c1a993553` |
| 20 | `theorem` | [up_sdiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/up-sdiff--90f0926ddce9adf72c5f3c65.md) | 56 | `result-track:90f0926ddce9adf72c5f3c6577c021778c126b46c7b3bdc49bf6890003e33c80` |
| 21 | `theorem` | [down_sdiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/down-sdiff--f2d02b77d191796d2c52cdb7.md) | 57 | `result-track:f2d02b77d191796d2c52cdb77fee822709ebdaa122b72931106a2b3524342c5a` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/instance--5f91b6333ed74e8cc1086898.md) | 59 | `declaration-track:5f91b6333ed74e8cc10868981aa6388bd5547399a5683fb7af1130ec45a2c046` |
| 23 | `theorem` | [up_compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/up-compl--f449f46e21c3379a123c32f6.md) | 61 | `result-track:f449f46e21c3379a123c32f65ed0c2404f40e5927c59611a56932e6304baf651` |
| 24 | `theorem` | [down_compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/down-compl--f3c9f8b6af1c83e0d6e24edb.md) | 62 | `result-track:f3c9f8b6af1c83e0d6e24edb9dc147027eac8e0336b685e368f0e43d5ddd5257` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/instance--558a96f37aadfeb18db961f3.md) | 64 | `declaration-track:558a96f37aadfeb18db961f3fa7013dd36dcba99f00c2ea04b07a96542384943` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/instance--d16e0b3ca6f2a98868062c3d.md) | 67 | `declaration-track:d16e0b3ca6f2a98868062c3d559fea29741e6e6212bb9384801909e430b438c4` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/instance--34aa9f696a473948ee596632.md) | 70 | `declaration-track:34aa9f696a473948ee596632b5cf5b30d43fc653d1bea518168a01c67aa04535` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/instance--2398dad8e09db5b5a11206f7.md) | 73 | `declaration-track:2398dad8e09db5b5a11206f7ec07aff9e7a57d3f3e2290cf35839d146f329c93` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/instance--ecce7d31d5be4348d255fe09.md) | 76 | `declaration-track:ecce7d31d5be4348d255fe09d7412fa08bf6a94199d285071047511e674123be` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/instance--a5d4458bdcfada8a1310b077.md) | 79 | `declaration-track:a5d4458bdcfada8a1310b077bc049e8f85a6d3db73f734719dd0856cab7bc18e` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/instance--4aa4e80857d7714a846c74e1.md) | 83 | `declaration-track:4aa4e80857d7714a846c74e19a492cd0a188e658bb321bc402e0f22d6e88dd04` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variantf0e3f46dcaecd477266adb22f3aca5927e3c72c31a7a922f1b2b1c9d5449d8a4.lean/declarations/instance--34de9bad68dcb966dec4003b.md) | 86 | `declaration-track:34de9bad68dcb966dec4003b43289d19c8f1634cd1c44c0a4fce63848e4f2130` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
