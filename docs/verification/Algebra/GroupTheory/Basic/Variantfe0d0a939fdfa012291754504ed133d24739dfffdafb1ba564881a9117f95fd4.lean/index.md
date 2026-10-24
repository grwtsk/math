# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "072c0cbea625bb5e215ed251590b6cd50413aadd",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `072c0cbea625bb5e215ed251590b6cd50413aadd`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean.json)

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
| 1 | `theorem` | [IsCyclic.exists_generator](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-exists-generator--e3a194ce7ed4c53eb99df081.md) | 40 | `result-track:e3a194ce7ed4c53eb99df081502fb776f7c50337ed76d4f8379be3ae240a012c` |
| 2 | `theorem` | [isCyclic_iff_exists_zpowers_eq_top](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-iff-exists-zpowers-eq-top--c6ede375f02ef8dd1a5a27e9.md) | 44 | `result-track:c6ede375f02ef8dd1a5a27e974811c3c330f730e68479f4c4271e7f439be5929` |
| 3 | `theorem` | [Subgroup.isCyclic_iff_exists_zpowers_eq_top](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/subgroup-iscyclic-iff-exists-zpowers-eq-top--513ed2a34f5f2cab190a01b0.md) | 49 | `result-track:513ed2a34f5f2cab190a01b0f61e6a87235524b8807edb45ec73412fceaa6d80` |
| 4 | `instance` | [Subgroup.isCyclic_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/subgroup-iscyclic-zpowers--d31d879725b3e52787cf7d54.md) | 57 | `declaration-track:d31d879725b3e52787cf7d5430c34b221d6530b7da4573e166dd91e8b34e9875` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/instance--1fecc2178b4bf9ff8817bf0f.md) | 62 | `declaration-track:1fecc2178b4bf9ff8817bf0fd8e380524a277ee8dcf5270ea8f81130499b6c24` |
| 6 | `theorem` | [isCyclic_multiplicative_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-multiplicative-iff--a6a283f6016c20831c6cba0a.md) | 66 | `result-track:a6a283f6016c20831c6cba0ab918a78d5ab866bf525f5fc9fc9b2538402b61c1` |
| 7 | `instance` | [isCyclic_multiplicative](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-multiplicative--1351a554372cbfb31ccf077c.md) | 70 | `declaration-track:1351a554372cbfb31ccf077c61bedb0a55b3091e6e2fe73f2fbfc5732d7460ad` |
| 8 | `theorem` | [isAddCyclic_additive_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/isaddcyclic-additive-iff--8601eedd320a780db92a3c96.md) | 74 | `result-track:8601eedd320a780db92a3c96e03521854917e545f6d18135629585c9a94bad0f` |
| 9 | `instance` | [isAddCyclic_additive](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/isaddcyclic-additive--0380792ecf60ea41d119a836.md) | 77 | `declaration-track:0380792ecf60ea41d119a836fbfa7265b3175b2147b9c22863672c6515d1fab3` |
| 10 | `instance` | [IsCyclic.isMulCommutative](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-ismulcommutative--77581772443b92ed04fa7424.md) | 81 | `declaration-track:77581772443b92ed04fa74246c2382bba5db952d49565e54d41ba023b458872f` |
| 11 | `def` | [IsCyclic.commGroup](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-commgroup--5ac6460bac22eb60475b0cad.md) | 99 | `declaration-track:5ac6460bac22eb60475b0cad39dd7df99ad3986ef8523a7fe2cc58630e549341` |
| 12 | `theorem` | [Nontrivial.of_not_isCyclic](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/nontrivial-of-not-iscyclic--af629b9dc7f40f824ff75264.md) | 106 | `result-track:af629b9dc7f40f824ff7526483b6d10f8c2246f54c9ec5b73cb6268f7d14a2f1` |
| 13 | `theorem` | [MonoidHom.map_cyclic](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/monoidhom-map-cyclic--ef37b6ea5a35aa2468189cb1.md) | 111 | `result-track:ef37b6ea5a35aa2468189cb132dc4a32c6b987fb43c0684e065b62ceb7823c28` |
| 14 | `lemma` | [isCyclic_iff_exists_orderOf_eq_natCard](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-iff-exists-orderof-eq-natcard--3925a18fff9c4c49427d9b83.md) | 120 | `result-track:3925a18fff9c4c49427d9b83c2b1d10bdd87d1c8a1714655862b6e97c9934d5b` |
| 15 | `lemma` | [isCyclic_iff_exists_natCard_le_orderOf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-iff-exists-natcard-le-orderof--6e7daf62152cd9353c824ae7.md) | 125 | `result-track:6e7daf62152cd9353c824ae7c6ac68427aeb02bbe2cd1234ced20dcd95778fb1` |
| 16 | `theorem` | [isCyclic_of_orderOf_eq_card](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-of-orderof-eq-card--3ef020dcfe0e82fc43d543f3.md) | 133 | `result-track:3ef020dcfe0e82fc43d543f36cbc94ee4982b84c022f5950284ae55218a5e9a2` |
| 17 | `theorem` | [isCyclic_of_card_le_orderOf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-of-card-le-orderof--992b71166b5be1373406ad5a.md) | 138 | `result-track:992b71166b5be1373406ad5afeed9f4ce0830a7eee3c37ebba63c505b0edf63f` |
| 18 | `theorem` | [Subgroup.eq_bot_or_eq_top_of_prime_card](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/subgroup-eq-bot-or-eq-top-of-prime-card--175b5e5e52481e6a7a81c512.md) | 143 | `result-track:175b5e5e52481e6a7a81c5128e689966eeec5e64e436c91da38188e6905bf30c` |
| 19 | `theorem` | [zpowers_eq_top_of_prime_card](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/zpowers-eq-top-of-prime-card--b371baad995e010ec9884b05.md) | 151 | `result-track:b371baad995e010ec9884b05648fa16effd11c3c6cac55652cbe8abebed2f062` |
| 20 | `theorem` | [mem_zpowers_of_prime_card](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/mem-zpowers-of-prime-card--9aa814616cfece08ec4f4be0.md) | 158 | `result-track:9aa814616cfece08ec4f4be0f4241adb1c2f8bcaa4967f93d045cfefa1477f1c` |
| 21 | `theorem` | [mem_powers_of_prime_card](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/mem-powers-of-prime-card--76f5cdc08da805fec6971b99.md) | 163 | `result-track:76f5cdc08da805fec6971b9986ed729d68b198c2f060b2fe095df08ebe4926e0` |
| 22 | `theorem` | [powers_eq_top_of_prime_card](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/powers-eq-top-of-prime-card--16773a6206439bf64a2a13ac.md) | 170 | `result-track:16773a6206439bf64a2a13ac105eb4fa18a3e33c11df06d960fff8d63ea010c7` |
| 23 | `theorem` | [isCyclic_of_prime_card](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-of-prime-card--ee634d858877c2006c358fe4.md) | 177 | `result-track:ee634d858877c2006c358fe447cdab296da5ad5dd03463f0b4ecec95ba679ea4` |
| 24 | `theorem` | [isCyclic_of_card_dvd_prime](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-of-card-dvd-prime--089314646589c5f76d980318.md) | 186 | `result-track:089314646589c5f76d980318be7d532b9681e8f47f06f614ed821aad4b8ee66e` |
| 25 | `theorem` | [isCyclic_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-of-surjective--9aa2bf4c46803d905849b295.md) | 193 | `result-track:9aa2bf4c46803d905849b2957e0f442244787ce363a9d42b209c332f2503b89e` |
| 26 | `theorem` | [MulEquiv.isCyclic](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/mulequiv-iscyclic--c55d789096198e9d0adf7c25.md) | 203 | `result-track:c55d789096198e9d0adf7c25710e7c4fb4cd13e202aff800ea164787ff2a705e` |
| 27 | `theorem` | [orderOf_eq_card_of_forall_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/orderof-eq-card-of-forall-mem-zpowers--7fdd5caeb631c63d2e32d8ae.md) | 209 | `result-track:7fdd5caeb631c63d2e32d8ae8f6da5d0b42d0ca9ec6748e6115772614f3f85b9` |
| 28 | `theorem` | [orderOf_eq_card_of_forall_mem_powers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/orderof-eq-card-of-forall-mem-powers--614a4f82ff12861bce3a80bb.md) | 214 | `result-track:614a4f82ff12861bce3a80bb1807285da2acd1efd7ce648450d351b24b4964f5` |
| 29 | `theorem` | [orderOf_eq_card_of_zpowers_eq_top](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/orderof-eq-card-of-zpowers-eq-top--908247970f09ba76fe435938.md) | 220 | `result-track:908247970f09ba76fe4359386131aeaa5a20b8f5bb07a1869a526cb1b0c0cf1a` |
| 30 | `theorem` | [exists_pow_ne_one_of_isCyclic](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/exists-pow-ne-one-of-iscyclic--37202261f10a56112af96acc.md) | 225 | `result-track:37202261f10a56112af96accc54bde2d44ce0678584c175e7a33c67af0ea01cd` |
| 31 | `theorem` | [Infinite.orderOf_eq_zero_of_forall_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/infinite-orderof-eq-zero-of-forall-mem-zpowers--b58a4eed252b4cf99bd4eede.md) | 236 | `result-track:b58a4eed252b4cf99bd4eedeb9452aa0554fba3171f0b1a8f71de809487a3d93` |
| 32 | `instance` | [Bot.isCyclic](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/bot-iscyclic--31899de424f1773ec2e54565.md) | 241 | `declaration-track:31899de424f1773ec2e54565b37c74311c07beb7f7bec7b615ddacb11f662d0a` |
| 33 | `instance` | [Subgroup.isCyclic](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/subgroup-iscyclic--115bac8d50177ed909ebe3fc.md) | 245 | `declaration-track:115bac8d50177ed909ebe3fc57033eb76df6b068d6868269997a00c95de47b93` |
| 34 | `theorem` | [isCyclic_of_injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-of-injective--9434d417bdc6e97d514338aa.md) | 295 | `result-track:9434d417bdc6e97d514338aab5657b3b68332faf36123f973f58e211e5a251aa` |
| 35 | `lemma` | [Subgroup.isCyclic_of_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/subgroup-iscyclic-of-le--6db59995ecc59b9591a060bd.md) | 300 | `result-track:6db59995ecc59b9591a060bd9707d4d473f365b17c6df622bbe8b2d1d17b9626` |
| 36 | `theorem` | [Subgroup.le_zpowers_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/subgroup-le-zpowers-iff--2558ad2975da3cdba117ad11.md) | 304 | `result-track:2558ad2975da3cdba117ad1171bbc73837c9817f774ed541b05fd25b07157d00` |
| 37 | `theorem` | [IsCyclic.card_pow_eq_one_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-card-pow-eq-one-le--b32003b0edf090bcc5bee6a7.md) | 321 | `result-track:b32003b0edf090bcc5bee6a790fc6ce1cc4cb96e6fe758f468123e3104b0a39c` |
| 38 | `theorem` | [IsCyclic.exists_monoid_generator](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-exists-monoid-generator--526bb819bf061f2d7fa508c7.md) | 355 | `result-track:526bb819bf061f2d7fa508c731ca86b4243b387a3062c704c9eb4fc327fe6706` |
| 39 | `lemma` | [IsCyclic.exists_ofOrder_eq_natCard](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-exists-oforder-eq-natcard--64ae9656f18dd368f27cf625.md) | 361 | `result-track:64ae9656f18dd368f27cf62533e6d65910d305c76381d730ac0882048a99a948` |
| 40 | `def` | [MulDistribMulAction.toMonoidHomZModOfIsCyclic](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/muldistribmulaction-tomonoidhomzmodofiscyclic--b3ee16329135474e432b7a03.md) | 370 | `declaration-track:b3ee16329135474e432b7a033b98fa78fd6f5e4321e386a472c0131bb270ce97` |
| 41 | `theorem` | [MulDistribMulAction.toMonoidHomZModOfIsCyclic_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/muldistribmulaction-tomonoidhomzmodofiscyclic-apply--3f7bd6c5fe9c8b5e41238568.md) | 387 | `result-track:3f7bd6c5fe9c8b5e41238568e0045cd777311317af6aed0b9537efa33a636004` |
| 42 | `theorem` | [IsCyclic.unique_zpow_zmod](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-unique-zpow-zmod--19a2667bbf4b54b857b2cb92.md) | 400 | `result-track:19a2667bbf4b54b857b2cb925033b7cc6558a84ce8f9d21ae252cb7db6287eaf` |
| 43 | `theorem` | [IsCyclic.image_range_orderOf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-image-range-orderof--14525e124ac2f2bfb2ca0fe3.md) | 413 | `result-track:14525e124ac2f2bfb2ca0fe3c9aa6253bb0f8bb8006c7b2503e5e17d7117a737` |
| 44 | `theorem` | [IsCyclic.image_range_card](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-image-range-card--470e8a2d84b66a0249d85f51.md) | 418 | `result-track:470e8a2d84b66a0249d85f51854365e6661512bebe548b29bb94c0a3a11e20ed` |
| 45 | `lemma` | [IsCyclic.ext](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/declarations/iscyclic-ext--05003c503d21b64997a29b9a.md) | 423 | `result-track:05003c503d21b64997a29b9ae5df5a5ee0e7564ad0b4462a747bf5f0609821e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
