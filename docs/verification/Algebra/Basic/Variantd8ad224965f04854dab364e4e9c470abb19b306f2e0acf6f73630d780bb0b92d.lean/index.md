# Verification target: GRWTSK.Algebra.Basic.Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd8dda8b24eba0b13ebe6dd6b46dd10f122d8d3e",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd8dda8b24eba0b13ebe6dd6b46dd10f122d8d3e`.

Source path: `GRWTSK/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Notation.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sum.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Unique` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Spread` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [semigroup](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/semigroup--8b8aa8c1106dfca5f06baf7e.md) | 45 | `declaration-track:8b8aa8c1106dfca5f06baf7edfef451e2cbb4fb779c431a5c827c249f02d5185` |
| 2 | `instance` | [commSemigroup](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/commsemigroup--dfadf167f03c5c4cc895fb72.md) | 49 | `declaration-track:dfadf167f03c5c4cc895fb72dac0bc4567d8e103485323ad7da2aecb1e794814` |
| 3 | `instance` | [mulOneClass](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/muloneclass--5753ebac2e2ec092b40baf41.md) | 53 | `declaration-track:5753ebac2e2ec092b40baf414ed1962f9690114a1a0258da8e79234d18b6ae3c` |
| 4 | `instance` | [invOneClass](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/invoneclass--7c75dd75d6d6ce435454f108.md) | 58 | `declaration-track:7c75dd75d6d6ce435454f108cc67ba043c1218e6622a95d18cb057aedc7cafae` |
| 5 | `instance` | [monoid](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/monoid--61733a2581f386835687e96d.md) | 62 | `declaration-track:61733a2581f386835687e96dff597b78ba6ded9b5c34ba32824a834d352634ae` |
| 6 | `instance` | [commMonoid](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/commmonoid--5fcd73836eae05c58af5d5e0.md) | 70 | `declaration-track:5fcd73836eae05c58af5d5e0dc7a50318124e456fc2888d3504ea62b17fb4449` |
| 7 | `instance` | [divInvMonoid](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/divinvmonoid--ae4de6f7702afaeb7a58df7b.md) | 74 | `declaration-track:ae4de6f7702afaeb7a58df7b98c29078f020a7d7038609138495de79446d5eb9` |
| 8 | `instance` | [divInvOneMonoid](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/divinvonemonoid--84c867a569b99cf515b96c52.md) | 82 | `declaration-track:84c867a569b99cf515b96c52b8e7c7947efcb88fdc7745b2cc8717f8f11c2343` |
| 9 | `instance` | [involutiveInv](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/involutiveinv--c106f14c605a1bacc9799daa.md) | 86 | `declaration-track:c106f14c605a1bacc9799daaebf80160738eef0349f0b9efef562ee3824e4261` |
| 10 | `instance` | [divisionMonoid](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/divisionmonoid--7db1900eaee1882c2851449a.md) | 90 | `declaration-track:7db1900eaee1882c2851449aef3518e5316c78ca319eacaaeaf02ad75b5ff153` |
| 11 | `instance` | [divisionCommMonoid](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/divisioncommmonoid--295b8ed5db9c985b8e50946a.md) | 97 | `declaration-track:295b8ed5db9c985b8e50946aed05839320c5a598fdb9d0dcd66aeb94ded52179` |
| 12 | `instance` | [group](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/group--9e6923f679b11e4b42a7f54a.md) | 101 | `declaration-track:9e6923f679b11e4b42a7f54a778deb0136cc13f9c670b4101703b63d9ae886f4` |
| 13 | `instance` | [commGroup](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/commgroup--a99a4f51da66c053d78978b7.md) | 105 | `declaration-track:a99a4f51da66c053d78978b79a2d244dc4f091de6435bfdb62a7abf89c22bfdd` |
| 14 | `instance` | [instIsLeftCancelMul](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/instisleftcancelmul--96f6dc1ec461fc09d56438b9.md) | 107 | `declaration-track:96f6dc1ec461fc09d56438b90a28db4e723e379f6c26cd14d8715d8c06b43ecd` |
| 15 | `instance` | [instIsRightCancelMul](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/instisrightcancelmul--9abeceafc58120221d758f56.md) | 111 | `declaration-track:9abeceafc58120221d758f56b950f5267e71521e04fa72f8c205995eb5839622` |
| 16 | `instance` | [instIsCancelMul](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/instiscancelmul--f62093175cc193efb652045e.md) | 115 | `declaration-track:f62093175cc193efb652045ec551edaf65cb7488a49ce46016adab6828b45529` |
| 17 | `instance` | [leftCancelSemigroup](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/leftcancelsemigroup--be78c9d3abedd05f682dceb0.md) | 119 | `declaration-track:be78c9d3abedd05f682dceb08a3acda0a7448171ef6aa7a12c4c5ecdabba04b2` |
| 18 | `instance` | [rightCancelSemigroup](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/rightcancelsemigroup--9374fe6f05e1a78582421b58.md) | 123 | `declaration-track:9374fe6f05e1a78582421b587db953633b696cafa9c9dfa8d90b1d416082780e` |
| 19 | `instance` | [leftCancelMonoid](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/leftcancelmonoid--4bfcb6febf3ee7ee616e443c.md) | 127 | `declaration-track:4bfcb6febf3ee7ee616e443ce4029957af8d87511fbcb83c74d8240fd7d2a493` |
| 20 | `instance` | [rightCancelMonoid](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/rightcancelmonoid--5f3fba267f363ca6c3feb5e9.md) | 131 | `declaration-track:5f3fba267f363ca6c3feb5e974f0aa4078a3d0941f5aa9c68364ff261456cc2d` |
| 21 | `instance` | [cancelMonoid](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/cancelmonoid--c79a3c7a64e0b3c6d23abde1.md) | 135 | `declaration-track:c79a3c7a64e0b3c6d23abde1e5b27f17573c06fa4d26e6e383b5100d4071d2f4` |
| 22 | `instance` | [cancelCommMonoid](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/cancelcommmonoid--07f41f644cbd33bb8680386a.md) | 139 | `declaration-track:07f41f644cbd33bb8680386a9c4e4cbed7dccf10d1a0a94c59cecf5404251b13` |
| 23 | `def` | [mulSingle](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/mulsingle--5d9e1b5a01b4d540f12cdacf.md) | 149 | `declaration-track:5d9e1b5a01b4d540f12cdacf921738fb44dfe1e7a77207baafc763edef650fee` |
| 24 | `theorem` | [mulSingle_eq_same](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/mulsingle-eq-same--45b48db711feea09bf3a0fa3.md) | 153 | `result-track:45b48db711feea09bf3a0fa35b0a37d05a91a84d7a4abda879717576b4535cd6` |
| 25 | `theorem` | [mulSingle_eq_of_ne](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/mulsingle-eq-of-ne--a58d548f6bd6b29546e9d567.md) | 157 | `result-track:a58d548f6bd6b29546e9d567a1ad772450b85781e53d053ba65a9d6ffa2dbb03` |
| 26 | `theorem` | [mulSingle_eq_of_ne'](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/mulsingle-eq-of-ne--dabb6815e022c73201665813.md) | 163 | `result-track:dabb6815e022c73201665813ce5bc8e21ee462b025ba0284378e48722c26bd68` |
| 27 | `theorem` | [mulSingle_one](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/mulsingle-one--3409e32a52b4754f16b1cc9a.md) | 167 | `result-track:3409e32a52b4754f16b1cc9a2393cd4fea3428d5f9a144868319be4b0b26b9d7` |
| 28 | `theorem` | [mulSingle_eq_one_iff](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/mulsingle-eq-one-iff--dcfab8cd7a4cfa23e447eb81.md) | 171 | `result-track:dcfab8cd7a4cfa23e447eb81764efaa0942933ac45b282a3ba377bd3d83521e8` |
| 29 | `theorem` | [mulSingle_ne_one_iff](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/mulsingle-ne-one-iff--aab0dafbf5b222845b298bfe.md) | 176 | `result-track:aab0dafbf5b222845b298bfe1c5bfe21e6c517c69b91a46a2df2cb698086a24c` |
| 30 | `theorem` | [apply_mulSingle](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/apply-mulsingle--edf605ac79397f314fc455c4.md) | 180 | `result-track:edf605ac79397f314fc455c493cd7efd4d2d945b4a7e9cd2745280f119d25503` |
| 31 | `theorem` | [apply_mulSingle₂](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/apply-mulsingle--c98a6b3bec171416b69a3927.md) | 185 | `result-track:c98a6b3bec171416b69a392719b6a23cba985e8aabfe6ed44e2fd8386a65bed7` |
| 32 | `theorem` | [mulSingle_op](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/mulsingle-op--592bc40852d123f7148d7bf2.md) | 194 | `result-track:592bc40852d123f7148d7bf2250a4f634e14c3d49ddd61fd1431a8d3b53e4278` |
| 33 | `theorem` | [mulSingle_op₂](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/mulsingle-op--e93885f99ed20fb9b1536550.md) | 199 | `result-track:e93885f99ed20fb9b153655057ca7aa3574ceb4bba23d4d867231cc838cc4e70` |
| 34 | `theorem` | [mulSingle_injective](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/mulsingle-injective--0e8294dafbc9ab79c8a89d0d.md) | 207 | `result-track:0e8294dafbc9ab79c8a89d0dc385bcc1f3ed0abab3911e82c53b6838a7e3314f` |
| 35 | `theorem` | [mulSingle_inj](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/mulsingle-inj--947215b72992cb4440a3ffdd.md) | 211 | `result-track:947215b72992cb4440a3ffddc200cee29c53c2c686579cf7d500d51d792d7f8f` |
| 36 | `lemma` | [mulSingle_apply](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/mulsingle-apply--2e592201b888afc3d62a1279.md) | 219 | `result-track:2e592201b888afc3d62a12798a5b5aa580f23c22ffe3d0cc785464b5ff337375` |
| 37 | `lemma` | [mulSingle_comm](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/mulsingle-comm--e387b4530cc3deb10dbaaa5f.md) | 226 | `result-track:e387b4530cc3deb10dbaaa5fb5a89ba40f2eee5bf3f3a7517fb5992d36905c5f` |
| 38 | `def` | [prod](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/prod--ac35937791615f6738dffa56.md) | 234 | `declaration-track:ac35937791615f6738dffa567961a8f907680f6d63726dabec911ea4e8c1c774` |
| 39 | `theorem` | [prod_fst_snd](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/prod-fst-snd--9d371466cf8ff74e4d2e9da2.md) | 239 | `result-track:9d371466cf8ff74e4d2e9da27b301febdc1efe3c0ff9b9248312d01a975c9f73` |
| 40 | `theorem` | [prod_snd_fst](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/prod-snd-fst--0da7fd3cad96b3909749957d.md) | 244 | `result-track:0da7fd3cad96b3909749957dace6f3bcc24457ff5ac15fe250320d4b9416e446` |
| 41 | `theorem` | [extend_one](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/extend-one--20d92c408727e895b2f298ca.md) | 254 | `result-track:20d92c408727e895b2f298cabd82897aed38ca54fbc6807ece3dd7204f54b5c1` |
| 42 | `theorem` | [extend_mul](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/extend-mul--f43d7fe7941b7191d7554c96.md) | 258 | `result-track:f43d7fe7941b7191d7554c96c091163fdc5b7d3e42548375e88a4f9719f590b2` |
| 43 | `theorem` | [extend_inv](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/extend-inv--834a452990bd6e44a36d2b0f.md) | 270 | `result-track:834a452990bd6e44a36d2b0fff130ac16f5cbcae802607db8ed9aedae42a3c36` |
| 44 | `theorem` | [extend_div](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/extend-div--e8b472a19ef95528b5ce3c18.md) | 282 | `result-track:e8b472a19ef95528b5ce3c18bc9119d26352b814507e26d2d32dc2a339fc1903` |
| 45 | `lemma` | [comp_eq_const_iff](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/comp-eq-const-iff--a1e49952d3923040a904e164.md) | 295 | `result-track:a1e49952d3923040a904e164ea43b1b6154429ddf75eb941934f3e20f954d6c1` |
| 46 | `lemma` | [comp_eq_one_iff](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/comp-eq-one-iff--1eeb4b97d50bcde3eef4fadc.md) | 300 | `result-track:1eeb4b97d50bcde3eef4fadcb00cb06076457656fc598fc942a2fc91e39443d5` |
| 47 | `lemma` | [comp_ne_one_iff](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/comp-ne-one-iff--959affab9871e4fe88f6f870.md) | 305 | `result-track:959affab9871e4fe88f6f87026cbee9fddaa6a323e86889227e8e899716fd688` |
| 48 | `def` | [uniqueOfSurjectiveOne](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/uniqueofsurjectiveone--2185946df2e736931459c9b1.md) | 313 | `declaration-track:2185946df2e736931459c9b12c8c05f53d6102c1bdfc39188d8bcb60a334c7eb` |
| 49 | `theorem` | [Subsingleton.pi_mulSingle_eq](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/subsingleton-pi-mulsingle-eq--c325109faeb00726df5b07a8.md) | 318 | `result-track:c325109faeb00726df5b07a84fc79b0e3b4f167ab4bd0eab17b5c1c0cb54d9a0` |
| 50 | `theorem` | [elim_one_one](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/elim-one-one--f7198614296db73f615c5dc6.md) | 327 | `result-track:f7198614296db73f615c5dc6a31a28bf2f1077723d514e3785e7248d177d8902` |
| 51 | `theorem` | [elim_mulSingle_one](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/elim-mulsingle-one--0551b40a6f3a29b22bcfa2d3.md) | 331 | `result-track:0551b40a6f3a29b22bcfa2d3653d0fb2dd567f988a402fd48878925be78ffa6d` |
| 52 | `theorem` | [elim_one_mulSingle](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/elim-one-mulsingle--47a0776c68013687e381a474.md) | 336 | `result-track:47a0776c68013687e381a474083908cae5e346297f34dc5fe6dacc122e707820` |
| 53 | `theorem` | [elim_inv_inv](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/elim-inv-inv--29ded5a1148349d8f7c779f7.md) | 341 | `result-track:29ded5a1148349d8f7c779f746f93a03ef4303643c0fa1188d2da1935510026e` |
| 54 | `theorem` | [elim_mul_mul](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/elim-mul-mul--b4dc2da72f768bad27928c83.md) | 345 | `result-track:b4dc2da72f768bad27928c835caf459bd915e0a7d6c7cd5ad5103eec1ba6ed7d` |
| 55 | `theorem` | [elim_div_div](../../../../mathematics/Algebra/Basic/Variantd8ad224965f04854dab364e4e9c470abb19b306f2e0acf6f73630d780bb0b92d.lean/declarations/elim-div-div--d056e070cd03ebd72a20563b.md) | 350 | `result-track:d056e070cd03ebd72a20563b69501f0d2f99013161594eaad5994a82a1a5043a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
