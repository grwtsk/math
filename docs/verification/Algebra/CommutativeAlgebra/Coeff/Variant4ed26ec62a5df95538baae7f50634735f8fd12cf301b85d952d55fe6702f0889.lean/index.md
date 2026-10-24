# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Coeff.Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13b9666e4c3036fb88db8011afae7dda62ca792b",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13b9666e4c3036fb88db8011afae7dda62ca792b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Support` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coeff_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-add--411a47c2ae220ae710a303d9.md) | 45 | `result-track:411a47c2ae220ae710a303d910c2a50bd895dad51be12cdaeed4ef512c04b578` |
| 2 | `theorem` | [coeff_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-smul--1c909c6e78729b66fdb24d2f.md) | 52 | `result-track:1c909c6e78729b66fdb24d2f9b62e4373e057f930cd22ca753a218f884edcbbe` |
| 3 | `theorem` | [support_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/support-smul--fe5c234138fe26c9a5078799.md) | 58 | `result-track:fe5c234138fe26c9a5078799224360576510ec585d25052a7b0155d1d81701b1` |
| 4 | `theorem` | [card_support_mul_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/card-support-mul-le--d8c03fd2c20fb761a97e1208.md) | 66 | `result-track:d8c03fd2c20fb761a97e120876f3fc34d7789a4a01b26620486afc9991042651` |
| 5 | `def` | [lsum](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/lsum--938f584976d0d4e1b8e2d1fe.md) | 75 | `declaration-track:938f584976d0d4e1b8e2d1feb40649bcc4ae726d2befb8550a9e4f57de579b13` |
| 6 | `def` | [lcoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/lcoeff--816d97a4cb39ac0285d0ecc6.md) | 85 | `declaration-track:816d97a4cb39ac0285d0ecc6e6e8b7bb0d56fab099e4be44fe924db23c8763d7` |
| 7 | `theorem` | [lcoeff_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/lcoeff-apply--b57e1127d5c928a0ebc593d0.md) | 91 | `result-track:b57e1127d5c928a0ebc593d0e42da8fc5c75144982109f848dba5b5f796d3da4` |
| 8 | `theorem` | [finset_sum_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/finset-sum-coeff--e448f7e6908ae1e14135ab45.md) | 95 | `result-track:e448f7e6908ae1e14135ab45d1e1cb004f68834740f8513209e3503ea0517c21` |
| 9 | `lemma` | [coeff_list_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-list-sum--edc1974b7f5796fdf9fb9152.md) | 99 | `result-track:edc1974b7f5796fdf9fb915281a9bfa6305ebf9ddbc4303bebb6b9458675d513` |
| 10 | `lemma` | [coeff_list_sum_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-list-sum-map--24782a07f7b31c68d34c3953.md) | 103 | `result-track:24782a07f7b31c68d34c39530922807b270dbfdb1d490d98c4a8b35389346540` |
| 11 | `theorem` | [coeff_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-sum--ea753f947eb6399ec1262822.md) | 108 | `result-track:ea753f947eb6399ec12628222c1276f990caff309d272dbed566e776bd1f18f5` |
| 12 | `theorem` | [coeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-mul--526a2fc8b76dd98facd02369.md) | 116 | `result-track:526a2fc8b76dd98facd02369381631e4ea705eacf8fa9315ced447b2450f8773` |
| 13 | `theorem` | [mul_coeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/mul-coeff-zero--767ac346a207987c35e57cac.md) | 123 | `result-track:767ac346a207987c35e57cac7ec21f4f8436af050f2a7d8fd0b397cb09524da4` |
| 14 | `theorem` | [mul_coeff_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/mul-coeff-one--53aa68723d32b8b25ad053cc.md) | 125 | `result-track:53aa68723d32b8b25ad053cc9676de9dfe90605427e31ff0f766066339016f2b` |
| 15 | `def` | [constantCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/constantcoeff--63d3770e9db0b19cec2e3e0f.md) | 133 | `declaration-track:63d3770e9db0b19cec2e3e0f2c0124b46934da5dad99afe988149fb6da9004dd` |
| 16 | `theorem` | [isUnit_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/isunit-c--b93b426cab8f8bdb8f2efa07.md) | 140 | `result-track:b93b426cab8f8bdb8f2efa07e18dc752f2736d4e7b487074ee1e85506f59210f` |
| 17 | `theorem` | [coeff_mul_X_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-mul-x-zero--0af8dfb53746ae8744821517.md) | 143 | `result-track:0af8dfb53746ae874482151708e682f803130b2129eb8bc85a4de75220b3d2a9` |
| 18 | `theorem` | [coeff_X_mul_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-x-mul-zero--d6c424cdb6c883e299f1bfb9.md) | 145 | `result-track:d6c424cdb6c883e299f1bfb9b10a59d729eca5c9cf6bbe45635c8f718c44bba3` |
| 19 | `theorem` | [coeff_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-c-mul-x-pow--9de2255fe2ae31b87f26a4d1.md) | 147 | `result-track:9de2255fe2ae31b87f26a4d12cf2b8438d17d62de148213d7049b1a678abc84f` |
| 20 | `theorem` | [coeff_C_mul_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-c-mul-x--0b803cea2a870eb80f89f802.md) | 153 | `result-track:0b803cea2a870eb80f89f802bb4f0827c7603cd721f6e9b69e5e3e2c3e03f6c8` |
| 21 | `theorem` | [coeff_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-c-mul--2fba8fbe42e9db0acd7343dd.md) | 157 | `result-track:2fba8fbe42e9db0acd7343dd488061556f56c17f16667c52510aa3a0cd7c48a8` |
| 22 | `theorem` | [C_mul'](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/c-mul--38aa0b3ee2991226ee567847.md) | 162 | `result-track:38aa0b3ee2991226ee5678471ac2aa947d406e2d821166e8ece1a90cb5a5f77b` |
| 23 | `theorem` | [coeff_mul_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-mul-c--6f155d52b0935b0513414d49.md) | 167 | `result-track:6f155d52b0935b0513414d49ef595b034ce020bdeb06e648169955c7c6d93084` |
| 24 | `lemma` | [coeff_mul_natCast](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-mul-natcast--e2551a2571a7c7fbe78bcc1a.md) | 172 | `result-track:e2551a2571a7c7fbe78bcc1a55fb99c1784e315d5a7c4287a4dee47fd9fe660c` |
| 25 | `lemma` | [coeff_natCast_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-natcast-mul--4388a6dceec380069086d803.md) | 175 | `result-track:4388a6dceec380069086d803c22198ea93a27a68a0d293e26b04498afaf8c4fd` |
| 26 | `lemma` | [coeff_mul_ofNat](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-mul-ofnat--01853ba7b3c72ebbf9c4155d.md) | 178 | `result-track:01853ba7b3c72ebbf9c4155d1cee47cbccd617236bc584609de88a85cd941e59` |
| 27 | `lemma` | [coeff_ofNat_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-ofnat-mul--f74938785b11fa73ed70a46a.md) | 181 | `result-track:f74938785b11fa73ed70a46aa9c9d0a657eb8026ef69dba3b8b863f7514c4211` |
| 28 | `lemma` | [coeff_mul_intCast](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-mul-intcast--aebfa9093a2bd68684a80525.md) | 184 | `result-track:aebfa9093a2bd68684a8052573f0d504cb2a36e042299a5b69574c44eae0381e` |
| 29 | `lemma` | [coeff_intCast_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-intcast-mul--e8faf81a23a24a8c08a72c9d.md) | 187 | `result-track:e8faf81a23a24a8c08a72c9d30dca49966768da51fe2acdd3b28131a94dbb05e` |
| 30 | `theorem` | [coeff_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-x-pow--d1e9efb161e99ea13df8f1fc.md) | 191 | `result-track:d1e9efb161e99ea13df8f1fcc3deaef3319f13466cc95f5db9f138599bedb33e` |
| 31 | `theorem` | [coeff_X_pow_self](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-x-pow-self--bb618c4a7bd948aa1bc09e6f.md) | 194 | `result-track:bb618c4a7bd948aa1bc09e6f7093f035c75889a20455204d26cfa35c1a70625a` |
| 32 | `theorem` | [support_binomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/support-binomial--6ea25a85b9979b33b5eb1b35.md) | 200 | `result-track:6ea25a85b9979b33b5eb1b354ba38de144ef93432d1d6d3d87aa7bb791c98b16` |
| 33 | `theorem` | [support_trinomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/support-trinomial--817b77c384d0849149c89c95.md) | 207 | `result-track:817b77c384d0849149c89c95087a87f6311d373fe012095a6f77f48743166446` |
| 34 | `theorem` | [card_support_binomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/card-support-binomial--96f0f49d638904b6cf593fbe.md) | 216 | `result-track:96f0f49d638904b6cf593fbedcc5eaa2d6da73f1e5e5e7686d20ccdd6b5393f4` |
| 35 | `theorem` | [card_support_trinomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/card-support-trinomial--b92a5b8cac723f3b0d7811b3.md) | 220 | `result-track:b92a5b8cac723f3b0d7811b310ffcfd04f02432cc9cb03b42282dcbb196967b4` |
| 36 | `theorem` | [coeff_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-mul-x-pow--ef258aebe09487ee354eac6f.md) | 230 | `result-track:ef258aebe09487ee354eac6fce3031965ff036987b07e2d356aeae97b810b0a7` |
| 37 | `theorem` | [coeff_X_pow_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-x-pow-mul--667de3013bbd553a0fc6de46.md) | 243 | `result-track:667de3013bbd553a0fc6de46acf741ed65f0f90a2ba6b74b04abf735e6ece012` |
| 38 | `theorem` | [coeff_mul_X_pow'](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-mul-x-pow--9b6039deb33fa977c888db65.md) | 247 | `result-track:9b6039deb33fa977c888db6576b7157b3d2c71bc241240c1a55963dfe583647a` |
| 39 | `theorem` | [coeff_X_pow_mul'](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-x-pow-mul--ff4bda58c47fc5a894411666.md) | 255 | `result-track:ff4bda58c47fc5a894411666993f126814b5f92fcb98fb5a101d96a030c3b862` |
| 40 | `theorem` | [coeff_mul_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-mul-x--988b9e91653520f8e76f3662.md) | 260 | `result-track:988b9e91653520f8e76f366265bdc71bce4e9923ad24ddccd095b800d62829d7` |
| 41 | `theorem` | [coeff_X_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-x-mul--690fbb8202ceb94d4b46fa3c.md) | 264 | `result-track:690fbb8202ceb94d4b46fa3c6446222e3376cfe584e5378c782150246f61435b` |
| 42 | `theorem` | [coeff_mul_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-mul-monomial--2f096cee36867199ae0b801f.md) | 267 | `result-track:2f096cee36867199ae0b801fd496adb458caaacf5fd83d4f66239763227dc255` |
| 43 | `theorem` | [coeff_monomial_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-monomial-mul--e1bdde7242559b9463969098.md) | 271 | `result-track:e1bdde7242559b94639690981ebe5759c930c287678d0b44062b42e8d758a2ae` |
| 44 | `theorem` | [coeff_mul_monomial_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-mul-monomial-zero--253941459157d3cfb2ac61af.md) | 276 | `result-track:253941459157d3cfb2ac61af26a0c2e26d9bca2287e097fbfe6a0f99e2df953a` |
| 45 | `theorem` | [coeff_monomial_zero_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-monomial-zero-mul--4026b41dea0ec3fdde99a538.md) | 281 | `result-track:4026b41dea0ec3fdde99a538bff965cbe26731e82b8553b931f994bb58768ba3` |
| 46 | `theorem` | [mul_X_pow_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/mul-x-pow-eq-zero--af1bdb7778c2e0b0a31e95bd.md) | 285 | `result-track:af1bdb7778c2e0b0a31e95bddf570ea99b872cd0a78375e47946020a780a25ad` |
| 47 | `theorem` | [isRegular_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/isregular-x-pow--3d8f0ca9b12bf213143c68a9.md) | 288 | `result-track:3d8f0ca9b12bf213143c68a914bc4f04ef9f2a598f17f63808482fba3febfe53` |
| 48 | `theorem` | [isRegular_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/isregular-x--82775e82da897ddd41ac5a4f.md) | 295 | `result-track:82775e82da897ddd41ac5a4fd25ac59dd8637d1ba8c8d266db7684dab78d5a0c` |
| 49 | `theorem` | [coeff_X_add_C_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-x-add-c-pow--5550843a0eb8713ebbce4a26.md) | 297 | `result-track:5550843a0eb8713ebbce4a26aafdb74c1d99c7de76a80fc527ee7ec68acc8b9d` |
| 50 | `theorem` | [coeff_X_add_one_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-x-add-one-pow--28a4a51b1b1b6e4eca95ce86.md) | 308 | `result-track:28a4a51b1b1b6e4eca95ce86ec28d346c317bebfc79361177179d3fcd9af9f12` |
| 51 | `theorem` | [coeff_one_add_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/coeff-one-add-x-pow--6c385481be352ec7204fdd30.md) | 311 | `result-track:6c385481be352ec7204fdd30ae38e534bf9bd797848def0e859cc8bd9d52af04` |
| 52 | `theorem` | [C_dvd_iff_dvd_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/c-dvd-iff-dvd-coeff--aba1fa3d59e3c86837f440b1.md) | 314 | `result-track:aba1fa3d59e3c86837f440b1266c2e24179159b76cace4cbe7960468791d8ff8` |
| 53 | `theorem` | [smul_eq_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/smul-eq-c-mul--d0545a2403b4b20aa7560392.md) | 333 | `result-track:d0545a2403b4b20aa7560392a8a786ca52f5c20e35fc7a551ebc7d8018e6661b` |
| 54 | `theorem` | [update_eq_add_sub_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/update-eq-add-sub-coeff--3ec000e434856d7d10e17a95.md) | 335 | `result-track:3ec000e434856d7d10e17a954dd4d8d9c7850b841ceb21c3632001405fbdc088` |
| 55 | `theorem` | [natCast_coeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/natcast-coeff-zero--6d33ece0d265598d3af58d6e.md) | 345 | `result-track:6d33ece0d265598d3af58d6e0ca64b1637bc4c56094186d1572941de67c06612` |
| 56 | `theorem` | [natCast_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/natcast-inj--f5b161fa1bb11043aa1e3109.md) | 349 | `result-track:f5b161fa1bb11043aa1e3109aebaaf2a175872e11f170484b1a48ae35ab61b5c` |
| 57 | `theorem` | [intCast_coeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/intcast-coeff-zero--f1d09db319e3319c82c6d24d.md) | 359 | `result-track:f1d09db319e3319c82c6d24de619e51d5c492865d2eba7fb3257e4dcfe5acc39` |
| 58 | `theorem` | [intCast_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/intcast-inj--52fc1aa0601a7fa4e414b38f.md) | 363 | `result-track:52fc1aa0601a7fa4e414b38feeb845a4b9a21aced01d3ffce1b16ad75c463dfb` |
| 59 | `instance` | [charZero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/charzero--97a63392f76a8cb8a6010766.md) | 373 | `declaration-track:97a63392f76a8cb8a6010766ef61c6cb001051f965e8ca3a47e614cab9365974` |
| 60 | `instance` | [charP](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean/declarations/charp--5d629aeb55347e2553689c9b.md) | 375 | `declaration-track:5d629aeb55347e2553689c9ba28c6f57c8ba4a7d9955371502e52d6c4b6b39ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
