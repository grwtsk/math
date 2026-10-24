# Verification target: GRWTSK.NumberTheory.GaussianInt.Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c34edded8479bbe62e9144277f2879c83c6c737f",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c34edded8479bbe62e9144277f2879c83c6c737f`.

Source path: `GRWTSK/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean.json)

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
| 1 | `abbrev` | [GaussianInt](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/gaussianint--86a078a5b0f55c0f8dbabc67.md) | 50 | `declaration-track:86a078a5b0f55c0f8dbabc6761fa63f950778f0f18cfa7c466a5673d37dd9f60` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/instance--4aa1c2f9bd1bc3f1d458b19b.md) | 57 | `declaration-track:4aa1c2f9bd1bc3f1d458b19b3222ab62194878a5b0e8b3cde6ec915596b33c87` |
| 3 | `instance` | [instCommRing](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/instcommring--48be5dfd0287543be5547088.md) | 60 | `declaration-track:48be5dfd0287543be55470883393bab292cff764b47f122fed0eebb7b70c3583` |
| 4 | `def` | [toComplex](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/tocomplex--26845f8f99fbd4acefd5c1ee.md) | 68 | `declaration-track:26845f8f99fbd4acefd5c1eea1e5e1abe6ae390f38a5cd82c084e8f09ce0a79b` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/instance--b3f7840d2e510a61a1aa613f.md) | 73 | `declaration-track:b3f7840d2e510a61a1aa613f7b793bcc6863937c1374f54d9572912334bd23ce` |
| 6 | `theorem` | [toComplex_def](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/tocomplex-def--aa8a1e52a34fbf4f7d108b72.md) | 76 | `result-track:aa8a1e52a34fbf4f7d108b72726985a63339a87281d09c9221f7390a54fdf1fb` |
| 7 | `theorem` | [toComplex_def'](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/tocomplex-def--98f31f2476c277b6929674d4.md) | 79 | `result-track:98f31f2476c277b6929674d4542a5598a352a09288ae59118e0e75477d7e5e5d` |
| 8 | `theorem` | [toComplex_def₂](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/tocomplex-def--fe9d4a98a58cf34fdd9ae7be.md) | 81 | `result-track:fe9d4a98a58cf34fdd9ae7be5d15bd944ddaa92aa919c85bc7edc2b77e0c443d` |
| 9 | `theorem` | [intCast_re](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/intcast-re--5c09542c960761d9fc85359c.md) | 85 | `result-track:5c09542c960761d9fc85359c5ae4881414e0b9380cb2c8ddafaf7a19cdfa8f57` |
| 10 | `theorem` | [intCast_im](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/intcast-im--3ca8895d4bd4c9ca6a0a842c.md) | 88 | `result-track:3ca8895d4bd4c9ca6a0a842c2f6af851b821acda1b3e1600f0fad40fe5a7f3ec` |
| 11 | `theorem` | [re_toComplex](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/re-tocomplex--824decf84107a5ed602a403f.md) | 91 | `result-track:824decf84107a5ed602a403fe08e1eab1ea0c30c3c14d9dd9a027040d47eac3e` |
| 12 | `theorem` | [im_toComplex](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/im-tocomplex--a28b99e110e42dc03ca21e58.md) | 94 | `result-track:a28b99e110e42dc03ca21e58cf28a57dd39ff310dc1b515c8a99a1018382860c` |
| 13 | `theorem` | [toComplex_add](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/tocomplex-add--00c40ccb15fd2d444181d711.md) | 96 | `result-track:00c40ccb15fd2d444181d7114022bd12619e3894bdbbf61483c035ca9a7428fc` |
| 14 | `theorem` | [toComplex_mul](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/tocomplex-mul--1f7c95ddfb860cd4f9a00d43.md) | 99 | `result-track:1f7c95ddfb860cd4f9a00d433f3070285eceb4f4e9ae90a7ca82981bbf4ff780` |
| 15 | `theorem` | [toComplex_one](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/tocomplex-one--df2e5dde215676d0059fc9ca.md) | 102 | `result-track:df2e5dde215676d0059fc9ca2a195f95147bc4d46704f087c2fe0b6507106234` |
| 16 | `theorem` | [toComplex_zero](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/tocomplex-zero--efe3e4a5e3ec5190bf389f0f.md) | 105 | `result-track:efe3e4a5e3ec5190bf389f0f1021f180e6ba9ae79388afad4a3ffbaf0a21a750` |
| 17 | `theorem` | [toComplex_neg](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/tocomplex-neg--2844c42918a8b0002d28a996.md) | 108 | `result-track:2844c42918a8b0002d28a996255cef795e210b49534ed0ce8a175e37783fa03a` |
| 18 | `theorem` | [toComplex_sub](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/tocomplex-sub--58ad3a1886f41cb9f0de3a8d.md) | 111 | `result-track:58ad3a1886f41cb9f0de3a8dfcf53ae1b00fc8469d6e9b425056f751eeb22890` |
| 19 | `theorem` | [toComplex_star](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/tocomplex-star--78d23f2295f97a242ffae63d.md) | 115 | `result-track:78d23f2295f97a242ffae63d579b3f91c71131179678bbf8488fe8d1f1b5ba89` |
| 20 | `theorem` | [toComplex_inj](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/tocomplex-inj--2c60930c8404b4fecabe0abf.md) | 120 | `result-track:2c60930c8404b4fecabe0abf7725f8eb4b2f929c43ab28432ea9deb3fe78d58d` |
| 21 | `lemma` | [toComplex_injective](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/tocomplex-injective--b8798bdbe5a561947b11e75a.md) | 123 | `result-track:b8798bdbe5a561947b11e75ac6dbd2ae7c7c68dc0b53d7135191c1756027c8b4` |
| 22 | `theorem` | [toComplex_eq_zero](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/tocomplex-eq-zero--08a4657721c3a936eae754eb.md) | 127 | `result-track:08a4657721c3a936eae754eb1596a8f1dfd8e664ca8947983dd9aba21ffa3e6f` |
| 23 | `theorem` | [intCast_real_norm](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/intcast-real-norm--e9c6c216c92f7d06962aa032.md) | 131 | `result-track:e9c6c216c92f7d06962aa032eb72b47f342c0387e88f1dbc325d698b63903d48` |
| 24 | `theorem` | [intCast_complex_norm](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/intcast-complex-norm--c5426f459fabde9ef2c5b67e.md) | 135 | `result-track:c5426f459fabde9ef2c5b67e861ef3aba0e766148519ddf97e712f065c02c8c7` |
| 25 | `theorem` | [norm_nonneg](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/norm-nonneg--d560c8ace77fc4ee08fccf46.md) | 138 | `result-track:d560c8ace77fc4ee08fccf46c6aa8fb9459de6b559acf25d59978e8e2097e255` |
| 26 | `theorem` | [norm_eq_zero](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/norm-eq-zero--e590b5522d06be8163b18a33.md) | 142 | `result-track:e590b5522d06be8163b18a339433fc8696dc26a70dd11dde1d9f902ba9458045` |
| 27 | `theorem` | [norm_pos](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/norm-pos--0d8298d3b030649ceb2e5bac.md) | 144 | `result-track:0d8298d3b030649ceb2e5baca863355de9f037fa8214463623c08aa3572d766f` |
| 28 | `theorem` | [abs_natCast_norm](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/abs-natcast-norm--40ac6c3f770a5a7e15f33e16.md) | 147 | `result-track:40ac6c3f770a5a7e15f33e162e1e328b6f24d0de4c8ea5d5d5523199b88c0324` |
| 29 | `theorem` | [natCast_natAbs_norm](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/natcast-natabs-norm--cbf26a22a6322e5b1f9c9791.md) | 150 | `result-track:cbf26a22a6322e5b1f9c9791c3cf33970a9895f47a3bd2cb0068ce557d03c2c8` |
| 30 | `theorem` | [natAbs_norm_eq](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/natabs-norm-eq--5e7ee789cbae207be51a6301.md) | 154 | `result-track:5e7ee789cbae207be51a63015b136d91f0fb399eddbda96fb95781436c926812` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/instance--a275114842041ed2af6f1bf6.md) | 160 | `declaration-track:a275114842041ed2af6f1bf6b168951187fc240f9ec3fb61351c0d9feefe4b9b` |
| 32 | `theorem` | [div_def](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/div-def--d8ba21440ab8342f8c229c75.md) | 166 | `result-track:d8ba21440ab8342f8c229c7503a4b70b9ce8b795ff31b1e72898fbe351d2cdff` |
| 33 | `theorem` | [toComplex_re_div](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/tocomplex-re-div--1b3c70a8721b69d3c9f47842.md) | 170 | `result-track:1b3c70a8721b69d3c9f47842f8b75cabf75b046c6f2da836257ce232772b4a12` |
| 34 | `theorem` | [toComplex_im_div](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/tocomplex-im-div--b903d0eae4800a3321944fd4.md) | 174 | `result-track:b903d0eae4800a3321944fd43d27b457a8b9ef0c51ca81e60ad44c28f6d11e66` |
| 35 | `theorem` | [normSq_le_normSq_of_re_le_of_im_le](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/normsq-le-normsq-of-re-le-of-im-le--4e725cef56a3086fc4e241c4.md) | 178 | `result-track:4e725cef56a3086fc4e241c4264de70c556f21ad98bd2982fa6e9a7d439ae6cf` |
| 36 | `theorem` | [normSq_div_sub_div_lt_one](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/normsq-div-sub-div-lt-one--d1ee4df4f2f6076fe66d4fdd.md) | 183 | `result-track:d1ee4df4f2f6076fe66d4fdd7dc08571d7e29afd972a971149b1f873c86db9c9` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/instance--85c8b4c3f8715cfbac3f638b.md) | 198 | `declaration-track:85c8b4c3f8715cfbac3f638b0e6a41cdd684f7c5a655de81a73df9e24f894897` |
| 38 | `theorem` | [mod_def](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/mod-def--02e7278c35faf5350160651a.md) | 201 | `result-track:02e7278c35faf5350160651ab32afd7d8d083361cb3add1825ce38eea2dd3d77` |
| 39 | `theorem` | [norm_mod_lt](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/norm-mod-lt--1bdeb1291d49412934ba76aa.md) | 204 | `result-track:1bdeb1291d49412934ba76aa092c87fe7bf782def547c956892ccdfdfde8aa35` |
| 40 | `theorem` | [natAbs_norm_mod_lt](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/natabs-norm-mod-lt--c57a1bb5c9ba0b199810c1e3.md) | 215 | `result-track:c57a1bb5c9ba0b199810c1e3f6dbcd6934f6df351e0236171a15a6f417f0d883` |
| 41 | `theorem` | [norm_le_norm_mul_left](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/norm-le-norm-mul-left--9b3aac833ced6f4054579520.md) | 219 | `result-track:9b3aac833ced6f40545795203ec3fd55721f68b3148eae7f4339cda314d7b89b` |
| 42 | `instance` | [instNontrivial](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/instnontrivial--e4dd75507c71fca9e10862b2.md) | 226 | `declaration-track:e4dd75507c71fca9e10862b2eb1da1a45d2a46afb843fb625c3bd8df1f275760` |
| 43 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/instance--1af2b3e4f5c3d94d2c9ed952.md) | 229 | `declaration-track:1af2b3e4f5c3d94d2c9ed9524820555bdcc695f31ddd1b81d660a887e61532ab` |
| 44 | `theorem` | [sq_add_sq_of_nat_prime_of_not_irreducible](../../../../mathematics/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/declarations/sq-add-sq-of-nat-prime-of-not-irreducible--ff5d2a5705d73e3a4c25404b.md) | 243 | `result-track:ff5d2a5705d73e3a4c25404bd8cf37cac388fad2aef1eee58959658b82054649` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
