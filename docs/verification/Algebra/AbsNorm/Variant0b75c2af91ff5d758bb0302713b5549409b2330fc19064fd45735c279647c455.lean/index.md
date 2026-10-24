# Verification target: GRWTSK.Algebra.AbsNorm.Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0039619e80c46ba5612d3ea3f7b870e46f2b701",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/index.md) · [Full source](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0039619e80c46ba5612d3ea3f7b870e46f2b701`.

Source path: `GRWTSK/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean.json)

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
| 1 | `def` | [cardQuot](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/cardquot--17272872b030fefb9c1ca494.md) | 69 | `declaration-track:17272872b030fefb9c1ca4947501e1e3562139ce38585547b22fe1ec2ccb7786` |
| 2 | `theorem` | [cardQuot_apply](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/cardquot-apply--5c528402713d55dfd4b933c9.md) | 72 | `result-track:5c528402713d55dfd4b933c9d6b9b4ae02b3fb3e9c19f26fb940fbd38bb980d1` |
| 3 | `theorem` | [cardQuot_bot](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/cardquot-bot--6923eb85b2fe630f2a906441.md) | 78 | `result-track:6923eb85b2fe630f2a9064413a4a03f7dd0ab7b7b0fbd5a971f6b8bd23a12791` |
| 4 | `theorem` | [cardQuot_top](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/cardquot-top--11f1283eff23c1ec1a456452.md) | 82 | `result-track:11f1283eff23c1ec1a4564527bbd033f7d7f6c9712bd261d2f0cda81f4341b41` |
| 5 | `theorem` | [cardQuot_eq_one_iff](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/cardquot-eq-one-iff--4e52dbaad4c7b38e0b0cdfe2.md) | 88 | `result-track:4e52dbaad4c7b38e0b0cdfe22af912e2fdc172ec45b473b674f8db4adb9d27d2` |
| 6 | `theorem` | [cardQuot_mul_of_coprime](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/cardquot-mul-of-coprime--d451fc0c94fec4f65770a2b9.md) | 104 | `result-track:d451fc0c94fec4f65770a2b98865482ac5e3cace0b3db3d1425a5c730f3aa747` |
| 7 | `theorem` | [Ideal.mul_add_mem_pow_succ_inj](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/ideal-mul-add-mem-pow-succ-inj--67d2fcf56914be8baffab501.md) | 113 | `result-track:67d2fcf56914be8baffab501b9b2f5ced229755742bb0757283b66a28bd957fc` |
| 8 | `theorem` | [Ideal.exists_mul_add_mem_pow_succ](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/ideal-exists-mul-add-mem-pow-succ--b0e9436e8e36ffacf0221400.md) | 129 | `result-track:b0e9436e8e36ffacf02214004952cdc24784890db3d583a198f79d6204a3904a` |
| 9 | `theorem` | [Ideal.mem_prime_of_mul_mem_pow](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/ideal-mem-prime-of-mul-mem-pow--64b788f2b60e64593140437a.md) | 144 | `result-track:64b788f2b60e64593140437ab880fd415c077d2aa3ca738a89f484dbe0ddad0f` |
| 10 | `theorem` | [Ideal.mul_add_mem_pow_succ_unique](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/ideal-mul-add-mem-pow-succ-unique--eeb442c3ee36c507a5210684.md) | 153 | `result-track:eeb442c3ee36c507a521068436767f3cf5014cb25d0670917f832934e92d0acc` |
| 11 | `theorem` | [cardQuot_pow_of_prime](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/cardquot-pow-of-prime--a258d1d59e5b65fb8698fb1c.md) | 163 | `result-track:a258d1d59e5b65fb8698fb1ceb83898f85c046436c3ffc6e14f2efa5f2d1f088` |
| 12 | `theorem` | [cardQuot_mul](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/cardquot-mul--e7c05d64dbe4678bc0443e43.md) | 198 | `result-track:e7c05d64dbe4678bc0443e43e44b3df2b416bcf2da779e0d3294db91a1116718` |
| 13 | `theorem` | [cardQuot_pos](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/cardquot-pos--2f9d1789093b5f0ede9b819a.md) | 213 | `result-track:2f9d1789093b5f0ede9b819a979472e04a5d701e5b6aba3b1dcc9946539e4eb2` |
| 14 | `theorem` | [finite_setOfPred_mem](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/finite-setofpred-mem--07e32cb6ba68a8cbfa93ddb7.md) | 218 | `result-track:07e32cb6ba68a8cbfa93ddb79a934fb1157d575677636e3011f7f748b651ed14` |
| 15 | `theorem` | [finite_cardQuot_le](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/finite-cardquot-le--7ab4358f9d1d9e1b64c0c050.md) | 229 | `result-track:7ab4358f9d1d9e1b64c0c0501f654fe7fa16e5d79910f1408de77016627e6910` |
| 16 | `theorem` | [finite_cardQuot_heightOneSpectrum_le](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/finite-cardquot-heightonespectrum-le--d036a4c4c1ee928c88ddb061.md) | 257 | `result-track:d036a4c4c1ee928c88ddb0612b4c482e593125a072e880ce53c0b8272ecc89fc` |
| 17 | `def` | [Ideal.absNorm](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/ideal-absnorm--23cdf41da00248ffc7f8ebfe.md) | 266 | `declaration-track:23cdf41da00248ffc7f8ebfe9fcfb6e0bb3b18aefd4bbeea15d68ae5b27774a1` |
| 18 | `theorem` | [finite_absNorm_le](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/finite-absnorm-le--f4be6d44a35f9516938bce6c.md) | 278 | `result-track:f4be6d44a35f9516938bce6c4def33d77de420477df66fa838e3083eb0ed6fb0` |
| 19 | `theorem` | [finite_absNorm_heightOneSpectrum_le](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/finite-absnorm-heightonespectrum-le--1b3cac1e20f7a5c494d54166.md) | 283 | `result-track:1b3cac1e20f7a5c494d5416677f3e4cc8043b919af646ef9f825e60da29830f3` |
| 20 | `theorem` | [absNorm_apply](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/absnorm-apply--fde63a0d68fac5f9f5bda56e.md) | 297 | `result-track:fde63a0d68fac5f9f5bda56eb10cef62de1232408b084f74703d723875d9e701` |
| 21 | `lemma` | [absNorm_eq_index](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/absnorm-eq-index--5495f8385aec80c064452806.md) | 299 | `result-track:5495f8385aec80c064452806bb0660ed52d03d9ccd7b9db12d318305fa8b0925` |
| 22 | `theorem` | [absNorm_bot](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/absnorm-bot--69f42307ec0e7b47bb166eef.md) | 302 | `result-track:69f42307ec0e7b47bb166eef80f48756990d0fefc4f437b45a3152ecb4d69480` |
| 23 | `theorem` | [absNorm_top](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/absnorm-top--d6e4236dc4020309f2a8e28f.md) | 305 | `result-track:d6e4236dc4020309f2a8e28f54dcdb4bfa71b2dc57107b24200b1909924f3963` |
| 24 | `theorem` | [absNorm_eq_one_iff](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/absnorm-eq-one-iff--82b7b4c50dcad5f3b031b64e.md) | 308 | `result-track:82b7b4c50dcad5f3b031b64ed1adcdca1f0792139695683bb3c3b31e3bc20a3f` |
| 25 | `theorem` | [absNorm_ne_zero_iff](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/absnorm-ne-zero-iff--f195d7de27769e5b6d748985.md) | 311 | `result-track:f195d7de27769e5b6d748985d9bd72d079d6480401df5c074b5d2fb60e2bbab0` |
| 26 | `theorem` | [absNorm_dvd_absNorm_of_le](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/absnorm-dvd-absnorm-of-le--d381558d05f66f9abfffdff7.md) | 315 | `result-track:d381558d05f66f9abfffdff7ed2c81d471934ead5fe28ef9357e41072e91d5b3` |
| 27 | `theorem` | [irreducible_of_irreducible_absNorm](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/irreducible-of-irreducible-absnorm--31b48f235c9d711251495c6c.md) | 318 | `result-track:31b48f235c9d711251495c6cc8114b9e64e877315b646d334502aa86d57bbab8` |
| 28 | `theorem` | [isPrime_of_irreducible_absNorm](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/isprime-of-irreducible-absnorm--c74d0c9d2622a72d2a875319.md) | 328 | `result-track:c74d0c9d2622a72d2a875319c2af2ce77706e6c5526c24b696311ea0acd39c12` |
| 29 | `theorem` | [prime_of_irreducible_absNorm_span](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/prime-of-irreducible-absnorm-span--b0025a3ccf5ef225bc786d14.md) | 333 | `result-track:b0025a3ccf5ef225bc786d147fbac21684c67dafe3eac92ab42d1c8e165e9267` |
| 30 | `theorem` | [absNorm_mem](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/absnorm-mem--627941dfaa0cadcb43b3f91d.md) | 337 | `result-track:627941dfaa0cadcb43b3f91d66d204651f6139c644fa3de2125d6b7b27244c77` |
| 31 | `theorem` | [span_singleton_absNorm_le](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/span-singleton-absnorm-le--c9b871331684ea24163cbb9a.md) | 341 | `result-track:c9b871331684ea24163cbb9adc3919360b47b2328404dac3eedb655138b25e14` |
| 32 | `theorem` | [span_singleton_absNorm](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/span-singleton-absnorm--958ffad00dd68cd03be5e3c5.md) | 344 | `result-track:958ffad00dd68cd03be5e3c5bb509e1be69f36d0784e5fc460e888f8fcb0f15c` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/instance--8d10666a7381a0eeb7e65653.md) | 363 | `declaration-track:8d10666a7381a0eeb7e656534c64ca51feb3e37779d7ce69e33862f58a9ba320` |
| 34 | `theorem` | [natAbs_det_equiv](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/natabs-det-equiv--324b248d282e24f6186b602d.md) | 368 | `result-track:324b248d282e24f6186b602d8b619ab57cebb54882595db5b8613259c305f122` |
| 35 | `theorem` | [natAbs_det_basis_change](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/natabs-det-basis-change--4a69cdd2e0aba32a1950012e.md) | 384 | `result-track:4a69cdd2e0aba32a1950012eaac0dfc4abba5fd22bcd09f52d85b79d8aa767f9` |
| 36 | `theorem` | [absNorm_span_singleton](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/absnorm-span-singleton--8a66b08b31d9f18726279627.md) | 389 | `result-track:8a66b08b31d9f187262796274be4ab8799338b1ae0e9a3bcf15e80e302a1ddf7` |
| 37 | `lemma` | [absNorm_span_natCast](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/absnorm-span-natcast--bb54ec0c8b4a2840d10175aa.md) | 401 | `result-track:bb54ec0c8b4a2840d10175aafb313f1efb23394279ebbb3996bc55db306306f7` |
| 38 | `theorem` | [absNorm_dvd_norm_of_mem](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/absnorm-dvd-norm-of-mem--e1ded6755ec45e9d42115eeb.md) | 404 | `result-track:e1ded6755ec45e9d42115eeb73782743636a359be9b06580379de2df20c0338e` |
| 39 | `theorem` | [absNorm_span_insert](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/absnorm-span-insert--2526ab513246e2ef2d41a712.md) | 410 | `result-track:2526ab513246e2ef2d41a712464b5be300af43a1af74043a32e4c1efc89d75fb` |
| 40 | `theorem` | [absNorm_eq_zero_iff](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/absnorm-eq-zero-iff--8cc9cd492aeaf034cd18fe75.md) | 418 | `result-track:8cc9cd492aeaf034cd18fe75b202eb4d8a5e7f7d91594ccb1a2c488931b3a23c` |
| 41 | `theorem` | [absNorm_ne_zero_iff_mem_nonZeroDivisors](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/absnorm-ne-zero-iff-mem-nonzerodivisors--d8f4c6db14347b51bb87ddb2.md) | 430 | `result-track:d8f4c6db14347b51bb87ddb2c307234868099bab0143c2859c4342a2e7657c20` |
| 42 | `theorem` | [absNorm_pos_iff_mem_nonZeroDivisors](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/absnorm-pos-iff-mem-nonzerodivisors--612858f386e3e1a575200a1c.md) | 434 | `result-track:612858f386e3e1a575200a1c640619a322834eb0319fff251737579b44c77dd8` |
| 43 | `theorem` | [absNorm_ne_zero_of_nonZeroDivisors](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/absnorm-ne-zero-of-nonzerodivisors--fab8820b74d4b52ead26d347.md) | 438 | `result-track:fab8820b74d4b52ead26d3473ea2cb165ebcd9396d55aad2f9894f129523c3eb` |
| 44 | `theorem` | [absNorm_pos_of_nonZeroDivisors](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/absnorm-pos-of-nonzerodivisors--efb560b0f572e97c5be4c068.md) | 441 | `result-track:efb560b0f572e97c5be4c068271cf94f5c9e399819f6114cb093920cdef7c09e` |
| 45 | `lemma` | [finiteIndex](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/finiteindex--7eced7d9c90fd265bd9c8398.md) | 444 | `result-track:7eced7d9c90fd265bd9c839855c94e28c12be6fbf62a753e9438a365b3d45c46` |
| 46 | `lemma` | [isFiniteRelIndex](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/isfiniterelindex--ab339483bd74a324bad824ff.md) | 448 | `result-track:ab339483bd74a324bad824ff9301f3128fbe037cc05210e464628d18368238ec` |
| 47 | `lemma` | [exists_prime_and_absNorm_eq_pow](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/exists-prime-and-absnorm-eq-pow--f862e5e3000b3701c01e7c11.md) | 456 | `result-track:f862e5e3000b3701c01e7c117f1b5510bfc5107670dc050abef374f572ff4054` |
| 48 | `lemma` | [exists_isMaximal_dvd_of_dvd_absNorm](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/exists-ismaximal-dvd-of-dvd-absnorm--52274f7f00b61ad5f4ed7f00.md) | 472 | `result-track:52274f7f00b61ad5f4ed7f0019178a838027416b3c6ef3589bcc2761d08c27cf` |
| 49 | `lemma` | [exists_isMaximal_dvd_of_dvd_absNorm'](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/exists-ismaximal-dvd-of-dvd-absnorm--91c46552230d5fe8a2db1d10.md) | 504 | `result-track:91c46552230d5fe8a2db1d10c3ed40719be39fd6e2e0dcb15dee4aca5add3d86` |
| 50 | `theorem` | [finite_setOfPred_absNorm_le](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/finite-setofpred-absnorm-le--4fc2b8968b0ab95064aa92ea.md) | 510 | `result-track:4fc2b8968b0ab95064aa92eae4be8a501f07521f07160e2f0056a2d2d403b514` |
| 51 | `theorem` | [finite_setOfPred_absNorm_eq](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/finite-setofpred-absnorm-eq--a6c06d20656f561fc1fa4d7b.md) | 517 | `result-track:a6c06d20656f561fc1fa4d7b42613c6a7875ec9a710cf12f0e56dcd2895c4ecb` |
| 52 | `theorem` | [finite_setOfPred_absNorm_le₀](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/finite-setofpred-absnorm-le--83fb47412e352509f66b6840.md) | 523 | `result-track:83fb47412e352509f66b68408958fa3858c97e15e415de09c08b9ce71fc0bb73` |
| 53 | `theorem` | [card_norm_le_eq_card_norm_le_add_one](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/card-norm-le-eq-card-norm-le-add-one--6dff4fa69ca327371f0885c3.md) | 532 | `result-track:6dff4fa69ca327371f0885c3510565f7fce515b71cc5798d3729ce16d1491d0e` |
| 54 | `theorem` | [norm_dvd_iff](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/norm-dvd-iff--123d70c8d603fa77149de5d1.md) | 555 | `result-track:123d70c8d603fa77149de5d189f215291c7d1022a5f090b7c7251939f4f5745e` |
| 55 | `theorem` | [Int.ideal_span_absNorm_eq_self](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/int-ideal-span-absnorm-eq-self--806795c7d50e0c25a04ab8b0.md) | 573 | `result-track:806795c7d50e0c25a04ab8b0c1aad9b4c1e81526de278a7df79dbad5d9e22fa3` |
| 56 | `theorem` | [Int.prime_absNorm](../../../../mathematics/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/declarations/int-prime-absnorm--1fe7c6c3daf670353665bc0d.md) | 579 | `result-track:1fe7c6c3daf670353665bc0db92e0c9ddc2c8da041af11cb48d6a5e8d7c789f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
