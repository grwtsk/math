# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Tuple.Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e365dcfa4cc6b85f8d5b12a58bc90b1647ad10f5",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e365dcfa4cc6b85f8d5b12a58bc90b1647ad10f5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean.json)

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
| 1 | `lemma` | [pi_lex_lt_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/pi-lex-lt-cons-cons--c7cdcc97f52fc3c3bd390398.md) | 36 | `result-track:c7cdcc97f52fc3c3bd39039818b805a9cfbdb6ba740c227b286a6c33a967bbf5` |
| 2 | `lemma` | [insertNth_mem_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/insertnth-mem-icc--1e81da76f19ea2661ad9f3b7.md) | 45 | `result-track:1e81da76f19ea2661ad9f3b7b6f1e3589ec1297af502b64904c03e91bc91133e` |
| 3 | `lemma` | [preimage_insertNth_Icc_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/preimage-insertnth-icc-of-mem--4dbac4eb8f779002ebbc3f35.md) | 51 | `result-track:4dbac4eb8f779002ebbc3f3532e84a4465c4049ee0951a895d335362153e740e` |
| 4 | `lemma` | [preimage_insertNth_Icc_of_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/preimage-insertnth-icc-of-notmem--1cbafefb30d2ac5f8fae1dfb.md) | 56 | `result-track:1cbafefb30d2ac5f8fae1dfb186ea71360ee62945384cf7594e5888ae25cee76` |
| 5 | `lemma` | [liftFun_vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/liftfun-veccons--b3e771727ad64d855b926749.md) | 68 | `result-track:b3e771727ad64d855b926749697d97d81b76060b17504839a94edae67c0d1edc` |
| 6 | `lemma` | [Fin.liftFun_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/fin-liftfun-cons--5b9a01f0bfb283278ff59e24.md) | 74 | `result-track:5b9a01f0bfb283278ff59e245bbbd3e078eaae85780fbd1aabbb843a4933d599` |
| 7 | `lemma` | [Fin.strictMono_insertNth_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/fin-strictmono-insertnth-iff--e3e58dcb538530297e90dd0b.md) | 86 | `result-track:e3e58dcb538530297e90dd0b70d9b69eb395452e020f8e9873d3940170788571` |
| 8 | `lemma` | [Fin.strictMono_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/fin-strictmono-cons--52cbec9a27d05de6e602321b.md) | 106 | `result-track:52cbec9a27d05de6e602321b530101ac6ecfe5f74bee59da7db7aacd47691734` |
| 9 | `lemma` | [Fin.strictMono_cons_zero_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/fin-strictmono-cons-zero-succ--fb693e4a4906c2833f4b3109.md) | 110 | `result-track:fb693e4a4906c2833f4b31093395f67d871fe812bd76f9812d5c0afa3c6e32e7` |
| 10 | `lemma` | [strictMono_vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/strictmono-veccons--56117bd0934d7cdc3281c1e0.md) | 121 | `result-track:56117bd0934d7cdc3281c1e0fafbf73d96b8e77a38afb83655565c61b6ee9ff3` |
| 11 | `lemma` | [monotone_vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/monotone-veccons--f1375d13ec6878a054a72328.md) | 125 | `result-track:f1375d13ec6878a054a72328f52b4aecb1c2e57f6a6056688c714e934d12f76e` |
| 12 | `lemma` | [monotone_vecEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/monotone-vecempty--29987f89876f45eaff8f043d.md) | 128 | `result-track:29987f89876f45eaff8f043dbf38c2e38307ab2ffc1892ce12228b5ff723d3fc` |
| 13 | `lemma` | [strictMono_vecEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/strictmono-vecempty--791d3739dcc88353475f0ce9.md) | 131 | `result-track:791d3739dcc88353475f0ce9af2e28961478e7f94c4b335d1741bb6d0852f4f2` |
| 14 | `lemma` | [strictAnti_vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/strictanti-veccons--c8f97dd616b8e8c317c50ace.md) | 134 | `result-track:c8f97dd616b8e8c317c50acecbd911645c5bb3d1d3915104ad7be4379fb19bc9` |
| 15 | `lemma` | [antitone_vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/antitone-veccons--0023df4ba7a61ea9ae1c7a8f.md) | 137 | `result-track:0023df4ba7a61ea9ae1c7a8fafc4d86135a481aefa8e3254836e006bb29d7fa3` |
| 16 | `lemma` | [antitone_vecEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/antitone-vecempty--170408a439002d108ffa166a.md) | 140 | `result-track:170408a439002d108ffa166a07fa7edfbc80d085558a924cbf7e6163e29c25a6` |
| 17 | `lemma` | [strictAnti_vecEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/strictanti-vecempty--2de1a7e2c642107d1c3d21e0.md) | 143 | `result-track:2de1a7e2c642107d1c3d21e0f1d878b6a438b59c14bddea205e0995c11d39819` |
| 18 | `lemma` | [StrictMono.vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/strictmono-veccons--27c11ccc4cfb7252a105e1b3.md) | 146 | `result-track:27c11ccc4cfb7252a105e1b3433d03d67cfa6e554bf4049e227aa433fe6d537a` |
| 19 | `lemma` | [StrictMono.removeNth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/strictmono-removenth--1e31b8af9efbe520b793dc97.md) | 149 | `result-track:1e31b8af9efbe520b793dc9708aed866ec10e675f69ee48eef9d058c5a8d0a99` |
| 20 | `lemma` | [StrictAnti.vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/strictanti-veccons--c61b93fef7a02e6658c7d175.md) | 152 | `result-track:c61b93fef7a02e6658c7d1751a266e181618dc2e5ec2f19bf4299198e17f6871` |
| 21 | `lemma` | [Monotone.vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/monotone-veccons--736e9781b007c1247bd57bb1.md) | 155 | `result-track:736e9781b007c1247bd57bb1f0ddee7d5cde0b50ba3d769814dd07c09c3b75ed` |
| 22 | `lemma` | [Antitone.vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/antitone-veccons--5f0a0b4aa45f7be558b22bf0.md) | 158 | `result-track:5f0a0b4aa45f7be558b22bf07cb4820a21e486a0603d5e347c423e902b9eb4bf` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/example--82d73d07c43993c8b57ad161.md) | 161 | `declaration-track:82d73d07c43993c8b57ad161cc343fafb64b110e85242996ca7019b34cc077f0` |
| 24 | `def` | [OrderIso.piFinTwoIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/orderiso-pifintwoiso--ffa0a3924da09c107b9435be.md) | 168 | `declaration-track:ffa0a3924da09c107b9435beb34692f9bf92e40b639aabd7d02a1ee3c454ba38` |
| 25 | `def` | [OrderIso.finTwoArrowIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/orderiso-fintwoarrowiso--197477064a15f8d33fa49a99.md) | 174 | `declaration-track:197477064a15f8d33fa49a99131bbe7f69e942d491c7968ca3dbde4c60b4ee46` |
| 26 | `def` | [consOrderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/consorderiso--2e9f1f99eb3a3d910b808550.md) | 184 | `declaration-track:2e9f1f99eb3a3d910b80855023f78b9bb01e98920e340539c65ad4f9ed1fd52a` |
| 27 | `def` | [snocOrderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/snocorderiso--7c7951e3e48f7d0ac43d96a0.md) | 194 | `declaration-track:7c7951e3e48f7d0ac43d96a0058d2bf34cafe45e88786973b4f7ac7b4be673d5` |
| 28 | `def` | [insertNthOrderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/insertnthorderiso--dc2c52808196b936034aa9cc.md) | 204 | `declaration-track:dc2c52808196b936034aa9ccc5fe2cc956668c10d206549b2531fb40d70e5f60` |
| 29 | `lemma` | [insertNthOrderIso_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/insertnthorderiso-zero--d01fda977ffeb9ecb86d6064.md) | 210 | `result-track:d01fda977ffeb9ecb86d60649f117df862ea4897a671ba6fb59d389c4a6225fa` |
| 30 | `lemma` | [insertNthOrderIso_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/insertnthorderiso-last--f8096f48723cca49ce4e6a79.md) | 215 | `result-track:f8096f48723cca49ce4e6a798b40b78d851c62f88d6b00bc55b63b35b5c7e730` |
| 31 | `def` | [finSuccAboveOrderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/finsuccaboveorderiso--bcf2859a3b49331d33cd39fd.md) | 221 | `declaration-track:bcf2859a3b49331d33cd39fd5b84f34c37d2ce68dcce5f765cc2e2898794d02e` |
| 32 | `lemma` | [finSuccAboveOrderIso_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/finsuccaboveorderiso-apply--b515e6c69d52bce3f13157a9.md) | 225 | `result-track:b515e6c69d52bce3f13157a98e6cf9aaa4a1f25e66cb8d88e0126ec7039ebd07` |
| 33 | `lemma` | [finSuccAboveOrderIso_symm_apply_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/finsuccaboveorderiso-symm-apply-last--6ba7e5ee6fc607e8b3d360ec.md) | 228 | `result-track:6ba7e5ee6fc607e8b3d360ec4f756a26d92c9883cf3d1f68f12dce1d6045204c` |
| 34 | `lemma` | [finSuccAboveOrderIso_symm_apply_ne_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/finsuccaboveorderiso-symm-apply-ne-last--d84df2da065c89208c3d44bc.md) | 233 | `result-track:d84df2da065c89208c3d44bcad4094738bc480f968b54546797cf76a28acc35b` |
| 35 | `def` | [Fin.castLEOrderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variant54a50227e42264e7ba8868fffb9a6cf3bd5382b6584a26abb074da93ab641c9e.lean/declarations/fin-castleorderiso--ad3ea39982473ce1fa76c2f7.md) | 242 | `declaration-track:ad3ea39982473ce1fa76c2f74480e2b41c343872a6c1d375ac066ac06746483b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
