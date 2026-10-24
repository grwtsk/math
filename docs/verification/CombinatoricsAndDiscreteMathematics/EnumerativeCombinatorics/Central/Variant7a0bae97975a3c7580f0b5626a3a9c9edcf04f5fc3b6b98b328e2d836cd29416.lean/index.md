# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Central.Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b2bb2653d13ebb62b009ace3a7dcd91fd6942b1",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b2bb2653d13ebb62b009ace3a7dcd91fd6942b1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean/declarations/centralbinom--657ea4ce59698dd26f0b1d21.md) | 32 | `declaration-track:657ea4ce59698dd26f0b1d2150ec017e3655e2a107816b17a3982e7e7301f6f0` |
| 2 | `theorem` | [centralBinom_eq_two_mul_choose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean/declarations/centralbinom-eq-two-mul-choose--cca32c1eb062d7a64c025b06.md) | 36 | `result-track:cca32c1eb062d7a64c025b06cc3faf9b6c0dc76bf579f8256ad5c605cfbd203b` |
| 3 | `theorem` | [centralBinom_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean/declarations/centralbinom-pos--1e8ae00dcfe6fc6a5ebca40c.md) | 40 | `result-track:1e8ae00dcfe6fc6a5ebca40c82fbcf11f5270d68c4418a1d5624ec52f3275116` |
| 4 | `theorem` | [centralBinom_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean/declarations/centralbinom-ne-zero--d8426ba0aa534988f01e5c23.md) | 44 | `result-track:d8426ba0aa534988f01e5c2388cf7d13e1f4aef99cd4f5e287c452bceb2d73e6` |
| 5 | `theorem` | [centralBinom_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean/declarations/centralbinom-zero--f7a4b057ed1e1ac412cb3bfa.md) | 49 | `result-track:f7a4b057ed1e1ac412cb3bfae1d37091a2ce6d232f84887c68bfc14a09108451` |
| 6 | `theorem` | [choose_le_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean/declarations/choose-le-centralbinom--129f50bbdbc94d24b6ebdd55.md) | 55 | `result-track:129f50bbdbc94d24b6ebdd55062a9fede195e7e712cf8564c819af618e636bab` |
| 7 | `theorem` | [two_le_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean/declarations/two-le-centralbinom--919356c8caa2b59446567ab2.md) | 61 | `result-track:919356c8caa2b59446567ab20bf2500e2ff81743dfec8b349c21cd3cae80511c` |
| 8 | `theorem` | [succ_mul_centralBinom_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean/declarations/succ-mul-centralbinom-succ--24d831264c4e6fb6a6ef8790.md) | 70 | `result-track:24d831264c4e6fb6a6ef8790d6a5327778ac298a1fb9de6b5c760647d3e88734` |
| 9 | `theorem` | [four_pow_lt_mul_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean/declarations/four-pow-lt-mul-centralbinom--65ab1c25e930bb40dd1c2474.md) | 86 | `result-track:65ab1c25e930bb40dd1c24742c6605fad5c472abac05216b63b718b0041dfb19` |
| 10 | `theorem` | [four_pow_le_two_mul_self_mul_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean/declarations/four-pow-le-two-mul-self-mul-centralbinom--dfba020e0ac08d364e1a6ac0.md) | 103 | `result-track:dfba020e0ac08d364e1a6ac0529efb4ffe0bfd89343f061e535bdcc9744185b9` |
| 11 | `theorem` | [two_dvd_centralBinom_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean/declarations/two-dvd-centralbinom-succ--6f0009b849292c51612ad20e.md) | 116 | `result-track:6f0009b849292c51612ad20e7c10689bdd8bdcd66cb11ed36e8db1d2c02a6e80` |
| 12 | `theorem` | [two_dvd_centralBinom_of_one_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean/declarations/two-dvd-centralbinom-of-one-le--c2590d026ca42a10cf5c3fab.md) | 122 | `result-track:c2590d026ca42a10cf5c3fab138841bda2ca4c7525ce8db6171f65c3c98e9ae0` |
| 13 | `theorem` | [succ_dvd_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7a0bae97975a3c7580f0b5626a3a9c9edcf04f5fc3b6b98b328e2d836cd29416.lean/declarations/succ-dvd-centralbinom--ee71a2f4c933b7e787ac835b.md) | 129 | `result-track:ee71a2f4c933b7e787ac835bf209320a8662fb48d2104d773ad3ae0fb84c3d43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
