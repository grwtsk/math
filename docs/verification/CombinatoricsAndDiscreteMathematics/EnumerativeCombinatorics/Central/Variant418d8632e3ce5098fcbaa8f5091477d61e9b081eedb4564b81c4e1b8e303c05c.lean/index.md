# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Central.Variant418d8632e3ce5098fcbaa8f5091477d61e9b081eedb4564b81c4e1b8e303c05c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "643e944f264231ad98aad219e61ed1e938f1005e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant418d8632e3ce5098fcbaa8f5091477d61e9b081eedb4564b81c4e1b8e303c05c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant418d8632e3ce5098fcbaa8f5091477d61e9b081eedb4564b81c4e1b8e303c05c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant418d8632e3ce5098fcbaa8f5091477d61e9b081eedb4564b81c4e1b8e303c05c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `643e944f264231ad98aad219e61ed1e938f1005e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant418d8632e3ce5098fcbaa8f5091477d61e9b081eedb4564b81c4e1b8e303c05c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant418d8632e3ce5098fcbaa8f5091477d61e9b081eedb4564b81c4e1b8e303c05c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant418d8632e3ce5098fcbaa8f5091477d61e9b081eedb4564b81c4e1b8e303c05c.lean/declarations/centralbinom--443abaaf6bd2d8fae0cabe6f.md) | 40 | `declaration-track:443abaaf6bd2d8fae0cabe6f952b7ec698c5b9265bc10c7ea9ecafd581985230` |
| 2 | `theorem` | [centralBinom_eq_two_mul_choose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant418d8632e3ce5098fcbaa8f5091477d61e9b081eedb4564b81c4e1b8e303c05c.lean/declarations/centralbinom-eq-two-mul-choose--d3be5277610d8a23bb9226a0.md) | 43 | `result-track:d3be5277610d8a23bb9226a0c9a0eafa9678a78424ecea14eb104505cc18f817` |
| 3 | `theorem` | [centralBinom_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant418d8632e3ce5098fcbaa8f5091477d61e9b081eedb4564b81c4e1b8e303c05c.lean/declarations/centralbinom-pos--258413736e6f858adb988be2.md) | 46 | `result-track:258413736e6f858adb988be2782e7ac4967618782efbf16c8b739cfc7bc35d86` |
| 4 | `theorem` | [centralBinom_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant418d8632e3ce5098fcbaa8f5091477d61e9b081eedb4564b81c4e1b8e303c05c.lean/declarations/centralbinom-ne-zero--c59a679a31201dffff9c474e.md) | 49 | `result-track:c59a679a31201dffff9c474ee22d91ce1e7574ca4932b4f21a36ee3d5f195e71` |
| 5 | `theorem` | [centralBinom_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant418d8632e3ce5098fcbaa8f5091477d61e9b081eedb4564b81c4e1b8e303c05c.lean/declarations/centralbinom-zero--05bb92c632c357bf76bffaa6.md) | 53 | `result-track:05bb92c632c357bf76bffaa62b4f169f9bb540335c47f8effae522f35da65a2a` |
| 6 | `theorem` | [choose_le_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant418d8632e3ce5098fcbaa8f5091477d61e9b081eedb4564b81c4e1b8e303c05c.lean/declarations/choose-le-centralbinom--83787f63812c924b1bf7b48b.md) | 58 | `result-track:83787f63812c924b1bf7b48b7fc7efbe0ad7fb5241f2bb953e9e765598d88ea4` |
| 7 | `theorem` | [two_le_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant418d8632e3ce5098fcbaa8f5091477d61e9b081eedb4564b81c4e1b8e303c05c.lean/declarations/two-le-centralbinom--1d7ac83f7b7159af2b0f6807.md) | 63 | `result-track:1d7ac83f7b7159af2b0f68077172c6db899c5995916e6fe27f3724c8ea4d6af3` |
| 8 | `theorem` | [succ_mul_centralBinom_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant418d8632e3ce5098fcbaa8f5091477d61e9b081eedb4564b81c4e1b8e303c05c.lean/declarations/succ-mul-centralbinom-succ--8dfdf8369c19cbb93ce6b062.md) | 71 | `result-track:8dfdf8369c19cbb93ce6b062d36340cc9059c2d6fda4664c07112f6f8ec54628` |
| 9 | `theorem` | [four_pow_lt_mul_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant418d8632e3ce5098fcbaa8f5091477d61e9b081eedb4564b81c4e1b8e303c05c.lean/declarations/four-pow-lt-mul-centralbinom--2b8c1a3cb74527b0429d1d2c.md) | 86 | `result-track:2b8c1a3cb74527b0429d1d2cf679d0e12a29054b073139ef9292cdb28bdcf445` |
| 10 | `theorem` | [four_pow_le_two_mul_self_mul_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant418d8632e3ce5098fcbaa8f5091477d61e9b081eedb4564b81c4e1b8e303c05c.lean/declarations/four-pow-le-two-mul-self-mul-centralbinom--4c186d8632d03b804589060e.md) | 102 | `result-track:4c186d8632d03b804589060eeccb379b7fc8fb6a1d52af85fa091f1577f2ad61` |
| 11 | `theorem` | [two_dvd_centralBinom_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant418d8632e3ce5098fcbaa8f5091477d61e9b081eedb4564b81c4e1b8e303c05c.lean/declarations/two-dvd-centralbinom-succ--b80cd2d10566ce6935da365e.md) | 114 | `result-track:b80cd2d10566ce6935da365e95ec7c7d5e16432d06ab6013828591b7d1e06fb4` |
| 12 | `theorem` | [two_dvd_centralBinom_of_one_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant418d8632e3ce5098fcbaa8f5091477d61e9b081eedb4564b81c4e1b8e303c05c.lean/declarations/two-dvd-centralbinom-of-one-le--6c3c0b793d6127b1266e7015.md) | 119 | `result-track:6c3c0b793d6127b1266e70155c6ec40ded4ded192456c14ea44acea2cd6a4546` |
| 13 | `theorem` | [succ_dvd_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant418d8632e3ce5098fcbaa8f5091477d61e9b081eedb4564b81c4e1b8e303c05c.lean/declarations/succ-dvd-centralbinom--4b447d4822241923030933be.md) | 125 | `result-track:4b447d4822241923030933be9182843f5ca06bcf5da8aa1410ec9d1e9e7c8acd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
