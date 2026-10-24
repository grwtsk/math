# Verification target: GRWTSK.Analysis.ENNRealLog.Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1772c6f047fb13aad0ad20f0fa291419764976fb",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/index.md) · [Full source](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1772c6f047fb13aad0ad20f0fa291419764976fb`.

Source path: `GRWTSK/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.EReal.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log--aa268b31fa6c4d2fe1fb4137.md) | 42 | `declaration-track:aa268b31fa6c4d2fe1fb4137a7ec870c67626106dfebebe76b6761bb064aae7b` |
| 2 | `lemma` | [log_zero](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-zero--32a48dfcf3b96ac855269dae.md) | 47 | `result-track:32a48dfcf3b96ac855269dae3d2db768fc182b62be3c2de5549d53d4d6c3755e` |
| 3 | `lemma` | [log_one](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-one--da168bf15e409cd441135b41.md) | 48 | `result-track:da168bf15e409cd441135b41e5b93fe06450e28614745977615a2b7b7eef7928` |
| 4 | `lemma` | [log_top](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-top--69d7e67f608b7d2294b490ba.md) | 49 | `result-track:69d7e67f608b7d2294b490ba1c1b10a9dc3cc76881761cf0958f40420a6cf0ba` |
| 5 | `lemma` | [log_ofReal](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-ofreal--85aaeca2f363aac1a8bc3010.md) | 52 | `result-track:85aaeca2f363aac1a8bc3010566c2a60d8a87f977b353509efb316053e026126` |
| 6 | `lemma` | [log_ofReal_of_pos](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-ofreal-of-pos--958e8eae835cb0cae5735f83.md) | 59 | `result-track:958e8eae835cb0cae5735f83767db9edf7f266f88492a1a7f4e863f2a498eca6` |
| 7 | `theorem` | [log_pos_real](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-pos-real--eaf72c179a255e67bcf6ba57.md) | 62 | `result-track:eaf72c179a255e67bcf6ba5798edfd449ad4b1e8225218d721a965c75ab1bdcc` |
| 8 | `theorem` | [log_pos_real'](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-pos-real--2a6b74f545398584b546f8fe.md) | 65 | `result-track:2a6b74f545398584b546f8fed410eb0fec92892d1fcb74bd7d704faed6559380` |
| 9 | `theorem` | [log_of_nnreal](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-of-nnreal--1dffbb990f6861b40b225a62.md) | 69 | `result-track:1dffbb990f6861b40b225a62688e04911dcca906060cb07d57216a25ef9b6f1a` |
| 10 | `theorem` | [log_strictMono](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-strictmono--cd4347db3f28a1aaed887a82.md) | 77 | `result-track:cd4347db3f28a1aaed887a8224c9e804c64046065689ade95ff086bf8ea133fd` |
| 11 | `theorem` | [log_monotone](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-monotone--a20d900b12618b1bc0972e9f.md) | 82 | `result-track:a20d900b12618b1bc0972e9f35f9a5a53d8f31ac02b8445a9b7ecf03e50f04ff` |
| 12 | `theorem` | [log_injective](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-injective--ce5e2108416d8468e66fec88.md) | 84 | `result-track:ce5e2108416d8468e66fec8852e1d28236554560c4d88a713d46b6227c9fd578` |
| 13 | `theorem` | [log_surjective](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-surjective--688086e1223890c7478833da.md) | 86 | `result-track:688086e1223890c7478833dad89a06586262b401ed6e278020b98c3e4344e359` |
| 14 | `theorem` | [log_bijective](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-bijective--2b78c29ad874af31521e9529.md) | 93 | `result-track:2b78c29ad874af31521e952984b7e70b6a97e70d19d56f8b3cabcc7147cea1ec` |
| 15 | `theorem` | [log_eq_iff](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-eq-iff--654c6cb50a2b7ff95b6bc879.md) | 96 | `result-track:654c6cb50a2b7ff95b6bc8798419b7739d5b0af5289c1ad94cdcd7f20af1ece4` |
| 16 | `theorem` | [log_eq_bot_iff](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-eq-bot-iff--76eb45bb067cedf11c4d336f.md) | 99 | `result-track:76eb45bb067cedf11c4d336fceee1f483a4edce563ed9061fd418a994c2a4711` |
| 17 | `theorem` | [log_eq_one_iff](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-eq-one-iff--378ff0b756a2f2bf9acfc7d3.md) | 101 | `result-track:378ff0b756a2f2bf9acfc7d3816f58eb881c1369aa54a41b2cd8ed8523dfe3cb` |
| 18 | `theorem` | [log_eq_top_iff](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-eq-top-iff--6982709edcf66331cf382dee.md) | 103 | `result-track:6982709edcf66331cf382deef482975e67ae5bd0a63613bd53c4456ab8acf401` |
| 19 | `lemma` | [log_lt_log_iff](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-lt-log-iff--ed5b7d9b6cc8a30e94f3a9f0.md) | 105 | `result-track:ed5b7d9b6cc8a30e94f3a9f0badd14d32b3c1c3bee07eb4a876342680c365e3a` |
| 20 | `lemma` | [bot_lt_log_iff](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/bot-lt-log-iff--65f04826376279c6063ed663.md) | 107 | `result-track:65f04826376279c6063ed66383f5105cbf2f955c4717329ace434a2c2e2b77f3` |
| 21 | `lemma` | [log_lt_top_iff](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-lt-top-iff--cf60ddf3b855653df02ef5dc.md) | 109 | `result-track:cf60ddf3b855653df02ef5dc58ebc61accf07e8ae82850aa69d89eef872899ec` |
| 22 | `lemma` | [log_lt_zero_iff](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-lt-zero-iff--1a16eeee12b21dcfc22300d5.md) | 111 | `result-track:1a16eeee12b21dcfc22300d5b4535e5f186045886e339e56d1b2ab5e9327a2d4` |
| 23 | `lemma` | [zero_lt_log_iff](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/zero-lt-log-iff--4edcb08706084f64ba127c05.md) | 113 | `result-track:4edcb08706084f64ba127c05a4b1b150d39ce865af60adbf59f3a9ac4ff1f59e` |
| 24 | `lemma` | [log_le_log_iff](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-le-log-iff--5e3ceb12183a7424a515012e.md) | 115 | `result-track:5e3ceb12183a7424a515012e22412797444ef440d4598c00d8997e75d06181ed` |
| 25 | `lemma` | [log_le_zero_iff](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-le-zero-iff--768fc9f99b8d4d31f8f1f931.md) | 117 | `result-track:768fc9f99b8d4d31f8f1f931cbf7de76f251bd3686ad2c470279764eaab1dba1` |
| 26 | `lemma` | [zero_le_log_iff](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/zero-le-log-iff--11de16c2ed985a6ad0980244.md) | 119 | `result-track:11de16c2ed985a6ad098024456f4e1c0961d8b3f61c757f42fbde7a694939d99` |
| 27 | `lemma` | [log_le_log](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-le-log--b3a458f42269c6ec60f3fb76.md) | 121 | `result-track:b3a458f42269c6ec60f3fb76f7fef965883528b17f4c3dbe6f88f37688cac59a` |
| 28 | `lemma` | [log_lt_log](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-lt-log--0e1af7a9453538f5ea8656c3.md) | 122 | `result-track:0e1af7a9453538f5ea8656c33e36c9b72a6a39212caa801b7aecdf7b63e46c49` |
| 29 | `theorem` | [log_mul_add](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-mul-add--4354d0afa982ef5e6bea3e24.md) | 130 | `result-track:4354d0afa982ef5e6bea3e24325aeff7d81e3e44d125518ee7a50da3b0d4732d` |
| 30 | `theorem` | [log_rpow](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-rpow--f80680e29544d0e8d53efe57.md) | 149 | `result-track:f80680e29544d0e8d53efe57f29b8f0a7d1827d535942a0860281a29dfd406f4` |
| 31 | `theorem` | [log_pow](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-pow--d2193cbfa01166a9bfaa5e94.md) | 172 | `result-track:d2193cbfa01166a9bfaa5e94bf499b2c5ea48eb61e2dbfbf3ed8bb79fdcc4879` |
| 32 | `lemma` | [log_inv](../../../../mathematics/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean/declarations/log-inv--97721acc39c06f82e7afd5b2.md) | 175 | `result-track:97721acc39c06f82e7afd5b2d9f8270142c63e4f8e7190aaf3050c1e05732b7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
