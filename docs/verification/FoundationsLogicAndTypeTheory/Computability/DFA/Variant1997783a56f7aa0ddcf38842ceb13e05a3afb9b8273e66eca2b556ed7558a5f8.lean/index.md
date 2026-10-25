# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.DFA.Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99a7648a0831527181ca64f13ca2d204feaf634a",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99a7648a0831527181ca64f13ca2d204feaf634a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean.json)

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
| 1 | `structure` | [DFA](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/dfa--fbfee65bacd792954df8e4ca.md) | 66 | `declaration-track:fbfee65bacd792954df8e4cabd38faf409d24457b21a1b657d6f780df88a0a4b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/instance--d561866732b1df0f7b4305b2.md) | 78 | `declaration-track:d561866732b1df0f7b4305b233eed13be482afdab8616e4c52d9288e0831c0b4` |
| 3 | `def` | [evalFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/evalfrom--9d8186ff75786de48873ca01.md) | 82 | `declaration-track:9d8186ff75786de48873ca0155bdb3540dd7ecce82c969787f5ed9af270dda97` |
| 4 | `theorem` | [evalFrom_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/evalfrom-nil--3c5c8d71734a314554e91e43.md) | 86 | `result-track:3c5c8d71734a314554e91e436d7df680b7850ea5569b9fc3e575ca69eb82ae25` |
| 5 | `theorem` | [evalFrom_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/evalfrom-cons--5eceb49a1eef8c96a81ee41f.md) | 90 | `result-track:5eceb49a1eef8c96a81ee41f5c70339deb948959293f1c5131c65ea4a96f72e5` |
| 6 | `theorem` | [evalFrom_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/evalfrom-singleton--39ad86b75f8044129d08e156.md) | 95 | `result-track:39ad86b75f8044129d08e1562814835d97ba336644c2063986e7c5c843e433d2` |
| 7 | `theorem` | [evalFrom_append_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/evalfrom-append-singleton--c17bf7b97a2ced5faadfcb5c.md) | 99 | `result-track:c17bf7b97a2ced5faadfcb5c416c090060e5e56b8f45941b315caef005d1c13a` |
| 8 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/eval--4eed8ccec32e3e6de194f092.md) | 104 | `declaration-track:4eed8ccec32e3e6de194f092a2305685ee2afe66ffdc753ee1a5465af3f2c6f7` |
| 9 | `theorem` | [eval_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/eval-nil--a6ca267193fc0074b74b5eed.md) | 108 | `result-track:a6ca267193fc0074b74b5eed5d28010389668ee376cf4ce6f706e89fa4efca9f` |
| 10 | `theorem` | [eval_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/eval-singleton--bfd8f5b0fa76b5752c3c319a.md) | 112 | `result-track:bfd8f5b0fa76b5752c3c319a77859a5521e7cbfa5a41bc9e27016a8f8a26ffe7` |
| 11 | `theorem` | [eval_append_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/eval-append-singleton--6bc1a62a7adf67b6b20af856.md) | 116 | `result-track:6bc1a62a7adf67b6b20af8560133735916921351d5ee1c149e25e48595f26395` |
| 12 | `theorem` | [evalFrom_of_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/evalfrom-of-append--53f789eda24acd126e279abc.md) | 119 | `result-track:53f789eda24acd126e279abc8c65259b2f0705cbcb88ec0b76c299a05081dda6` |
| 13 | `def` | [acceptsFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/acceptsfrom--b7461836dae66d65dbb520b3.md) | 126 | `declaration-track:b7461836dae66d65dbb520b31e49879f18a1f014f5294870b92663918f908700` |
| 14 | `theorem` | [mem_acceptsFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/mem-acceptsfrom--fc0f8b1d57f498e7bd13b3ea.md) | 128 | `result-track:fc0f8b1d57f498e7bd13b3ea9abfe762b32b2b7a1e0ad32a554198e67413da56` |
| 15 | `def` | [accepts](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/accepts--5cf7e659bd10c07e78526298.md) | 132 | `declaration-track:5cf7e659bd10c07e78526298f87febae5bb817c8c1bbf3313500b93f236284a2` |
| 16 | `theorem` | [mem_accepts](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/mem-accepts--74505011b79930ecf10da7f5.md) | 134 | `result-track:74505011b79930ecf10da7f5565a547259c372875fd65126411d16d39223aaee` |
| 17 | `theorem` | [evalFrom_split](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/evalfrom-split--c14e32b5ad6b05a9da274595.md) | 136 | `result-track:c14e32b5ad6b05a9da274595134a2ce0fd0b76357a80583b18ef8fcafb24f833` |
| 18 | `theorem` | [evalFrom_of_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/evalfrom-of-pow--b79fb354ac42968736429be2.md) | 166 | `result-track:b79fb354ac42968736429be2f7f40a9071c3830ed5c7457dba3e274b7a1854f0` |
| 19 | `theorem` | [pumping_lemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/pumping-lemma--2040abda362abdca729eac36.md) | 181 | `result-track:2040abda362abdca729eac360c646b6fc3a3a253b23ecb5eed294650a2c4e965` |
| 20 | `def` | [comap](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/comap--51aee23ad6d0be1e36330a87.md) | 207 | `declaration-track:51aee23ad6d0be1e36330a8762b7a78bd05424ab9683397f9834f6dcaf9d0923` |
| 21 | `theorem` | [comap_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/comap-id--3905dccf3a3d7f5ee971a356.md) | 213 | `result-track:3905dccf3a3d7f5ee971a35629429f5ef3a7284133cf82aee2e7a5c1c0e9aacf` |
| 22 | `theorem` | [evalFrom_comap](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/evalfrom-comap--5c0fcd9dbe850e790c1c28ca.md) | 216 | `result-track:5c0fcd9dbe850e790c1c28cab9d267b9a02a068f96a3a01ff9c23552fef0709c` |
| 23 | `theorem` | [eval_comap](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/eval-comap--8d54770a97200af03fcfc5db.md) | 223 | `result-track:8d54770a97200af03fcfc5db8fa3427ab43d37a5f7243ca2c06a107312966513` |
| 24 | `theorem` | [accepts_comap](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/accepts-comap--654e8161b9d181463decbe55.md) | 228 | `result-track:654e8161b9d181463decbe552e3dd9da9596b991615a22adb5414657a6691d47` |
| 25 | `def` | [reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/reindex--a65d93aa70aed02577757130.md) | 237 | `declaration-track:a65d93aa70aed02577757130ba6ccebdd7d8ecabe31faf0fcc0d20487d1da941` |
| 26 | `theorem` | [reindex_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/reindex-refl--77746de13c6408b749f7328d.md) | 252 | `result-track:77746de13c6408b749f7328d1680beaf4e139ae8091c0019c67a3d8e317e7090` |
| 27 | `theorem` | [symm_reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/symm-reindex--89bd421c7040f50fcb8adbdd.md) | 255 | `result-track:89bd421c7040f50fcb8adbddbf8017554919110122ddbe05b93d1b3f0048d737` |
| 28 | `theorem` | [evalFrom_reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/evalfrom-reindex--6966ff3cec5510c446a072f0.md) | 258 | `result-track:6966ff3cec5510c446a072f023467c5f8c835a7cc2fc48d3f550081082c710e6` |
| 29 | `theorem` | [eval_reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/eval-reindex--b9fbad762a311f7924ebbf10.md) | 265 | `result-track:b9fbad762a311f7924ebbf105dd6a9086f0197b63f6e44cf6a734c39c6886210` |
| 30 | `theorem` | [accepts_reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/accepts-reindex--65ba3ca5c313738b99d058b7.md) | 269 | `result-track:65ba3ca5c313738b99d058b7aa054f3f9a92bbdc88b2bff04190d3d44acfbc22` |
| 31 | `theorem` | [comap_reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/comap-reindex--d19f3bdd7928e70bcfffae41.md) | 273 | `result-track:d19f3bdd7928e70bcfffae410acd747893c50654bb2c28dfd0d34edd58188d77` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/instance--65a4ed1b74830eb221d2510d.md) | 283 | `declaration-track:65a4ed1b74830eb221d2510dd533bbae23d066cc7924d57ac2d6f83e7187dfc7` |
| 33 | `theorem` | [compl_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/compl-def--266cfebc7774fae195c32a87.md) | 286 | `result-track:266cfebc7774fae195c32a87374d59be3080ce17eda28028cf8a21ea030482ca` |
| 34 | `theorem` | [acceptsFrom_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/acceptsfrom-compl--c08e7119767878bd99a1affb.md) | 290 | `result-track:c08e7119767878bd99a1affb63da59da35483eb16f925b4645e7f7567e96c0d4` |
| 35 | `theorem` | [accepts_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/accepts-compl--486cae0ea15403d2a7064e5b.md) | 294 | `result-track:486cae0ea15403d2a7064e5b19d71c77945bde7fea7bed0f9ca31e6c799ffa5c` |
| 36 | `def` | [union](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/union--fb358e4284924fb13d2f9413.md) | 305 | `declaration-track:fb358e4284924fb13d2f9413d741e64f39449f7f53685abf556906b2e859422d` |
| 37 | `theorem` | [acceptsFrom_union](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/acceptsfrom-union--6a5e261e98b5ad2f34175401.md) | 312 | `result-track:6a5e261e98b5ad2f34175401fc2efcd8c8ec8672df667c5bd28b71c23b9be27d` |
| 38 | `theorem` | [accepts_union](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/accepts-union--30cef1e5d02699b86995cda3.md) | 323 | `result-track:30cef1e5d02699b86995cda36763e1666d5a198fea5708ab05089059a1927784` |
| 39 | `def` | [inter](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/inter--4c5e5350446280178692924b.md) | 335 | `declaration-track:4c5e5350446280178692924be0732c263d2d77372e0fc9939a75da9ede137674` |
| 40 | `theorem` | [acceptsFrom_inter](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/acceptsfrom-inter--36ca261e5ea0cbcb0080e2f8.md) | 342 | `result-track:36ca261e5ea0cbcb0080e2f807a59cb6d3067a51eb122199a12eb35a205375ad` |
| 41 | `theorem` | [accepts_inter](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/accepts-inter--46b00f63d83816c1b650294d.md) | 352 | `result-track:46b00f63d83816c1b650294de349a83dd38b02975306ec59df66c596ce21af0a` |
| 42 | `def` | [IsRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/isregular--2b6c2e4a6ec78a90e5542125.md) | 362 | `declaration-track:2b6c2e4a6ec78a90e5542125f39eabcf1fad3b0c41e4cc2e7aa2965998800d0a` |
| 43 | `lemma` | [isRegular_iff.helper.](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/isregular-iff-helper--5c498553944b3dbb16c37c74.md) | 366 | `result-track:5c498553944b3dbb16c37c743adef91d1014da6d6c90c44394b22cf51b74d2df` |
| 44 | `theorem` | [isRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/isregular-iff--aed88afc235fecac0555ae1a.md) | 379 | `result-track:aed88afc235fecac0555ae1a02ddc5e458169ec6cff77df76c75c2fe3bf7aff8` |
| 45 | `theorem` | [IsRegular.compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/isregular-compl--ed9f42a8f5e9752b4fd50833.md) | 383 | `result-track:ed9f42a8f5e9752b4fd508335dee895a6f4858ab4989ebc2e2643c3cd7c93034` |
| 46 | `theorem` | [IsRegular.of_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/isregular-of-compl--78b1aa4ef5b2f533da0d67ba.md) | 387 | `result-track:78b1aa4ef5b2f533da0d67ba87f246a81477f08ef2f7dab195e3a9e22f0c8011` |
| 47 | `theorem` | [IsRegular_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/isregular-compl--a2babc40986a162c15140fa2.md) | 393 | `result-track:a2babc40986a162c15140fa2b7d3e02beb452f11f4fb3cce551b85521ed3d522` |
| 48 | `theorem` | [IsRegular.add](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/isregular-add--acff62d9f3b4cad86309cade.md) | 397 | `result-track:acff62d9f3b4cad86309cade08c3cc8a42c634c0ef18b42f6413c39dfc0d63fd` |
| 49 | `theorem` | [IsRegular.inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/declarations/isregular-inf--c53fc3bafbb3a5e04e073a12.md) | 404 | `result-track:c53fc3bafbb3a5e04e073a125ffcb9b8da1589a610c4e6defb36623dfe1617f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
