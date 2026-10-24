# Verification target: GRWTSK.Algebra.Basic.Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9228e7eb724e682c7f1224347e434b11d36bb55f",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9228e7eb724e682c7f1224347e434b11d36bb55f`.

Source path: `GRWTSK/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Notation.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sum.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Unique` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Spread` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [semigroup](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/semigroup--31ab1ac56449f3340f6a291b.md) | 53 | `declaration-track:31ab1ac56449f3340f6a291ba02cca11e932e05acceed4c38320d840a6225b67` |
| 2 | `instance` | [commSemigroup](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/commsemigroup--98695b9428f762dec152b69d.md) | 57 | `declaration-track:98695b9428f762dec152b69db350cf99430a50d71bdec93cd1073e3a677bde97` |
| 3 | `instance` | [mulOneClass](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/muloneclass--5232916bc74764cde948d272.md) | 61 | `declaration-track:5232916bc74764cde948d272d763ae461cec07c124b9fd812214730c1f9ebc2e` |
| 4 | `instance` | [invOneClass](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/invoneclass--37e3330e937a08d7ff2e8e56.md) | 66 | `declaration-track:37e3330e937a08d7ff2e8e5610fbf4ab13e202b10f7aec8308170631577acc9f` |
| 5 | `instance` | [monoid](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/monoid--a977084272bc756955920e49.md) | 70 | `declaration-track:a977084272bc756955920e4991e6f3d11e7cac9ce19630da67a9b619db00a6a5` |
| 6 | `instance` | [commMonoid](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/commmonoid--0450da3ea6e2f52d5978730f.md) | 78 | `declaration-track:0450da3ea6e2f52d5978730ff22218800033a294eaf06e9aae37a0f8a90acca4` |
| 7 | `instance` | [divInvMonoid](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/divinvmonoid--82650cbe5613f8200f879509.md) | 82 | `declaration-track:82650cbe5613f8200f879509672a6ceeebe29eb610a14609f2fd646d9837af51` |
| 8 | `instance` | [divInvOneMonoid](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/divinvonemonoid--9a96d089450d11924ee7e1ae.md) | 90 | `declaration-track:9a96d089450d11924ee7e1ae4511bb5ad3d1ae498e95712f16411cfed8c80a98` |
| 9 | `instance` | [involutiveInv](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/involutiveinv--ba896deed18556581d7e54a2.md) | 94 | `declaration-track:ba896deed18556581d7e54a2cb9d2c48eb2c1c81506d200dcb45704d2ca5d6fd` |
| 10 | `instance` | [divisionMonoid](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/divisionmonoid--80e5acca7818775ecbaee0a2.md) | 98 | `declaration-track:80e5acca7818775ecbaee0a24aa2eb069c5d68a55a67ae3d75dfb10747e29648` |
| 11 | `instance` | [divisionCommMonoid](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/divisioncommmonoid--e7260650a8e69a56ecc4ed7d.md) | 105 | `declaration-track:e7260650a8e69a56ecc4ed7de9b65bb097ac009fd36f68aaafc713f211179826` |
| 12 | `instance` | [group](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/group--d92ac617306a011e9e2ab6d5.md) | 109 | `declaration-track:d92ac617306a011e9e2ab6d5d66cf0429578a6a065effe27aacc9d0dea8a9e8a` |
| 13 | `instance` | [commGroup](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/commgroup--9cff03bab88576ecf6605a63.md) | 113 | `declaration-track:9cff03bab88576ecf6605a63f191674f998b81f7381e6aa968e4de2603fee28b` |
| 14 | `instance` | [instIsLeftCancelMul](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/instisleftcancelmul--54af3c8ac9c5a69d7825f147.md) | 115 | `declaration-track:54af3c8ac9c5a69d7825f147c534f940bb9baae058bb82162859bb8866288c45` |
| 15 | `instance` | [instIsRightCancelMul](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/instisrightcancelmul--b5c1114bd6446039f5a37149.md) | 119 | `declaration-track:b5c1114bd6446039f5a37149eff84604a1ad60ee9a5fb5f5d72c7bd8d152c4ca` |
| 16 | `instance` | [instIsCancelMul](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/instiscancelmul--d536b1796cf05bf9d36f7d1d.md) | 123 | `declaration-track:d536b1796cf05bf9d36f7d1d91257bae5a9eb876e7884e61c2f612c4ed5a3f95` |
| 17 | `instance` | [leftCancelSemigroup](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/leftcancelsemigroup--59613c13c66f7f2568ddd436.md) | 127 | `declaration-track:59613c13c66f7f2568ddd43604b04a5c873e5e3cde25666876d56e37d524dd70` |
| 18 | `instance` | [rightCancelSemigroup](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/rightcancelsemigroup--0ddbf41eda5729354fbe69d2.md) | 131 | `declaration-track:0ddbf41eda5729354fbe69d2157d2974b908dc922a5a3d61c97f773223a97876` |
| 19 | `instance` | [leftCancelMonoid](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/leftcancelmonoid--988c4b6fd4f67ef4008ea678.md) | 135 | `declaration-track:988c4b6fd4f67ef4008ea67803836f4ddca064a35100569c0eaf424b3744e951` |
| 20 | `instance` | [rightCancelMonoid](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/rightcancelmonoid--2e70e44dbb5485a9b155af75.md) | 139 | `declaration-track:2e70e44dbb5485a9b155af75c6b46ab4a79fa29840fac0ea98bfb4c2d222a4ca` |
| 21 | `instance` | [cancelMonoid](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/cancelmonoid--6d99531b18162f4c0eacd94c.md) | 143 | `declaration-track:6d99531b18162f4c0eacd94c16bd5255373c77d2b7b78693057b97c72876554f` |
| 22 | `instance` | [cancelCommMonoid](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/cancelcommmonoid--4512074e4c488802c9b97628.md) | 147 | `declaration-track:4512074e4c488802c9b976284942b77ada7999a5024b1cc478c347c2855e495b` |
| 23 | `def` | [mulSingle](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/mulsingle--82dcfff1841c7631866abdaa.md) | 157 | `declaration-track:82dcfff1841c7631866abdaae977d797f8a8e8200cd31ab89d4e77269cb2915b` |
| 24 | `theorem` | [mulSingle_eq_same](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/mulsingle-eq-same--c4442cdcc16a68061c8f7816.md) | 161 | `result-track:c4442cdcc16a68061c8f781692b1dc0922634b4ff23d6c359d8e64b3252f17bc` |
| 25 | `theorem` | [mulSingle_eq_of_ne](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/mulsingle-eq-of-ne--a88f6a18656c279f6e9c6099.md) | 165 | `result-track:a88f6a18656c279f6e9c6099f9ff36b5aa8ff1f0586909dd8f899b62668fe2f8` |
| 26 | `theorem` | [mulSingle_eq_of_ne'](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/mulsingle-eq-of-ne--831dd305acf1a5be11569e47.md) | 171 | `result-track:831dd305acf1a5be11569e47e009e7d2d4497faa315211978c468647c259974c` |
| 27 | `theorem` | [mulSingle_one](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/mulsingle-one--c0673d333336bc9270a868ac.md) | 175 | `result-track:c0673d333336bc9270a868acb909aa8a43cd59181161b59d8e51000789df034c` |
| 28 | `theorem` | [mulSingle_eq_one_iff](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/mulsingle-eq-one-iff--c20cab0e7702156190cc2d49.md) | 179 | `result-track:c20cab0e7702156190cc2d49da70714aa0cff70abc7d6654cc1a2e6d3eae1743` |
| 29 | `theorem` | [mulSingle_ne_one_iff](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/mulsingle-ne-one-iff--dfaad458eb5408a8547861ee.md) | 184 | `result-track:dfaad458eb5408a8547861ee4874369459377b9b3942abb73a8ed3f6c0d70dce` |
| 30 | `theorem` | [apply_mulSingle](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/apply-mulsingle--2974ce5710b2f66cbd5453a0.md) | 188 | `result-track:2974ce5710b2f66cbd5453a025c9e5aaec18addacab839a6645d00687a7ae266` |
| 31 | `theorem` | [apply_mulSingle₂](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/apply-mulsingle--f3093b94d5ab5b60e97ec1ae.md) | 193 | `result-track:f3093b94d5ab5b60e97ec1ae1adaa5fc80f8d20f2b0e28fe261b2458ef862a7c` |
| 32 | `theorem` | [mulSingle_op](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/mulsingle-op--4b7214156a168f6a7b810543.md) | 202 | `result-track:4b7214156a168f6a7b81054367d09cf289c1b0d7202e96683765ab15a43525e5` |
| 33 | `theorem` | [mulSingle_op₂](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/mulsingle-op--68a4f9a0e20a78e51f69a7f8.md) | 207 | `result-track:68a4f9a0e20a78e51f69a7f866d0fb531db7bd2d8c23dbce44c6e4ee4aa240c3` |
| 34 | `theorem` | [mulSingle_injective](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/mulsingle-injective--07d453514c29cfd2381c7c1c.md) | 215 | `result-track:07d453514c29cfd2381c7c1c45b9eda5c242e30e95125169dfd904356bc76f6d` |
| 35 | `theorem` | [mulSingle_inj](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/mulsingle-inj--52f4f72314185f1abee20abb.md) | 219 | `result-track:52f4f72314185f1abee20abbeadb09e0961e6148aa8057b9442d7cf141f05335` |
| 36 | `lemma` | [mulSingle_apply](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/mulsingle-apply--289d114c98202c65f813e949.md) | 227 | `result-track:289d114c98202c65f813e9495d11e89dae7f3ea0ac0fbbbf836480dd5e0ad8f4` |
| 37 | `lemma` | [mulSingle_comm](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/mulsingle-comm--4f94c4b338b0b32ef2e7c417.md) | 234 | `result-track:4f94c4b338b0b32ef2e7c417c1a06171a44f202b4a2d9f1dd646c43da8df2c62` |
| 38 | `def` | [prod](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/prod--6f7ded5b63126b87a8639b70.md) | 242 | `declaration-track:6f7ded5b63126b87a8639b7063e95fb5249d85633d1492a248b229975703c252` |
| 39 | `theorem` | [prod_fst_snd](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/prod-fst-snd--680d496ba13cf48a2fca3f46.md) | 247 | `result-track:680d496ba13cf48a2fca3f46dc5238829e532b991fc3b8a657f5cf0c6ab0408c` |
| 40 | `theorem` | [prod_snd_fst](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/prod-snd-fst--bacc52cfe80f2ba4527c4e56.md) | 252 | `result-track:bacc52cfe80f2ba4527c4e56358d8e146439cc623cdf05e5a500ae6e6b65f37b` |
| 41 | `theorem` | [extend_one](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/extend-one--7f783f837cbe9e99934dd542.md) | 262 | `result-track:7f783f837cbe9e99934dd5428cb70ede0b35af2140ec7c82fb9c0569eabedffc` |
| 42 | `theorem` | [extend_mul](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/extend-mul--21bb1e6ddc027bcd39559c98.md) | 266 | `result-track:21bb1e6ddc027bcd39559c98268a865c68570215d366ed1752c06771d469cf2a` |
| 43 | `theorem` | [extend_inv](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/extend-inv--2122261f161b487f049243ae.md) | 278 | `result-track:2122261f161b487f049243ae703f4c800ea5dc9798e4ba400986d1d1acf6ba4e` |
| 44 | `theorem` | [extend_div](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/extend-div--d2879bfea38874faf4e0dfed.md) | 290 | `result-track:d2879bfea38874faf4e0dfedf987fddf771c69f799907a61fa601e6969347860` |
| 45 | `lemma` | [comp_eq_const_iff](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/comp-eq-const-iff--1c02b9775a5e51609dfea705.md) | 303 | `result-track:1c02b9775a5e51609dfea7050dd78f63ebdee673fca1d36c22922ee6d91663cf` |
| 46 | `lemma` | [comp_eq_one_iff](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/comp-eq-one-iff--126d1c5525239d764249c7af.md) | 308 | `result-track:126d1c5525239d764249c7afa76e9735724088cfad3ddf937a9fbf1e030ee859` |
| 47 | `lemma` | [comp_ne_one_iff](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/comp-ne-one-iff--fc869a06c3bc7e86a6385bb0.md) | 313 | `result-track:fc869a06c3bc7e86a6385bb06877e68b779e31c0aa2a7c788735f03664459454` |
| 48 | `def` | [uniqueOfSurjectiveOne](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/uniqueofsurjectiveone--791dc58055be6f85bfc1c483.md) | 321 | `declaration-track:791dc58055be6f85bfc1c4830fff919311e5b54a54099ff99e07fd12182dad7b` |
| 49 | `theorem` | [Subsingleton.pi_mulSingle_eq](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/subsingleton-pi-mulsingle-eq--729aa573ec3ad000e835a0c4.md) | 326 | `result-track:729aa573ec3ad000e835a0c459fb8282b392f1ae2e799bc873258f4870fdbf5a` |
| 50 | `theorem` | [elim_one_one](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/elim-one-one--5cc677d3f038e5b82ef3b362.md) | 335 | `result-track:5cc677d3f038e5b82ef3b3623238c40c1d6e2ef433b79af3237b661ef7a8d0f3` |
| 51 | `theorem` | [elim_mulSingle_one](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/elim-mulsingle-one--a2cfacfbbec7deac78ad4fbb.md) | 339 | `result-track:a2cfacfbbec7deac78ad4fbb87efb28886ccf3fef44d09dbc3a16e0fedc8223b` |
| 52 | `theorem` | [elim_one_mulSingle](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/elim-one-mulsingle--e4b30077b7bc9812a7e9bfbf.md) | 344 | `result-track:e4b30077b7bc9812a7e9bfbfa43d1e017e6e7dca78561e643441fc9a856ea6cb` |
| 53 | `theorem` | [elim_inv_inv](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/elim-inv-inv--a5c664059694240c39bb78ee.md) | 349 | `result-track:a5c664059694240c39bb78eebd67fbc1ea9763f64e99ef8a20795efc17acb509` |
| 54 | `theorem` | [elim_mul_mul](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/elim-mul-mul--03621e426f6df43ecbeb0e49.md) | 353 | `result-track:03621e426f6df43ecbeb0e49592c3d8b461c0935381787c1a11188dbbdc2d4c6` |
| 55 | `theorem` | [elim_div_div](../../../../mathematics/Algebra/Basic/Variantf4f9a9bdf482a0bda0396f8367cb35c995637bdaca27f6ade3a497f26cc6a21b.lean/declarations/elim-div-div--00c93bcce468bde3613d8af6.md) | 358 | `result-track:00c93bcce468bde3613d8af6067f1c210c2bfe2000e7e3911ca19503ede0d7c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
