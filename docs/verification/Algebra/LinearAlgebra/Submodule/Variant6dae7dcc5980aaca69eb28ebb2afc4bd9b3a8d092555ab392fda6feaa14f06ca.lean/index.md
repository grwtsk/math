# Verification target: GRWTSK.Algebra.LinearAlgebra.Submodule.Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97b220523515c73ebc02b6e47a1e8b36070d02d5",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97b220523515c73ebc02b6e47a1e8b36070d02d5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Pointwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Module` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Operations` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [localized₀](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/localized--b059223684d9ef9c3a1cf89f.md) | 42 | `declaration-track:b059223684d9ef9c3a1cf89fd214454219a3cbaf552b8da0a8eaaab1b5061f79` |
| 2 | `def` | [localized'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/localized--bb2fdac36d513f7ed401e0bd.md) | 53 | `declaration-track:bb2fdac36d513f7ed401e0bdb9cf84e9c69cd533d7557f28058e299192156b0e` |
| 3 | `lemma` | [mem_localized₀](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/mem-localized--c1231a2acc7d3ffb1effcf3a.md) | 59 | `result-track:c1231a2acc7d3ffb1effcf3a40dc2f4d6c7191f923510626c623be4a1b4559da` |
| 4 | `lemma` | [mem_localized'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/mem-localized--8b17c783c57abeb503d39bdd.md) | 63 | `result-track:8b17c783c57abeb503d39bdd43af5121ab63cbc270540b33e6b09a4b809d36b6` |
| 5 | `lemma` | [restrictScalars_localized'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/restrictscalars-localized--a2532025da56f4003d4f96c6.md) | 68 | `result-track:a2532025da56f4003d4f96c680a004eec9317e5a425f8b6a32b52451d848ff7e` |
| 6 | `theorem` | [localized'_eq_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/localized-eq-span--d7f85bc31095fb1f3c6805fd.md) | 72 | `result-track:d7f85bc31095fb1f3c6805fdba05acf08e6cafef19414cf78e31a26a058fb570` |
| 7 | `def` | [localized'gi](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/localized-gi--575ea80a1c6a8afd021c52af.md) | 80 | `declaration-track:575ea80a1c6a8afd021c52af93e8cc482ed30eaf9cb93a97431dceb51f5eb7f4` |
| 8 | `abbrev` | [localized](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/localized--6342c83db74a66582c68551d.md) | 93 | `declaration-track:6342c83db74a66582c68551d42a7887ca2c1595be73d3e22d2994629eede3172` |
| 9 | `lemma` | [localized₀_bot](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/localized-bot--4ebee88611723c32e6bfc025.md) | 97 | `result-track:4ebee88611723c32e6bfc025e483981170b94bd4de8a065e92489d2610d78ce5` |
| 10 | `lemma` | [localized'_bot](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/localized-bot--8fa2a3c3d03bcb275a1f7ac6.md) | 103 | `result-track:8fa2a3c3d03bcb275a1f7ac6a3f5f8108e9087ad171a91eed2387333f600cc0a` |
| 11 | `lemma` | [localized₀_top](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/localized-top--dbae25f7eec93766756de7d4.md) | 107 | `result-track:dbae25f7eec93766756de7d4d6ebad6b267215853880f50f979c38422339debb` |
| 12 | `lemma` | [localized'_top](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/localized-top--122211bc8ed1a2239069130e.md) | 114 | `result-track:122211bc8ed1a2239069130ef877c4ec5ddf54e088270ae5aab4528863a37c68` |
| 13 | `lemma` | [localized'_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/localized-span--a4406417135f829582947870.md) | 118 | `result-track:a4406417135f8295829478700bc8bc05b41fe443ec578910160141c56bf7e727` |
| 14 | `lemma` | [localized₀_smul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/localized-smul--75657c6b4aa210df7c0b7e72.md) | 121 | `result-track:75657c6b4aa210df7c0b7e7215ee92209c70d1467ad0c0d89ada73aa8dc58c8e` |
| 15 | `lemma` | [restrictScalars_localized'_smul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/restrictscalars-localized-smul--dbd1e3e06d9dd6799a50be1a.md) | 134 | `result-track:dbd1e3e06d9dd6799a50be1a758ff58966cc277a713658d53fc16e14d0239013` |
| 16 | `lemma` | [localized'_smul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/localized-smul--b3226e68843b85bed6a889ec.md) | 145 | `result-track:b3226e68843b85bed6a889ecdf4fcf8d0b395ddf6fdebdc1555f7f87412659f6` |
| 17 | `def` | [toLocalized₀](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/tolocalized--b0b01bf1ab4125d4d5d57f0c.md) | 152 | `declaration-track:b0b01bf1ab4125d4d5d57f0c54df7bf3cc67b6e8c6a24a369fe59c08f1af7a58` |
| 18 | `def` | [toLocalized'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/tolocalized--e0a433be1920363584c43e82.md) | 156 | `declaration-track:e0a433be1920363584c43e820f88864bbce9272b3df632831c12863de3a64463` |
| 19 | `abbrev` | [toLocalized](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/tolocalized--c0a0cedf0447be521f67369d.md) | 159 | `declaration-track:c0a0cedf0447be521f67369dfcdc6816ac903c885a4636cf1a1b40a856020f7d` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/instance--fedf758fb7d2fbd947d94e6e.md) | 162 | `declaration-track:fedf758fb7d2fbd947d94e6e40ea178073b276ac07b150f6d955030e0683db7d` |
| 21 | `instance` | [isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/islocalizedmodule--f260ebbed341b4037979ac33.md) | 178 | `declaration-track:f260ebbed341b4037979ac3351e13d80a42d63cc8792f4f91a00945f139eb451` |
| 22 | `def` | [localizedEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/localizedequiv--0bf22a367c10ec94ed33b612.md) | 183 | `declaration-track:0bf22a367c10ec94ed33b612e39a39b1ab989fe02862785777c6a258c6f27d7a` |
| 23 | `lemma` | [localized₀_le_localized₀_of_smul_le](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/localized-le-localized-of-smul-le--3198cc03ac5866cc9d219a91.md) | 190 | `result-track:3198cc03ac5866cc9d219a911c4e2cc155a1aa66946c20c57b442ebcae440897` |
| 24 | `lemma` | [localized'_le_localized'_of_smul_le](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/localized-le-localized-of-smul-le--1524bb4b1c7e2e02ee81a109.md) | 196 | `result-track:1524bb4b1c7e2e02ee81a109f992121a9d0e5cbde4c7f1d84be75b6a3018bff2` |
| 25 | `def` | [Submodule.toLocalizedQuotient'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/submodule-tolocalizedquotient--bfb8cbecdf1faab9d14f9308.md) | 211 | `declaration-track:bfb8cbecdf1faab9d14f9308a0e2772363d45e3d9d2780c5a6f8d5e4d2a60ea9` |
| 26 | `abbrev` | [Submodule.toLocalizedQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/submodule-tolocalizedquotient--e0f6c961c661920b20e4a08e.md) | 215 | `declaration-track:e0f6c961c661920b20e4a08e78c407d5a37e750d13448e9ecf8c01d4103549c7` |
| 27 | `lemma` | [Submodule.toLocalizedQuotient'_mk](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/submodule-tolocalizedquotient-mk--8d3770708d323067b4129c17.md) | 220 | `result-track:8d3770708d323067b4129c17eb46960af4bdf1732ddc079819ec16cd2358edbc` |
| 28 | `instance` | [IsLocalizedModule.toLocalizedQuotient'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/islocalizedmodule-tolocalizedquotient--b96118ee42373e35d450a42a.md) | 224 | `declaration-track:b96118ee42373e35d450a42a2138d6555ef70e895fcbace7a09ad4b6b900c4df` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/instance--8f4a4977e6108fd87c23ece0.md) | 245 | `declaration-track:8f4a4977e6108fd87c23ece0434f960d56921bde271c07b003844ccc861e5faa` |
| 30 | `def` | [localizedQuotientEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/localizedquotientequiv--c8820b6533dd33cc0f9f245a.md) | 250 | `declaration-track:c8820b6533dd33cc0f9f245a46631aaaee472e8ec3d73ef5b7dca4344b814fc6` |
| 31 | `lemma` | [ker_localizedMap_eq_localized₀_ker](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/ker-localizedmap-eq-localized-ker--0e81b2c79918cd04c925e4a9.md) | 266 | `result-track:0e81b2c79918cd04c925e4a994366531480864f1e2208eaaf04fd638c2af30a1` |
| 32 | `lemma` | [localized'_ker_eq_ker_localizedMap](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/localized-ker-eq-ker-localizedmap--47bf9e5797abec1f9486948d.md) | 278 | `result-track:47bf9e5797abec1f9486948d44c4a36b15578231c0491cf71a52fa5e39e79168` |
| 33 | `lemma` | [ker_localizedMap_eq_localized'_ker](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/ker-localizedmap-eq-localized-ker--64036e233e45623dde0432e9.md) | 282 | `result-track:64036e233e45623dde0432e98f0e7522a5b2d90bca2c33bee172132e6c1e8548` |
| 34 | `def` | [toKerIsLocalized](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/tokerislocalized--a96a20027326283989eefec3.md) | 293 | `declaration-track:a96a20027326283989eefec3f5ec6b7b71405b9e4258d771353499189772421a` |
| 35 | `lemma` | [toKerLocalized_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/tokerlocalized-islocalizedmodule--5037231679aab7744940af20.md) | 300 | `result-track:5037231679aab7744940af20c26358115dcf5e4c217d6b420b4bed6e4474fef2` |
| 36 | `lemma` | [range_localizedMap_eq_localized₀_range](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/range-localizedmap-eq-localized-range--dd103524730355aebc9aa417.md) | 307 | `result-track:dd103524730355aebc9aa4178e290f56daf6c7dd3ca8a83cbcbc20d9d73d67ea` |
| 37 | `lemma` | [localized'_range_eq_range_localizedMap](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/declarations/localized-range-eq-range-localizedmap--1fb51fd3f11c11aeb66ab7e4.md) | 312 | `result-track:1fb51fd3f11c11aeb66ab7e48562919844129d27cf05c35c0b5262fd2ac738ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
