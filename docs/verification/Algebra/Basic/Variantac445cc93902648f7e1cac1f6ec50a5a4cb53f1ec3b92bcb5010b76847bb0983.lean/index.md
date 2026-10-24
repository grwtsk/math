# Verification target: GRWTSK.Algebra.Basic.Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d075b737ad1628597fd61a6a8f94ea8be0d667a",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d075b737ad1628597fd61a6a8f94ea8be0d667a`.

Source path: `GRWTSK/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Sigma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Submonoid` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DirectSum](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/directsum--a2e865e40f0281f89a55ed7f.md) | 42 | `declaration-track:a2e865e40f0281f89a55ed7fc51ea09fe77078b1f24a7a6026de1ed20ad420b0` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/instance--e51979100c4e350d26cfe95a.md) | 48 | `declaration-track:e51979100c4e350d26cfe95a803e119e1111fce4f9253436c7241b21821c7534` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/instance--3f26dc4b7157be98b1045aa7.md) | 51 | `declaration-track:3f26dc4b7157be98b1045aa75226ea4ef367ccc2048ed5360062acdef6649c08` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/instance--8970a2ba7cdda0fcb228be00.md) | 54 | `declaration-track:8970a2ba7cdda0fcb228be00f35757edf3f4960391a9c3df13e127ed5fdc3f39` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/instance--460f9d9683561843c4933d98.md) | 57 | `declaration-track:460f9d9683561843c4933d9870e99e56097fb54b6e89053939980d875e42c3f8` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/instance--fc940621034bc715de98712c.md) | 75 | `declaration-track:fc940621034bc715de98712cb23491754894f8d7a3d18e92cc11c420252896b3` |
| 7 | `def` | [coeFnAddMonoidHom](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/coefnaddmonoidhom--9b9e4f42bf8861119e057287.md) | 84 | `declaration-track:9b9e4f42bf8861119e05728704902cd5e0e99304551bf94649be3d847d5ad709` |
| 8 | `lemma` | [coeFnAddMonoidHom_apply](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/coefnaddmonoidhom-apply--e1c4cba86045ad475aea117c.md) | 89 | `result-track:e1c4cba86045ad475aea117ccb4e21d900ac351613d90ba3fba3a1b034a37285` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/instance--61a0eb1319247a6b7d347b90.md) | 97 | `declaration-track:61a0eb1319247a6b7d347b9044d1b4eb29bd74a31e2b6244489271f4c6bd5471` |
| 10 | `theorem` | [sub_apply](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/sub-apply--62e0c53ca5864e752630e345.md) | 102 | `result-track:62e0c53ca5864e752630e3453e4562dafdf54f9075bd428c96be0064d30e02f0` |
| 11 | `theorem` | [ext](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/ext--cca35814b3fa6f68c1f174a9.md) | 109 | `result-track:cca35814b3fa6f68c1f174a963b2d5e6f46f52b47e017041d8c7d7b5c81f0df4` |
| 12 | `theorem` | [zero_apply](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/zero-apply--171d6459f57262204ffc0d0a.md) | 113 | `result-track:171d6459f57262204ffc0d0a098a979bca0120f4287ec3d799ae52dc232dc19a` |
| 13 | `theorem` | [add_apply](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/add-apply--d8117b28d4af8171d0161380.md) | 119 | `result-track:d8117b28d4af8171d01613809c87d89e9e6b3e614106188d87c94fb805609514` |
| 14 | `def` | [mk](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/mk--47192e4cb4558dc7d696cdbb.md) | 130 | `declaration-track:47192e4cb4558dc7d696cdbbafdc4eafc9dce3067226b4660d7531bdddbfd890` |
| 15 | `def` | [of](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/of--29df16e8e5787eb607409ca4.md) | 136 | `declaration-track:29df16e8e5787eb607409ca4730694ae28bbeaee7097816f852a08acdbcf1249` |
| 16 | `theorem` | [of_eq_same](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/of-eq-same--75d2b701c4307333af10ec44.md) | 142 | `result-track:75d2b701c4307333af10ec44b32d600cdebec246ccca6ba5dfffb01d0552ba9e` |
| 17 | `theorem` | [of_eq_of_ne](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/of-eq-of-ne--7e4294529234f333003382df.md) | 145 | `result-track:7e4294529234f333003382df1fced32ccfefdaf717d560563c5b8c7fb9a33c92` |
| 18 | `lemma` | [of_apply](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/of-apply--452dfbaf425303b6cea6a9f3.md) | 148 | `result-track:452dfbaf425303b6cea6a9f3cd2b6ece5226b3669c98ccb00b3ab6ab80d35de0` |
| 19 | `theorem` | [mk_apply_of_mem](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/mk-apply-of-mem--c53690b852308f550e00df68.md) | 151 | `result-track:c53690b852308f550e00df68ede626efbb51e5bb94b436086c91baf7e179d2f7` |
| 20 | `theorem` | [mk_apply_of_notMem](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/mk-apply-of-notmem--27b0e6809db6bb2191a2a87e.md) | 156 | `result-track:27b0e6809db6bb2191a2a87e8cd2173b42b3228e02bcb4b01e9ebbc2345d83cb` |
| 21 | `theorem` | [support_zero](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/support-zero--de1ac2b3308b0e94534144bb.md) | 164 | `result-track:de1ac2b3308b0e94534144bb0e00baded8290e6f1a99d873d850802419ec480c` |
| 22 | `theorem` | [support_of](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/support-of--df1b23ad189557ae5c273315.md) | 168 | `result-track:df1b23ad189557ae5c27331575446a14ad53682ca4adfa67eed2d340f0570dbe` |
| 23 | `theorem` | [support_of_subset](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/support-of-subset--a82c7e3606a457f3930dc4d5.md) | 172 | `result-track:a82c7e3606a457f3930dc4d5a795ce53c77820bc2635fe3e6d2f7ca256041e02` |
| 24 | `theorem` | [sum_support_of](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/sum-support-of--bf7cab39a6d6b184140d12c1.md) | 176 | `result-track:bf7cab39a6d6b184140d12c1f78b38ce87ebbe9aaa4de1124a138df0ed06dff9` |
| 25 | `theorem` | [sum_univ_of](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/sum-univ-of--c62f92905bc745e90197a7e6.md) | 180 | `result-track:c62f92905bc745e90197a7e6c795319cf292985ca4f9d70263e4d441c00d6e25` |
| 26 | `theorem` | [mk_injective](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/mk-injective--6435d417e4051c9f0f536731.md) | 186 | `result-track:6435d417e4051c9f0f536731eb37f4f8007dd4e995cfbb6b2b1189ce3ccf3e20` |
| 27 | `theorem` | [of_injective](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/of-injective--eb4381d50a3ffda1b2706db7.md) | 189 | `result-track:eb4381d50a3ffda1b2706db73ef5f208e9c71bfd9d9fcf9ae0159f14147f075c` |
| 28 | `theorem` | [induction_on](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/induction-on--9e08efd2838700988808e530.md) | 193 | `result-track:9e08efd2838700988808e530d6178c254643eca1e2c23951ada1f4a58a60f264` |
| 29 | `theorem` | [addHom_ext](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/addhom-ext--5e55437c68e17dbeaa557aed.md) | 202 | `result-track:5e55437c68e17dbeaa557aedc853e80d374be9de85de1566e68975ee4cec7ad4` |
| 30 | `theorem` | [addHom_ext'](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/addhom-ext--23fd1330282377b17865f9c8.md) | 211 | `result-track:23fd1330282377b17865f9c88c26aa13a0f2f9bd5e136d532dfff7cf0fb3e457` |
| 31 | `def` | [toAddMonoid](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/toaddmonoid--f2316a65152084de4015a522.md) | 226 | `declaration-track:f2316a65152084de4015a522b61355891e5bd403e667b328bd75835fdf86b947` |
| 32 | `theorem` | [toAddMonoid_of](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/toaddmonoid-of--8d12d06b935f4af68c04a4b2.md) | 230 | `result-track:8d12d06b935f4af68c04a4b291eecc7a20f9bfdf3f20107ff41bf1911dca1093` |
| 33 | `theorem` | [toAddMonoid.unique](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/toaddmonoid-unique--9163028b472fe86c90c2b207.md) | 233 | `result-track:9163028b472fe86c90c2b20725af0a9d679bfb8fe5bcbdebfbdcbacfb6102ada` |
| 34 | `lemma` | [toAddMonoid_injective](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/toaddmonoid-injective--1167a7611782ae142e59aa85.md) | 239 | `result-track:1167a7611782ae142e59aa8501eb0d0793c583cac8be6fd5ff6e8e27fc87c182` |
| 35 | `lemma` | [toAddMonoid_inj](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/toaddmonoid-inj--89a327e0fb40789ca64ef0ac.md) | 242 | `result-track:89a327e0fb40789ca64ef0acecc31e4209b6a1c3a75cabf912b54f45ce93deb8` |
| 36 | `def` | [fromAddMonoid](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/fromaddmonoid--02a9bac7f22e47aa107bd13b.md) | 253 | `declaration-track:02a9bac7f22e47aa107bd13ba60ef6426b2135ff55054a36bf2ba416726ead54` |
| 37 | `theorem` | [fromAddMonoid_of](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/fromaddmonoid-of--40f8583fe5b3765d1cd11f5a.md) | 257 | `result-track:40f8583fe5b3765d1cd11f5a283cea04b921bc4c4bf9027d45d4125698d1296f` |
| 38 | `theorem` | [fromAddMonoid_of_apply](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/fromaddmonoid-of-apply--f5bfbe7004557a20264407da.md) | 261 | `result-track:f5bfbe7004557a20264407da8d3bb85c334e1b09c5e397587a298b6948fc834a` |
| 39 | `def` | [setToSet](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/settoset--a435cf535211d018b052f9b9.md) | 272 | `declaration-track:a435cf535211d018b052f9b9ae32dd6ec67373cc18a28a8622437383e89cdce5` |
| 40 | `instance` | [unique](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/unique--9fc93bdde71406c373f1217e.md) | 277 | `declaration-track:9fc93bdde71406c373f1217e01ef85cb2745712b730d150f4404e495b462e9aa` |
| 41 | `instance` | [uniqueOfIsEmpty](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/uniqueofisempty--1296461582a07911272cecbb.md) | 281 | `declaration-track:1296461582a07911272cecbb723d520c8a0107db400a0ac982104571d8b345fe` |
| 42 | `def` | [id](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/id--c0bab195d5ce08afafb8274e.md) | 285 | `declaration-track:c0bab195d5ce08afafb8274ed022cccc3937bab6dd5a965fd18104774c79b1ff` |
| 43 | `def` | [equivCongrLeft](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/equivcongrleft--1b86a287e17c726bf75f7bb3.md) | 304 | `declaration-track:1b86a287e17c726bf75f7bb349cdff750559d218f6e6206989dd13856eefb799` |
| 44 | `theorem` | [equivCongrLeft_apply](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/equivcongrleft-apply--d20997a69ad118ecce2d6ce4.md) | 308 | `result-track:d20997a69ad118ecce2d6ce4d8bb5c5f5585b05c48e7d77ad1c516d78962b755` |
| 45 | `def` | [addEquivProdDirectSum](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/addequivproddirectsum--2cdf2fd097fb9fa977f4aba2.md) | 320 | `declaration-track:2cdf2fd097fb9fa977f4aba23ee211accda92710077e3fa94001e2fb7bb31468` |
| 46 | `def` | [sigmaCurry](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/sigmacurry--35270fa3bdd291e567547d06.md) | 330 | `declaration-track:35270fa3bdd291e567547d063fd48d5481af67e26f744fe65c2a4661d2be283f` |
| 47 | `theorem` | [sigmaCurry_apply](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/sigmacurry-apply--b625d95267806811424756c4.md) | 336 | `result-track:b625d95267806811424756c406562934dfafdf8d9dae85cad73da08bf2cefa61` |
| 48 | `def` | [sigmaUncurry](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/sigmauncurry--c486f1e70884c6c95cd18b3d.md) | 342 | `declaration-track:c486f1e70884c6c95cd18b3d10a5bceb3907a25fb4e170d334671b7d9bea974e` |
| 49 | `theorem` | [sigmaUncurry_apply](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/sigmauncurry-apply--e42a9df49dc04851ac2807d5.md) | 348 | `result-track:e42a9df49dc04851ac2807d5b61b7e14a6b764ef23f86095d8b76611e0e05c8a` |
| 50 | `def` | [sigmaCurryEquiv](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/sigmacurryequiv--75c0f22f90bd0eeaa766dcad.md) | 353 | `declaration-track:75c0f22f90bd0eeaa766dcad86cd9947e03a6f39a4b2b7707a7e5ba8dec3acb0` |
| 51 | `def` | [coeAddMonoidHom](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/coeaddmonoidhom--f49636c67379b702a58ea2dc.md) | 362 | `declaration-track:f49636c67379b702a58ea2dc5b61ba4fdfd52e3dab39e035cf29dcbe963cfd99` |
| 52 | `theorem` | [coeAddMonoidHom_eq_dfinsuppSum](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/coeaddmonoidhom-eq-dfinsuppsum--b04b4b8bc35ee383a8a6379f.md) | 366 | `result-track:b04b4b8bc35ee383a8a6379f04a285f324a2e8b05fc84c7f8f62fa66138b2d68` |
| 53 | `theorem` | [coeAddMonoidHom_of](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/coeaddmonoidhom-of--343175a6a1f527c7d15e7fe8.md) | 378 | `result-track:343175a6a1f527c7d15e7fe88c9123ba29a7d2a22e1e92957ae3d0a4d5d0a6e8` |
| 54 | `theorem` | [coe_of_apply](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/coe-of-apply--52c7c5fa81246b0d0b6e7c24.md) | 383 | `result-track:52c7c5fa81246b0d0b6e7c240be6151a06ac7c3b0115ab9ffe2fcd1d2c4890ed` |
| 55 | `def` | [IsInternal](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/isinternal--8e42114320bbe5b7b1c5f261.md) | 396 | `declaration-track:8e42114320bbe5b7b1c5f261ad34b9c9662cee191c44dec51ffebc640eb4f9fb` |
| 56 | `theorem` | [IsInternal.addSubmonoid_iSup_eq_top](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/isinternal-addsubmonoid-isup-eq-top--b48dd208d2b8ee47cd37f08e.md) | 400 | `result-track:b48dd208d2b8ee47cd37f08ec648f702fbd6f7992dc24649f2b52b51f9b35693` |
| 57 | `theorem` | [support_subset](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/support-subset--8bf6e7834d0110e16af22d36.md) | 407 | `result-track:8bf6e7834d0110e16af22d365e5b83a6c69323c44c72f0858fac864e756d0209` |
| 58 | `theorem` | [finite_support](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/finite-support--c344432c433acf771fd24eef.md) | 413 | `result-track:c344432c433acf771fd24eeff491fc534d1bbd6d38b742a5dd30c4fd3fad687a` |
| 59 | `def` | [map](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/map--111c4961ce8e2861431038c5.md) | 424 | `declaration-track:111c4961ce8e2861431038c562e1bdc642562d314d498693ae6c5f4aed918c6f` |
| 60 | `lemma` | [map_of](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/map-of--a17bfd6f3b150c5f9f5fbb07.md) | 426 | `result-track:a17bfd6f3b150c5f9f5fbb07874c0ec9fab01200eb3f8edaedaefc85b21293c6` |
| 61 | `lemma` | [map_apply](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/map-apply--cd2d1d1139b275c11dd39346.md) | 429 | `result-track:cd2d1d1139b275c11dd39346b0167c864726323e00b0f17b50242fa5488b5c12` |
| 62 | `lemma` | [map_id](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/map-id--ed3b7eb4e500c20e7ae43996.md) | 432 | `result-track:ed3b7eb4e500c20e7ae43996f76e8ca340191e48bc44b3deaf1f823128e219ce` |
| 63 | `lemma` | [map_comp](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/map-comp--1a3f94a7ac3938b8786319b3.md) | 436 | `result-track:1a3f94a7ac3938b8786319b3292b9ec5ccc3ece112caff85f826611f5c6a0e0f` |
| 64 | `lemma` | [map_injective](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/map-injective--39be055ff0ad37c822432126.md) | 441 | `result-track:39be055ff0ad37c822432126d280a38d9882337741dc353cad6318d81451ebaa` |
| 65 | `lemma` | [map_surjective](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/map-surjective--aec5989b005ae1657e04ded1.md) | 444 | `result-track:aec5989b005ae1657e04ded1f28f652c6067370d5ca12405933f23a40b974243` |
| 66 | `lemma` | [map_eq_iff](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/map-eq-iff--e94ee06049276d1e677a7bb1.md) | 447 | `result-track:e94ee06049276d1e677a7bb12a2329bfc7c023f8b6abfd18e8f51504ad3cc103` |
| 67 | `def` | [DirectSum.addEquivProd](../../../../mathematics/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/declarations/directsum-addequivprod--54907f8de40f5618b1b2c611.md) | 457 | `declaration-track:54907f8de40f5618b1b2c6114e04bb8bbdfac0ba27ed27abadefb6cab3570311` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
