# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EpsilonNFA.Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d3eaf24eb2109aa58c75669e9e2fe8fe9251571",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d3eaf24eb2109aa58c75669e9e2fe8fe9251571`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [εNFA](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/nfa--4bcff0cd09aa8fbdebccb9b5.md) | 39 | `declaration-track:4bcff0cd09aa8fbdebccb9b55831d951d63fc43813948ba87b78c9bacfe36504` |
| 2 | `inductive` | [MemεClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/mem-closure--52064bcd07c1bc15d435807a.md) | 55 | `declaration-track:52064bcd07c1bc15d435807a5100d207ffa4bef8f897a88470fc0c3af725da71` |
| 3 | `def` | [εClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/closure--c3cfa40500819b5e930083fa.md) | 62 | `declaration-track:c3cfa40500819b5e930083fab107b3bd1506dd6d8af7927edc5aef75c75d74ae` |
| 4 | `lemma` | [subset_εClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/subset-closure--95603b4927eb212789c9a2e0.md) | 64 | `result-track:95603b4927eb212789c9a2e00afe35966710aa17a6fa8aba8b37f40c0bbb4a6f` |
| 5 | `lemma` | [εClosure.base](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/closure-base--b2aeaafd2e189c54177f15cb.md) | 67 | `result-track:b2aeaafd2e189c54177f15cb3ea8fd6b33957eefda35f0521ce1bdae7b736a40` |
| 6 | `lemma` | [mem_εClosure_of_mem_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/mem-closure-of-mem-step--f0b1c8812092602f114b1bc9.md) | 69 | `result-track:f0b1c8812092602f114b1bc9a07121b51b9b41be9bf505774a3adb967e56792a` |
| 7 | `lemma` | [εClosure.step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/closure-step--0cb5f0251f8229dfab30c0ea.md) | 73 | `result-track:0cb5f0251f8229dfab30c0ea2feda05e927cb903604302071d9331cb181785cc` |
| 8 | `lemma` | [εClosure_induction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/closure-induction--50ba85b4d5f46408a64fb428.md) | 79 | `result-track:50ba85b4d5f46408a64fb428cfe6e0205c80b9bc462c07bb83ae4c4e10ae2fa0` |
| 9 | `lemma` | [εClosure_min](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/closure-min--eac3f2551f40587c6d3258fa.md) | 89 | `result-track:eac3f2551f40587c6d3258fa9515deaa25f71c38678153b34f3eecc5e9a2f909` |
| 10 | `theorem` | [εClosure_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/closure-empty--a67563e10d6ad371a3aee5b7.md) | 96 | `result-track:a67563e10d6ad371a3aee5b717e50ba241343b113f95891a895b4caf1ce230ce` |
| 11 | `theorem` | [εClosure_univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/closure-univ--10c0e34f04944871f8019579.md) | 100 | `result-track:10c0e34f04944871f80195798612dc7d3623a79fdd5ff97b60d0371d0e9371bc` |
| 12 | `theorem` | [mem_εClosure_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/mem-closure-iff-exists--a0b67132464b9a5d0867f588.md) | 103 | `result-track:a0b67132464b9a5d0867f58881a8e1eff02df370a55fb57cb1a473d86d8bb1ac` |
| 13 | `def` | [stepSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/stepset--a9b8cccef264b7737b393b05.md) | 117 | `declaration-track:a9b8cccef264b7737b393b05cc3bb8ec19e3b15fc878e923e9edc308bafb418e` |
| 14 | `theorem` | [mem_stepSet_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/mem-stepset-iff--d53bac285bc3939b983c622d.md) | 123 | `result-track:d53bac285bc3939b983c622da05e6161175e5b5a728a4ed426cb765a0522a287` |
| 15 | `theorem` | [stepSet_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/stepset-empty--0bff590d016d4ba3cd96b8db.md) | 127 | `result-track:0bff590d016d4ba3cd96b8db00eee0282ab90cb7a5f2892bc332750f828b1d9b` |
| 16 | `def` | [evalFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/evalfrom--c38be0bb9159a8156cc6a1ce.md) | 134 | `declaration-track:c38be0bb9159a8156cc6a1ce6d00a9bacbd40567176c2b2f02fc364de51723eb` |
| 17 | `theorem` | [evalFrom_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/evalfrom-nil--d4c1cd401ab103c5ae4f14d4.md) | 138 | `result-track:d4c1cd401ab103c5ae4f14d4293618e146b99c97b40dd105c3c91fcaa3139eb4` |
| 18 | `theorem` | [evalFrom_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/evalfrom-singleton--e01798e098fa17363d5c9729.md) | 142 | `result-track:e01798e098fa17363d5c9729b2dc8314aedf5c353d55f9e180a438125a5e78d4` |
| 19 | `theorem` | [evalFrom_append_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/evalfrom-append-singleton--7dcaa98dba5fc5b5de0f1b92.md) | 146 | `result-track:7dcaa98dba5fc5b5de0f1b923cd5ccd73f91e1c90ba1589dda4cb591f424ce84` |
| 20 | `theorem` | [evalFrom_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/evalfrom-empty--a7ba651fcdcd45cac377138b.md) | 151 | `result-track:a7ba651fcdcd45cac377138bf2d1513316650376f599d71a409dd76e95838108` |
| 21 | `theorem` | [mem_evalFrom_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/mem-evalfrom-iff-exists--4e3c29e07c40e568a76b111c.md) | 156 | `result-track:4e3c29e07c40e568a76b111cdee39552711274c053b129212f494c42a1d57a1f` |
| 22 | `def` | [eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/eval--c15605f06dad55cb2a143010.md) | 166 | `declaration-track:c15605f06dad55cb2a143010cd9de735c4b708e90e1b8cb84b290cc65194816f` |
| 23 | `theorem` | [eval_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/eval-nil--6bf05ccb25f34dc69fe62b3c.md) | 170 | `result-track:6bf05ccb25f34dc69fe62b3c72eddbd5672c319679e43df9bae08fccaef4a8fb` |
| 24 | `theorem` | [eval_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/eval-singleton--6369ef3d9ec5716e72fbf092.md) | 174 | `result-track:6369ef3d9ec5716e72fbf09273d70c1ed807bc2f2ddfa2c3d8c2e275ffcd7c73` |
| 25 | `theorem` | [eval_append_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/eval-append-singleton--568474629b2c074360b1b634.md) | 178 | `result-track:568474629b2c074360b1b6347b7d6ad9bf9df98277a76d5aa4202f3d1c43250d` |
| 26 | `def` | [accepts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/accepts--7d5975273bdcd9ad1cd78573.md) | 182 | `declaration-track:7d5975273bdcd9ad1cd785737e5b08cdf1b9423a92eeaec9c5963e253b8fe7b1` |
| 27 | `inductive` | [IsPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/ispath--59593d5366eb634a8daf2c8f.md) | 188 | `declaration-track:59593d5366eb634a8daf2c8f7c597e163b1289eef77e0dbf8163b144bc23b44e` |
| 28 | `theorem` | [isPath_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/ispath-nil--c72bcc650d4cf9c4a6fd29f0.md) | 194 | `result-track:c72bcc650d4cf9c4a6fd29f07e84d91361eb11c71d57c630c269033c4fa73bee` |
| 29 | `theorem` | [isPath_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/ispath-singleton--2919e3f0174f6a814d3876c8.md) | 201 | `result-track:2919e3f0174f6a814d3876c8aca6fefab5a44fbeccb892a18e7753160c2c1664` |
| 30 | `theorem` | [isPath_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/ispath-append--6a2520117ddf350500e32857.md) | 209 | `result-track:6a2520117ddf350500e32857f2365dcb01e4cada0f147e3cfc6f32338680bb82` |
| 31 | `theorem` | [mem_εClosure_iff_exists_path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/mem-closure-iff-exists-path--4bf927b83e9232baeac4527e.md) | 224 | `result-track:4bf927b83e9232baeac4527edfdac07f6905e6abf1dc27f7c2dbd16eba779eef` |
| 32 | `theorem` | [mem_evalFrom_iff_exists_path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/mem-evalfrom-iff-exists-path--753b6289fed4c64e34bd072d.md) | 247 | `result-track:753b6289fed4c64e34bd072d5bf65fe1dfa8ecce472278263debc0e31d267d28` |
| 33 | `theorem` | [mem_accepts_iff_exists_path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/mem-accepts-iff-exists-path--3291ce6e7d5b2cb7c89fa0a3.md) | 282 | `result-track:3291ce6e7d5b2cb7c89fa0a321e69d7ae5145c16c5492e0567ad1176b75f3600` |
| 34 | `def` | [toNFA](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/tonfa--b32b583e356f12b1cb3791ce.md) | 300 | `declaration-track:b32b583e356f12b1cb3791cecb9d35aa1c3190e4d8923707406e83a0eb751fbc` |
| 35 | `theorem` | [toNFA_evalFrom_match](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/tonfa-evalfrom-match--bc1af4490b9335560303d4a7.md) | 306 | `result-track:bc1af4490b9335560303d4a74bfd5a55fc0024ef57b60dab16b08b7d05ea0b66` |
| 36 | `theorem` | [toNFA_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/tonfa-correct--83be6d6f3b8cc0b73d181056.md) | 311 | `result-track:83be6d6f3b8cc0b73d181056b36e61d20fe0e4f73c4e9e97fa3a6d8cdf8b48ef` |
| 37 | `theorem` | [pumping_lemma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/pumping-lemma--9981448af07b03c4c863854a.md) | 314 | `result-track:9981448af07b03c4c863854a362c54d58740c9f381bebb5795405e350027a34b` |
| 38 | `def` | [toεNFA](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/to-nfa--d669b1b1302800151a9fa882.md) | 326 | `declaration-track:d669b1b1302800151a9fa8829707d72eb3182d84e8ccfe6bb4f8f36a7d29b882` |
| 39 | `theorem` | [toεNFA_εClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/to-nfa-closure--673400e9c13bf0599d811958.md) | 332 | `result-track:673400e9c13bf0599d81195860509fa7f759d9f71edd3405efb71ac6a1837825` |
| 40 | `theorem` | [toεNFA_evalFrom_match](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/to-nfa-evalfrom-match--a88a33430f968f276528ea25.md) | 336 | `result-track:a88a33430f968f276528ea25614ca9625c98b6393fb94a3369128cdfd844853a` |
| 41 | `theorem` | [toεNFA_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/to-nfa-correct--a6ab392dbf5ebd1a9bacc37b.md) | 349 | `result-track:a6ab392dbf5ebd1a9bacc37bd2755123b63a35c08e79f3ef230fc8cd183fe8ee` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/instance--af440c6d3f6ccf8c003cf0c2.md) | 360 | `declaration-track:af440c6d3f6ccf8c003cf0c25f6f288d44bac635f61c9fb86626db0917962f96` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/instance--57daf58769b74f833caf42fc.md) | 363 | `declaration-track:57daf58769b74f833caf42fcecf274e8259b54b608ffab8266002ef71d0b0f8c` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/instance--b7666a84adcb5e08471ae657.md) | 366 | `declaration-track:b7666a84adcb5e08471ae657e8ca4caab097b79de9a59722ccdd793384312eae` |
| 45 | `theorem` | [step_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/step-zero--1130d34a68e11aa5a69ebdbb.md) | 370 | `result-track:1130d34a68e11aa5a69ebdbba8fc6b95d8c95a97f170dd7b73f0833dd848847e` |
| 46 | `theorem` | [step_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/step-one--c433f653de067a964091e764.md) | 374 | `result-track:c433f653de067a964091e764d1f89c81cb0c806fc49c1faaac4ac73a0a249561` |
| 47 | `theorem` | [start_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/start-zero--4900082efe933ab43696f12b.md) | 378 | `result-track:4900082efe933ab43696f12b159b9e99142a5a46d97f33f1725f48e930ef3fc9` |
| 48 | `theorem` | [start_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/start-one--c80c9de8268a7f04d2a53851.md) | 382 | `result-track:c80c9de8268a7f04d2a5385147e5382f7f579bd572d96c197254bc76c99d6226` |
| 49 | `theorem` | [accept_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/accept-zero--8973f942dcf4c4f4800e6146.md) | 386 | `result-track:8973f942dcf4c4f4800e6146a8e8438a614047ab7197cc273066599f5a5e9e43` |
| 50 | `theorem` | [accept_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantc2bdce7c13121acce74056a13d32092b6a2dec235d57ad2960deb540a877863e.lean/declarations/accept-one--3e6b7bcbc894d0c98217ab94.md) | 390 | `result-track:3e6b7bcbc894d0c98217ab942b3cb2e0dbc06c7471172245091936dcca60b279` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
