# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoundedCursorProtocols

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a152bff76a8962ba9add250686db8fa792f9f19f",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a152bff76a8962ba9add250686db8fa792f9f19f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CollisionCheckedMapConstruction`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Phase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/phase--d98bf9b9db7e3ebd3f6d1fae.md) | 15 | `declaration-track:d98bf9b9db7e3ebd3f6d1faebcad06442a714477657e141acbbe2d24e1e82194` |
| 2 | `structure` | [Cursor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/cursor--01133537b7742cbcd5530e7d.md) | 19 | `declaration-track:01133537b7742cbcd5530e7dae793918d9a695ca606a39e07b51d72aa3c0f850` |
| 3 | `def` | [start](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/start--a8a6653c74ed434227416529.md) | 27 | `declaration-track:a8a6653c74ed434227416529ae491f0a088275e9f357677432ee4fe20c15c9c1` |
| 4 | `def` | [terminal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/terminal--241006b82f4b2759b85ae0a9.md) | 29 | `declaration-track:241006b82f4b2759b85ae0a92c1fd960f34cace66c681552bc829e9b7d071bcb` |
| 5 | `def` | [index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/index--ff6afd0191dfa3d6a1178d77.md) | 32 | `declaration-track:ff6afd0191dfa3d6a1178d77fa00ef8d656645b0ea1c8e6024991a9069ea56a6` |
| 6 | `def` | [advance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/advance--d1c25f086c43b42a971817ee.md) | 37 | `declaration-track:d1c25f086c43b42a971817ee6c02d3d3ed7b856331b325f4363a0dd24542258b` |
| 7 | `def` | [budget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/budget--59bb2772f23d3c87e46c6b05.md) | 54 | `declaration-track:59bb2772f23d3c87e46c6b05ab28fb2c595460e2312c83c953a22424ef4b2632` |
| 8 | `def` | [cursorAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/cursorat--3c9c05eaa1d547d74fccea74.md) | 58 | `declaration-track:3c9c05eaa1d547d74fccea746ef2e42a7b203c5668c81f20de49a5b0f7f165d6` |
| 9 | `theorem` | [start_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/start-exact--f33655e5e38d6bf127c80a9c.md) | 67 | `result-track:f33655e5e38d6bf127c80a9c08b46f315f62c6776b597a15ce7f400321939c47` |
| 10 | `theorem` | [terminal_success](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/terminal-success--e454332381394f59a0b24572.md) | 70 | `result-track:e454332381394f59a0b24572965396cf32cd6c7ddf7ab66673947d7baac32e70` |
| 11 | `theorem` | [terminal_failure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/terminal-failure--71b386ac63756a48bf4372bd.md) | 73 | `result-track:71b386ac63756a48bf4372bd14065cf843486d15b481520f371224b65d84c7e6` |
| 12 | `theorem` | [terminal_absorbs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/terminal-absorbs--526835a973964993a0685937.md) | 76 | `result-track:526835a973964993a068593770cb7c68d2ec2e7e7c16765abc44876caca0f2b8` |
| 13 | `theorem` | [failure_absorbs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/failure-absorbs--94893d6ef00e4b4571d64ffd.md) | 79 | `result-track:94893d6ef00e4b4571d64ffd47a880d7334c70183678afdc86c8dcba29bf14ec` |
| 14 | `theorem` | [success_absorbs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/success-absorbs--fb9266081e35e438f091f439.md) | 82 | `result-track:fb9266081e35e438f091f439d1d00c7888362596c77d0d51e29a7c39153a0743` |
| 15 | `theorem` | [failed_step_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/failed-step-exact--65b7d4b4c2043856dd6d9488.md) | 85 | `result-track:65b7d4b4c2043856dd6d9488d6da90c0a973e03ae60a9721478c3f37f2377160` |
| 16 | `theorem` | [failed_step_preserves_counters](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/failed-step-preserves-counters--9a767a5f56e60004c04b75d6.md) | 88 | `result-track:9a767a5f56e60004c04b75d6b7cd6cc73e240a87226d89c39529bc4847d7d896` |
| 17 | `theorem` | [at_terminal_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/at-terminal-iff--c674e17de2fd92027686a616.md) | 95 | `result-track:c674e17de2fd92027686a6164629ddcb8e156cce52b2729e3961ff78d66cb966` |
| 18 | `theorem` | [at_live](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/at-live--0defd2d21a6a21785d78cdd0.md) | 111 | `result-track:0defd2d21a6a21785d78cdd0ae83ddb2dbfb5fc97193281ef266aa9326b2bcca` |
| 19 | `theorem` | [at_counters_bounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/at-counters-bounded--fce1c57cb2c7b96d1c9c6caf.md) | 117 | `result-track:fce1c57cb2c7b96d1c9c6cafcacd6aa3cfd7dcffee4f29f9ef66c734559d82eb` |
| 20 | `theorem` | [at_directory_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/at-directory-index--30f5cbb62153ca62573cded1.md) | 127 | `result-track:30f5cbb62153ca62573cded12562f945fc3db0840fe5c2c51a910e1c8568784c` |
| 21 | `theorem` | [at_write_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/at-write-index--4feb5ef168bbc919ee721099.md) | 135 | `result-track:4feb5ef168bbc919ee721099d48e10470affc3d6a558e2bf56304230c1be0291` |
| 22 | `theorem` | [advance_at_success](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/advance-at-success--487eb2dc4e8844697e00dc1f.md) | 143 | `result-track:487eb2dc4e8844697e00dc1fa8e8a88c299e0df82aaff6379f5cd5bbcd000d0a` |
| 23 | `def` | [successfulSteps](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/successfulsteps--2ebeaf8a0dd44663adcd798c.md) | 223 | `declaration-track:2ebeaf8a0dd44663adcd798c8d5a7d5be4a02d2eb69d7f9d20b2b32f53d37217` |
| 24 | `theorem` | [successfulSteps_from_start](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/successfulsteps-from-start--2b0536988e8fe8891904f2d7.md) | 227 | `result-track:2b0536988e8fe8891904f2d71fa79d9fefdf45c9966aa384407fc3730ece74a3` |
| 25 | `theorem` | [successfulSteps_first_terminal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/successfulsteps-first-terminal--65830469d8ccdb51f4c4fe74.md) | 236 | `result-track:65830469d8ccdb51f4c4fe748fdb2e14dc724c367aaf17ddcb9e834cd00464ee` |
| 26 | `theorem` | [failed_prefix_absorbing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/failed-prefix-absorbing--3249b61b03f8466549adc5ef.md) | 243 | `result-track:3249b61b03f8466549adc5efe865864ce106baf2abf0e3d6cb7c7eb10842ddef` |
| 27 | `structure` | [Operation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/operation--41a1d3efdffdecb2b92046c3.md) | 252 | `declaration-track:41a1d3efdffdecb2b92046c347d98e1910a8b8720ab247ee15b9d90774c6f16b` |
| 28 | `def` | [operation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/operation--8c8dc3b5190ed7e65b544977.md) | 257 | `declaration-track:8c8dc3b5190ed7e65b5449771fe40ddcc2c0d2a36eee4cd219bd1f22cc3f1d69` |
| 29 | `def` | [program](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/program--7a81af07232ab1b4e5acb41b.md) | 259 | `declaration-track:7a81af07232ab1b4e5acb41b2c84bfe16968f65ee183b4a6be3f65909dc664ff` |
| 30 | `theorem` | [program_length](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/program-length--2dfa244590f68e9d172ace1e.md) | 262 | `result-track:2dfa244590f68e9d172ace1eb67a9d1e65e086a1d759cb7f7cf9f7cd7f6ec901` |
| 31 | `theorem` | [program_first](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/program-first--fc1078931d20ec77a901b9d2.md) | 265 | `result-track:fc1078931d20ec77a901b9d207d74838e2699b5967bfdf3927fe883c68dc4dee` |
| 32 | `theorem` | [program_readback](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/program-readback--b56917e56b754504dab463b0.md) | 269 | `result-track:b56917e56b754504dab463b0db1750b688bc4581da10c320327947e50022356e` |
| 33 | `theorem` | [program_certificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/program-certificate--75e46adad638a652e11b2e84.md) | 276 | `result-track:75e46adad638a652e11b2e84074fe0c3801befd1c4e5e7113d691c6e3573f853` |
| 34 | `structure` | [Execution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/execution--e77b35f3814661bdc4ed4e77.md) | 283 | `declaration-track:e77b35f3814661bdc4ed4e771e64186cfda3d10835533ff14542cefa5383f96b` |
| 35 | `def` | [run](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/run--258ff9328f7e537e28f22cc5.md) | 288 | `declaration-track:258ff9328f7e537e28f22cc52eb0afc7043696e638e28755af2c3e06b8774cf9` |
| 36 | `def` | [execute](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/execute--7c0cfbcbaeced3158638c514.md) | 295 | `declaration-track:7c0cfbcbaeced3158638c514e96c462c13954560787393e32a65c05ad9c70082` |
| 37 | `theorem` | [run_success_trace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/run-success-trace--63939aeb5db2fc56875f2f02.md) | 299 | `result-track:63939aeb5db2fc56875f2f0286eb9c35757c7081aebe9e899f779d6341c59f38` |
| 38 | `theorem` | [run_failure_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/run-failure-exact--67c05ebade930270a8302b15.md) | 311 | `result-track:67c05ebade930270a8302b15922089ee5da9c5493b5b776682b79d20d6e41932` |
| 39 | `theorem` | [run_trace_prefix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/run-trace-prefix--b9533e2c637b194969f1d917.md) | 331 | `result-track:b9533e2c637b194969f1d9177d6edbd8d0f2e9416d9fe3cd6704b3a51188e43d` |
| 40 | `theorem` | [execute_success_trace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/execute-success-trace--bb530c297a3650c75dfa2782.md) | 342 | `result-track:bb530c297a3650c75dfa2782a69eee8c5eeb797a5df05806bb53a40e13801368` |
| 41 | `theorem` | [execute_success_mandatory_readback](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/execute-success-mandatory-readback--a05912971f2443db1313a5dc.md) | 348 | `result-track:a05912971f2443db1313a5dc4af23cffc6853a8a921539fdce3a21fe9a3c25bc` |
| 42 | `theorem` | [execute_call_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/execute-call-bound--6ce34848e3b7decd0d5896a1.md) | 356 | `result-track:6ce34848e3b7decd0d5896a18ca3554742e43089db046a010f900a3dbbaac9f4` |
| 43 | `structure` | [Prepared](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/prepared--b0b9cfa863dff0b652df28b0.md) | 365 | `declaration-track:b0b9cfa863dff0b652df28b016c84e795301af933ca533cf608e2277c3b538fa` |
| 44 | `def` | [preflight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/preflight--91b7d45631f6b0ccc37436ab.md) | 371 | `declaration-track:91b7d45631f6b0ccc37436abda2d0ae5c12776a1f163a4c22ad918094ec9b112` |
| 45 | `theorem` | [preflight_success_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/preflight-success-exact--cb1543907911f5322304469f.md) | 384 | `result-track:cb1543907911f5322304469f8e216e11127bc5806b9d3bf173ab9da6194af676` |
| 46 | `theorem` | [preflight_success_directory_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/preflight-success-directory-bound--5fe99b329b0d216b8c4fd6ac.md) | 406 | `result-track:5fe99b329b0d216b8c4fd6aceafc0d76573b65577289f354f502625d4c2f1710` |
| 47 | `theorem` | [preflight_success_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/preflight-success-iff--12d38c17172179c0b9882447.md) | 427 | `result-track:12d38c17172179c0b98824479cddb4ce3d89f4412d6d635d671fa0d8e6cbc016` |
| 48 | `theorem` | [preflight_excess_directories_before_writes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/preflight-excess-directories-before-writes--e829480fc61d50e8c2cb4dd0.md) | 444 | `result-track:e829480fc61d50e8c2cb4dd05ecb5d71a2c6b06acf8c68a88ff9fed8e7f5fa22` |
| 49 | `theorem` | [preflight_success_full_records](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/preflight-success-full-records--d7607b95a48cf1250582aec2.md) | 453 | `result-track:d7607b95a48cf1250582aec2bf42349e217741a6cb270fea26d157b2210e97ba` |
| 50 | `theorem` | [preflight_success_metadata_bounds](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/preflight-success-metadata-bounds--7bd99a7004d81653706049b3.md) | 462 | `result-track:7bd99a7004d81653706049b3a9ecd0bd4d1c7b690491146d232697955d59d12d` |
| 51 | `theorem` | [preflight_success_write_records](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/preflight-success-write-records--1e219617b73029ac923b643b.md) | 469 | `result-track:1e219617b73029ac923b643b4a357225af654cf909bed0cefa3666cad8858693` |
| 52 | `theorem` | [preflight_success_actual_byte_bounds](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/preflight-success-actual-byte-bounds--35d75b75b1c4d5a8758f8adb.md) | 478 | `result-track:35d75b75b1c4d5a8758f8adbfe93b089aba43da3bb43fdb532c38ab7a6321593` |
| 53 | `theorem` | [preflight_success_directory_closure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/preflight-success-directory-closure--df35fecbe1d84b68578626c7.md) | 491 | `result-track:df35fecbe1d84b68578626c7b49b7d1538bd8828464a8b21448de01ccd3636ea` |
| 54 | `inductive` | [StageError](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/stageerror--0ae6823fb1c04d9a444a5a87.md) | 502 | `declaration-track:0ae6823fb1c04d9a444a5a8702446efd82fc2fb6a6cdab3f8e088dbf688b59c8` |
| 55 | `def` | [stage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/stage--c65d1488b1078b0fcbc7b186.md) | 507 | `declaration-track:c65d1488b1078b0fcbc7b186c0eafcd8224226aac75235cd8a89d6d14b7a1aed` |
| 56 | `theorem` | [stage_preflight_failure_no_effect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/stage-preflight-failure-no-effect--39b4c80fb22048c885d82c25.md) | 517 | `result-track:39b4c80fb22048c885d82c25522d8a8c0ca57992b3600e88964230ab5e0058aa` |
| 57 | `theorem` | [stage_excess_directories_no_effect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/stage-excess-directories-no-effect--6cb9bec2f5180a5003cad44e.md) | 525 | `result-track:6cb9bec2f5180a5003cad44e1c13681e54bb1270cbbb8f9b10129e86cd3c16a6` |
| 58 | `theorem` | [stage_success_preflight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/stage-success-preflight--0e852be8f2c727d9f88e0fc1.md) | 537 | `result-track:0e852be8f2c727d9f88e0fc1f7dabeb994f9f02388165fc068b026fca60aba68` |
| 59 | `theorem` | [stage_success_mandatory_gates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/stage-success-mandatory-gates--5265c863185ab3c2141397b3.md) | 553 | `result-track:5265c863185ab3c2141397b3326a045957aa50ca7707c5f79f72d0fcb97a58b3` |
| 60 | `theorem` | [fixture_zero_output_protocol](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/fixture-zero-output-protocol--b7f60955340df325ac227395.md) | 565 | `result-track:b7f60955340df325ac22739522ee720a5448fe9d701df948e3ffb4203242a324` |
| 61 | `theorem` | [fixture_interleaving_protocol](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/fixture-interleaving-protocol--723cd034cc4f0af5ceb10b0c.md) | 568 | `result-track:723cd034cc4f0af5ceb10b0c8c12c899c848023feed11da4079abd26af09d1d4` |
| 62 | `theorem` | [fixture_empty_host_success](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/fixture-empty-host-success--02023e2f9e937c71c94bd7ab.md) | 572 | `result-track:02023e2f9e937c71c94bd7ab5e77b76ca2fe7c3caa8638191efe1f7a2fe4dcbd` |
| 63 | `theorem` | [fixture_readback_failure_blocks_certificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCursorProtocols.lean/declarations/fixture-readback-failure-blocks-certificate--e0bc74cc42ada4fe5fc11dd8.md) | 575 | `result-track:e0bc74cc42ada4fe5fc11dd805fb2c3ed55693fc22c2b19b748ac899925fea0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
