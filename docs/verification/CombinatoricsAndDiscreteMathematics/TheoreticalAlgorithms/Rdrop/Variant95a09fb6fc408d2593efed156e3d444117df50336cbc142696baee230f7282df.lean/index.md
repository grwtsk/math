# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Rdrop.Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b58fabe96d7c071f6e7456b29c0c60232fc2ffb",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b58fabe96d7c071f6e7456b29c0c60232fc2ffb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Infix` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rdrop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rdrop--29f1860645d9fe5d49250288.md) | 49 | `declaration-track:29f1860645d9fe5d49250288eb4a185538d76a4ab439705d0cafffbd4efb0a1f` |
| 2 | `theorem` | [rdrop_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rdrop-nil--96c989641dd6bf3dfa81a53d.md) | 54 | `result-track:96c989641dd6bf3dfa81a53d7218f9756bd0e5af5576ef32f7e881ae138084f3` |
| 3 | `theorem` | [rdrop_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rdrop-zero--66a934408729bd75b79079f7.md) | 58 | `result-track:66a934408729bd75b79079f75f7fafa8e3d5f0974242bccbdbf07fdf7c982b23` |
| 4 | `theorem` | [rdrop_eq_reverse_drop_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rdrop-eq-reverse-drop-reverse--3ec162c435ccbf73357d562e.md) | 61 | `result-track:3ec162c435ccbf73357d562e63c06faef0b0c4dea9bd4da34d32f6cb40fc5d89` |
| 5 | `theorem` | [rdrop_concat_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rdrop-concat-succ--bf76cf5f6595b8f73c111ece.md) | 71 | `result-track:bf76cf5f6595b8f73c111ecebf4b5f5b9147f8b3072a9d942a22c460efc1ff4d` |
| 6 | `def` | [rtake](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rtake--82c4ff558fdda60183dece58.md) | 76 | `declaration-track:82c4ff558fdda60183dece5816579c928c05429207dc608e945a18a3a4e45e3c` |
| 7 | `theorem` | [rtake_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rtake-nil--6371b3c48334dbe1e5a2ac4a.md) | 81 | `result-track:6371b3c48334dbe1e5a2ac4a1ad83fe983d6e3ea6a750ef96001a0d437a890c4` |
| 8 | `theorem` | [rtake_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rtake-zero--3f3be32bc679f1659a1ac160.md) | 85 | `result-track:3f3be32bc679f1659a1ac160569805931f02fa1e2094d7b56b35effe7369db75` |
| 9 | `theorem` | [rtake_eq_reverse_take_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rtake-eq-reverse-take-reverse--1fdb7aab171c257f534ace09.md) | 88 | `result-track:1fdb7aab171c257f534ace09bf1a298c252310d41c6769df707b43d3d91d8a40` |
| 10 | `theorem` | [rtake_concat_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rtake-concat-succ--172fc0ff128ad87ad203e934.md) | 98 | `result-track:172fc0ff128ad87ad203e934cdfa485938e1d82a02c1a756c4df68149eb00199` |
| 11 | `def` | [rdropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rdropwhile--0cd55938de48c5904c91172d.md) | 104 | `declaration-track:0cd55938de48c5904c91172d0ee0eb018f7fc4f33e1ed4776e8a9f1098a48642` |
| 12 | `theorem` | [rdropWhile_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rdropwhile-nil--e159e6270850cd4a441c1715.md) | 109 | `result-track:e159e6270850cd4a441c171583074e60e527ea7cbd014e8cb8e629a0daf37b0e` |
| 13 | `theorem` | [rdropWhile_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rdropwhile-concat--a72a8ae9441351c19f36e8e8.md) | 112 | `result-track:a72a8ae9441351c19f36e8e8e0deb80a575ebdc7cb88ce435e24dc40d0166675` |
| 14 | `theorem` | [rdropWhile_concat_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rdropwhile-concat-pos--eb8d2dfb5a9097878ca50f66.md) | 119 | `result-track:eb8d2dfb5a9097878ca50f66f22344025269101d7e51ef110f68a0605f845c07` |
| 15 | `theorem` | [rdropWhile_concat_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rdropwhile-concat-neg--3ebd8da15431982eabfb3189.md) | 124 | `result-track:3ebd8da15431982eabfb3189eaa9765e504c2161cfb2923607a841fbc1c170d8` |
| 16 | `theorem` | [rdropWhile_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rdropwhile-singleton--ed921ea6256d93e5d516ae70.md) | 128 | `result-track:ed921ea6256d93e5d516ae7060d05b50c463fc9522b615631bfcc16c7d3b58d6` |
| 17 | `theorem` | [rdropWhile_last_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rdropwhile-last-not--f6d8af116460a81caad8f097.md) | 132 | `result-track:f6d8af116460a81caad8f09722cd3212661b4c9e39b13d8a2d85b45e0509102f` |
| 18 | `theorem` | [rdropWhile_prefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rdropwhile-prefix--b20b946ab29c2a6db48d7180.md) | 138 | `result-track:b20b946ab29c2a6db48d7180635f2bd89a57a0ff600be2943a6977122091629f` |
| 19 | `theorem` | [rdropWhile_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rdropwhile-eq-nil-iff--1de2aaf9b04655e8008f7878.md) | 146 | `result-track:1de2aaf9b04655e8008f787826dcae2b25fbc38c19fe2343532ec887ae40c8c5` |
| 20 | `theorem` | [dropWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/dropwhile-eq-self-iff--b8872ab54a913651133885b3.md) | 151 | `result-track:b8872ab54a913651133885b33faaf5279a8ad741244e861c0e90e61deb55643b` |
| 21 | `theorem` | [rdropWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rdropwhile-eq-self-iff--64efae7fad43d03e2eb914fd.md) | 173 | `result-track:64efae7fad43d03e2eb914fd4d5b431b899ff0a323c6fbdabce3adec2fcb70b2` |
| 22 | `theorem` | [dropWhile_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/dropwhile-idempotent--0c00da9db9ec0258e331e089.md) | 186 | `result-track:0c00da9db9ec0258e331e089924c1adb8fa56d0ead07ef047a3cb103c8d1bae5` |
| 23 | `theorem` | [rdropWhile_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rdropwhile-idempotent--222e8dca0b65df14a76df547.md) | 191 | `result-track:222e8dca0b65df14a76df547e3fa45e35432029ca9a8591f8422548b18307f66` |
| 24 | `def` | [rtakeWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rtakewhile--5a2b24625b2766863ee71777.md) | 197 | `declaration-track:5a2b24625b2766863ee7177728087af902e50fa040492fc7fd4e254d797c85bd` |
| 25 | `theorem` | [rtakeWhile_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rtakewhile-nil--4ec7e3aa83e671886d566ec5.md) | 202 | `result-track:4ec7e3aa83e671886d566ec5c921ea02ddde8f193ad72ee8e9096ba6f8890400` |
| 26 | `theorem` | [rtakeWhile_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rtakewhile-concat--578d799c88e6a5cffb860f12.md) | 205 | `result-track:578d799c88e6a5cffb860f126d68844212404a0abecc9dd5526f5081183804e7` |
| 27 | `theorem` | [rtakeWhile_concat_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rtakewhile-concat-pos--de9abd9cafd4b08d725a08c0.md) | 212 | `result-track:de9abd9cafd4b08d725a08c02b893f8d544b3379e11b0d7bedb53ff4a65c9dd4` |
| 28 | `theorem` | [rtakeWhile_concat_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rtakewhile-concat-neg--2496eb4cd67d635261da05e7.md) | 217 | `result-track:2496eb4cd67d635261da05e71691ceade788f21556b7dc5137083e67aebfd5f4` |
| 29 | `theorem` | [rtakeWhile_suffix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rtakewhile-suffix--c3fae8ec5f7ea5f14052eec0.md) | 221 | `result-track:c3fae8ec5f7ea5f14052eec0f1d43d7e67ca2c0a4aff99556b6bb439ff45b470` |
| 30 | `theorem` | [rtakeWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rtakewhile-eq-self-iff--f69f043f738ae7120792fd8a.md) | 229 | `result-track:f69f043f738ae7120792fd8afac3b925d7608272f979222dc25d7058773f34c7` |
| 31 | `theorem` | [rtakeWhile_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rtakewhile-eq-nil-iff--20d3d32e3bd6dc48a8e78d2d.md) | 235 | `result-track:20d3d32e3bd6dc48a8e78d2deef9ffcdd064b85167feb2bf7226d71549c5ac3c` |
| 32 | `theorem` | [mem_rtakeWhile_imp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/mem-rtakewhile-imp--8bb529185e63a475e29c60b2.md) | 246 | `result-track:8bb529185e63a475e29c60b2ccf020ef72c357e19420527211c55644d70e22a3` |
| 33 | `theorem` | [rtakeWhile_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant95a09fb6fc408d2593efed156e3d444117df50336cbc142696baee230f7282df.lean/declarations/rtakewhile-idempotent--0879ec94a22b290c3ddcae83.md) | 253 | `result-track:0879ec94a22b290c3ddcae832661d6e8da6fd8fe1a815c5a392095b525d50823` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
