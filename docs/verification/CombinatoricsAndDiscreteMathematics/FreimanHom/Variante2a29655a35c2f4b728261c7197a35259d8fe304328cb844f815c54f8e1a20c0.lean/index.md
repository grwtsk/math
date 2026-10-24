# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FreimanHom.Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cb906e0fa03f924d0eea354f33a3a4aed81348e",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cb906e0fa03f924d0eea354f33a3a4aed81348e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAddFreimanHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/isaddfreimanhom--d9ceb0f4711f8f5c8627931e.md) | 88 | `declaration-track:d9ceb0f4711f8f5c8627931ef49bb373cfa631ae111125614a345070dac4a2fd` |
| 2 | `structure` | [IsMulFreimanHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom--35a2a3f444cd801c7dbffcbb.md) | 99 | `declaration-track:35a2a3f444cd801c7dbffcbbba2d2b3b0532e9723245f0fa9405e09bab73cb9f` |
| 3 | `structure` | [IsAddFreimanIso](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/isaddfreimaniso--ac4e916fb689d3c2ebabe13d.md) | 108 | `declaration-track:ac4e916fb689d3c2ebabe13db1c619c4c1e3c00640997b97ea583ffde496bb6a` |
| 4 | `structure` | [IsMulFreimanIso](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimaniso--69a935b275bde301a3509c05.md) | 119 | `declaration-track:69a935b275bde301a3509c0587b0b516cb4fcf28dcfb6495d090a5ffef40d437` |
| 5 | `lemma` | [IsMulFreimanIso.isMulFreimanHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimaniso-ismulfreimanhom--28b9a2c8a20ffc2da0daf903.md) | 127 | `result-track:28b9a2c8a20ffc2da0daf903fa088f2743aa7b38d1930c3087e1d6056f3d6d06` |
| 6 | `lemma` | [IsMulFreimanHom.congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-congr--b33d89bf18d22fcc218202d6.md) | 131 | `result-track:b33d89bf18d22fcc218202d6542a3dc3a4c93a43f5afe79fa58f415abd33a669` |
| 7 | `lemma` | [IsMulFreimanIso.congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimaniso-congr--487e2772bc879befd6c3e0da.md) | 138 | `result-track:487e2772bc879befd6c3e0dafe6d2d2efda1e76234ee09669c6e827dc6a53b00` |
| 8 | `lemma` | [IsMulFreimanIso.symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimaniso-symm--0a10ce595c9226e2b7f75767.md) | 154 | `result-track:0a10ce595c9226e2b7f757677938d949c04dbb54e67b7ef9e45eced52f3c2f0d` |
| 9 | `lemma` | [IsMulFreimanHom.to_isMulFreimanIso](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-to-ismulfreimaniso--ce6f5647692f51dcd742020e.md) | 172 | `result-track:ce6f5647692f51dcd742020e2297f200fcfd690af7e244cdde848e60dcdc5aa6` |
| 10 | `lemma` | [IsMulFreimanIso.invFunOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimaniso-invfunon--661822bd6bd04f14f22fad09.md) | 190 | `result-track:661822bd6bd04f14f22fad093c9f3b54b34a2c7be934c304231cab90754f6838` |
| 11 | `lemma` | [IsMulFreimanHom.prod_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-prod-apply--82f25bc62cc417fb44279c90.md) | 197 | `result-track:82f25bc62cc417fb44279c902cde4fc8d4ea04202e8de9f2bea6c357e1de7f5e` |
| 12 | `lemma` | [IsMulFreimanHom.mul_eq_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-mul-eq-mul--7f55788c44e7a200941e321c.md) | 204 | `result-track:7f55788c44e7a200941e321c81431de3912dd06270d55c8a606d15b7e6f80664` |
| 13 | `lemma` | [IsMulFreimanIso.mul_eq_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimaniso-mul-eq-mul--dea72b453eceb79e8e1afc4e.md) | 211 | `result-track:dea72b453eceb79e8e1afc4ee068a906200981cfa18a667314c2d054ff0ccef4` |
| 14 | `lemma` | [isMulFreimanHom_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-two--75df4e020698514d29f85ceb.md) | 219 | `result-track:75df4e020698514d29f85cebbb5ab409e004755080fa51533df99e1b6a51f296` |
| 15 | `lemma` | [isMulFreimanIso_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimaniso-two--e10ea04b1c2b1e6c8c2dab03.md) | 227 | `result-track:e10ea04b1c2b1e6c8c2dab03426dd2b99c6726332ca473d96e54c18a00ed0d12` |
| 16 | `lemma` | [isMulFreimanHom_id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-id--2666080a7c26e2a9ed514d17.md) | 233 | `result-track:2666080a7c26e2a9ed514d17a1cf72f71f6af2022968ffb48b93a6a6e1a1a754` |
| 17 | `lemma` | [isMulFreimanIso_id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimaniso-id--84e904f8b6ee96b0a6de18ce.md) | 237 | `result-track:84e904f8b6ee96b0a6de18ce9a269f9ce62251d68ace71fe0fc077c0b2ebcf6f` |
| 18 | `lemma` | [IsMulFreimanHom.comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-comp--9b8d2489d9d27882cfee4bcd.md) | 241 | `result-track:9b8d2489d9d27882cfee4bcd5315515ee1f80ba4531ea313768824e2115a1f78` |
| 19 | `lemma` | [IsMulFreimanIso.comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimaniso-comp--afb366829dbd8d81eca265cf.md) | 251 | `result-track:afb366829dbd8d81eca265cfec7e108ed391446818b2646f994d8d2f85b1979a` |
| 20 | `lemma` | [IsMulFreimanHom.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-subset--ee597a442e208634ebed4452.md) | 261 | `result-track:ee597a442e208634ebed44521ddc75dbe8e881396e70dcbf16bcd86c7c46757b` |
| 21 | `lemma` | [IsMulFreimanHom.superset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-superset--74fd37d7b13ec33a81064355.md) | 266 | `result-track:74fd37d7b13ec33a81064355799ac4ca19577ec57c35ba40403dec4183cca99f` |
| 22 | `lemma` | [IsMulFreimanIso.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimaniso-subset--18746a0143229fcfa6473476.md) | 269 | `result-track:18746a0143229fcfa6473476dbed9713e3e52920dcf391aaf96922a2a933be3b` |
| 23 | `lemma` | [isMulFreimanHom_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-const--7620a64d0cf4c8173808f2cc.md) | 276 | `result-track:7620a64d0cf4c8173808f2ccd1c619bba291642aa528d53af286b4fdbac38d2c` |
| 24 | `lemma` | [isMulFreimanHom_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-zero-iff--88a772efb5e6953bcdeb71cb.md) | 281 | `result-track:88a772efb5e6953bcdeb71cbade5a5988c5d135ca0c5044796f29f40c01d9cb3` |
| 25 | `lemma` | [isMulFreimanIso_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimaniso-zero-iff--1d3b2bc4bb462593ae2d891b.md) | 285 | `result-track:1d3b2bc4bb462593ae2d891b2f29d81315ef690d3ed89d2b3ad9da104f669e32` |
| 26 | `lemma` | [isMulFreimanHom_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-one-iff--0b47d023dd99f636cdffd800.md) | 289 | `result-track:0b47d023dd99f636cdffd800564aeff4dcc2d550109624af9a7f9f422cef27a3` |
| 27 | `lemma` | [isMulFreimanIso_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimaniso-one-iff--f002247ef88bb72bc158a2fa.md) | 293 | `result-track:f002247ef88bb72bc158a2fa3877bde2b6c7c29180b24dcd146fdc7c57e4d343` |
| 28 | `lemma` | [isMulFreimanHom_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-empty--3f5e02470323b2a0bf1e82da.md) | 297 | `result-track:3f5e02470323b2a0bf1e82daca9fe06d6eb323b380b8f8d522f7c3f74d9e6aeb` |
| 29 | `lemma` | [isMulFreimanIso_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimaniso-empty--c7e0639de7be5e07853d7d64.md) | 302 | `result-track:c7e0639de7be5e07853d7d6473d66f06f0edbb829f07f86703ed393a94d3b1ac` |
| 30 | `lemma` | [IsMulFreimanHom.mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-mul--0c0738d9f66c729f3d7706c7.md) | 307 | `result-track:0c0738d9f66c729f3d7706c7ff2c262387c89626a0d0ece5c5b7f07dc1ffb005` |
| 31 | `lemma` | [MulHomClass.isMulFreimanHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/mulhomclass-ismulfreimanhom--3510af660661c7ce651f5401.md) | 314 | `result-track:3510af660661c7ce651f5401a75e658fe1cafa8f5cf1225c322fdfb230882537` |
| 32 | `lemma` | [MulEquivClass.isMulFreimanIso](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/mulequivclass-ismulfreimaniso--a898b967fcab1cb5564b84c7.md) | 328 | `result-track:a898b967fcab1cb5564b84c77071b2ef3eaaabf72bc3ac9a7e92f1b13b6ab1c6` |
| 33 | `lemma` | [IsMulFreimanHom.subtypeVal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-subtypeval--e825a8ff67f3ad360ca83427.md) | 335 | `result-track:e825a8ff67f3ad360ca834272397a537e3156851aeedc4e43f88a6b6e60035fc` |
| 34 | `lemma` | [isMulFreimanHom_antitone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-antitone--f34be487cdbd45b7a25800fb.md) | 345 | `result-track:f34be487cdbd45b7a25800fb563aaa1429decea2fa6c1998c5ed2fb55ba3d162` |
| 35 | `lemma` | [IsMulFreimanHom.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-mono--7040caedb8425af2c24dd2f2.md) | 356 | `result-track:7040caedb8425af2c24dd2f289df665ffe9c7dc6842570ac151c9809f0972201` |
| 36 | `lemma` | [IsMulFreimanIso.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimaniso-mono--a61663e45d1fb96cad15810d.md) | 365 | `result-track:a61663e45d1fb96cad15810ddf1c0588b43157929e66fc0364114b62670632e5` |
| 37 | `lemma` | [IsMulFreimanHom.inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-inv--f714b2c4954dc26061f3f3a6.md) | 376 | `result-track:f714b2c4954dc26061f3f3a69e479e570265136f54a5f4eff7651b9fb878e2f0` |
| 38 | `lemma` | [IsMulFreimanHom.div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-div--d1c12a852205e5958b2ebe50.md) | 381 | `result-track:d1c12a852205e5958b2ebe5047defb15c415325ad562070172e874be7c7dfb96` |
| 39 | `lemma` | [IsMulFreimanHom.fst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-fst--8e34c63eba0ecb7e42ab4b1c.md) | 394 | `result-track:8e34c63eba0ecb7e42ab4b1c63436bf2626f8b66509e86e55d172a0c8cef11b7` |
| 40 | `lemma` | [IsMulFreimanHom.snd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-snd--e9244581b251664ec3ee2a0d.md) | 399 | `result-track:e9244581b251664ec3ee2a0d1c9d7e0e63565d5c7425b3f9cc0e47a4e590f94e` |
| 41 | `lemma` | [IsMulFreimanHom.prodMk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-prodmk--ce1f36376964f50c447c131e.md) | 409 | `result-track:ce1f36376964f50c447c131e88ef2fa999663a38c44974e319b696453d006b45` |
| 42 | `lemma` | [IsMulFreimanHom.prodMap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimanhom-prodmap--789fef462a83bb2b88541fa1.md) | 424 | `result-track:789fef462a83bb2b88541fa199f94015cd6bcf96919cf54d00a01ee068fa1447` |
| 43 | `lemma` | [IsMulFreimanIso.prodMap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/ismulfreimaniso-prodmap--a9ecf697b08e760d7ada5c6c.md) | 429 | `result-track:a9ecf697b08e760d7ada5c6cfa22855de024ed2b586669a44c0c67c82214a559` |
| 44 | `lemma` | [aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/aux--0d97186e07e40cf03ae3384f.md) | 444 | `result-track:0d97186e07e40cf03ae3384fe457e704e164e1e303c368655bb2b24bbd656953` |
| 45 | `lemma` | [isAddFreimanIso_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/isaddfreimaniso-iic--54c5883932ecff3eb7226bc9.md) | 451 | `result-track:54c5883932ecff3eb7226bc910a2cda5f93483a067a8340a613fcd9a056a6bf8` |
| 46 | `lemma` | [isAddFreimanIso_Iio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/declarations/isaddfreimaniso-iio--79617b06f601315bba0f1421.md) | 471 | `result-track:79617b06f601315bba0f1421476dbc8d70cacb7b3c4ebb98fe4af8ffb401f5ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
