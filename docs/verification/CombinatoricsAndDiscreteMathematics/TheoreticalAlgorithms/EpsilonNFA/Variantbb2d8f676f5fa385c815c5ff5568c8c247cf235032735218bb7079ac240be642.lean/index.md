# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EpsilonNFA.Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b067fe8080cd161b9bda38a2777062ab3f2a8310",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b067fe8080cd161b9bda38a2777062ab3f2a8310`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean.json)

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
| 1 | `structure` | [εNFA](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/nfa--de9cd9f6a5d1f53627fee8eb.md) | 47 | `declaration-track:de9cd9f6a5d1f53627fee8ebe3f7665fb10fb6ebd11b4218490493dcadbe2af0` |
| 2 | `inductive` | [MemεClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/mem-closure--f184e20a83871fad560095b0.md) | 63 | `declaration-track:f184e20a83871fad560095b0be00af5c209ccdf289437e47a3fd36347af7f487` |
| 3 | `def` | [εClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/closure--7625f6c7a4c68fd8ec6f1b72.md) | 70 | `declaration-track:7625f6c7a4c68fd8ec6f1b72fd818c2ce5c3eeafefb6bbae1fde7a16da898d1a` |
| 4 | `lemma` | [subset_εClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/subset-closure--c3050ac43c6fd214b3830cd1.md) | 72 | `result-track:c3050ac43c6fd214b3830cd1484ae4ec071c8bb069cc5b764f69318cdb4e76d3` |
| 5 | `lemma` | [εClosure.base](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/closure-base--283d3d5d945d4d86a6ca8386.md) | 75 | `result-track:283d3d5d945d4d86a6ca8386fee4b2b72a5c122d838c2016090f2971001e336c` |
| 6 | `lemma` | [mem_εClosure_of_mem_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/mem-closure-of-mem-step--937f7d6c80a4e29bf3d3752a.md) | 77 | `result-track:937f7d6c80a4e29bf3d3752a597479f386dba70a4427d541e68f5b595c1df87c` |
| 7 | `lemma` | [εClosure.step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/closure-step--8f742fd5569416ef320b244f.md) | 81 | `result-track:8f742fd5569416ef320b244f86ab3100c689a615f2e883d2109baf7190a395aa` |
| 8 | `lemma` | [εClosure_induction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/closure-induction--b3aa81d7f0b5f80c52c64ef2.md) | 87 | `result-track:b3aa81d7f0b5f80c52c64ef2e5b00dd4fd5b14f9a883b4e145ae461bfc19dcbb` |
| 9 | `lemma` | [εClosure_min](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/closure-min--6e38ecdcd33b87e1f863cb90.md) | 97 | `result-track:6e38ecdcd33b87e1f863cb90f2334597f59d4e3d1908ce4015b14ce54ee90581` |
| 10 | `theorem` | [εClosure_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/closure-empty--95e5e8152d7b4bfab2c12ef8.md) | 104 | `result-track:95e5e8152d7b4bfab2c12ef82b485a52bee97191bac888fbcb4aaae317791ec9` |
| 11 | `theorem` | [εClosure_univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/closure-univ--b208f4c92b8f72251d8be1a1.md) | 108 | `result-track:b208f4c92b8f72251d8be1a1d3b07addab908e6aa9078eceb96e21a71f44a51c` |
| 12 | `theorem` | [mem_εClosure_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/mem-closure-iff-exists--716dc50b92c82e8bb50839d7.md) | 111 | `result-track:716dc50b92c82e8bb50839d7de999a6e865e874fda2ce0e7bd6b44d8430e81aa` |
| 13 | `def` | [stepSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/stepset--79209753ebca59a40879bc87.md) | 125 | `declaration-track:79209753ebca59a40879bc87d9da89ac75ff5f2aab424950f986bff91556c32d` |
| 14 | `theorem` | [mem_stepSet_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/mem-stepset-iff--b9b6f7bf0de3a1f56d281b95.md) | 131 | `result-track:b9b6f7bf0de3a1f56d281b95d09693058fab55e095a3dbfc093dac8369cc48cd` |
| 15 | `theorem` | [stepSet_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/stepset-empty--2a1214b8f7544cec69de1ef3.md) | 135 | `result-track:2a1214b8f7544cec69de1ef3ad39658c6169d07301f8c62162ba95a606f3a4e6` |
| 16 | `def` | [evalFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/evalfrom--f0dd073a560841f7b0759d4d.md) | 142 | `declaration-track:f0dd073a560841f7b0759d4d7a17020d8bf30733b36d2ad2954fed067aec21ea` |
| 17 | `theorem` | [evalFrom_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/evalfrom-nil--2aa0123fbe9bf170d2fcbfb3.md) | 146 | `result-track:2aa0123fbe9bf170d2fcbfb38249c281f1958f3ea18f8a43a5f6569f3ae90acf` |
| 18 | `theorem` | [evalFrom_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/evalfrom-singleton--33bd126e3bba72ff6f16fa39.md) | 150 | `result-track:33bd126e3bba72ff6f16fa39c4f94b77e2c7b9cbf11ced008c65efc0fc41c17a` |
| 19 | `theorem` | [evalFrom_append_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/evalfrom-append-singleton--ddbffda3fcdaa36d4403a335.md) | 154 | `result-track:ddbffda3fcdaa36d4403a335768974726f23b4a474f06acce8182c384fd88795` |
| 20 | `theorem` | [evalFrom_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/evalfrom-empty--4e44b17d1fdc795dac90fa77.md) | 159 | `result-track:4e44b17d1fdc795dac90fa7752e5aa0268636206ff4f6b098ac0681f181d3926` |
| 21 | `theorem` | [mem_evalFrom_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/mem-evalfrom-iff-exists--8b51b10c339d2b1f515ec564.md) | 164 | `result-track:8b51b10c339d2b1f515ec564dc68075641938c9d7a4c6a90e825a19b1c05505a` |
| 22 | `def` | [eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/eval--4cb99e7e6b6df4952761c73f.md) | 174 | `declaration-track:4cb99e7e6b6df4952761c73f2be5770c96246f5cb5519e582d590382e5f767fc` |
| 23 | `theorem` | [eval_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/eval-nil--436f55925d66e05098263fb1.md) | 178 | `result-track:436f55925d66e05098263fb188529ac001db334c7ca5604cb9c093b273660e5c` |
| 24 | `theorem` | [eval_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/eval-singleton--59ef84944ee3ebd91a4e89b0.md) | 182 | `result-track:59ef84944ee3ebd91a4e89b033be21b4c26ab0dde7945a47d83aa5b732d0babe` |
| 25 | `theorem` | [eval_append_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/eval-append-singleton--05c720794ae4424d75d0484a.md) | 186 | `result-track:05c720794ae4424d75d0484a7a468f0dde8e5d5f8b34eb638fdf170440c83bf9` |
| 26 | `def` | [accepts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/accepts--39e85b9b9865279225a64a4f.md) | 190 | `declaration-track:39e85b9b9865279225a64a4f974cd9d5d073dd7528a56cb2c9a68d471ac61254` |
| 27 | `inductive` | [IsPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/ispath--2dcb404002e2fa7fa991ed59.md) | 196 | `declaration-track:2dcb404002e2fa7fa991ed5991077fd6c21b75cf97acbad2b21033226173888e` |
| 28 | `theorem` | [isPath_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/ispath-nil--3a4d6d1b4e542828b67fc1c4.md) | 202 | `result-track:3a4d6d1b4e542828b67fc1c4733ea9874bb5e4d650e63df7c69c2863f9162ef7` |
| 29 | `theorem` | [isPath_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/ispath-singleton--c65d14419ff1ef5e8d2a1d76.md) | 209 | `result-track:c65d14419ff1ef5e8d2a1d765faec0207ff194380a9201e61f305012ffed3620` |
| 30 | `theorem` | [isPath_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/ispath-append--916897f0fd1ea8ec8b204b4e.md) | 217 | `result-track:916897f0fd1ea8ec8b204b4ed7a6fb90d72c485919776a8067db400a6db0bcd8` |
| 31 | `theorem` | [mem_εClosure_iff_exists_path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/mem-closure-iff-exists-path--79e6c321377ffafe93260c8d.md) | 232 | `result-track:79e6c321377ffafe93260c8d705cd89a097bc84034600aa1e717577b3f3a83b3` |
| 32 | `theorem` | [mem_evalFrom_iff_exists_path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/mem-evalfrom-iff-exists-path--7ab272edc4804d388051d21f.md) | 255 | `result-track:7ab272edc4804d388051d21f14970124b7098847a229ffa81ea310b13525e866` |
| 33 | `theorem` | [mem_accepts_iff_exists_path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/mem-accepts-iff-exists-path--b8cb97613c9f149f25915496.md) | 290 | `result-track:b8cb97613c9f149f259154969e1f66f6634566df062d3572d8ef7c6dc8171099` |
| 34 | `def` | [toNFA](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/tonfa--b36c80c0b284bc7d98cfe0c6.md) | 308 | `declaration-track:b36c80c0b284bc7d98cfe0c6a9aca8056a5985628272b8ac0a8f9af1c54d47ed` |
| 35 | `theorem` | [toNFA_evalFrom_match](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/tonfa-evalfrom-match--1307649b1898a086b2c60e92.md) | 314 | `result-track:1307649b1898a086b2c60e9241725091d7c7fbd6eda0f7a0680c79f5f9efce6e` |
| 36 | `theorem` | [toNFA_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/tonfa-correct--578292a4902e8410bfe0ba2d.md) | 319 | `result-track:578292a4902e8410bfe0ba2dcf444947f1d671197a66a847f1a38ac212e27c3e` |
| 37 | `theorem` | [pumping_lemma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/pumping-lemma--f77a85acd3ef1c2097d62b16.md) | 322 | `result-track:f77a85acd3ef1c2097d62b16f5cf30b6fbed528bc6dbb3b9ee1a4d78950f9cfa` |
| 38 | `def` | [toεNFA](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/to-nfa--355285fdbe7a173c2ea335bf.md) | 334 | `declaration-track:355285fdbe7a173c2ea335bf3b1d7065119cec4951112afef9f2dc87fed0c8f0` |
| 39 | `theorem` | [toεNFA_εClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/to-nfa-closure--27a5aca56908dbc90c6c9960.md) | 340 | `result-track:27a5aca56908dbc90c6c9960819eaed66ac088d7d0e7d5cf02630639aa9855d0` |
| 40 | `theorem` | [toεNFA_evalFrom_match](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/to-nfa-evalfrom-match--08d9fe0086313bfa01ed6880.md) | 344 | `result-track:08d9fe0086313bfa01ed6880808e70059a7cf6aef433b0d8918e07d57bc42d7e` |
| 41 | `theorem` | [toεNFA_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/to-nfa-correct--e23622bd8165e2030fbc091a.md) | 357 | `result-track:e23622bd8165e2030fbc091ae2033b07a3c1fea93e0997449a3c5f1a375df9b0` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/instance--e106342c3a8151fadb4519e8.md) | 368 | `declaration-track:e106342c3a8151fadb4519e8ed4fc698844fa68be49ebac6213689f6eb876a6c` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/instance--3ae7a5d50f386769e265370e.md) | 371 | `declaration-track:3ae7a5d50f386769e265370e5a320547b1b26a979797b7e757d3a5e678c35da3` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/instance--378af9640f1ab1ec320bcee0.md) | 374 | `declaration-track:378af9640f1ab1ec320bcee0482120268b0d62a8ffb07f618194451399a5c0a4` |
| 45 | `theorem` | [step_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/step-zero--29eddcbe7a01e4edd1af6ac5.md) | 378 | `result-track:29eddcbe7a01e4edd1af6ac5491eee3c7b335b9a7292caebd709d7bd4ad82eaa` |
| 46 | `theorem` | [step_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/step-one--db8b40e8ebb0d7200bba94fa.md) | 382 | `result-track:db8b40e8ebb0d7200bba94fa4500276590363b2ea8ae33978c686ec72f63a7c5` |
| 47 | `theorem` | [start_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/start-zero--8b83ed1fd41a1b692840cdf3.md) | 386 | `result-track:8b83ed1fd41a1b692840cdf3c62416155e04e9454ef5dd05d91686f8cbdc835f` |
| 48 | `theorem` | [start_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/start-one--1834104a76ca329800e6b4f6.md) | 390 | `result-track:1834104a76ca329800e6b4f619520165ed49420b249599c7dcbc721dbb3e7187` |
| 49 | `theorem` | [accept_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/accept-zero--119e6e55463f5ec49689b102.md) | 394 | `result-track:119e6e55463f5ec49689b1021eb260ae562d9e2c61628b8d459ea935c0a2d8ab` |
| 50 | `theorem` | [accept_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/declarations/accept-one--831b8cfdd2e9de21dde93203.md) | 398 | `result-track:831b8cfdd2e9de21dde93203375a8b35a2a78eb9a36eb5d5d4bb1d470a331a4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
