# Verification target: GRWTSK.Algebra.GroupTheory.Conj.Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29115f8951e0f85264ae00c554357bd9dd5b7cac",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29115f8951e0f85264ae00c554357bd9dd5b7cac`.

Source path: `GRWTSK/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Semiconj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Aut` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Group` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsConj](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/isconj--3b75b2197fd3bb26da3cea3d.md) | 28 | `declaration-track:3b75b2197fd3bb26da3cea3d358391e5121a1b0cb82f24707da4e14e77faa340` |
| 2 | `theorem` | [IsConj.refl](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/isconj-refl--9844380747a0bed2b02bcd51.md) | 33 | `result-track:9844380747a0bed2b02bcd517a4c2f20f840fd9ed87ceef2c09e324b6eaae472` |
| 3 | `theorem` | [IsConj.symm](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/isconj-symm--922a54fea6c89a02e65c0a59.md) | 38 | `result-track:922a54fea6c89a02e65c0a5976ab48b9fd1519080fde4c6d3f6a98ca41372b4c` |
| 4 | `theorem` | [isConj_comm](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/isconj-comm--75c8fb75cfaba6a735c62cd3.md) | 42 | `result-track:75c8fb75cfaba6a735c62cd3caa5322a1aef6329caf5dd71b6a3a323a1ffce33` |
| 5 | `theorem` | [IsConj.trans](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/isconj-trans--0c06d6c8de58e7db78d32015.md) | 47 | `result-track:0c06d6c8de58e7db78d3201532c52d169cd87c7fa7fc0027b804394ac4c9dde9` |
| 6 | `theorem` | [isConj_iff_eq](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/isconj-iff-eq--05af9a0a66f932b613b8ce73.md) | 52 | `result-track:05af9a0a66f932b613b8ce739840fe426f699e29947375d45389f0797362e755` |
| 7 | `theorem` | [MonoidHom.map_isConj](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/monoidhom-map-isconj--3559d727adac604eef3ca6c2.md) | 58 | `result-track:3559d727adac604eef3ca6c2a2e9822eb962d5dee32b39594de9a2b74ea7aba6` |
| 8 | `theorem` | [isConj_one_right](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/isconj-one-right--7739ba4571d0baf0c2e67956.md) | 72 | `result-track:7739ba4571d0baf0c2e67956edaaf825e7ab9ee5bd23a0f473738a0a9ada1a62` |
| 9 | `theorem` | [isConj_one_left](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/isconj-one-left--75fb4921c981085fc1180eb9.md) | 78 | `result-track:75fb4921c981085fc1180eb91a9e2ff92b57e577184b043fe8a47de05aec80ab` |
| 10 | `theorem` | [isConj_iff](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/isconj-iff--4a1305e04e3fee0cd7511b95.md) | 91 | `result-track:4a1305e04e3fee0cd7511b95d7d1cf96d008bd840536577e65d7c98659a64a7f` |
| 11 | `theorem` | [conj_inv](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/conj-inv--7488030004917f2b287f0041.md) | 98 | `result-track:7488030004917f2b287f0041016a4f19f54f992bacc784e431a2dba02b5d4d7c` |
| 12 | `theorem` | [conj_mul](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/conj-mul--7649bb9cfd20d858495b6287.md) | 103 | `result-track:7649bb9cfd20d858495b62878e855344d336b952bb50d9b616aec8c559fc5588` |
| 13 | `theorem` | [conj_pow](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/conj-pow--bf2fac974f3afd84d85496be.md) | 108 | `result-track:bf2fac974f3afd84d85496bee29200c200114d5d38cc7c34be543da61296b3bd` |
| 14 | `theorem` | [conj_zpow](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/conj-zpow--c048393d547391c17b043662.md) | 115 | `result-track:c048393d547391c17b0436627b71383e77dd795c25ae409dd975a0749cd1ae6c` |
| 15 | `theorem` | [conj_injective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/conj-injective--f6f1aecd383de7a5bc40dd0d.md) | 124 | `result-track:f6f1aecd383de7a5bc40dd0d847da2af1551ea4e56b987634c80bd5b85aaea8a` |
| 16 | `theorem` | [isConj_iff₀](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/isconj-iff--7953c620364aa9b05f35c6ad.md) | 131 | `result-track:7953c620364aa9b05f35c6ad698a7ed8f87de0805a8dc10f6602caa355f2b5c1` |
| 17 | `def` | [setoid](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/setoid--0dd108982af189b039c0b13c.md) | 147 | `declaration-track:0dd108982af189b039c0b13c44cc7c5dfc2ffdb4c902de5c498b3fd4c6ecd793` |
| 18 | `def` | [ConjClasses](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/conjclasses--fcc2368483634bbc5de90838.md) | 157 | `declaration-track:fcc2368483634bbc5de90838717a21c4bcdfbe07e8cf372fb82b6b3abcc38cbe` |
| 19 | `def` | [mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/mk--2793fefa73cff614e33fde83.md) | 168 | `declaration-track:2793fefa73cff614e33fde838e2efcb62bc5bf58216adb8509c01d1486465ede` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/instance--28aeb2893d5ffa18c9a32712.md) | 171 | `declaration-track:28aeb2893d5ffa18c9a32712a0f47fa356a0b846a4191f85ce423497a9f24128` |
| 21 | `theorem` | [mk_eq_mk_iff_isConj](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/mk-eq-mk-iff-isconj--ee9d5c4441dab231be1dd747.md) | 173 | `result-track:ee9d5c4441dab231be1dd747996a4f4aff06102e1e65571240621512bc978c72` |
| 22 | `theorem` | [quotient_mk_eq_mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/quotient-mk-eq-mk--04331f2346a0b522852ca84b.md) | 177 | `result-track:04331f2346a0b522852ca84b59c9cdb7efdba4a0103c0c9e2c9b75f7688492de` |
| 23 | `theorem` | [quot_mk_eq_mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/quot-mk-eq-mk--2a6cde0a64349aafccc8fb06.md) | 181 | `result-track:2a6cde0a64349aafccc8fb06058990d2a6aa9dd6e5cc5dbdba42fbb299cf8060` |
| 24 | `theorem` | [forall_isConj](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/forall-isconj--82f3472b5019587ab3c5833b.md) | 185 | `result-track:82f3472b5019587ab3c5833bd68651890f121d90e86c30e323a6a62f27df0782` |
| 25 | `theorem` | [mk_surjective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/mk-surjective--518463ba771b1160241b6118.md) | 189 | `result-track:518463ba771b1160241b6118c61f81ed21a022ec7cbe49a759014e4cd82e7bc5` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/instance--ba1708e8aa7c8ba5bf232f9e.md) | 193 | `declaration-track:ba1708e8aa7c8ba5bf232f9e5687911c22065c0b27166dbcee796f21d3a77412` |
| 27 | `theorem` | [one_eq_mk_one](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/one-eq-mk-one--c3767c4aeea1053d1d0bbf25.md) | 196 | `result-track:c3767c4aeea1053d1d0bbf259e9ba93642bf222f125d945cf57d586a81879332` |
| 28 | `theorem` | [exists_rep](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/exists-rep--bffd73b8489353a6e041ebe5.md) | 200 | `result-track:bffd73b8489353a6e041ebe5eea4689f52f687a052507382920bd59c0a21912f` |
| 29 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/map--655301420df8d626c2feba91.md) | 205 | `declaration-track:655301420df8d626c2feba9136bd67c0f1947af7383bda27063360dc3eb52b26` |
| 30 | `theorem` | [map_surjective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/map-surjective--c86ad05452f78db7f953e2a5.md) | 209 | `result-track:c86ad05452f78db7f953e2a546d659139295a15bdd54eac425c564e49d88e421` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/instance--94a4d610e00846af179deadc.md) | 248 | `declaration-track:94a4d610e00846af179deadcda6dc291d332bbbdbe0dabb2492797faef4da198` |
| 32 | `theorem` | [mk_injective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/mk-injective--86b2350e251dab4b758deb1a.md) | 257 | `result-track:86b2350e251dab4b758deb1abd4b4af258f752aa03499e34e974917988ce614e` |
| 33 | `theorem` | [mk_bijective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/mk-bijective--db9e87100c72036028013164.md) | 261 | `result-track:db9e87100c72036028013164cc2fcedbb74617c3aedec6a5b3b8c843c3e729f9` |
| 34 | `def` | [mkEquiv](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/mkequiv--a73af8f0d33256c860af88fa.md) | 266 | `declaration-track:a73af8f0d33256c860af88fa1071ef223e8fc8fa6ee5b6822a7f9c4db23bca63` |
| 35 | `def` | [conjugatesOf](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/conjugatesof--2f0c35629b668f39477651c4.md) | 282 | `declaration-track:2f0c35629b668f39477651c41dbf631d7589aeaf1416f05d9879f46fcb7d6b47` |
| 36 | `theorem` | [mem_conjugatesOf_self](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/mem-conjugatesof-self--41d0aebbbf7374190de4c234.md) | 286 | `result-track:41d0aebbbf7374190de4c234990b5000e4a061aa910b7143643d727a7654a7fe` |
| 37 | `theorem` | [IsConj.conjugatesOf_eq](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/isconj-conjugatesof-eq--9a735ff8c2760af13e518107.md) | 290 | `result-track:9a735ff8c2760af13e518107426d12f6762015aebcce3ccd6d214fad725efc55` |
| 38 | `theorem` | [isConj_iff_conjugatesOf_eq](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/isconj-iff-conjugatesof-eq--a6bfb1b9f96f52c5975f6be9.md) | 294 | `result-track:a6bfb1b9f96f52c5975f6be970a2a6cc1fc9a01dc0054d69ebcce33e569974be` |
| 39 | `def` | [carrier](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/carrier--500127d52eba28690cf129ee.md) | 309 | `declaration-track:500127d52eba28690cf129eeaa1aaa453d940adc52d9c581706cc3b4cd824357` |
| 40 | `theorem` | [mem_carrier_mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/mem-carrier-mk--9551903fda21d530d76c6b1a.md) | 313 | `result-track:9551903fda21d530d76c6b1a793d26862e40c31cf557b632e3dd2927ef966b78` |
| 41 | `theorem` | [mem_carrier_iff_mk_eq](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/mem-carrier-iff-mk-eq--ec059cbe1e2388d459e527ef.md) | 317 | `result-track:ec059cbe1e2388d459e527ef60cfac9f1819fe2f2c2e32361c7ea220957b4d32` |
| 42 | `theorem` | [carrier_eq_preimage_mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/declarations/carrier-eq-preimage-mk--3320c576cfbd6211fbe5274a.md) | 326 | `result-track:3320c576cfbd6211fbe5274a622248155e78c996813c0caede7540daf0cef5a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
