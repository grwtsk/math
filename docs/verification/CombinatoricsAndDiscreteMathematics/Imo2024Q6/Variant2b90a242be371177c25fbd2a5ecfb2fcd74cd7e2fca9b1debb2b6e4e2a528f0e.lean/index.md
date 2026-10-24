# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Imo2024Q6.Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "207b124f980d0cb3c642f98e7f6262dbbc116edd",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `207b124f980d0cb3c642f98e7f6262dbbc116edd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Floor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Aquaesulian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/aquaesulian--880e2d10519d9ee91437b17c.md) | 39 | `declaration-track:880e2d10519d9ee91437b17c01097aaafa0b9b0dd101503768afe95a2d16d3de` |
| 2 | `lemma` | [Aquaesulian.apply_apply_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/aquaesulian-apply-apply-add--2e0cca730a3578b315aac2ec.md) | 44 | `result-track:2e0cca730a3578b315aac2ec55a423a5f40d090787494ee4803fcdb8ec265c3c` |
| 3 | `lemma` | [Aquaesulian.eq_of_apply_eq_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/aquaesulian-eq-of-apply-eq-inl--a5f32ebb57a7b38514528715.md) | 47 | `result-track:a5f32ebb57a7b38514528715e71d469ddbe6dcdedaed0347b6076f21200f86cc` |
| 4 | `lemma` | [Aquaesulian.injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/aquaesulian-injective--e1e4c35f32633e52ad96c1b8.md) | 52 | `result-track:e1e4c35f32633e52ad96c1b822e74bb904bc2d0d22fc360cffb641d97d326c15` |
| 5 | `lemma` | [Aquaesulian.apply_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/aquaesulian-apply-zero--8721624d3153bb5304b37703.md) | 59 | `result-track:8721624d3153bb5304b37703337f403e5c8bb323fd412ae6ed9a691d4c487a80` |
| 6 | `lemma` | [Aquaesulian.apply_neg_apply_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/aquaesulian-apply-neg-apply-add--22c04edf6e47c18b2bec8a52.md) | 64 | `result-track:22c04edf6e47c18b2bec8a52c588de42f081fa8de4bc10b48f778d3cb1cce7b3` |
| 7 | `lemma` | [Aquaesulian.apply_neg_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/aquaesulian-apply-neg-apply--fc232920e976a1ae7de10231.md) | 72 | `result-track:fc232920e976a1ae7de102313ef1bf5376fd53e3b44fc986db057d649d1e8fa9` |
| 8 | `lemma` | [Aquaesulian.apply_neg_apply_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/aquaesulian-apply-neg-apply-neg--c58626ecd06fa0484674b883.md) | 76 | `result-track:c58626ecd06fa0484674b8834526f490ad674fcab5756c3614c63ba99c4097f4` |
| 9 | `lemma` | [Aquaesulian.apply_neg_of_apply_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/aquaesulian-apply-neg-of-apply-eq--a9a57a8b0a261d1d20c0f3b4.md) | 79 | `result-track:a9a57a8b0a261d1d20c0f3b4dc7c42a69bb05342f830dba02c1bb8a23d8b136c` |
| 10 | `lemma` | [Aquaesulian.apply_neg_eq_neg_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/aquaesulian-apply-neg-eq-neg-iff--0e7fa8a75e3894b66fa6bcff.md) | 83 | `result-track:0e7fa8a75e3894b66fa6bcffe2d7f87b808303ca39dab0fd8dae4821b411ba4a` |
| 11 | `lemma` | [Aquaesulian.pair_lemma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/aquaesulian-pair-lemma--21621ea76088781b0fd2603c.md) | 87 | `result-track:21621ea76088781b0fd2603c65c8fa8d00d4a77a7c45f7b360cbc379bcd0c00d` |
| 12 | `lemma` | [Aquaesulian.g_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/aquaesulian-g-two--0709fc0406be0a6cd703db23.md) | 95 | `result-track:0709fc0406be0a6cd703db233a9ed675dd5a6883a556ffee3436a21334765a3b` |
| 13 | `lemma` | [Aquaesulian.u_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/aquaesulian-u-eq-zero--c7c51dd3aa4ad37eafd5cba6.md) | 115 | `result-track:c7c51dd3aa4ad37eafd5cba655ae188556d961428f5f3627e147bebddf27ebd4` |
| 14 | `lemma` | [Aquaesulian.u_eq_zero_or_v_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/aquaesulian-u-eq-zero-or-v-eq-zero--7d37a3843ef0e7e29fec2ae0.md) | 129 | `result-track:7d37a3843ef0e7e29fec2ae0fb48725b3e8595558fb4305307bfa3a440aa8a15` |
| 15 | `lemma` | [Aquaesulian.card_le_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/aquaesulian-card-le-two--4e5cc3d8aef4ccc3b852210e.md) | 136 | `result-track:4e5cc3d8aef4ccc3b852210e0bf862eab85c8a6ac2d24ff5a501e71aea7c2786` |
| 16 | `def` | [Aquaesulian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/aquaesulian--89c64e1b53452294e0e23256.md) | 163 | `declaration-track:89c64e1b53452294e0e2325600f66f906bf827a959b4db8515f0399e159fba46` |
| 17 | `lemma` | [aquaesulian_iff_general](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/aquaesulian-iff-general--33ecaab6336d9fef1ff94ce9.md) | 165 | `result-track:33ecaab6336d9fef1ff94ce9198b1c798e6024066e140e9660c9f4a67fddda4b` |
| 18 | `lemma` | [Aquaesulian.card_le_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/aquaesulian-card-le-two--4df13b33ad0bfb06331b141a.md) | 170 | `result-track:4df13b33ad0bfb06331b141a68e5a2fa471557d14c502095f345a5234548029c` |
| 19 | `def` | [fExample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/fexample--08d427694bcb0d419f152bf5.md) | 176 | `declaration-track:08d427694bcb0d419f152bf5209ce4467ced25eb8279c167f7ef98c50f750bd0` |
| 20 | `lemma` | [fExample_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/fexample-add--9537cd3e647b3478e072a941.md) | 178 | `result-track:9537cd3e647b3478e072a9411a2e0fb82cbf825867e85580793a04f6aec44de6` |
| 21 | `lemma` | [add_fExample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/add-fexample--2668c1b4827db832a52e146d.md) | 183 | `result-track:2668c1b4827db832a52e146d9b763b4af3eaf75b390f6d63b31622134d16f7a6` |
| 22 | `lemma` | [fExample_intCast_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/fexample-intcast-add--0bbccd74e60f30a70cbc09b1.md) | 187 | `result-track:0bbccd74e60f30a70cbc09b12305ee881ac774541f82171c6ff6a632118342d9` |
| 23 | `lemma` | [fExample_of_mem_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/fexample-of-mem-ico--3f747efe4cb8a62b1d6c4321.md) | 191 | `result-track:3f747efe4cb8a62b1d6c432171c4a150da65720d4794e9b0fe5efa1e24d153fb` |
| 24 | `lemma` | [apply_fExample_add_apply_of_fract_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/apply-fexample-add-apply-of-fract-le--dfd02096bd5136c1cee2da50.md) | 195 | `result-track:dfd02096bd5136c1cee2da5020832e166403a4052d7bb25e87b5d78ceff5538d` |
| 25 | `lemma` | [aquaesulian_fExample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/aquaesulian-fexample--cf2535e61defca7c4396fa52.md) | 204 | `result-track:cf2535e61defca7c4396fa52517486f308224eeac514508a75c602ebd03b9bc0` |
| 26 | `lemma` | [fract_fExample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/fract-fexample--5289fb7cb5b892a98a1df66a.md) | 211 | `result-track:5289fb7cb5b892a98a1df66a48e1775030ce0ef69fc1e650a65ae6d44ab656f6` |
| 27 | `lemma` | [floor_fExample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/floor-fexample--8719a7f706a10255bc18b3ec.md) | 217 | `result-track:8719a7f706a10255bc18b3ec9cf1a1a2b924fb8aff412653b221a281e4591484` |
| 28 | `lemma` | [card_range_fExample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/card-range-fexample--ab82630cd823e9399b5604fd.md) | 229 | `result-track:ab82630cd823e9399b5604fd8a8ee900795017bc6d71df09fbd555afdf6a8039` |
| 29 | `theorem` | [_root_.imo2024q6](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.lean/declarations/root-imo2024q6--477938215c3ceaf1c7466ba9.md) | 255 | `result-track:477938215c3ceaf1c7466ba9ca7e81daab415d25de83ae279ac8847bbbbbe0ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
