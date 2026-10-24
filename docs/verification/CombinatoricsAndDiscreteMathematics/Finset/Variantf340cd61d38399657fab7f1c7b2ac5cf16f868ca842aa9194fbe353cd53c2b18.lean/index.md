# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f31253b4c1d5d6f39e7794cbad0918cde0279c1",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f31253b4c1d5d6f39e7794cbad0918cde0279c1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean.json)

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
| 1 | `theorem` | [iSup_eq_iSup_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/isup-eq-isup-finset--6ef74ced22355cb12115925a.md) | 47 | `result-track:6ef74ced22355cb12115925a19bd56a91a255b2b7aabcc392458a151590a8b60` |
| 2 | `theorem` | [iSup_eq_iSup_finset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/isup-eq-isup-finset--41cb85e7ce4e92fea0400b43.md) | 59 | `result-track:41cb85e7ce4e92fea0400b43d4a97aee5dd1365ace78748b905d90a613b6f41c` |
| 3 | `theorem` | [iUnion_eq_iUnion_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/iunion-eq-iunion-finset--b079b470afe912c955949539.md) | 72 | `result-track:b079b470afe912c9559495394945a51efeaf016ec4a363122a5c42570c5b643f` |
| 4 | `theorem` | [iUnion_eq_iUnion_finset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/iunion-eq-iunion-finset--4c1636633b4cec5df846a0b2.md) | 78 | `result-track:4c1636633b4cec5df846a0b2df2ac8733ae74c8b8b155a7a535de4a6e1fb8d15` |
| 5 | `theorem` | [iInter_eq_iInter_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/iinter-eq-iinter-finset--3401d09a6173f53c8b4f81a4.md) | 85 | `result-track:3401d09a6173f53c8b4f81a43803a08c71ace2091c11467bc3148cb199fa7dde` |
| 6 | `theorem` | [iInter_eq_iInter_finset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/iinter-eq-iinter-finset--1d99938de9dce00284d0c08e.md) | 92 | `result-track:1d99938de9dce00284d0c08e9ae4906f5128d7325f59d4ea4295aee3bb8d25ba` |
| 7 | `theorem` | [iUnion_finset_eq_set](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/iunion-finset-eq-set--e7805645525ac5279c13e1cf.md) | 96 | `result-track:e7805645525ac5279c13e1cf7fb00a064170392420b1e9a14d2956bb03f7e3bb` |
| 8 | `theorem` | [maximal_iff_forall_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/maximal-iff-forall-insert--84993671858bf7b242995df9.md) | 111 | `result-track:84993671858bf7b242995df962e2636e649184b4197795983e9a24affe2b6c72` |
| 9 | `theorem` | [minimal_iff_forall_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/minimal-iff-forall-erase--b8cb9059e0256ea160d63202.md) | 117 | `result-track:b8cb9059e0256ea160d63202677c8e29ff9fc028fb230d7a717bddd6263d1dc6` |
| 10 | `theorem` | [iSup_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/isup-coe--54d9602713c34014ba33b25e.md) | 133 | `result-track:54d9602713c34014ba33b25ea7b1e856f190e2e7feeca1129686b02e46b6e1e7` |
| 11 | `theorem` | [iSup_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/isup-singleton--0e4b9b329c5e2a65f2dd8fa1.md) | 139 | `result-track:0e4b9b329c5e2a65f2dd8fa19871586b432102aae4adea7650b9fbb4147c2ffa` |
| 12 | `theorem` | [iSup_option_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/isup-option-tofinset--b906d9071d1b5866336a97a3.md) | 142 | `result-track:b906d9071d1b5866336a97a3ca19c5cfe62211800b6ee5ee92e13837302eb540` |
| 13 | `theorem` | [iSup_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/isup-union--3604202e445e840aa340b842.md) | 148 | `result-track:3604202e445e840aa340b8425b05d067ac2123ccbe1cb17536a0a4e32f97f97c` |
| 14 | `theorem` | [iSup_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/isup-insert--4c65c91e4297c50b4c7e2900.md) | 153 | `result-track:4c65c91e4297c50b4c7e2900e4c0d1ef6d9ca314e6168bf66ad222efba29935d` |
| 15 | `theorem` | [iSup_finset_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/isup-finset-image--db0f8cfced8e0ac3d87dafe5.md) | 158 | `result-track:db0f8cfced8e0ac3d87dafe530a4b7132cd9b4080d24f5b2aefeb0428341bc8f` |
| 16 | `theorem` | [iSup_insert_update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/isup-insert-update--ee300e42840dcf6940b7e769.md) | 163 | `result-track:ee300e42840dcf6940b7e7691a9a2081923cd04fc7d5d08cb6e76f0aed594043` |
| 17 | `theorem` | [iSup_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/isup-biunion--3c923c5dbcd585872a639d97.md) | 169 | `result-track:3c923c5dbcd585872a639d9788c8ced5ca3ab4d81e7537b01ec89c1779ff25ed` |
| 18 | `theorem` | [set_biUnion_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/set-biunion-coe--bb5d68d6db11e99c7bef020f.md) | 174 | `result-track:bb5d68d6db11e99c7bef020fc0e48fd9d77c7eb1f60bfe529df2daa84413bdc5` |
| 19 | `theorem` | [set_biInter_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/set-biinter-coe--11183cd9e0d967e35185245b.md) | 177 | `result-track:11183cd9e0d967e35185245b3a7f13e9f4ec7d78774020e0f5babcc8cdb48bac` |
| 20 | `theorem` | [set_biUnion_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/set-biunion-singleton--5a467bcff897a3d4ef22fa45.md) | 180 | `result-track:5a467bcff897a3d4ef22fa45b103140875346e87601c53ea141e190b4795dc64` |
| 21 | `theorem` | [set_biInter_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/set-biinter-singleton--fe74bad207d32daaf38c2498.md) | 183 | `result-track:fe74bad207d32daaf38c2498ed2e3eaf30f5c3f50a47f90a0613169410732cd3` |
| 22 | `theorem` | [set_biUnion_preimage_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/set-biunion-preimage-singleton--a4f5847829dd247dc7f9732f.md) | 187 | `result-track:a4f5847829dd247dc7f9732f263d46227baee0fcc6b0afc2dea36473fc0b92ee` |
| 23 | `theorem` | [set_biUnion_option_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/set-biunion-option-tofinset--ee734502a714ea1b9ea2cef2.md) | 191 | `result-track:ee734502a714ea1b9ea2cef2cae45fbcafd01224754d5ed80c9d116279c9e143` |
| 24 | `theorem` | [set_biInter_option_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/set-biinter-option-tofinset--329d96a10ff985324ab1205f.md) | 195 | `result-track:329d96a10ff985324ab1205f125066756cfa460b964f47cc62b05ccdf87533fb` |
| 25 | `theorem` | [subset_set_biUnion_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/subset-set-biunion-of-mem--f57c6e479c7b0d9c246182dd.md) | 199 | `result-track:f57c6e479c7b0d9c246182ddf2c50f31597fe89dc77e06ffd29abc06bf93655f` |
| 26 | `theorem` | [set_biUnion_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/set-biunion-union--4edbf3eaf9f0b90b54c75cf7.md) | 205 | `result-track:4edbf3eaf9f0b90b54c75cf7bc244014e1ce8843291ae87886d30c035c26d5d0` |
| 27 | `theorem` | [set_biInter_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/set-biinter-inter--eaff400e809e6c89e5c11528.md) | 209 | `result-track:eaff400e809e6c89e5c115284fc52f6f0da64324acdb815f3033f6068a16f199` |
| 28 | `theorem` | [set_biUnion_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/set-biunion-insert--f7bbd0f6383f502aff7779aa.md) | 213 | `result-track:f7bbd0f6383f502aff7779aa3f3fb30098124a6f50c1001530d8abf7c7f61f09` |
| 29 | `theorem` | [set_biInter_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/set-biinter-insert--db3dd28d58187624b7817efd.md) | 217 | `result-track:db3dd28d58187624b7817efdc2022ba6966da9cef20bf960d1717b37b7e0c207` |
| 30 | `theorem` | [set_biUnion_finset_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/set-biunion-finset-image--e29f1ca80d7bdf6ae5af8fee.md) | 221 | `result-track:e29f1ca80d7bdf6ae5af8feef75f87430c88fe5c9d16dcfec3a4ea278ce08673` |
| 31 | `theorem` | [set_biInter_finset_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/set-biinter-finset-image--9337c7da345df31dec698896.md) | 225 | `result-track:9337c7da345df31dec698896a8edb584a30d3b10ad265029456b52fa3e4beb0b` |
| 32 | `theorem` | [set_biUnion_insert_update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/set-biunion-insert-update--cdd816abeb64d57db15321d3.md) | 229 | `result-track:cdd816abeb64d57db15321d3b77cd3c769bca899b5438204bb76070b84c849cf` |
| 33 | `theorem` | [set_biInter_insert_update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/set-biinter-insert-update--9943d7adfc632de709fa31da.md) | 233 | `result-track:9943d7adfc632de709fa31da9d390ae7f2b56a019d171f82a1344a9f5451f114` |
| 34 | `theorem` | [set_biUnion_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/set-biunion-biunion--4639f8b9fcb2df80d71fbe27.md) | 237 | `result-track:4639f8b9fcb2df80d71fbe2718e621c640873fd7fa0b43d2c5841893e8fa5040` |
| 35 | `theorem` | [set_biInter_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf340cd61d38399657fab7f1c7b2ac5cf16f868ca842aa9194fbe353cd53c2b18.lean/declarations/set-biinter-biunion--0164ad4a94fc51eaf65fe795.md) | 241 | `result-track:0164ad4a94fc51eaf65fe795772049043deeae9e14c45545290267cdd7aded1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
