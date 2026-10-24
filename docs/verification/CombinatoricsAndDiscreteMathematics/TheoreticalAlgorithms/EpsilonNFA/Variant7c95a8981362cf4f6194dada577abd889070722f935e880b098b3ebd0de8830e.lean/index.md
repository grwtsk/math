# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EpsilonNFA.Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95a1f0eec660288cb8962eaab6391c789c29ee50",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95a1f0eec660288cb8962eaab6391c789c29ee50`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.NFA` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.ReduceOption` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [εNFA](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/nfa--4f713e02a8b1eae32922b65c.md) | 35 | `declaration-track:4f713e02a8b1eae32922b65c4830a1d1d2d6028b0a61360fd344ba23073b88af` |
| 2 | `inductive` | [εClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/closure--950b5fa8ebeebf2052f8313e.md) | 51 | `declaration-track:950b5fa8ebeebf2052f8313e89ceb4afb617f5fd1e5f563c2b19d5c53d991d9e` |
| 3 | `theorem` | [subset_εClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/subset-closure--203644f0f3b7308a6e5dc9e9.md) | 56 | `result-track:203644f0f3b7308a6e5dc9e9dd56cd42e02d7d69fef62a0c83e04988d5fa3b8e` |
| 4 | `theorem` | [εClosure_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/closure-empty--932d62ce8fa63c7bc2c476b1.md) | 60 | `result-track:932d62ce8fa63c7bc2c476b1f8adcc17f6e253ace338d10e12e4a49472ad2f2e` |
| 5 | `theorem` | [εClosure_univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/closure-univ--4b1f58ee3c2261f890419bcc.md) | 64 | `result-track:4b1f58ee3c2261f890419bcc5cf05461020f9029709366e93cb0cde871aa46b2` |
| 6 | `theorem` | [mem_εClosure_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/mem-closure-iff-exists--dfdab0896b1f983b086e0a85.md) | 67 | `result-track:dfdab0896b1f983b086e0a858af3c7469d8cc385fc4e5231b724ff9dec0c1df3` |
| 7 | `def` | [stepSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/stepset--b97b12224e16d4b9198d816c.md) | 80 | `declaration-track:b97b12224e16d4b9198d816c4369acea69853ecca1828f24572c34bb061788c8` |
| 8 | `theorem` | [mem_stepSet_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/mem-stepset-iff--2beff13467f86ee93549a812.md) | 86 | `result-track:2beff13467f86ee93549a81248454d605eec274c76d107260df14e2862c45d60` |
| 9 | `theorem` | [stepSet_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/stepset-empty--8a8991db12bf03f56ad06fe0.md) | 90 | `result-track:8a8991db12bf03f56ad06fe0df57ce1c655d1c0252e93ce17217943b16beb938` |
| 10 | `def` | [evalFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/evalfrom--2c77c34267dde08c15850fa6.md) | 97 | `declaration-track:2c77c34267dde08c15850fa6772bf8f18c736eed1ff4bcc566ea5228b6077baa` |
| 11 | `theorem` | [evalFrom_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/evalfrom-nil--2435ca5a4960c606a10c8231.md) | 101 | `result-track:2435ca5a4960c606a10c823141f5613a768d7e4233d87e9186ed3c679ed578b5` |
| 12 | `theorem` | [evalFrom_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/evalfrom-singleton--7f4006b4439d529c8b1091a8.md) | 105 | `result-track:7f4006b4439d529c8b1091a8eb49aaa62ebb44c7c2ae19b8d7e5b5a3c32a6926` |
| 13 | `theorem` | [evalFrom_append_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/evalfrom-append-singleton--6ccfd4bebafde64a19ed307d.md) | 109 | `result-track:6ccfd4bebafde64a19ed307df2680316de875a0f81b2878e49d57cb68c1fc3e5` |
| 14 | `theorem` | [evalFrom_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/evalfrom-empty--c2dce45847b871262d1b5501.md) | 114 | `result-track:c2dce45847b871262d1b5501f606287cd7229e2868d42d3c67793557be42480c` |
| 15 | `theorem` | [mem_evalFrom_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/mem-evalfrom-iff-exists--877498c4d7ca568ddc4b523b.md) | 119 | `result-track:877498c4d7ca568ddc4b523b22672e6013cab54d708b2f889cda1d052a112d3a` |
| 16 | `def` | [eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/eval--833fa19a900804c5bc851d51.md) | 128 | `declaration-track:833fa19a900804c5bc851d515ecfea522461bed45a3c61269866d383aa0b8fd9` |
| 17 | `theorem` | [eval_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/eval-nil--025fe6b254594fa9ed520f8e.md) | 132 | `result-track:025fe6b254594fa9ed520f8eae797ad583e9805209b6845ad7aae674ee360c20` |
| 18 | `theorem` | [eval_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/eval-singleton--7e4790af7565c619b61fb653.md) | 136 | `result-track:7e4790af7565c619b61fb653d5f62ebe4b4728095cc4edd60a4552f7410b821f` |
| 19 | `theorem` | [eval_append_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/eval-append-singleton--8a4c02e72980243774139687.md) | 140 | `result-track:8a4c02e72980243774139687d9b4d1d6ce5776e3a843d9ef3a1c20ee9533a6cf` |
| 20 | `def` | [accepts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/accepts--d1a74e1e643b918f1fac4b3e.md) | 144 | `declaration-track:d1a74e1e643b918f1fac4b3e2e01223a969c213d8d76a9acb406351ca70bbeb9` |
| 21 | `inductive` | [IsPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/ispath--80e29514f23ba00a86ed10d8.md) | 150 | `declaration-track:80e29514f23ba00a86ed10d8ab476ac4a012570ec4938c1d5e8305a2069d28b2` |
| 22 | `theorem` | [isPath_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/ispath-nil--d8c3042178561bdc251c7736.md) | 156 | `result-track:d8c3042178561bdc251c7736a2ec3055ad254101bd021ef717412782093b4bd1` |
| 23 | `theorem` | [isPath_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/ispath-singleton--910e3a27d2ae8f72751b6ccc.md) | 163 | `result-track:910e3a27d2ae8f72751b6ccc643e58850e7360aacfe64d84b80df8537fd6f8bc` |
| 24 | `theorem` | [isPath_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/ispath-append--be2f97825cca563198bbbfa1.md) | 171 | `result-track:be2f97825cca563198bbbfa1c35f9966c8e116b82b16cfc7810ead9cf85b44b3` |
| 25 | `theorem` | [mem_εClosure_iff_exists_path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/mem-closure-iff-exists-path--c35caa10f6f9048cafe965ed.md) | 184 | `result-track:c35caa10f6f9048cafe965ed7a0656c1ce81d3b190b9fa935bc26f11ef8d1a72` |
| 26 | `theorem` | [mem_evalFrom_iff_exists_path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/mem-evalfrom-iff-exists-path--7a11da2db2e2effaace0d477.md) | 207 | `result-track:7a11da2db2e2effaace0d47755bc92997ac3fa2951bd610345f99eb4c584d738` |
| 27 | `theorem` | [mem_accepts_iff_exists_path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/mem-accepts-iff-exists-path--75507b3da5ff643c49ac8730.md) | 240 | `result-track:75507b3da5ff643c49ac8730ee235af9a8c42520cc3a1849168d6010301dc915` |
| 28 | `def` | [toNFA](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/tonfa--5b5d12c9085550fc06a1d215.md) | 258 | `declaration-track:5b5d12c9085550fc06a1d2152153fc004c02f978ee6e5e190d973b5b3d324458` |
| 29 | `theorem` | [toNFA_evalFrom_match](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/tonfa-evalfrom-match--0cc906dac0ffc20e1dd05c48.md) | 264 | `result-track:0cc906dac0ffc20e1dd05c48fceb5d8c38ae28f7d3c0fd8eabf2188565b3aa95` |
| 30 | `theorem` | [toNFA_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/tonfa-correct--10c649874f91d711774899e6.md) | 269 | `result-track:10c649874f91d711774899e6d71a641d1acb971395f6d0ad512daff4617835c1` |
| 31 | `theorem` | [pumping_lemma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/pumping-lemma--4a47aefbdde7445af405b299.md) | 272 | `result-track:4a47aefbdde7445af405b2993ea0ffda587405f6740e9af80dfe25e53061d9db` |
| 32 | `def` | [toεNFA](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/to-nfa--84da4a3bf2fa1601d7fd1bcd.md) | 284 | `declaration-track:84da4a3bf2fa1601d7fd1bcd02e8d6eda820e5de8a646422dd1cb88265fb0eba` |
| 33 | `theorem` | [toεNFA_εClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/to-nfa-closure--4699793fac11523dbedb5310.md) | 290 | `result-track:4699793fac11523dbedb5310301491c38bab4c10944063399d0a45bab2cdc43c` |
| 34 | `theorem` | [toεNFA_evalFrom_match](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/to-nfa-evalfrom-match--69bde891b3775cb67b166ef7.md) | 298 | `result-track:69bde891b3775cb67b166ef7e1c083203be7cdd695b047c4dd4c24715f8dc112` |
| 35 | `theorem` | [toεNFA_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/to-nfa-correct--362dd732889cec837b93cb6b.md) | 311 | `result-track:362dd732889cec837b93cb6b47b05641230cbcc9b94c362e8be862e2727a4f4f` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/instance--4b7cbab41a43d89a2f021274.md) | 322 | `declaration-track:4b7cbab41a43d89a2f0212748a33efc4766724ace3335f4ae3bfbfdf96c9f244` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/instance--ffd4b25a7b056a6111ec944c.md) | 325 | `declaration-track:ffd4b25a7b056a6111ec944c7df6ee609201f277bf3d75bad5b6d168a9ab72a8` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/instance--e67f48607ce8243fa2428daa.md) | 328 | `declaration-track:e67f48607ce8243fa2428daa34ad12380a8f1782ce31798b0b7639e785a57c3b` |
| 39 | `theorem` | [step_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/step-zero--ef6f4ca9ef70c199c2d35ae2.md) | 332 | `result-track:ef6f4ca9ef70c199c2d35ae25c8cb6efcbedc98e02ec5155ff5e1d63717e024c` |
| 40 | `theorem` | [step_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/step-one--7f0d2c0c5b5fc31595d814c9.md) | 336 | `result-track:7f0d2c0c5b5fc31595d814c97c74bf35d42b3a52548ce93db6338d46407912e6` |
| 41 | `theorem` | [start_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/start-zero--7b2319a19a812afc3d975fde.md) | 340 | `result-track:7b2319a19a812afc3d975fdeaf269557398e47cb064cc7f77193b59d2ca57988` |
| 42 | `theorem` | [start_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/start-one--bee57e9a15add6d3961edbd1.md) | 344 | `result-track:bee57e9a15add6d3961edbd1c396e6c262ea431913e9d17f37d960edc2a02177` |
| 43 | `theorem` | [accept_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/accept-zero--5f612aadf0557b0c47078a4b.md) | 348 | `result-track:5f612aadf0557b0c47078a4bb3ecd5b3f8811c83ea13d46fda037ea4d1784d25` |
| 44 | `theorem` | [accept_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variant7c95a8981362cf4f6194dada577abd889070722f935e880b098b3ebd0de8830e.lean/declarations/accept-one--736fc8bf1d73052186d871f7.md) | 352 | `result-track:736fc8bf1d73052186d871f7e02dc64bf52dfaa10a6a154d386de9f5872c2096` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
