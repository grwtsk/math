# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42d99a2ddab77f7ea93932a9607a63de9112d903",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42d99a2ddab77f7ea93932a9607a63de9112d903`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Constructions` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsGδ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isg--9d025ee7d06202219233fefe.md) | 71 | `declaration-track:9d025ee7d06202219233fefe5abaf20cc1f3c0272be8e74189f8810935de59ac` |
| 2 | `theorem` | [IsOpen.isGδ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isopen-isg--c20bd553e08503e092c27ee6.md) | 75 | `result-track:c20bd553e08503e092c27ee6da190121e8a41c9735e4aa0c1e39f35c642e4106` |
| 3 | `theorem` | [IsGδ.empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isg-empty--ca4f6373f016d89a8e16cf37.md) | 79 | `result-track:ca4f6373f016d89a8e16cf3739cf01e88bbea3066d9dd4e97ba8fef90a7875f5` |
| 4 | `theorem` | [IsGδ.univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isg-univ--99a848e4644ed0d4b133d8a6.md) | 84 | `result-track:99a848e4644ed0d4b133d8a644a37754ad327afb3cac983040c3bd677eb46dbf` |
| 5 | `theorem` | [IsGδ.biInter_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isg-biinter-of-isopen--1fe0a3c934903c2875096deb.md) | 88 | `result-track:1fe0a3c934903c2875096deb05158d463b9c16c135702cbf81337f5eb7811d8f` |
| 6 | `theorem` | [IsGδ.iInter_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isg-iinter-of-isopen--16bece750ab323ac0b4db753.md) | 93 | `result-track:16bece750ab323ac0b4db753c3a5167f2bb10210bbf15ce3f5f38a3e3580132c` |
| 7 | `lemma` | [isGδ_iff_eq_iInter_nat](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isg-iff-eq-iinter-nat--cc9c7091667b3ed353e78f2a.md) | 98 | `result-track:cc9c7091667b3ed353e78f2aa69972d12c108a511226468121d226f466f15275` |
| 8 | `theorem` | [IsGδ.iInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isg-iinter--90ee02fa7f292b71fe4b34ff.md) | 112 | `result-track:90ee02fa7f292b71fe4b34ff559622f1fbfe58d6f452de088d26a8974947d02a` |
| 9 | `theorem` | [IsGδ.biInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isg-biinter--9b45cc8b6fb4db33637077b9.md) | 119 | `result-track:9b45cc8b6fb4db33637077b9a9c35cbf2915957f9bda51381e977bbc1a11f931` |
| 10 | `theorem` | [IsGδ.sInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isg-sinter--6b1538ec275af886e3b5150d.md) | 127 | `result-track:6b1538ec275af886e3b5150d1ac822285e76930aa2842d3d47fe712fb2cf685b` |
| 11 | `theorem` | [IsGδ.inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isg-inter--8bf87f85561a5a49673f62d5.md) | 131 | `result-track:8bf87f85561a5a49673f62d5e04756200016a6d48646abc418ad3edf30a9dd61` |
| 12 | `theorem` | [IsGδ.union](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isg-union--21b6345b956906706c293111.md) | 136 | `result-track:21b6345b956906706c2931113e883383b7114536af591199cf91c548a9132c58` |
| 13 | `theorem` | [IsGδ.sUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isg-sunion--b1e2c1e0d12e972e0f5f72e2.md) | 145 | `result-track:b1e2c1e0d12e972e0f5f72e226020e195969e47c72ae3d507e5e3d2ec0d1d1ef` |
| 14 | `theorem` | [IsGδ.biUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isg-biunion--f73966469c07d32358f83af6.md) | 153 | `result-track:f73966469c07d32358f83af600b232dba7291ee90b1706a085f13b239e2dadd6` |
| 15 | `theorem` | [IsGδ.iUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isg-iunion--6fcf0fae80c0df4c62976e9f.md) | 159 | `result-track:6fcf0fae80c0df4c62976e9fcc1a6904cd9787bedd19ef77799cfc80e77c649d` |
| 16 | `theorem` | [IsGδ.preimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isg-preimage--c2ab66a5dde26935c58dbaa1.md) | 163 | `result-track:c2ab66a5dde26935c58dbaa1c5e1df9eca8945318c3656e03d9655361a26a319` |
| 17 | `def` | [residual](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/residual--e77ce36fede75b267aa6d24c.md) | 178 | `declaration-track:e77ce36fede75b267aa6d24ce4faefa4454fe9430ae3b6ec26203480f45f9eb3` |
| 18 | `instance` | [countableInterFilter_residual](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/countableinterfilter-residual--6fc706bf45fe6d83fa6506d9.md) | 181 | `declaration-track:6fc706bf45fe6d83fa6506d9db721850434b78a1e4b34ef3daaa2143dbbeb47b` |
| 19 | `theorem` | [residual_of_dense_open](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/residual-of-dense-open--805a36b95595b0ca09a871ff.md) | 185 | `result-track:805a36b95595b0ca09a871ff2ac53eb7285ec3859a68911650571e7cc963082a` |
| 20 | `theorem` | [residual_of_dense_Gδ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/residual-of-dense-g--d861ec34837427ba95eb4df7.md) | 189 | `result-track:d861ec34837427ba95eb4df762f6eaa909ef032ad57dafea2ce509ae6ead7d4c` |
| 21 | `theorem` | [mem_residual_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/mem-residual-iff--66e897324be4075033cbd38c.md) | 196 | `result-track:66e897324be4075033cbd38cb003037bdb94f8c0b654fcf7a510a1baba7adc65` |
| 22 | `def` | [IsNowhereDense](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isnowheredense--a750bb37b5705190548659df.md) | 208 | `declaration-track:a750bb37b5705190548659df3fca488da5c8b47eaca1cf3f4e7d912e9caf3cfb` |
| 23 | `lemma` | [isNowhereDense_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isnowheredense-empty--95e4104428e1c662d498d960.md) | 212 | `result-track:95e4104428e1c662d498d960023d031e731fb4214c0a6aafc8567b5c6d8b8dc6` |
| 24 | `lemma` | [IsNowhereDense.mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isnowheredense-mono--fa97ea349208bc72631ac389.md) | 217 | `result-track:fa97ea349208bc72631ac38900ebc0fe352114901cb751834f3179d422800282` |
| 25 | `lemma` | [IsNowhereDense.union](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isnowheredense-union--257c34ccabfc96521ccd0770.md) | 221 | `result-track:257c34ccabfc96521ccd07701ac6b3310c2e3f35be08a91110fa9f83023cd37c` |
| 26 | `lemma` | [IsNowhereDense.biUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isnowheredense-biunion--e5d56ab2b60001300043ef5a.md) | 229 | `result-track:e5d56ab2b60001300043ef5aadf64e5ab146605f5843076914a9152169f1bd67` |
| 27 | `lemma` | [IsNowhereDense.iUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isnowheredense-iunion--3c36fb0ef1c195f4ad4b8654.md) | 239 | `result-track:3c36fb0ef1c195f4ad4b86543fd349f0dc32bfa4da7f35605bf3423a0e1c8da1` |
| 28 | `lemma` | [IsClosed.isNowhereDense_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isclosed-isnowheredense-iff--d86db5ffa9ea1825f2c78367.md) | 245 | `result-track:d86db5ffa9ea1825f2c7836782a9445410aa81ab7d799e1c3f483d76437c2788` |
| 29 | `lemma` | [IsNowhereDense.closure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isnowheredense-closure--ec861e982bf015a8d7266c14.md) | 250 | `result-track:ec861e982bf015a8d7266c14d276b4445cc1df42ebe28b653757650fdbae2f67` |
| 30 | `lemma` | [IsNowhereDense.subset_of_closed_isNowhereDense](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isnowheredense-subset-of-closed-isnowheredense--b395714982a49c0f51e74884.md) | 255 | `result-track:b395714982a49c0f51e7488470b17b30c0106c7bf6a964a00262f086e38f5917` |
| 31 | `lemma` | [isClosed_isNowhereDense_iff_compl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isclosed-isnowheredense-iff-compl--4396953b5fa9d9827a1a9cde.md) | 260 | `result-track:4396953b5fa9d9827a1a9cde398f8dc4bfbc715392ab330f227e0c15f724c2aa` |
| 32 | `lemma` | [isNowhereDense_iff_disjoint](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isnowheredense-iff-disjoint--19a7f64db3e55bb1a8c46972.md) | 267 | `result-track:19a7f64db3e55bb1a8c4697204fdb208036e1d1fe9c1dd2a08ac2197a7434170` |
| 33 | `lemma` | [isNowhereDense_iff_forall_notMem_nhds](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isnowheredense-iff-forall-notmem-nhds--923d1c8ad9bebf454504c032.md) | 274 | `result-track:923d1c8ad9bebf454504c0327493224939b0764da98aa873474b6dbd05bd96e2` |
| 34 | `lemma` | [Topology.IsInducing.isNowhereDense_image](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/topology-isinducing-isnowheredense-image--885dcec32748b2803e7a5399.md) | 280 | `result-track:885dcec32748b2803e7a5399196b5cc21390d001e1be2a897388b5ce10980166` |
| 35 | `lemma` | [IsNowhereDense.image_val](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isnowheredense-image-val--a172d15bc966a3bc322b4ab8.md) | 287 | `result-track:a172d15bc966a3bc322b4ab8551357258e6971a1b090ff16630aae06043fbd54` |
| 36 | `def` | [IsMeagre](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/ismeagre--8fdfd22a99521a7924599efb.md) | 292 | `declaration-track:8fdfd22a99521a7924599efb00e2007bba1b7e3e7d1be2ded6cbe08987196ac7` |
| 37 | `lemma` | [IsMeagre.empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/ismeagre-empty--872422266822c9926637a784.md) | 295 | `result-track:872422266822c9926637a784e312ee4bc6a5380ed9e4206fbeda7e001e34e456` |
| 38 | `lemma` | [IsMeagre.mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/ismeagre-mono--a3951d48fb9e15d5b7c15cc8.md) | 301 | `result-track:a3951d48fb9e15d5b7c15cc87edbff36df29891bb58b7ebb0848775d9e302ccf` |
| 39 | `lemma` | [IsMeagre.inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/ismeagre-inter--0b4cdef3bcab668470b0e45e.md) | 305 | `result-track:0b4cdef3bcab668470b0e45ec5dcc3a583c373659abb3ab6f037071a753d4e3f` |
| 40 | `lemma` | [IsMeagre.union](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/ismeagre-union--7fea2a64e71e16b51a265fd8.md) | 309 | `result-track:7fea2a64e71e16b51a265fd85adcbf61499bafb44f91ec047fd757e4f8d14480` |
| 41 | `lemma` | [isMeagre_iUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/ismeagre-iunion--6a9b239d3500e007f145178a.md) | 314 | `result-track:6a9b239d3500e007f145178af4735ddefd96e92c0acc7c57a8a7043db52e711d` |
| 42 | `lemma` | [isMeagre_biUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/ismeagre-biunion--438a7bf954720a69d5e9d740.md) | 319 | `result-track:438a7bf954720a69d5e9d740cb48db916cd6c11d71badf09517b07df7d0bbcc1` |
| 43 | `lemma` | [isMeagre_iff_countable_union_isNowhereDense](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/ismeagre-iff-countable-union-isnowheredense--92890710455e9c0bd7d10b7d.md) | 328 | `result-track:92890710455e9c0bd7d10b7df87cf628e151cce0ca37db2b3dbef05cbf495b2f` |
| 44 | `lemma` | [nonempty_of_not_isMeagre](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/nonempty-of-not-ismeagre--fdb94dca4aca760a8a3d9ec6.md) | 342 | `result-track:fdb94dca4aca760a8a3d9ec6dfb9e4c046687d4f6ac5c20af09466f665a26ebd` |
| 45 | `lemma` | [IsNowhereDense.isMeagre](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/isnowheredense-ismeagre--8f0b0990b677c14e5570ed3c.md) | 347 | `result-track:8f0b0990b677c14e5570ed3c2f38138517327e4291dafd537b25ef4ee7b5ce70` |
| 46 | `lemma` | [exists_of_not_isMeagre_biUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/exists-of-not-ismeagre-biunion--0051bfa79639b9acbaa873c3.md) | 351 | `result-track:0051bfa79639b9acbaa873c3ae91005894f2003be9328eeebfc7e6c18403a4d2` |
| 47 | `lemma` | [Topology.IsInducing.isMeagre_image](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/topology-isinducing-ismeagre-image--b4cbb37602990c198e3f6a91.md) | 358 | `result-track:b4cbb37602990c198e3f6a9158575999ec924eff2dbcdfb229e8169db5b0c286` |
| 48 | `lemma` | [IsMeagre.image_val](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/declarations/ismeagre-image-val--2afc0c45e2caf89f0e939c50.md) | 372 | `result-track:2afc0c45e2caf89f0e939c50d3c1fac317ac739ec8ade7fd523a8c434d0f448e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
