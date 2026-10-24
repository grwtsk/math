# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EpsilonNFA.Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4b69f7c1b3e754ecde5a8f4bac55371a271ae59",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4b69f7c1b3e754ecde5a8f4bac55371a271ae59`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.NFA` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.ReduceOption` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [εNFA](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/nfa--8abf2468842f2c53c9ac8e48.md) | 43 | `declaration-track:8abf2468842f2c53c9ac8e4815cf8723e15a75176eedef30d154ff523e958c04` |
| 2 | `inductive` | [εClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/closure--0b98e01dec58a9c7ab3197db.md) | 59 | `declaration-track:0b98e01dec58a9c7ab3197db240683dec765f7f03850f8dd2ce7f26a51b8f9e7` |
| 3 | `theorem` | [subset_εClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/subset-closure--39afa3aac770ebe1c9e1b9e0.md) | 64 | `result-track:39afa3aac770ebe1c9e1b9e093f9901204fdffd2262c966b82774bee5db90426` |
| 4 | `theorem` | [εClosure_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/closure-empty--6ec4de5c9fd10b3bd00ff7c8.md) | 68 | `result-track:6ec4de5c9fd10b3bd00ff7c85e7e03a1664b05067e2ea7b3d2bd36edfaa8be6b` |
| 5 | `theorem` | [εClosure_univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/closure-univ--2383aca236ea40c848db3078.md) | 72 | `result-track:2383aca236ea40c848db3078b2899c706a28929620e935857d6438f6281f371d` |
| 6 | `theorem` | [mem_εClosure_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/mem-closure-iff-exists--f7ec8a67feb708b05d054273.md) | 75 | `result-track:f7ec8a67feb708b05d054273f99ca7437609c9b5021cd870a0484e3ddf9916a8` |
| 7 | `def` | [stepSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/stepset--b82b64c359d2e8c2f1379c15.md) | 88 | `declaration-track:b82b64c359d2e8c2f1379c1521edfd91ff89e8280c6b810b1f27b0b562261ff4` |
| 8 | `theorem` | [mem_stepSet_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/mem-stepset-iff--9db8651e8efb4a563ea411a4.md) | 94 | `result-track:9db8651e8efb4a563ea411a427f4ac4a6ed8c0e3debdf0bbc32a0db024df2d34` |
| 9 | `theorem` | [stepSet_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/stepset-empty--4392ed8a388db69f4331b0e5.md) | 98 | `result-track:4392ed8a388db69f4331b0e5ff87e003f3ba5f58576fb48d0091c22697f8d63b` |
| 10 | `def` | [evalFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/evalfrom--64e8a0eceb9250f3a38e23ea.md) | 105 | `declaration-track:64e8a0eceb9250f3a38e23ea61b12980521954f8ecf4776d93df0f4ac47f3647` |
| 11 | `theorem` | [evalFrom_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/evalfrom-nil--0626fb91524c01c521c82a90.md) | 109 | `result-track:0626fb91524c01c521c82a9072a03976c64c80853bbcd0ebdd432eed54dfb571` |
| 12 | `theorem` | [evalFrom_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/evalfrom-singleton--f3f5960d06bc20eecc0f8844.md) | 113 | `result-track:f3f5960d06bc20eecc0f88442a60ebd10886466d9219f8f809780efc37e0d8eb` |
| 13 | `theorem` | [evalFrom_append_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/evalfrom-append-singleton--89fe58de3da8d18e18b49b00.md) | 117 | `result-track:89fe58de3da8d18e18b49b00dc6af75b93a50d23abe2f38838745a9d6e698d98` |
| 14 | `theorem` | [evalFrom_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/evalfrom-empty--0bb4f9e50bcfa2ddb5a3e1c8.md) | 122 | `result-track:0bb4f9e50bcfa2ddb5a3e1c86ddcf045e1cadabfc5b172200de8a57d35bd589b` |
| 15 | `theorem` | [mem_evalFrom_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/mem-evalfrom-iff-exists--bb613741fc8b67dc046689a1.md) | 127 | `result-track:bb613741fc8b67dc046689a18f757beef53b546e7ee5b781a9d89c808fea921f` |
| 16 | `def` | [eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/eval--4872803f6a97811610701e5e.md) | 136 | `declaration-track:4872803f6a97811610701e5ed42c6bacb39b7ac220254eda261b854a8fc99c7e` |
| 17 | `theorem` | [eval_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/eval-nil--7048857c33bfb8e7aa05f686.md) | 140 | `result-track:7048857c33bfb8e7aa05f686676851bf78de88e0c30f1a358d162cc9f9fc538d` |
| 18 | `theorem` | [eval_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/eval-singleton--0ecd8cd3edd5a8b681c3d417.md) | 144 | `result-track:0ecd8cd3edd5a8b681c3d417311e43d59e1732b03cc78564a9c70130ac39fa38` |
| 19 | `theorem` | [eval_append_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/eval-append-singleton--36548eb20674032f90f9a9c5.md) | 148 | `result-track:36548eb20674032f90f9a9c52dbb4c9497c2b203802e62979afd21c775606c24` |
| 20 | `def` | [accepts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/accepts--653060985e452f67902895ee.md) | 152 | `declaration-track:653060985e452f67902895ee3a4d4d35c3512c609a1a905932d9024d8cebe2ce` |
| 21 | `inductive` | [IsPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/ispath--2cf9b43590004e1dd4036838.md) | 158 | `declaration-track:2cf9b43590004e1dd403683854fe5831c315de4926d391fe9ca019e6ba60806e` |
| 22 | `theorem` | [isPath_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/ispath-nil--229c6e70456d84987e1db1b3.md) | 164 | `result-track:229c6e70456d84987e1db1b3ef38e50e0c53eecd6be88f91583dbc65e92b6bd6` |
| 23 | `theorem` | [isPath_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/ispath-singleton--f50fc9852e3c5f9db7a20a15.md) | 171 | `result-track:f50fc9852e3c5f9db7a20a151a3decf4bdbdaa22b09b681ba0b19e682e6b03b9` |
| 24 | `theorem` | [isPath_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/ispath-append--bd54207f33e84ae71db028ce.md) | 179 | `result-track:bd54207f33e84ae71db028cefa7630bb4f398cfb6d71f6b50026954a29dde5a7` |
| 25 | `theorem` | [mem_εClosure_iff_exists_path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/mem-closure-iff-exists-path--7442a469faa9fee23f34afb7.md) | 192 | `result-track:7442a469faa9fee23f34afb7e61af5d89c7465354303822fd523f656411447ea` |
| 26 | `theorem` | [mem_evalFrom_iff_exists_path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/mem-evalfrom-iff-exists-path--26df92fded9c93223335ae57.md) | 215 | `result-track:26df92fded9c93223335ae572a47ba964b7df6f6e44f4d5ed3e6d85810004755` |
| 27 | `theorem` | [mem_accepts_iff_exists_path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/mem-accepts-iff-exists-path--28987b66a09384f9f30badfe.md) | 248 | `result-track:28987b66a09384f9f30badfe9b6d51a7c5b7231c5ecc255e068310584fe0c999` |
| 28 | `def` | [toNFA](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/tonfa--5fd4a347294cf1db9291439c.md) | 266 | `declaration-track:5fd4a347294cf1db9291439c9ccabbeb2fbaa748bf30bbaebd8c6efa2724f7a3` |
| 29 | `theorem` | [toNFA_evalFrom_match](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/tonfa-evalfrom-match--eb42300930762e6525607ee5.md) | 272 | `result-track:eb42300930762e6525607ee503759ae7054d04c920bec849c8b86f4990b67ef2` |
| 30 | `theorem` | [toNFA_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/tonfa-correct--00451ba5a6e3ed39718d1beb.md) | 277 | `result-track:00451ba5a6e3ed39718d1beb3e657c40f299e9cae858c5403d0ef6549edd8246` |
| 31 | `theorem` | [pumping_lemma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/pumping-lemma--19a7a04be619aa7d0e6d205c.md) | 280 | `result-track:19a7a04be619aa7d0e6d205c7a2590df1c73fb6ae5991789c7d42d13a309780c` |
| 32 | `def` | [toεNFA](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/to-nfa--6f9b1bd796d75151aba48446.md) | 292 | `declaration-track:6f9b1bd796d75151aba48446bf9169e926ffbb425cc95dc6c8532edf6df8587f` |
| 33 | `theorem` | [toεNFA_εClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/to-nfa-closure--c62d64dbac3a617d03b09829.md) | 298 | `result-track:c62d64dbac3a617d03b0982902d166f3363f8d1232b6c5111a8c868de4cecfc9` |
| 34 | `theorem` | [toεNFA_evalFrom_match](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/to-nfa-evalfrom-match--694102fe6a05436e267abf69.md) | 306 | `result-track:694102fe6a05436e267abf69b032cdf5ea52bbae07e525758b5266efd05b6160` |
| 35 | `theorem` | [toεNFA_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/to-nfa-correct--eefc14c43596b90e7d87ff05.md) | 319 | `result-track:eefc14c43596b90e7d87ff05656511c3c9088f9e13312e495b8a5ff4fd998561` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/instance--4393e2562371106a9a0eeb3f.md) | 330 | `declaration-track:4393e2562371106a9a0eeb3f704879322d1d058f804b6c836c820bb1359c1cbb` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/instance--a28ef784dc076775babfb01b.md) | 333 | `declaration-track:a28ef784dc076775babfb01b087db0abe71cd77be74b77dcb0f93b974c9e973d` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/instance--424aff72d1ed742c0f9ca8c3.md) | 336 | `declaration-track:424aff72d1ed742c0f9ca8c3d4a6af466909c3c5d6027b96345df739f5c3263e` |
| 39 | `theorem` | [step_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/step-zero--fc0e9f1c5b05ccd7cb10c610.md) | 340 | `result-track:fc0e9f1c5b05ccd7cb10c610a01a033f0d8c2b5216cc96388d456f477b6c20c3` |
| 40 | `theorem` | [step_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/step-one--d46d5f44db536f8757eb9dd6.md) | 344 | `result-track:d46d5f44db536f8757eb9dd601b7673379db52df7c79d5ee3d727b9717d7cf2a` |
| 41 | `theorem` | [start_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/start-zero--08992d59647994742f6ef4c9.md) | 348 | `result-track:08992d59647994742f6ef4c94b8be72769d3e870e7c146af472485a578ef7a60` |
| 42 | `theorem` | [start_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/start-one--9c63f40a2e175d176697c434.md) | 352 | `result-track:9c63f40a2e175d176697c4347c4ab9f0d4f4020ffc8ad89d5c65901c87feb832` |
| 43 | `theorem` | [accept_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/accept-zero--cd4a8b4d6afa57b37eef8852.md) | 356 | `result-track:cd4a8b4d6afa57b37eef8852a09bdba10d91b0c0e713fe6846f692028a20c717` |
| 44 | `theorem` | [accept_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant2744fe4ff82d3fc003158c17ae6eca5ab247452fb6abc1a66d0f1df6fd256435.lean/declarations/accept-one--0800253b7420043093a110e1.md) | 360 | `result-track:0800253b7420043093a110e1d7e59788fcbfd0d3aab57fef3ec0014f19e573b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
