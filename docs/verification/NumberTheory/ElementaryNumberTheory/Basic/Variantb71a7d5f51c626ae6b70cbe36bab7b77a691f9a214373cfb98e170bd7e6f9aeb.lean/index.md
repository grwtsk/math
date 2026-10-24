# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62a4a6cbe937741b48ce989f77461514770c759a",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62a4a6cbe937741b48ce989f77461514770c759a`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean.json)

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
| 1 | `theorem` | [prime_mul_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-mul-iff--af60aec24ae70424d9371501.md) | 25 | `result-track:af60aec24ae70424d937150185ad016c2b7d9fbb494ce1f91828c81d97dd0e52` |
| 2 | `theorem` | [not_prime_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/not-prime-mul--946426cf0d26c9322206d4d8.md) | 28 | `result-track:946426cf0d26c9322206d4d8c337b6145b0ea2899475c9abcd9766a4710c1dc3` |
| 3 | `theorem` | [not_prime_of_mul_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/not-prime-of-mul-eq--a8307614f3531fd3e059ae71.md) | 31 | `result-track:a8307614f3531fd3e059ae7169a15cc08bb66c67d67ced5435780659c6537919` |
| 4 | `theorem` | [Prime.dvd_iff_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-dvd-iff-eq--350b9f2cfff6ebc3a2cba7ba.md) | 34 | `result-track:350b9f2cfff6ebc3a2cba7ba50c1b248668044acfc67430c22700a0ef87222fa` |
| 5 | `theorem` | [Prime.eq_two_or_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-eq-two-or-odd--469e17ed89f102aa93f2703e.md) | 41 | `result-track:469e17ed89f102aa93f2703eea786d74e68a20efe6278e8c84bb6301e5be40d0` |
| 6 | `theorem` | [Prime.eq_two_or_odd'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-eq-two-or-odd--e6675859f02a30c99f0d6162.md) | 45 | `result-track:e6675859f02a30c99f0d6162fab0fe42d2f04fbd3a73fbbe88d38c9b7dedf1a9` |
| 7 | `theorem` | [Prime.five_le_of_ne_two_of_ne_three](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-five-le-of-ne-two-of-ne-three--81292ebb988f9504bc254083.md) | 50 | `result-track:81292ebb988f9504bc254083491d895a07e8f9eafb2f298db7a12b1dc0d9d090` |
| 8 | `theorem` | [Prime.pred_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-pred-pos--6573dd5dccb200faaf86f5d6.md) | 58 | `result-track:6573dd5dccb200faaf86f5d65fe59aaecc3f3e77207f47b87a8a44153f1b0256` |
| 9 | `theorem` | [succ_pred_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/succ-pred-prime--b9e06e4dc023f73c253701cd.md) | 61 | `result-track:b9e06e4dc023f73c253701cd204c9146a99b30b32ac20da3929345f8ba4ae748` |
| 10 | `theorem` | [exists_dvd_of_not_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/exists-dvd-of-not-prime--882bf8b238cee4a79369ce14.md) | 64 | `result-track:882bf8b238cee4a79369ce14a93b3b717f6870c4f875fab79b2f5e5e6fd191fc` |
| 11 | `theorem` | [exists_dvd_of_not_prime2](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/exists-dvd-of-not-prime2--7399e6d6faa5a1ee52d488e1.md) | 68 | `result-track:7399e6d6faa5a1ee52d488e1f7a9fe644f95ed6235c6197f40cd126647a67d7d` |
| 12 | `theorem` | [not_prime_of_dvd_of_ne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/not-prime-of-dvd-of-ne--5392d50c89da0abaa05978b8.md) | 73 | `result-track:5392d50c89da0abaa05978b89fb08d90f55d11a3c1c8ca1c742ee7c72e8837d8` |
| 13 | `theorem` | [not_prime_of_dvd_of_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/not-prime-of-dvd-of-lt--852b4942800d10fc9d1bf859.md) | 76 | `result-track:852b4942800d10fc9d1bf85975690e29088df4d8425e9952fd24c4fe839d6bdb` |
| 14 | `theorem` | [not_prime_iff_exists_dvd_ne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/not-prime-iff-exists-dvd-ne--c8ec0b1727eb4eaab376f04d.md) | 79 | `result-track:c8ec0b1727eb4eaab376f04d86947283fcb183af8960e218c9b1594983210512` |
| 15 | `theorem` | [not_prime_iff_exists_dvd_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/not-prime-iff-exists-dvd-lt--651f3a0e33dc91752f3fe6d2.md) | 82 | `result-track:651f3a0e33dc91752f3fe6d233db019d90690cdfc97c6fddcdbfe2c20c338c60` |
| 16 | `theorem` | [not_prime_iff_exists_mul_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/not-prime-iff-exists-mul-eq--b59283b225a427ef9497ece3.md) | 85 | `result-track:b59283b225a427ef9497ece3c09c5d0fd659db8b386792d481dc346e4d063e6e` |
| 17 | `theorem` | [dvd_of_forall_prime_mul_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/dvd-of-forall-prime-mul-dvd--86dd8dd5537647f6c1d41727.md) | 89 | `result-track:86dd8dd5537647f6c1d41727e5c4550c4d6fdf9c4bd56d62d22f8a92fa863bf5` |
| 18 | `theorem` | [Prime.even_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-even-iff--eb7298b5fcff98aba103612d.md) | 96 | `result-track:eb7298b5fcff98aba103612d2aab7d1da844d94dcf5649ded5dce6b317a2c4f1` |
| 19 | `theorem` | [Prime.odd_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-odd-iff--511bdbde2afafe27d73998f5.md) | 99 | `result-track:511bdbde2afafe27d73998f5de9703b0a9adde97861cddfc0bef1d5d531556b0` |
| 20 | `theorem` | [Prime.odd_of_ne_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-odd-of-ne-two--600f9f54eed77881c0fa4068.md) | 103 | `result-track:600f9f54eed77881c0fa4068e9ff3f048c145b0ebaab90a56965674ba30a7646` |
| 21 | `theorem` | [Prime.even_sub_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-even-sub-one--dc04d38fe6f229064e1c36a6.md) | 106 | `result-track:dc04d38fe6f229064e1c36a6f3d4da0892854787dbabd1fabedc911f21a24a6d` |
| 22 | `theorem` | [forall_prime_iff_two_and_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/forall-prime-iff-two-and-odd--64bc75360f1125614cfde5f8.md) | 110 | `result-track:64bc75360f1125614cfde5f8de1261b0114ade05cb098a58a21340f41ea81c33` |
| 23 | `theorem` | [Prime.mod_two_eq_one_iff_ne_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-mod-two-eq-one-iff-ne-two--f416ffe3f894766537ec4de5.md) | 121 | `result-track:f416ffe3f894766537ec4de5468f874b72f72913bda31deac92e3cebbaefaee9` |
| 24 | `theorem` | [coprime_of_dvd'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/coprime-of-dvd--3df1d0890e05fa98267f09ae.md) | 126 | `result-track:3df1d0890e05fa98267f09ae383509372c5d73af6f329478312628f93383906a` |
| 25 | `theorem` | [Prime.dvd_iff_not_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-dvd-iff-not-coprime--c5bd581f16466f4d80f3f3b7.md) | 129 | `result-track:c5bd581f16466f4d80f3f3b7b93c4dedaf33c2b378212a50f5c824c430aa2436` |
| 26 | `theorem` | [Prime.not_coprime_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-not-coprime-iff-dvd--c5ec82fdfa59fb23293adad8.md) | 132 | `result-track:c5ec82fdfa59fb23293adad8d7647509c9c206ce8cbc904b2b11440f1da099af` |
| 27 | `lemma` | [coprime_of_lt_minFac](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/coprime-of-lt-minfac--610d7a96c42a18dd767f2511.md) | 143 | `result-track:610d7a96c42a18dd767f2511f3c64ba07cbc8ccc88e9c78fa1f08689b1305c20` |
| 28 | `lemma` | [gcd_eq_one_of_lt_minFac](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/gcd-eq-one-of-lt-minfac--2ca3816b76c4aa4d6ae7702d.md) | 150 | `result-track:2ca3816b76c4aa4d6ae7702d7e4c7f68f0b720cccb07f64a25c57bf595f7913c` |
| 29 | `theorem` | [Prime.not_dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-not-dvd-mul--27cca007b161012515eceb8f.md) | 153 | `result-track:27cca007b161012515eceb8f86cabb757b9e0aa7e2025d0283eca4bf338d7a56` |
| 30 | `lemma` | [coprime_two_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/coprime-two-left--10b9a122fe574213b14d2813.md) | 156 | `result-track:10b9a122fe574213b14d2813c8dd2cd2508fef9767cf16a89786f50e994b113e` |
| 31 | `lemma` | [coprime_two_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/coprime-two-right--f9412711d25f8d405fc16c73.md) | 159 | `result-track:f9412711d25f8d405fc16c73366953c0ef735ebf1acbbf75810f7e927b863104` |
| 32 | `theorem` | [Prime.dvd_of_dvd_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-dvd-of-dvd-pow--c4621555d5ea671c19adff15.md) | 164 | `result-track:c4621555d5ea671c19adff154bea9840bd4ab333e59b1d95db8401791b0ed546` |
| 33 | `theorem` | [Prime.not_prime_pow'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-not-prime-pow--9515761fdcd6ce08d1462fc2.md) | 167 | `result-track:9515761fdcd6ce08d1462fc2ed93a6ad5dfbb98c9bd2c2ba933409980fc4a382` |
| 34 | `theorem` | [Prime.not_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-not-prime-pow--d42069929211a9b5f53f035b.md) | 170 | `result-track:d42069929211a9b5f53f035b21226025fae5354ac39ce3f421bd7451a75af55d` |
| 35 | `theorem` | [Prime.eq_one_of_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-eq-one-of-pow--cb1618c23a8db096dedf18b9.md) | 173 | `result-track:cb1618c23a8db096dedf18b91ad0d1e996ff445db07f419a47a0726700c8c99d` |
| 36 | `theorem` | [Prime.pow_eq_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-pow-eq-iff--bccb5931d04f71b3220a1b35.md) | 176 | `result-track:bccb5931d04f71b3220a1b3576e92ee962334953445a7e1f6b41bbdfb31c37f6` |
| 37 | `theorem` | [Prime.mul_eq_prime_sq_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-mul-eq-prime-sq-iff--feae5cb94bf3ff8903a9e351.md) | 181 | `result-track:feae5cb94bf3ff8903a9e351d32a3073a9f99cf4b16961e7e03ef353735c800a` |
| 38 | `theorem` | [Prime.coprime_pow_of_not_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-coprime-pow-of-not-dvd--2d1ba9e81a7812c6e177cad3.md) | 206 | `result-track:2d1ba9e81a7812c6e177cad3465cea3a25ac2c3c14d4f9d34b5bed68196a1768` |
| 39 | `theorem` | [coprime_primes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/coprime-primes--d0870a249e4b5a91914015c5.md) | 209 | `result-track:d0870a249e4b5a91914015c51f53485d2548a525eea3cf4bf924b0663d19b0b2` |
| 40 | `theorem` | [coprime_pow_primes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/coprime-pow-primes--28a97b861baa767c78fc9ac1.md) | 212 | `result-track:28a97b861baa767c78fc9ac1c4665ff2973c6d7e8b47321e80f17bfdbf40b952` |
| 41 | `theorem` | [coprime_or_dvd_of_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/coprime-or-dvd-of-prime--f5fce158337f28026db5d520.md) | 216 | `result-track:f5fce158337f28026db5d52046f3a3260bf6d513418760bd3e18c619e3fd98a4` |
| 42 | `theorem` | [coprime_of_lt_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/coprime-of-lt-prime--ef29015ecd367f483a46429b.md) | 219 | `result-track:ef29015ecd367f483a46429beb842a5aa50a28fcbfe8ac6cc402499ebfc099ac` |
| 43 | `theorem` | [eq_or_coprime_of_le_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/eq-or-coprime-of-le-prime--add93acd45e6971772905a14.md) | 223 | `result-track:add93acd45e6971772905a14374b7f0e7ea10bea18618e20a4589a07057aab56` |
| 44 | `theorem` | [prime_eq_prime_of_dvd_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-eq-prime-of-dvd-pow--3b02a023795c5ec0dd7ea2bf.md) | 227 | `result-track:3b02a023795c5ec0dd7ea2bf7c24ccdfd3aca6094468e384b0a0406ca2f3a14a` |
| 45 | `theorem` | [dvd_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/dvd-prime-pow--270234aff9dec9a89dfa8e56.md) | 230 | `result-track:270234aff9dec9a89dfa8e562542b9754057fa322e540ae355e2e9b831d5fdba` |
| 46 | `theorem` | [Prime.dvd_mul_of_dvd_ne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/prime-dvd-mul-of-dvd-ne--47f8e2e8cad06656d509e4f6.md) | 233 | `result-track:47f8e2e8cad06656d509e4f6cc81675cef87bcd625692e07ebe26a055769418a` |
| 47 | `theorem` | [eq_prime_pow_of_dvd_least_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/eq-prime-pow-of-dvd-least-prime-pow--df93b97b1ec2e107e80ee65b.md) | 241 | `result-track:df93b97b1ec2e107e80ee65b0da94545b1fe2ce4538874021074a233990e20b4` |
| 48 | `theorem` | [ne_one_iff_exists_prime_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/ne-one-iff-exists-prime-dvd--d16d17aed5f3e81e22c8525f.md) | 247 | `result-track:d16d17aed5f3e81e22c8525f2ccb5e5e0b2aba4bd6f46b7fd943735c1df7f96d` |
| 49 | `theorem` | [eq_one_iff_not_exists_prime_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/eq-one-iff-not-exists-prime-dvd--f21364c0869492da923cdd45.md) | 256 | `result-track:f21364c0869492da923cdd45eddd406fd6e1e8414ca4cd997e31053eec8a28a4` |
| 50 | `theorem` | [succ_dvd_or_succ_dvd_of_succ_sum_dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/declarations/succ-dvd-or-succ-dvd-of-succ-sum-dvd-mul--53e8748b0a3ef0de5b5c1d3c.md) | 259 | `result-track:53e8748b0a3ef0de5b5c1d3c5f328894c0f4128c9e679ffb31fb02ab561e60fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
