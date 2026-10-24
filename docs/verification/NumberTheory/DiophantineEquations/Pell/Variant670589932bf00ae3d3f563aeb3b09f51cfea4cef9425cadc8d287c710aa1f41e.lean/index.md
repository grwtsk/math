# Verification target: GRWTSK.NumberTheory.DiophantineEquations.Pell.Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c19465a0f8df240d4c519037da398f00b4ffbce",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c19465a0f8df240d4c519037da398f00b4ffbce`.

Source path: `GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.DiophantineApproximation.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Zsqrtd.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Qify` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [is_pell_solution_iff_mem_unitary](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/is-pell-solution-iff-mem-unitary--a4c87926cde20f4e032ce98c.md) | 89 | `result-track:a4c87926cde20f4e032ce98cca893f0bb797a8d862519863d7f571e96e018144` |
| 2 | `def` | [Solution₁](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/solution--5e54144ba3f8c9903f19caf9.md) | 98 | `declaration-track:5e54144ba3f8c9903f19caf9bccb8c2fe2536a8bba8700a786b230bc57c44508` |
| 3 | `instance` | [instCommGroup](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/instcommgroup--3bc68aa6444679f115bce0ca.md) | 105 | `declaration-track:3bc68aa6444679f115bce0ca1ac0dace0f071b062893ec71a7847e18a52f2c67` |
| 4 | `instance` | [instHasDistribNeg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/insthasdistribneg--9e70f90f6d9a26ab2aa7e95c.md) | 108 | `declaration-track:9e70f90f6d9a26ab2aa7e95c3cc99b7e9f4b6e9829b839de44a7e3a0b7bd3b21` |
| 5 | `instance` | [instInhabited](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/instinhabited--0ca41b2add616af95e648797.md) | 111 | `declaration-track:0ca41b2add616af95e648797ecc28b4391c0250b201ee7a61d466d2f04ad9729` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/instance--95e67b9f95cd432d47220f0f.md) | 114 | `declaration-track:95e67b9f95cd432d47220f0fa59bc7b88a2d8171dfdc1227d4c848246e53b320` |
| 7 | `def` | [x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/x--0a0c272c4b6bbd5b30250954.md) | 117 | `declaration-track:0a0c272c4b6bbd5b30250954ac3732632c2689e01f9f6700b22591a7e81c4932` |
| 8 | `def` | [y](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/y--890e3d9a4dd24ce30c004282.md) | 121 | `declaration-track:890e3d9a4dd24ce30c0042824fbea01b3c980f57008edda845ec11084d074169` |
| 9 | `theorem` | [prop](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/prop--f6cba5191b329b4c8b2afb2d.md) | 125 | `result-track:f6cba5191b329b4c8b2afb2dd8f2e31b043e428e5a1433dd0f939619669ef3de` |
| 10 | `theorem` | [prop_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/prop-x--c101cf9331d4fee6add88006.md) | 129 | `result-track:c101cf9331d4fee6add88006b4386ed68539a452d0d03388d4e411b4d9a103df` |
| 11 | `theorem` | [prop_y](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/prop-y--6b57c2ca0c4894a72d8c4dcd.md) | 132 | `result-track:6b57c2ca0c4894a72d8c4dcd58a2fd47d6600a0e65f31a5aed8451a458ca1dde` |
| 12 | `theorem` | [ext](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/ext--73a4d5e15e6969d85f923887.md) | 136 | `result-track:73a4d5e15e6969d85f923887ba75118836f3b6602737b8b1aa4f4ce74153abb1` |
| 13 | `def` | [mk](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/mk--ebf4c51d22e9bbdc77d233f7.md) | 140 | `declaration-track:ebf4c51d22e9bbdc77d233f7de16cdea2e2db2a14a464d58140c03688b339a87` |
| 14 | `theorem` | [x_mk](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/x-mk--f7e817332db95480a7540752.md) | 145 | `result-track:f7e817332db95480a7540752bb1f2f9ab3fc1b5429040119de6adaf3af00587a` |
| 15 | `theorem` | [y_mk](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/y-mk--39cbf03df686521d12e48293.md) | 149 | `result-track:39cbf03df686521d12e48293005249f089776d36de0c45037a5b6a09be396671` |
| 16 | `theorem` | [coe_mk](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/coe-mk--6b7d2460aeb0e8e5940e5bbc.md) | 153 | `result-track:6b7d2460aeb0e8e5940e5bbcdfdb38080aeb6654c6056e4a09f4b1139a099ce4` |
| 17 | `theorem` | [x_one](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/x-one--9be75c7153906fbb73ad6152.md) | 157 | `result-track:9be75c7153906fbb73ad6152844dbd24cb9f27097d4dccf9913aa2ff4eb17297` |
| 18 | `theorem` | [y_one](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/y-one--1aec94f5d9024c5d77604c37.md) | 161 | `result-track:1aec94f5d9024c5d77604c379245af78fd1f7d1ebf8d4293edcc7ea7d47dcdc7` |
| 19 | `theorem` | [x_mul](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/x-mul--c8392900d022a9c94099db22.md) | 165 | `result-track:c8392900d022a9c94099db22084d59c09403fe526641bf10150b83703afe756d` |
| 20 | `theorem` | [y_mul](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/y-mul--76ffebc8bc46aa34fd0f0518.md) | 170 | `result-track:76ffebc8bc46aa34fd0f0518d0590320d7cd8a080d2e3cdfc30f281ec3491ae3` |
| 21 | `theorem` | [x_inv](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/x-inv--6963eaf7469ecb67f03ad7c4.md) | 174 | `result-track:6963eaf7469ecb67f03ad7c4001cd236acc60de56c96951e6187c39bd046ed60` |
| 22 | `theorem` | [y_inv](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/y-inv--05f09abc978debe8106ec183.md) | 178 | `result-track:05f09abc978debe8106ec18379f664af8cb9673c4bcd839701c1f9b8786a89eb` |
| 23 | `theorem` | [x_neg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/x-neg--f25e9c0ce52bb93d3d50d48d.md) | 182 | `result-track:f25e9c0ce52bb93d3d50d48dfe5c925e2af6beb8f12a3d36b9fc4d6c7db4099f` |
| 24 | `theorem` | [y_neg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/y-neg--10cf92feb9d7bbb7911725a8.md) | 186 | `result-track:10cf92feb9d7bbb7911725a8da1cf1d24ddf075623b5a83f1abf048957d0966a` |
| 25 | `theorem` | [eq_zero_of_d_neg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/eq-zero-of-d-neg--0f0f93babdf2efc4828441f9.md) | 190 | `result-track:0f0f93babdf2efc4828441f902ccd5b7d32eaf511f74a6e79aeff7faafc9cace` |
| 26 | `theorem` | [x_ne_zero](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/x-ne-zero--7079400d11cd39d2a1d9ff0d.md) | 198 | `result-track:7079400d11cd39d2a1d9ff0d6bc37f2bd8be3f7e961b65e6e7c11764d535bdf3` |
| 27 | `theorem` | [y_ne_zero_of_one_lt_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/y-ne-zero-of-one-lt-x--7db5737c39885a71dd2a1a39.md) | 205 | `result-track:7db5737c39885a71dd2a1a392796ec67988219020a5721304b55820f8e47ed0f` |
| 28 | `theorem` | [d_pos_of_one_lt_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/d-pos-of-one-lt-x--0cc106cea41f51e407d0efe8.md) | 212 | `result-track:0cc106cea41f51e407d0efe84406040c0b893511a33240255a7f2ee114b13b7b` |
| 29 | `theorem` | [d_nonsquare_of_one_lt_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/d-nonsquare-of-one-lt-x--732573f7c034cbc209113cfb.md) | 218 | `result-track:732573f7c034cbc209113cfb723084e450eac5a853f7589dc536da775d877de0` |
| 30 | `theorem` | [eq_one_of_x_eq_one](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/eq-one-of-x-eq-one--0ca707ecb43a636d0f54af3e.md) | 225 | `result-track:0ca707ecb43a636d0f54af3e2a5758240a73f8adf8aeb53fc7175ce63a9f7942` |
| 31 | `theorem` | [eq_one_or_neg_one_iff_y_eq_zero](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/eq-one-or-neg-one-iff-y-eq-zero--b94e0e430ae6b64912564cb4.md) | 231 | `result-track:b94e0e430ae6b64912564cb47bbd7937f9fbcced8e84569609f993cb50e23dd5` |
| 32 | `theorem` | [x_mul_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/x-mul-pos--17ecf35fb7e94262acd1531d.md) | 238 | `result-track:17ecf35fb7e94262acd1531d4dd761a7ed5f9d389a4a3924ad0067618286d9aa` |
| 33 | `theorem` | [y_mul_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/y-mul-pos--fec81f1c871c35a3c522c12a.md) | 250 | `result-track:fec81f1c871c35a3c522c12a7e689542f48aa60b65e781c97075360942c867f6` |
| 34 | `theorem` | [x_pow_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/x-pow-pos--2b3cc790c5c5c303e8f18d44.md) | 257 | `result-track:2b3cc790c5c5c303e8f18d44c82cd13914f49a3b45dd26c81f686f59684e1127` |
| 35 | `theorem` | [y_pow_succ_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/y-pow-succ-pos--ed5720e44ad540542bd7084e.md) | 264 | `result-track:ed5720e44ad540542bd7084e395603041b1e55fd5a859f72080ef1fe7688326c` |
| 36 | `theorem` | [y_zpow_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/y-zpow-pos--a0b33d8f0a525f483a1b0532.md) | 272 | `result-track:a0b33d8f0a525f483a1b053220ec6949b222d0415c396f1e3697e210627faf43` |
| 37 | `theorem` | [x_zpow_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/x-zpow-pos--86c1a517d0e4319e38942fac.md) | 280 | `result-track:86c1a517d0e4319e38942fac1a4c37b152ca9053d36c292f80ed866b359ddc50` |
| 38 | `theorem` | [sign_y_zpow_eq_sign_of_x_pos_of_y_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/sign-y-zpow-eq-sign-of-x-pos-of-y-pos--1038622f7d4ca1191a9a0cab.md) | 291 | `result-track:1038622f7d4ca1191a9a0cab6454b92264a30dcc5ce3b3f8730405016f2e8380` |
| 39 | `theorem` | [exists_pos_variant](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/exists-pos-variant--abea7755089b1ee9e6a27f46.md) | 302 | `result-track:abea7755089b1ee9e6a27f46f513157641fa05b59ff147c4affc2c47fd253ce7` |
| 40 | `theorem` | [exists_of_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/exists-of-not-issquare--e79f001d9b8b05d130ce02a5.md) | 327 | `result-track:e79f001d9b8b05d130ce02a522a95af06a858b90f5ccb54f3c1a28e0436d1dbc` |
| 41 | `theorem` | [exists_iff_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/exists-iff-not-issquare--71ed088e2f0c5d712f3d4221.md) | 399 | `result-track:71ed088e2f0c5d712f3d4221d7cb8740aa7dde52635302163c51c4420972fddc` |
| 42 | `theorem` | [exists_nontrivial_of_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/exists-nontrivial-of-not-issquare--3fae19e26bfc2c0cead820ba.md) | 410 | `result-track:3fae19e26bfc2c0cead820ba35f5ddc5870bb5acdf4ef900b4df2a76dfb380b6` |
| 43 | `theorem` | [exists_pos_of_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/exists-pos-of-not-issquare--f56669da6d14a1fb88831e57.md) | 418 | `result-track:f56669da6d14a1fb88831e5737b9ef46c0fb40769ebe30f01a1eb7e2334e426b` |
| 44 | `def` | [IsFundamental](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/isfundamental--bc8133ef71f8132ca5f680e1.md) | 441 | `declaration-track:bc8133ef71f8132ca5f680e118b0dee702a92a880a140e7c3cae138896b6bb36` |
| 45 | `theorem` | [x_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/x-pos--324cb2579e6bb3f277a494a3.md) | 449 | `result-track:324cb2579e6bb3f277a494a343c2e961a4908df04a2ba8bb57bb707984a22c98` |
| 46 | `theorem` | [d_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/d-pos--97594d038e88b195b0c936d0.md) | 453 | `result-track:97594d038e88b195b0c936d0522568f4296a4495d28f9d724b86f14127abecdc` |
| 47 | `theorem` | [d_nonsquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/d-nonsquare--25a768edb42a7ee9c4cb6f8d.md) | 457 | `result-track:25a768edb42a7ee9c4cb6f8d103e53b539269efd1fefbdde2eb041725d067337` |
| 48 | `theorem` | [subsingleton](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/subsingleton--2553670ca9548bf220b5974e.md) | 461 | `result-track:2553670ca9548bf220b5974ec175000ef31293b4b2603fcac7729d48e9315b9c` |
| 49 | `theorem` | [exists_of_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/exists-of-not-issquare--112d373b91728b518024fd5c.md) | 468 | `result-track:112d373b91728b518024fd5cc2f6d4567eb5d371705bc0bbbc1d0937146c8ca7` |
| 50 | `theorem` | [y_strictMono](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/y-strictmono--ca650ebf27ce520d8200dbcd.md) | 493 | `result-track:ca650ebf27ce520d8200dbcdc33a6ea27022bb1d042592a4aa8d6d21f130e385` |
| 51 | `theorem` | [zpow_y_lt_iff_lt](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/zpow-y-lt-iff-lt--12672273d5d44d185968c476.md) | 514 | `result-track:12672273d5d44d185968c4760fc08cdab2ab4a27fa04a5affd10b63d351dcd69` |
| 52 | `theorem` | [zpow_eq_one_iff](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/zpow-eq-one-iff--98778a002fe69721b94777d8.md) | 521 | `result-track:98778a002fe69721b94777d8ad98fa93be45652a0dbcd48a8dcdfacf27a906ca` |
| 53 | `theorem` | [zpow_ne_neg_zpow](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/zpow-ne-neg-zpow--4acabe7d8719fb7c817d5c1d.md) | 527 | `result-track:4acabe7d8719fb7c817d5c1d3ca565552e9a0a3b01a643df54dfaea484a0e5a1` |
| 54 | `theorem` | [x_le_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/x-le-x--a322facbf95b24dc8345f523.md) | 536 | `result-track:a322facbf95b24dc8345f5239665c000f440008f71c87c49545a1d48c10cc362` |
| 55 | `theorem` | [y_le_y](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/y-le-y--a01a9fc6f212a274f65418bf.md) | 542 | `result-track:a01a9fc6f212a274f65418bf40555225fe9f2fac71045b3e6a774df43c11f50e` |
| 56 | `theorem` | [x_mul_y_le_y_mul_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/x-mul-y-le-y-mul-x--640c1d251d49dfdb33b066ae.md) | 551 | `result-track:640c1d251d49dfdb33b066ae267356a596aeff9e6af69c63bb770773fb2e2089` |
| 57 | `theorem` | [mul_inv_y_nonneg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/mul-inv-y-nonneg--322961a7b7e69e98beab6e8f.md) | 562 | `result-track:322961a7b7e69e98beab6e8f1d85e3b1816805f5e0b50669fd5098091c2fc521` |
| 58 | `theorem` | [mul_inv_x_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/mul-inv-x-pos--caeb441f03b3e21ca7a03a73.md) | 569 | `result-track:caeb441f03b3e21ca7a03a73be47dfa8781c792c80ab28446ae3161df9145e42` |
| 59 | `theorem` | [mul_inv_x_lt_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/mul-inv-x-lt-x--2bb464c739bf8f9d8269e6cc.md) | 581 | `result-track:2bb464c739bf8f9d8269e6cc6dc5223125240d0b162a48d6273b88d8fa6b25ce` |
| 60 | `theorem` | [eq_pow_of_nonneg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/eq-pow-of-nonneg--225aea20cf9bf190d4dad774.md) | 601 | `result-track:225aea20cf9bf190d4dad77460214bcb95d15f5a879fe264eb3c6b8117cafe1a` |
| 61 | `theorem` | [eq_zpow_or_neg_zpow](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/eq-zpow-or-neg-zpow--1b2af2029ce2a8285eb05964.md) | 627 | `result-track:1b2af2029ce2a8285eb059645ada78c18b0cc5eaa1a72854146851a2da000674` |
| 62 | `theorem` | [existsUnique_pos_generator](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/existsunique-pos-generator--1481575fe02c88211a7ab7fa.md) | 645 | `result-track:1481575fe02c88211a7ab7faab1d972787905eb25ea9f335ce37c5325fc5a1f9` |
| 63 | `theorem` | [pos_generator_iff_fundamental](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/declarations/pos-generator-iff-fundamental--e07b9cdc735bfe7192f1f2d2.md) | 672 | `result-track:e07b9cdc735bfe7192f1f2d2e9c899760f74e297d74c9b06b7319ea75235f40a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
