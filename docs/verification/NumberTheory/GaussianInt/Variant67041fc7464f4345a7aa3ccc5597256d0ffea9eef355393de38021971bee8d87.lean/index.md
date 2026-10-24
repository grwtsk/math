# Verification target: GRWTSK.NumberTheory.GaussianInt.Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "440bf2ea54c662836610a74824e0b023374e170f",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `440bf2ea54c662836610a74824e0b023374e170f`.

Source path: `GRWTSK/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Archimedean` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Zsqrtd.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GaussianInt](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/gaussianint--59f1d2b792157aa214696135.md) | 54 | `declaration-track:59f1d2b792157aa214696135641188845759f5c924b9027c8f487d1c1ad3b9e9` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/instance--0f420fe08dc775a22bf75e20.md) | 61 | `declaration-track:0f420fe08dc775a22bf75e20a353fc4834baf07377e0b95aae36828c6a438382` |
| 3 | `instance` | [instCommRing](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/instcommring--49984a519c92c7505f636fc0.md) | 64 | `declaration-track:49984a519c92c7505f636fc01697be11d46efac859befc0433642941a293ff43` |
| 4 | `def` | [toComplex](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/tocomplex--5fa9a42831166452330e4d70.md) | 72 | `declaration-track:5fa9a42831166452330e4d70bd6fd37d9eb7cc831ef3a0d070fcf05952cd1700` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/instance--b1b3e91deb5a6e7b4ce98a80.md) | 77 | `declaration-track:b1b3e91deb5a6e7b4ce98a80d04a3d3515a0c434c5efda295cc18963b6833f79` |
| 6 | `theorem` | [toComplex_def](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/tocomplex-def--134f0d1fcb20c312bf26beda.md) | 80 | `result-track:134f0d1fcb20c312bf26bedac75fb27f628abb22534b78b623021b69dfa0f9f1` |
| 7 | `theorem` | [toComplex_def'](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/tocomplex-def--ef8dd463bfccd8e13f51ca7e.md) | 83 | `result-track:ef8dd463bfccd8e13f51ca7e45dd9f5a6eab099404dbff0d07fe07197dbc5808` |
| 8 | `theorem` | [toComplex_def₂](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/tocomplex-def--eef73ebe450da0a83a3b4077.md) | 85 | `result-track:eef73ebe450da0a83a3b407762045b041d84c398cf235708e018a3ddca2d4269` |
| 9 | `theorem` | [to_real_re](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/to-real-re--f2f2e05d9a1bf8469265407a.md) | 89 | `result-track:f2f2e05d9a1bf8469265407a601d195c98f42963747c4102720daeee09bd2949` |
| 10 | `theorem` | [to_real_im](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/to-real-im--c6707877595e09eabd03bd26.md) | 92 | `result-track:c6707877595e09eabd03bd26632858b1a96215e1e5bbf5c4ecd3424f2c206e57` |
| 11 | `theorem` | [toComplex_re](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/tocomplex-re--0925ab1d67e45ca3127b6628.md) | 95 | `result-track:0925ab1d67e45ca3127b6628507622e83ac7dd2f864d74a14e172d3a41402e75` |
| 12 | `theorem` | [toComplex_im](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/tocomplex-im--e758a8c5b54d99f61072165a.md) | 98 | `result-track:e758a8c5b54d99f61072165ae1d497a40b2c63d0aa50c5ca87c5a13d41005827` |
| 13 | `theorem` | [toComplex_add](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/tocomplex-add--2fed56ab9b28a53e530519eb.md) | 100 | `result-track:2fed56ab9b28a53e530519ebb6e96e3746f5c3165a2f034353f43b2c107af25b` |
| 14 | `theorem` | [toComplex_mul](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/tocomplex-mul--f27f569122bc860071a8555b.md) | 103 | `result-track:f27f569122bc860071a8555b73e12c688af5be186167f788753c7dd4b6d4f687` |
| 15 | `theorem` | [toComplex_one](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/tocomplex-one--a2a886ac46133a5a9725d582.md) | 106 | `result-track:a2a886ac46133a5a9725d582ce03d4ff1e6814a3cf4302bc753b7528ddc9f141` |
| 16 | `theorem` | [toComplex_zero](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/tocomplex-zero--73b9dfefddce650f0581642b.md) | 109 | `result-track:73b9dfefddce650f0581642baef6f074349fe801c62fb236de696ac73674ead7` |
| 17 | `theorem` | [toComplex_neg](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/tocomplex-neg--720ae04b8756dcd5de0c18d4.md) | 112 | `result-track:720ae04b8756dcd5de0c18d41caecad9107a5f3123cf22292a51d94e426e2db0` |
| 18 | `theorem` | [toComplex_sub](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/tocomplex-sub--06f518bcd4579b95d7097140.md) | 115 | `result-track:06f518bcd4579b95d7097140f1953417b5e10c1cd3ef0be819f3fae8ef675e85` |
| 19 | `theorem` | [toComplex_star](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/tocomplex-star--a8086beb964275612fc79c4f.md) | 119 | `result-track:a8086beb964275612fc79c4f944d0611779312b64146c17e17a2d5e7a7802d77` |
| 20 | `theorem` | [toComplex_inj](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/tocomplex-inj--b2d492cbfb837129301c3b8b.md) | 124 | `result-track:b2d492cbfb837129301c3b8bdaa843066b2b6458243768eea4023430e111d3b4` |
| 21 | `lemma` | [toComplex_injective](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/tocomplex-injective--92b558f0596311e45dc21d3f.md) | 127 | `result-track:92b558f0596311e45dc21d3f865959eae63f417cf12badb1b256b6d39917e612` |
| 22 | `theorem` | [toComplex_eq_zero](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/tocomplex-eq-zero--ec9c27248896e4eeaa17e706.md) | 131 | `result-track:ec9c27248896e4eeaa17e7069d3b8f882e8d336ba7d50282ed977715290782a6` |
| 23 | `theorem` | [intCast_real_norm](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/intcast-real-norm--c6cd7b76124639405184b289.md) | 135 | `result-track:c6cd7b76124639405184b2894157ad50e4cf95a3d23035a64aae3d26e27222ab` |
| 24 | `theorem` | [intCast_complex_norm](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/intcast-complex-norm--4863d679225fe1b6f5bea5e0.md) | 139 | `result-track:4863d679225fe1b6f5bea5e0562f1b67cdf8015aa6c226504d7f53410a5d7182` |
| 25 | `theorem` | [norm_nonneg](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/norm-nonneg--f631344cae4fef7d9f1b7613.md) | 142 | `result-track:f631344cae4fef7d9f1b7613eb5e5550b944658b52f1f2ab12570a071d658552` |
| 26 | `theorem` | [norm_eq_zero](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/norm-eq-zero--e271259bf5780b42568494da.md) | 146 | `result-track:e271259bf5780b42568494da904d72e9e87382fc6ef252e967afde2bb44cc935` |
| 27 | `theorem` | [norm_pos](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/norm-pos--fc5073c6087838774b5d848b.md) | 148 | `result-track:fc5073c6087838774b5d848b2f6a33507a3abeb7aa7a4d842c15e5e9a4ad1e7a` |
| 28 | `theorem` | [abs_natCast_norm](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/abs-natcast-norm--13dc2a2ab476494c6037a1f3.md) | 151 | `result-track:13dc2a2ab476494c6037a1f3048f56f604b66ddcadf61be48ae9aa361bad31df` |
| 29 | `theorem` | [natCast_natAbs_norm](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/natcast-natabs-norm--abc2cff40266dffcf5376032.md) | 155 | `result-track:abc2cff40266dffcf53760323e68b96b923041197cc7a7172ecfd1de7c47ea6b` |
| 30 | `theorem` | [natAbs_norm_eq](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/natabs-norm-eq--87669a1232bc10163d929725.md) | 159 | `result-track:87669a1232bc10163d9297254e5f918b0a7ea3b6e5db0e442c540a1bd2602eda` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/instance--465005d926b9f640c0849dfb.md) | 163 | `declaration-track:465005d926b9f640c0849dfb7d058c029078924b9189b4a2a6a6f29a7d766dcd` |
| 32 | `theorem` | [div_def](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/div-def--f85775f9a437495a9bdb7d75.md) | 169 | `result-track:f85775f9a437495a9bdb7d75f20a9938e84c364dc821b54c4c75385a4ed7e0ec` |
| 33 | `theorem` | [toComplex_div_re](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/tocomplex-div-re--63acaefe938180d5c2acb5ad.md) | 173 | `result-track:63acaefe938180d5c2acb5ad8c0e2c1f985fe2d8acbba382778e598613082bf9` |
| 34 | `theorem` | [toComplex_div_im](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/tocomplex-div-im--8f9284ed20258c42d5a934cf.md) | 177 | `result-track:8f9284ed20258c42d5a934cff9e4ca0baee44cddadb75e60685f9177e8dbd030` |
| 35 | `theorem` | [normSq_le_normSq_of_re_le_of_im_le](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/normsq-le-normsq-of-re-le-of-im-le--764d1b5359c280d4da8c416a.md) | 181 | `result-track:764d1b5359c280d4da8c416a377247b0326a62d7e438005ea569b24b5d6a82fb` |
| 36 | `theorem` | [normSq_div_sub_div_lt_one](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/normsq-div-sub-div-lt-one--1b70aeaee96372197264e350.md) | 189 | `result-track:1b70aeaee96372197264e350ff2d5845d7eb0d0a95d5b08eb73c90f226053ffd` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/instance--952289b05b9165333433b0e2.md) | 204 | `declaration-track:952289b05b9165333433b0e2ed452e334fdd482ad98f7c4b5c1cbd85b7b0f643` |
| 38 | `theorem` | [mod_def](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/mod-def--da3e519ccca40102776ba84f.md) | 207 | `result-track:da3e519ccca40102776ba84ff9d73025c630f76f38c8fd5cd1ae0d2dbe91ae8f` |
| 39 | `theorem` | [norm_mod_lt](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/norm-mod-lt--c0fef7bbc100754ba879e8f6.md) | 210 | `result-track:c0fef7bbc100754ba879e8f620d11ebb67470e95a7b117bb569c7abeb5f3a9af` |
| 40 | `theorem` | [natAbs_norm_mod_lt](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/natabs-norm-mod-lt--0376469ea442083ccefea8e3.md) | 221 | `result-track:0376469ea442083ccefea8e34412bcdaeb088912be964d9e436cc7604b8e3f12` |
| 41 | `theorem` | [norm_le_norm_mul_left](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/norm-le-norm-mul-left--dfbed5428c1dafadaf923033.md) | 225 | `result-track:dfbed5428c1dafadaf9230331b3e8802d19f603b7839329033dc61ee5f246783` |
| 42 | `instance` | [instNontrivial](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/instnontrivial--eb0581a1140268946bde4a1e.md) | 232 | `declaration-track:eb0581a1140268946bde4a1ee6aed14550a607b984a2e9dfa9df3a73f4186d60` |
| 43 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/instance--677e36c508e711905c0454c5.md) | 235 | `declaration-track:677e36c508e711905c0454c5f951e81b832b7c9e1196e9dd9f26e1ab9e8199ff` |
| 44 | `theorem` | [sq_add_sq_of_nat_prime_of_not_irreducible](../../../../mathematics/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/declarations/sq-add-sq-of-nat-prime-of-not-irreducible--68849b9afc83f88b2ed632d8.md) | 249 | `result-track:68849b9afc83f88b2ed632d8d37aad4b5c032b877d935fa0906fbe7a49fcb6ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
