# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DegLex.Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7bd4dc6bb2d565d22e9653c614e131370121497",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7bd4dc6bb2d565d22e9653c614e131370121497`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.MonomialOrder` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Weight` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DegLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/deglex--bd47c70442bfe5cecc099541.md) | 28 | `declaration-track:bd47c70442bfe5cecc09954112f243c7c016ceffe1c89809228868599c08571c` |
| 2 | `def` | [toDegLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/todeglex--42275b12501657ac7b811024.md) | 33 | `declaration-track:42275b12501657ac7b81102445d91d0fa3ac6e5f219079cbde2013dd3c4056af` |
| 3 | `theorem` | [toDegLex_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/todeglex-injective--eae42984dd9ef27d254ce935.md) | 35 | `result-track:eae42984dd9ef27d254ce935df163cbb3da8d94852fbbcf676800a47adac4f79` |
| 4 | `theorem` | [toDegLex_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/todeglex-inj--2ab7894d57f1b7f4b12bfc8c.md) | 37 | `result-track:2ab7894d57f1b7f4b12bfc8c43f7f75db86c05af31ce87ce1b33011bf620ea41` |
| 5 | `def` | [ofDegLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/ofdeglex--646fae43543ab8323dd45d19.md) | 40 | `declaration-track:646fae43543ab8323dd45d19cc86d4e030cb1cc4114780ef6dfffd45f1e9bc6e` |
| 6 | `theorem` | [ofDegLex_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/ofdeglex-injective--95be582e38e663b02a2e39a5.md) | 42 | `result-track:95be582e38e663b02a2e39a5e14dbda1844dfedabbdcf12b3b6f40714338c33a` |
| 7 | `theorem` | [ofDegLex_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/ofdeglex-inj--aa7e74c8c330491ac78d820a.md) | 44 | `result-track:aa7e74c8c330491ac78d820a889f62b3644402344205c2c8fae91d2263c86883` |
| 8 | `theorem` | [ofDegLex_symm_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/ofdeglex-symm-eq--a36ff93ce1e063acb89c02b4.md) | 46 | `result-track:a36ff93ce1e063acb89c02b4e43d54e0387fc54af0fc7b2121238029b78d0c79` |
| 9 | `theorem` | [toDegLex_symm_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/todeglex-symm-eq--98e95ec3ec085a73a7608ac8.md) | 48 | `result-track:98e95ec3ec085a73a7608ac8e4f56d6510536621857b43f8bcb1f7470a8646bc` |
| 10 | `theorem` | [ofDegLex_toDegLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/ofdeglex-todeglex--6590e61268a1e76af37e987a.md) | 50 | `result-track:6590e61268a1e76af37e987a61e962caf94914a07d9bcfb37b93fcc2b96586b2` |
| 11 | `theorem` | [toDegLex_ofDegLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/todeglex-ofdeglex--222e6c1be5f2f408803fa4ce.md) | 52 | `result-track:222e6c1be5f2f408803fa4ce148c60906c5162c5eca77a010a5a62ce3762d5df` |
| 12 | `def` | [DegLex.rec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/deglex-rec--c31c9463d9db903fe5f779b6.md) | 56 | `declaration-track:c31c9463d9db903fe5f779b63bb4bf2f7af502ebda9de0d7bd0e7b8f00ab5ca0` |
| 13 | `lemma` | [DegLex.forall_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/deglex-forall-iff--585adcfdf17d9d7c761bba24.md) | 59 | `result-track:585adcfdf17d9d7c761bba249c70d4e7c2cb4e5652565e20a25424c299b59207` |
| 14 | `lemma` | [DegLex.exists_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/deglex-exists-iff--e8735f348a3ee9de5c23f075.md) | 60 | `result-track:e8735f348a3ee9de5c23f075e17797c1c0d1cda1ff1921a9581e6389e0ccb2b3` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/instance--d05354600fa2c77f39d78163.md) | 62 | `declaration-track:d05354600fa2c77f39d7816301f8bae4ab62cb8eb0eb7b681648207f472f20fc` |
| 16 | `theorem` | [toDegLex_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/todeglex-add--ac4e0e00ebaee67bc540cbf3.md) | 65 | `result-track:ac4e0e00ebaee67bc540cbf3389f41745244ce1e2eee1636ae470e7a30539e3c` |
| 17 | `theorem` | [ofDegLex_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/ofdeglex-add--1ca23dc98815ca73b2499672.md) | 68 | `result-track:1ca23dc98815ca73b2499672481847d2793a3ee53b7bc02feb509802c83d3272` |
| 18 | `def` | [DegLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/deglex--c003bf22db649b21f8c6209e.md) | 77 | `declaration-track:c003bf22db649b21f8c6209e062ff4322e402f51ca4b52a07bfd34dcd56ba2fb` |
| 19 | `theorem` | [degLex_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/deglex-def--d9f127ba8ef601b074c8e5b2.md) | 81 | `result-track:d9f127ba8ef601b074c8e5b212e044e95100238fb26cc5dbe7399c91b2d78630` |
| 20 | `theorem` | [wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/wellfounded--257d00d08cf2d24c8794fda4.md) | 87 | `result-track:257d00d08cf2d24c8794fda42afa31ad72f388392673f1e29a9974fc4ddd3ae5` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/instance--cd6984c18b2ae4ffeedf99b1.md) | 97 | `declaration-track:cd6984c18b2ae4ffeedf99b15611629f82744323b64faf22dca4d5d0844a7c1e` |
| 22 | `theorem` | [lt_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/lt-def--cd3b3cf3781d7510e55bc5dd.md) | 100 | `result-track:cd3b3cf3781d7510e55bc5ddf88c598e4d33d549191ad9c846145e4278adb5b3` |
| 23 | `theorem` | [lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/lt-iff--604ee9834b304b2168ee9a81.md) | 105 | `result-track:604ee9834b304b2168ee9a8113b59c23cbcd1faaa4a58993518c70936b1361d0` |
| 24 | `instance` | [isStrictOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/isstrictorder--a2abb2a381be330d9a3eefd7.md) | 112 | `declaration-track:a2abb2a381be330d9a3eefd707a9c8126beaa329ad6b355549b6d110cba5e1f6` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/instance--1e5662876fead1f20720b296.md) | 126 | `declaration-track:1e5662876fead1f20720b29641f2dcf8c76f30c818c33482b5f0eb075df8adcf` |
| 26 | `theorem` | [le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/le-iff--d433a622bfd7421062d731ac.md) | 131 | `result-track:d433a622bfd7421062d731ace2b54e9e3ef2dcc20e38d48a32d83755caa483d4` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/instance--b72354abaf3c885bd5447730.md) | 141 | `declaration-track:b72354abaf3c885bd544773067dcfe61c5d44d620f3084f6e66f34925a7c09f9` |
| 28 | `theorem` | [single_strictAnti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/single-strictanti--2d6adadad2f0c07d332498b8.md) | 150 | `result-track:2d6adadad2f0c07d332498b819f5f75b408e37a32ffb746767e2be053621ebf0` |
| 29 | `theorem` | [single_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/single-antitone--d215e8f6c612a49935379096.md) | 155 | `result-track:d215e8f6c612a49935379096bc6364beed68f063099795499e0704811b51d49e` |
| 30 | `theorem` | [single_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/single-lt-iff--fbce8117489cd96815058cac.md) | 158 | `result-track:fbce8117489cd96815058cac9fc4276adf00bbeddb579f7644935943df25d8c5` |
| 31 | `theorem` | [single_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/single-le-iff--6275f3035921cf15edbdb34d.md) | 162 | `result-track:6275f3035921cf15edbdb34d38b6d837aefa359b4a8403ae49107aa2d1a8e182` |
| 32 | `theorem` | [monotone_degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/monotone-degree--950b1baf833ede75a744e137.md) | 166 | `result-track:950b1baf833ede75a744e1376282730c7bd52af74ae4d18e3b4cf801df8e92e6` |
| 33 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/orderbot--412d07d3a3419b50dcd7c2d5.md) | 174 | `declaration-track:412d07d3a3419b50dcd7c2d5fd67f24438e56e535c688a075ffc2cde70d60d5a` |
| 34 | `instance` | [wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/wellfoundedlt--131c8b77dae1aa1300ac8a07.md) | 183 | `declaration-track:131c8b77dae1aa1300ac8a07ff42e5f41e0f8aa6e362034a7a18ecf1275a27d5` |
| 35 | `def` | [degLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/deglex--5dc49e5f868590c5d92660c6.md) | 198 | `declaration-track:5dc49e5f868590c5d92660c6cb546a277a82cfc6f3f8321b115e8bb70a65718a` |
| 36 | `theorem` | [degLex_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/deglex-le-iff--dc270401ddd2bf3d551e3e05.md) | 210 | `result-track:dc270401ddd2bf3d551e3e059598a5e947d1c47c6ca229b5ffb4d7fc331d306a` |
| 37 | `theorem` | [degLex_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/deglex-lt-iff--57271a3e65f58aaafdb8e114.md) | 214 | `result-track:57271a3e65f58aaafdb8e114cfd5d6dd66f044b53a984fdd4dadb33f38d94abc` |
| 38 | `theorem` | [degLex_single_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/deglex-single-le-iff--f77d31f036fdaa502174a129.md) | 218 | `result-track:f77d31f036fdaa502174a1297765ac8630ea1fb5cfb81a4a1e816447af0851a2` |
| 39 | `theorem` | [degLex_single_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/deglex-single-lt-iff--89e178d5e6eab6a8b416ccf8.md) | 222 | `result-track:89e178d5e6eab6a8b416ccf89fec4dfce5c43997de5e0f816572f3f7a7854512` |
| 40 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/example--a8d2227112b8505047a76f57.md) | 233 | `declaration-track:a8d2227112b8505047a76f577f91fb46e2927ff3612bd0028f469d3e42931b3d` |
| 41 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/example--3bf8da0049f443332682962b.md) | 238 | `declaration-track:3bf8da0049f443332682962b17503c9cbc0fc984dafc076d7ce451fbedca1a7f` |
| 42 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/declarations/example--249066717a452045c131c642.md) | 245 | `declaration-track:249066717a452045c131c6421ed473dd2b78b40199a2625545b1d66e98eb345b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
