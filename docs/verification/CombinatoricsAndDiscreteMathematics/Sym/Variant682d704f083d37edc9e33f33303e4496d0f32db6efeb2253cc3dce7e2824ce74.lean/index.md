# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sym.Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcf7cb0cba1df56847a58d44e3060a56b8f99b51",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcf7cb0cba1df56847a58d44e3060a56b8f99b51`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Fold` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Vector` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Sym` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sym2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym2--47a65dc4f4c244346a141018.md) | 36 | `declaration-track:47a65dc4f4c244346a141018979534d93fa79fc5f0730edfa161f43dc9c808d9` |
| 2 | `theorem` | [mk_mem_sym2_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/mk-mem-sym2-iff--c387d0c9a3c308b69acadff9.md) | 41 | `result-track:c387d0c9a3c308b69acadff9f8838ce3ff236eb123ffaf54200ccd5e03e3455b` |
| 3 | `theorem` | [mem_sym2_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/mem-sym2-iff--d0f19f08eeabe327cfbee6e6.md) | 45 | `result-track:d0f19f08eeabe327cfbee6e609a27f2d641fc6e9e36aae386c8249a6b562e441` |
| 4 | `theorem` | [sym2_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym2-cons--52b516744f61adf22b5ead83.md) | 49 | `result-track:52b516744f61adf22b5ead832014963d4faa0bb503200692dc3a94ad4fadde79` |
| 5 | `theorem` | [sym2_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym2-insert--6ba584351e03ec30e34bd4db.md) | 54 | `result-track:6ba584351e03ec30e34bd4dbccbde47a3209ba56c514a0f08a0c4890a2514074` |
| 6 | `theorem` | [sym2_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym2-map--c029b7289a74a8265acc1934.md) | 61 | `result-track:c029b7289a74a8265acc193469677f7aba84440000e6594bba59b2ccab938fb1` |
| 7 | `theorem` | [sym2_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym2-image--aa06cfd6cb402b0d21af43ee.md) | 64 | `result-track:aa06cfd6cb402b0d21af43eef7473bbf74c4fd068d8b67c933184151264ebfb5` |
| 8 | `instance` | [_root_.Sym2.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/root-sym2-instfintype--5e64f84878dc03275d6300f3.md) | 70 | `declaration-track:5e64f84878dc03275d6300f3b47aa7c975a8ff96ed03a93bff4fa1de1a28e3b6` |
| 9 | `theorem` | [sym2_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym2-univ--89d26c8d4542d8e579f91854.md) | 76 | `result-track:89d26c8d4542d8e579f918545d54685720da08e2de2adbb3b6625fb74986a2ba` |
| 10 | `theorem` | [sym2_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym2-mono--74af2f35eef378a2875d6109.md) | 82 | `result-track:74af2f35eef378a2875d61094c501431788b845ebe7f85fc776a63aa19ee4bb7` |
| 11 | `theorem` | [monotone_sym2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/monotone-sym2--cd839d258c1df82568959795.md) | 87 | `result-track:cd839d258c1df825689597953649d27bdcc84e1631037c254ac69fa245780407` |
| 12 | `theorem` | [injective_sym2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/injective-sym2--d557e175dd56c4b78d641275.md) | 89 | `result-track:d557e175dd56c4b78d641275a5d07d459a8756baf908f7b48dcfe34944313cef` |
| 13 | `theorem` | [strictMono_sym2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/strictmono-sym2--ed84d2091a11f0c66934022d.md) | 94 | `result-track:ed84d2091a11f0c66934022d6c5dc299e14991d3a0eb299af880df45a5e8ce39` |
| 14 | `theorem` | [sym2_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym2-tofinset--1978fb8fe1531b37527281f2.md) | 97 | `result-track:1978fb8fe1531b37527281f2a733860807ceadbe9a8c5a4083dbbfce72a4312b` |
| 15 | `theorem` | [sym2_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym2-empty--50cce0485eb371f26c7f18ee.md) | 104 | `result-track:50cce0485eb371f26c7f18ee16fc9671847c270fbb9630eba9ba01da09443ea2` |
| 16 | `theorem` | [sym2_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym2-eq-empty--cdf41fca9cb00988dafed9df.md) | 107 | `result-track:cdf41fca9cb00988dafed9df5def211760d6d3a8e2301664915c593c3f2c87a8` |
| 17 | `theorem` | [sym2_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym2-nonempty--bf96b51a09bfdcf911b46e9f.md) | 111 | `result-track:bf96b51a09bfdcf911b46e9f87e6ffcc331ace3da7cc434db0c5e8533e501311` |
| 18 | `theorem` | [sym2_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym2-singleton--f4887b69068b562413476e85.md) | 119 | `result-track:f4887b69068b562413476e858859167ea25a643eaba9cd5039878ffe8be4be3d` |
| 19 | `theorem` | [card_sym2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/card-sym2--4f71e0a038de8465d5251dba.md) | 122 | `result-track:4f71e0a038de8465d5251dba2da80169e19ed56bdc9a4873555ec63b965399c0` |
| 20 | `theorem` | [sym2_eq_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym2-eq-image--95c087945efe62035269cadb.md) | 132 | `result-track:95c087945efe62035269cadbe5e6fee9353d2be6d481121208fd2e8fab52ae4f` |
| 21 | `theorem` | [isDiag_mk_of_mem_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/isdiag-mk-of-mem-diag--568316a5fba219dbbb5e36c1.md) | 145 | `result-track:568316a5fba219dbbb5e36c102d6a00521e7110eaaa9ccc06103383f776aee5c` |
| 22 | `theorem` | [not_isDiag_mk_of_mem_offDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/not-isdiag-mk-of-mem-offdiag--4c3586e75c8773c5b3b8f349.md) | 148 | `result-track:4c3586e75c8773c5b3b8f34977c96f3d459420885f7d9fd811a0d872ca27b101` |
| 23 | `theorem` | [diag_mem_sym2_mem_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/diag-mem-sym2-mem-iff--93146d86808ee2ce21174c7c.md) | 160 | `result-track:93146d86808ee2ce21174c7c9be35ce6da64ab943c6a4ba3d2e10a6be3aa2fe2` |
| 24 | `theorem` | [diag_mem_sym2_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/diag-mem-sym2-iff--9e18d62e5bb4966e62201996.md) | 164 | `result-track:9e18d62e5bb4966e62201996fd32d1d5bdf3c92da8769c52b2e9aee764ca7123` |
| 25 | `theorem` | [image_diag_union_image_offDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/image-diag-union-image-offdiag--a57e82d7484f3e6fd0a2f165.md) | 166 | `result-track:a57e82d7484f3e6fd0a2f165cde78a64561f2216bbea9e9b6cbc784e67a2e46d` |
| 26 | `def` | [sym](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym--c849cae5af95b345c5a0e93b.md) | 178 | `declaration-track:c849cae5af95b345c5a0e93bf7c66667648cefc985048cfc0567b928dd61eff6` |
| 27 | `theorem` | [sym_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym-zero--97e0f0de142c3ded36cde694.md) | 183 | `result-track:97e0f0de142c3ded36cde694971d17ffc7f6716778bf55239336f7f9d719a107` |
| 28 | `theorem` | [sym_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym-succ--1ec5a73d1f226d1d2208f2c1.md) | 186 | `result-track:1ec5a73d1f226d1d2208f2c1aafddccf5c2ba8297456f2110764c93bad9c2fb9` |
| 29 | `theorem` | [mem_sym_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/mem-sym-iff--4562d22df3966769683dabb7.md) | 189 | `result-track:4562d22df3966769683dabb71af54582f075bbfde5b73c555d8c806aa7ebced5` |
| 30 | `theorem` | [sym_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym-empty--bcaa389fdc221f62bca398b3.md) | 208 | `result-track:bcaa389fdc221f62bca398b3916cf7a636b647ce846856b8ec5d5e6bb723557f` |
| 31 | `theorem` | [replicate_mem_sym](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/replicate-mem-sym--d4385b8a576074ea07c1e518.md) | 210 | `result-track:d4385b8a576074ea07c1e518f079fe826b9be538dfd08eb8069a6936ad487e5e` |
| 32 | `theorem` | [Nonempty.sym](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/nonempty-sym--bfc7eed8db9fd3f95ac418d0.md) | 213 | `result-track:bfc7eed8db9fd3f95ac418d0368b3e09bbe6034f9fed397d02f528a831f5a6f7` |
| 33 | `theorem` | [sym_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym-singleton--5ce4192db2a7713702682337.md) | 218 | `result-track:5ce4192db2a77137026823373db9f63c2594be6b3cb5dd6237821f5c7f3e7da8` |
| 34 | `theorem` | [eq_empty_of_sym_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/eq-empty-of-sym-eq-empty--d0caf649a57b5b8ea9435b2f.md) | 223 | `result-track:d0caf649a57b5b8ea9435b2faada1f3847363faa85e1f4a7a12080d5fc7a102d` |
| 35 | `theorem` | [sym_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym-eq-empty--786092e5170a31357792b505.md) | 228 | `result-track:786092e5170a31357792b50535a7b0568852f4f3a99049f82e1148f328c726c5` |
| 36 | `theorem` | [sym_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym-nonempty--40bbdc7175cdaf140efcc0ee.md) | 236 | `result-track:40bbdc7175cdaf140efcc0eefdfcd5e798ceebaa1e06235560250fc68e9ffdc9` |
| 37 | `theorem` | [sym_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym-univ--00d7d57d0de839214b9c22bf.md) | 240 | `result-track:00d7d57d0de839214b9c22bf694fb2c7a8f07ee588cc895caf5ecf661a6c2cda` |
| 38 | `theorem` | [sym_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym-mono--84fc5926af60abf5b4dd2d0c.md) | 244 | `result-track:84fc5926af60abf5b4dd2d0c0a70bfa5d45dfd63ba2aa9d73f7c2ce8e20cfda6` |
| 39 | `theorem` | [sym_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym-inter--11b88586922e535991a91c7f.md) | 248 | `result-track:11b88586922e535991a91c7f4f283259b09c7200b2508c184773c9e67d0bfeba` |
| 40 | `theorem` | [sym_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym-union--4f755148e851ed0def8baedf.md) | 253 | `result-track:4f755148e851ed0def8baedf1643c5ae2174433568be9f759d95f0e21edb596c` |
| 41 | `theorem` | [sym_fill_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym-fill-mem--eb229ffdb76b08abab68456d.md) | 256 | `result-track:eb229ffdb76b08abab68456d5a72108e2a3d64c8c03a81c6646b716fbca316bd` |
| 42 | `theorem` | [sym_filterNe_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/sym-filterne-mem--f00e02115e3581f1e5e6dbb5.md) | 261 | `result-track:f00e02115e3581f1e5e6dbb505565dc27bc3d96fbe4f21996f6bef3a789fe463` |
| 43 | `def` | [symInsertEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/declarations/syminsertequiv--5b6d0d102c8bc20334e5169a.md) | 270 | `declaration-track:5b6d0d102c8bc20334e5169a06d00ef0f8680ad88ca8e26935f92e5ceb689d6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
