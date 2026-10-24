# Verification target: GRWTSK.Algebra.Defs.Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19b6126b8b422252ef193ee6a75a8e441a934556",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19b6126b8b422252ef193ee6a75a8e441a934556`.

Source path: `GRWTSK/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.NonUnitalSubsemiring.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AddSubmonoidWithOneClass](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/addsubmonoidwithoneclass--75b46038b4a7f4f05d809eba.md) | 31 | `declaration-track:75b46038b4a7f4f05d809ebacd7dbd182232967cc5c3adc2bbdb3c49500fcbb6` |
| 2 | `theorem` | [natCast_mem](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/natcast-mem--d4b5fc102f6d475a3389d774.md) | 37 | `result-track:d4b5fc102f6d475a3389d7746eb8476dbaa26f7bbcae50e753ef016da4d1fce8` |
| 3 | `lemma` | [ofNat_mem](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/ofnat-mem--94aefac88e3d64b1061b37a4.md) | 41 | `result-track:94aefac88e3d64b1061b37a4087c5a343b14f4d204114cbd75535b03de8d02b1` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/instance--fc8724167e04e3aea379cbdd.md) | 45 | `declaration-track:fc8724167e04e3aea379cbddd21f8e03fa6ff10475f123b5887400029bcf533e` |
| 5 | `class` | [SubsemiringClass](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/subsemiringclass--bc10e56a4ffcb76a7dd8c0d2.md) | 61 | `declaration-track:bc10e56a4ffcb76a7dd8c0d26e346a750548bfeff93662315b9877dffd49ac28` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/instance--8faa6b6ba9711eb26184866a.md) | 65 | `declaration-track:8faa6b6ba9711eb26184866aed3bbffc5e3e82cc463eecab6da609d0156b88ab` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/instance--bcb25c08d8e6beb784581422.md) | 70 | `declaration-track:bcb25c08d8e6beb784581422051e784bae4a0f045defe56fcb38a18c08122866` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/instance--d84653e13ac92ec6e022e69b.md) | 81 | `declaration-track:d84653e13ac92ec6e022e69b225457e1cdd0be05eb53458bfd903bd606b98afa` |
| 9 | `instance` | [nontrivial](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/nontrivial--3b848390f474515437493a59.md) | 85 | `declaration-track:3b848390f474515437493a59962d5d23a55917cb7cfb82da895cb55e50a5ecb2` |
| 10 | `instance` | [noZeroDivisors](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/nozerodivisors--f2fe8cc3abf48f7051878d30.md) | 88 | `declaration-track:f2fe8cc3abf48f7051878d30e47eb66f2921578b16fdaf0ef5e46da848638f9a` |
| 11 | `def` | [subtype](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/subtype--8fdf0d000397a73e8356c461.md) | 92 | `declaration-track:8fdf0d000397a73e8356c461eae8e60bb3979c9d0ff0f12140262617d2e06ba8` |
| 12 | `theorem` | [coe_subtype](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/coe-subtype--92a1233592b651002979ef2c.md) | 96 | `result-track:92a1233592b651002979ef2c7bbf9f5b2c6532533cc3ce9d3f562c4ff8854c08` |
| 13 | `lemma` | [subtype_apply](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/subtype-apply--d86c4c60ff60ddfac376a66c.md) | 101 | `result-track:d86c4c60ff60ddfac376a66c3afd2c14e630113f01bf0c297c425d620cb64ed6` |
| 14 | `lemma` | [subtype_injective](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/subtype-injective--430f912aac987fa7153539fa.md) | 104 | `result-track:430f912aac987fa7153539fae643bc3cef05d6262a643e780fe73ca3b2d40e19` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/instance--121faffacc60c1b18e7f6554.md) | 110 | `declaration-track:121faffacc60c1b18e7f65540d8709f67d40b58ef5117410e7af6f37bc312db7` |
| 16 | `theorem` | [coe_pow](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/coe-pow--8859e3e33ae06d54a86a92a7.md) | 116 | `result-track:8859e3e33ae06d54a86a92a712e9cde5fe8c89fa57c0025e1b34f822e4cb73d6` |
| 17 | `instance` | [toCommSemiring](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/tocommsemiring--86de3fe34e40b5a03393f326.md) | 123 | `declaration-track:86de3fe34e40b5a03393f326d973b66a81f622ffd0502db4befbc1467b32bc5a` |
| 18 | `structure` | [Subsemiring](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/subsemiring--83cdd29ff2b49925f8eb5f24.md) | 136 | `declaration-track:83cdd29ff2b49925f8eb5f24e8943cdec024e96319715db2a42bb3c1389d0c71` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/instance--103164b34a0abcf8f5bfd9b6.md) | 146 | `declaration-track:103164b34a0abcf8f5bfd9b65da40584aaa79ed0a79e1e7a0a447e9e6715f348` |
| 20 | `def` | [ofClass](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/ofclass--debaacd941e91ed01bcd1719.md) | 154 | `declaration-track:debaacd941e91ed01bcd171960da68b673bb06b29a42d696447a3c9f27b65a31` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/instance--aa11fbde8776460b30476f7b.md) | 162 | `declaration-track:aa11fbde8776460b30476f7b358e195339a53e73badc0ab677901b570a9b0494` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/instance--669fd4d5c569ed11699a92de.md) | 173 | `declaration-track:669fd4d5c569ed11699a92defb2e45b4c87dd093a994def3e30851c10870523b` |
| 23 | `def` | [toNonUnitalSubsemiring](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/tononunitalsubsemiring--c161d1c071970df61e5bf518.md) | 180 | `declaration-track:c161d1c071970df61e5bf51809aefa440ac8492a77c119105aac02382e926b55` |
| 24 | `theorem` | [mem_toSubmonoid](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/mem-tosubmonoid--400b4c48be4d0d14bcf11b56.md) | 183 | `result-track:400b4c48be4d0d14bcf11b56d1d387d478fbb817832072cc7d1cffb3dfb137d9` |
| 25 | `lemma` | [mem_toNonUnitalSubsemiring](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/mem-tononunitalsubsemiring--90aa3e0c52a82afddbd9794f.md) | 187 | `result-track:90aa3e0c52a82afddbd9794fd08b151f874511fec611b67787758c5057a35a8f` |
| 26 | `theorem` | [mem_carrier](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/mem-carrier--1fba92a978cfbbc11b42957b.md) | 190 | `result-track:1fba92a978cfbbc11b42957b75c51ce403bd985a393658d643e1eef4007fdd98` |
| 27 | `lemma` | [coe_toNonUnitalSubsemiring](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/coe-tononunitalsubsemiring--14e2babba70887288b34f677.md) | 194 | `result-track:14e2babba70887288b34f677b5f20fc4b64ec590ac89408d1f652d5aa948836e` |
| 28 | `theorem` | [ext](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/ext--25b730bfd6780fdfe3ddbf87.md) | 198 | `result-track:25b730bfd6780fdfe3ddbf8782e4832cd56485994aeb4e387a5a6cb0f14f3da7` |
| 29 | `def` | [copy](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/copy--aa8badc2f6ade9a84b9a6172.md) | 204 | `declaration-track:aa8badc2f6ade9a84b9a61723a17f7ae31cb435213823d477c33308249943642` |
| 30 | `theorem` | [copy_eq](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/copy-eq--ad68f24e2ffc184984b39392.md) | 207 | `result-track:ad68f24e2ffc184984b39392f4ba472dffafa1c7ff6424716efaa0375cbd7e8d` |
| 31 | `theorem` | [toSubmonoid_injective](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/tosubmonoid-injective--cbb9ae0ecd8005f3e6126476.md) | 210 | `result-track:cbb9ae0ecd8005f3e6126476225c87ac0c15a8cf86ed47eebe124ad6930d1163` |
| 32 | `theorem` | [toAddSubmonoid_injective](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/toaddsubmonoid-injective--3cb8d8162c85669f77566d98.md) | 213 | `result-track:3cb8d8162c85669f77566d9837942c3e23449ec25267e52688ac2ca3ba52bf2d` |
| 33 | `lemma` | [toNonUnitalSubsemiring_injective](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/tononunitalsubsemiring-injective--47ab94022dd11e7f403508af.md) | 217 | `result-track:47ab94022dd11e7f403508afcc2ac8a710ebe69d302ee9ee77f44c4f8329ee2c` |
| 34 | `lemma` | [toNonUnitalSubsemiring_inj](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/tononunitalsubsemiring-inj--0ba6419f33e53923285699f6.md) | 223 | `result-track:0ba6419f33e53923285699f6221024b871af44efe9e91b3ecb7fafa8a38b3b75` |
| 35 | `lemma` | [one_mem_toNonUnitalSubsemiring](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/one-mem-tononunitalsubsemiring--e2e2bcfbe5bd2377fe00c297.md) | 227 | `result-track:e2e2bcfbe5bd2377fe00c297895b1414aa0ae0dbcd193f6e78ae770ce88c1a34` |
| 36 | `def` | [mk'](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/mk--3972975eb19598a5700ad410.md) | 233 | `declaration-track:3972975eb19598a5700ad41070628cb56e7114c727094b7803a23d0212871765` |
| 37 | `theorem` | [mem_mk'](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/mem-mk--cfb68b1f0f8b76805625afe1.md) | 242 | `result-track:cfb68b1f0f8b76805625afe10c505ab1702746ce9ef968ecb1cb26beb481d7a2` |
| 38 | `theorem` | [mk'_toSubmonoid](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/mk-tosubmonoid--3d6770ea0ddca2ae62e704cb.md) | 247 | `result-track:3d6770ea0ddca2ae62e704cb87726efe1dc40d674102fd72c9d1e221c286b13a` |
| 39 | `theorem` | [mk'_toAddSubmonoid](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/mk-toaddsubmonoid--87279e12f48ab32219059c2c.md) | 252 | `result-track:87279e12f48ab32219059c2c789069f107b50bd9a879adffac222b28a2878bdb` |
| 40 | `theorem` | [one_mem](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/one-mem--dda20080f0861b5c823f51f9.md) | 263 | `result-track:dda20080f0861b5c823f51f9bea9cea6742623a92ff3aa7acc9564a6cff84247` |
| 41 | `theorem` | [zero_mem](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/zero-mem--b80f5edc00e3bcc9256f9f30.md) | 267 | `result-track:b80f5edc00e3bcc9256f9f3071309b0254484e2227ef7003b6e2b11412f25dbd` |
| 42 | `theorem` | [mul_mem](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/mul-mem--2a7b1599d1e82d1049be1227.md) | 271 | `result-track:2a7b1599d1e82d1049be1227e63574e88dc010da7068da3eab1c6930ddef4574` |
| 43 | `theorem` | [add_mem](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/add-mem--e5276339fefb1f6c344f62de.md) | 275 | `result-track:e5276339fefb1f6c344f62dea04bd8b7dc06aea5153fab8eab54b05f8dff3711` |
| 44 | `instance` | [toNonAssocSemiring](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/tononassocsemiring--5e156fa58436cd8534a8930f.md) | 279 | `declaration-track:5e156fa58436cd8534a8930f0657b97217c9c8a8dad66c329916ca9ad1d19534` |
| 45 | `theorem` | [coe_one](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/coe-one--f554a321f3436a5d3626c88d.md) | 283 | `result-track:f554a321f3436a5d3626c88d84a68ab55dda090b9264bf582e2e2ce13a685a4e` |
| 46 | `theorem` | [coe_zero](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/coe-zero--67ceaa728db7eca441cd26f7.md) | 287 | `result-track:67ceaa728db7eca441cd26f796b2cf1585fa2b84902ef5598614deff8361a442` |
| 47 | `theorem` | [coe_add](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/coe-add--6a5ce164da68958ac2d170a0.md) | 291 | `result-track:6a5ce164da68958ac2d170a0cbbae1417547a9cbd18cd8ba994c959df2287b56` |
| 48 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/coe-mul--69dd02e39a2d80b6ae533003.md) | 295 | `result-track:69dd02e39a2d80b6ae533003cf869d6515d5b58e301f8ea24f6293b0047a475c` |
| 49 | `instance` | [nontrivial](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/nontrivial--70f22caad93ffea6e5c40440.md) | 298 | `declaration-track:70f22caad93ffea6e5c404404d1b56a413f40cd48fcecc884494869ed96d571d` |
| 50 | `theorem` | [pow_mem](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/pow-mem--89ecd1304c87124285567c16.md) | 301 | `result-track:89ecd1304c87124285567c16d1e037e21db37318bfd73165ad011806131a6b2e` |
| 51 | `instance` | [noZeroDivisors](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/nozerodivisors--27dd6c0a5fbcec44b6ff5a78.md) | 305 | `declaration-track:27dd6c0a5fbcec44b6ff5a78ee5fa08c596c86a46ff072d343f20c0986fa08dc` |
| 52 | `instance` | [toSemiring](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/tosemiring--6bc8836d76fde5db2ed77f69.md) | 310 | `declaration-track:6bc8836d76fde5db2ed77f69b70ee3563c93a6bb3bd9ca3054e6119d143bc4a4` |
| 53 | `theorem` | [coe_pow](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/coe-pow--b6d7c145ce629b30c0f588b5.md) | 314 | `result-track:b6d7c145ce629b30c0f588b5d35f1c1cf6d65bf66da404269ab29705f0bcaa68` |
| 54 | `instance` | [toCommSemiring](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/tocommsemiring--a378dc30c9f752be79a0c0c9.md) | 321 | `declaration-track:a378dc30c9f752be79a0c0c9816090731e20c7f12478755c7887bbfa77bd56e2` |
| 55 | `def` | [subtype](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/subtype--60a576fb410c1b465b9fd796.md) | 325 | `declaration-track:60a576fb410c1b465b9fd7967a5f8f32d9b0989970e86313195a9964171ec434` |
| 56 | `lemma` | [subtype_apply](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/subtype-apply--4d07ecbb87d9402b222a36a4.md) | 330 | `result-track:4d07ecbb87d9402b222a36a461ccd379a59d7c00c74e750310266b7bda21c0d8` |
| 57 | `lemma` | [subtype_injective](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/subtype-injective--0d8ab60d8e44161398b7184a.md) | 333 | `result-track:0d8ab60d8e44161398b7184af14542a1ec517bd878622a9c125a7295d90fd20f` |
| 58 | `theorem` | [coe_subtype](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/coe-subtype--58562fbf5d9e9e957633673a.md) | 338 | `result-track:58562fbf5d9e9e957633673a5e57ebf76ff3feaa14ed7fd85c8276d777630818` |
| 59 | `theorem` | [nsmul_mem](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/nsmul-mem--bcaba9cd008cac0685c490ec.md) | 341 | `result-track:bcaba9cd008cac0685c490eca4d46fa84a85d7a4b1b1f83a30ca4cb03c349e7f` |
| 60 | `theorem` | [coe_toSubmonoid](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/coe-tosubmonoid--a8811b44b190b9b08fab8b34.md) | 345 | `result-track:a8811b44b190b9b08fab8b34678adf5967b59a4e64216dd9d9fcd9112fa1841a` |
| 61 | `theorem` | [coe_carrier_toSubmonoid](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/coe-carrier-tosubmonoid--eb29e2d41c2254fd62a88d53.md) | 349 | `result-track:eb29e2d41c2254fd62a88d535565a997dc0a1111feecebd004644518f8d8daa3` |
| 62 | `theorem` | [mem_toAddSubmonoid](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/mem-toaddsubmonoid--6bf3812f54941b9f14e2c441.md) | 352 | `result-track:6bf3812f54941b9f14e2c441be5878a62f60f2e0a0c17b87aad11aa9522b85c0` |
| 63 | `theorem` | [coe_toAddSubmonoid](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/coe-toaddsubmonoid--9ddf45d407fc36e2c0623726.md) | 355 | `result-track:9ddf45d407fc36e2c06237264d5fa5edf329b02c293c2790e412504a54c02512` |
| 64 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/instance--8bc7659a23c1e6097db7c1fc.md) | 359 | `declaration-track:8bc7659a23c1e6097db7c1fcbe9f66cb4b6b36cabb820726349a393524da1ac4` |
| 65 | `theorem` | [mem_top](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/mem-top--dcc991c07d2cad87a3267954.md) | 363 | `result-track:dcc991c07d2cad87a3267954b36d19491ea9ad59f2d8130cf18d363a37955d82` |
| 66 | `theorem` | [coe_top](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/coe-top--e65d6a1c65e0b1f60935bdda.md) | 367 | `result-track:e65d6a1c65e0b1f60935bddab56252479b64f8dce580b89fc2fcc36b701216ca` |
| 67 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/instance--d63161bbffcd69d404ee8a26.md) | 375 | `declaration-track:d63161bbffcd69d404ee8a2626b6243f138febd396b041a60453e6d8103996ed` |
| 68 | `theorem` | [coe_inf](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/coe-inf--8111ae7088ba4e72b40f1ac9.md) | 380 | `result-track:8111ae7088ba4e72b40f1ac93805ba111b42bf5fa9e50c39f8752bb48d045165` |
| 69 | `theorem` | [mem_inf](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/mem-inf--28ed95026401f10e4e2b5baa.md) | 384 | `result-track:28ed95026401f10e4e2b5baa0de4e2ffd692bde01990f2505609100701189142` |
| 70 | `def` | [domRestrict](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/domrestrict--412a599a24c085a0edcebc45.md) | 397 | `declaration-track:412a599a24c085a0edcebc45ccb39c6d86028276314a0b0e5c61c80576790774` |
| 71 | `theorem` | [restrict_apply](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/restrict-apply--b9f25efa7276e4e32acd9599.md) | 401 | `result-track:b9f25efa7276e4e32acd959914a053029beba6bcab98ccdd822691e59557d938` |
| 72 | `def` | [eqLocusS](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/eqlocuss--46704b513336bf4d37dc3ab9.md) | 405 | `declaration-track:46704b513336bf4d37dc3ab9db6c25dc5b86d058709febf512f9a1126dd56712` |
| 73 | `theorem` | [eqLocusS_same](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/eqlocuss-same--c7efdf152f4a90e06834af1c.md) | 409 | `result-track:c7efdf152f4a90e06834af1c28eb6a19f025d9919716b13959bb5211c3806b05` |
| 74 | `def` | [NonUnitalSubsemiring.toSubsemiring](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/nonunitalsubsemiring-tosubsemiring--364cc220ca9f472ff61440eb.md) | 415 | `declaration-track:364cc220ca9f472ff61440ebded619114af6285d71e515c113396aa08f87a5e6` |
| 75 | `lemma` | [Subsemiring.toNonUnitalSubsemiring_toSubsemiring](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/subsemiring-tononunitalsubsemiring-tosubsemiring--decc28364adae6995dee2fcf.md) | 420 | `result-track:decc28364adae6995dee2fcf4c1ea8d207554ddb579ca2b4d3d9e0de01d8e6c3` |
| 76 | `lemma` | [NonUnitalSubsemiring.toSubsemiring_toNonUnitalSubsemiring](../../../../mathematics/Algebra/Defs/Variantabf9be9fa7aca2810032e88425e5c83904ce9b85553ef9b4fe612cebb3eae335.lean/declarations/nonunitalsubsemiring-tosubsemiring-tononunitalsubsemiring--9fbee0ad5a28c3ac7d3a82e7.md) | 423 | `result-track:9fbee0ad5a28c3ac7d3a82e72df2dcbda9c9c24beb03db3d98b3c2c4bbbb2e00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
