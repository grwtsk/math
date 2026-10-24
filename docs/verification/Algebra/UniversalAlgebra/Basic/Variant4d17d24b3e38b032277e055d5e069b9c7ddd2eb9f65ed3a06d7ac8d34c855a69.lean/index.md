# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ce885e891fa920e3dd2e4106d96906b2bc1d4cd",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ce885e891fa920e3dd2e4106d96906b2bc1d4cd`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Interval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntervalRat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/intervalrat--e1e0af9b7222d1af14566130.md) | 47 | `declaration-track:e1e0af9b7222d1af14566130c9e3ed5d9ceed1150586ab5fe494d069fe37a6c0` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/instance--402b9b0a9e0b960395e45910.md) | 54 | `declaration-track:402b9b0a9e0b960395e459104bdbd0a6d9934faad4fff94b57b33f066dda1323` |
| 3 | `def` | [toSet](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/toset--f1c6c09dbc9e739be35b36ca.md) | 60 | `declaration-track:f1c6c09dbc9e739be35b36ca24252e1b45c1a10f6e52aea1dff6b82240b87e9c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/instance--c5d2ec7866729c3e09a0c4eb.md) | 63 | `declaration-track:c5d2ec7866729c3e09a0c4ebed16aa4f900e4e6722584b8812ea255b3049ed96` |
| 5 | `theorem` | [mem_def](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mem-def--4f212535d2b6bdb4c7440694.md) | 67 | `result-track:4f212535d2b6bdb4c7440694e20266dce2e3dd86faf29a60ed26bb229e12fd66` |
| 6 | `theorem` | [mem_iff_mem_Icc](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mem-iff-mem-icc--aee9c5d3b0838c4c12ef1da0.md) | 71 | `result-track:aee9c5d3b0838c4c12ef1da0ae308cbb2f00ac8668e40e8fa92db415e4489126` |
| 7 | `theorem` | [forall_mem_iff_forall_Icc](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/forall-mem-iff-forall-icc--3e341d738a9be254500be563.md) | 75 | `result-track:3e341d738a9be254500be563c6049bcf9fd87aba31cc976d29ab951984e4c029` |
| 8 | `theorem` | [exists_mem_iff_exists_Icc](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/exists-mem-iff-exists-icc--b3cfffd4743a813497def526.md) | 80 | `result-track:b3cfffd4743a813497def52658cbe6ebc6a88fe4db41c4614b453c11a4d7a269` |
| 9 | `def` | [singleton](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/singleton--dafc4307fa196969162ae0c4.md) | 85 | `declaration-track:dafc4307fa196969162ae0c44c319d08d707ee9d545daa4a5110c29f94f4fd1e` |
| 10 | `theorem` | [mem_singleton](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mem-singleton--d687cf617241ab4a6a490ea4.md) | 87 | `result-track:d687cf617241ab4a6a490ea466cb5961173676dbafcd18c6b30d345221515c96` |
| 11 | `def` | [width](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/width--a4f7ca19e22ddaa733980aed.md) | 91 | `declaration-track:a4f7ca19e22ddaa733980aed28658683856ba17bf571ffeff8d20395f65c1c07` |
| 12 | `theorem` | [width_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/width-nonneg--c0bb1d46e9b60d482e190549.md) | 93 | `result-track:c0bb1d46e9b60d482e19054908b2dbdb8dc643ef6b4124dd7d650bc860a08f34` |
| 13 | `def` | [midpoint](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/midpoint--23ad949cf6175821901ef364.md) | 98 | `declaration-track:23ad949cf6175821901ef364f81c2c9429c80de1a94036cb4c63d42aa7c4b5bd` |
| 14 | `theorem` | [midpoint_mem](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/midpoint-mem--8285da7b7fb722eaecdb9650.md) | 101 | `result-track:8285da7b7fb722eaecdb9650d19f2d8eb85cfc2e2052dca46f00ea3449acf47a` |
| 15 | `def` | [add](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/add--d287b397cfda09950a9098c4.md) | 119 | `declaration-track:d287b397cfda09950a9098c4c9d0c6598ece4587fcc2058535670012d86307d5` |
| 16 | `theorem` | [mem_add](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mem-add--1c7991c3c55176bfaf2b9640.md) | 125 | `result-track:1c7991c3c55176bfaf2b964070fff8086a5b49a83bfed80ac728d986c26a80d3` |
| 17 | `def` | [neg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/neg--751e990b812e78c3837864ec.md) | 134 | `declaration-track:751e990b812e78c3837864ece9ccbda29a57df1b2d570a014b5ecd7b589618a8` |
| 18 | `theorem` | [mem_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mem-neg--d9d253ba76111634c9025da2.md) | 140 | `result-track:d9d253ba76111634c9025da22177505415a9966073e0fb4c70c2a56e59ccec14` |
| 19 | `def` | [sub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/sub--e1d736923cc0af8a52731c3b.md) | 148 | `declaration-track:e1d736923cc0af8a52731c3be36a41cbae59f0a2bfab7c1af4e878f01fb67160` |
| 20 | `theorem` | [mem_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mem-sub--8b5c51f1f1cdeef4ea4db8f0.md) | 151 | `result-track:8b5c51f1f1cdeef4ea4db8f0e0c00ab55db14ce5c27e9ce9f9fd7fdfb0af49f1` |
| 21 | `def` | [min4](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/min4--06c420d33150234ede4f4e9d.md) | 159 | `declaration-track:06c420d33150234ede4f4e9ddcd1fc0ae9508ca197d29761441731ee6221ba06` |
| 22 | `def` | [max4](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/max4--2acba84e64ae9e5cd29549ff.md) | 162 | `declaration-track:2acba84e64ae9e5cd29549ff778238735ef5c86df443f2794f66e06cc38686f3` |
| 23 | `theorem` | [min4_le_all](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/min4-le-all--99f7f411869b06c932ee40ae.md) | 164 | `result-track:99f7f411869b06c932ee40ae3698047c90ca9716cc4821bd28d5f7f4c7e6a34c` |
| 24 | `theorem` | [all_le_max4](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/all-le-max4--8a3d53f73ae8ba3c62d5698f.md) | 173 | `result-track:8a3d53f73ae8ba3c62d5698fcb0b1f2a4116d1ef0df8bf06a2e07d6c760ba315` |
| 25 | `theorem` | [le_min4_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/le-min4-iff--4247ea921f776bc593478ad2.md) | 182 | `result-track:4247ea921f776bc593478ad265fad82bfa5a91a8be895b3f3b976f46abedd35a` |
| 26 | `theorem` | [max4_le_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/max4-le-iff--c26f660d38097ff97089a312.md) | 186 | `result-track:c26f660d38097ff97089a3120d1dbb17b4918acf27d187212ac07cf9aaaddc93` |
| 27 | `def` | [mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mul--e4f01db8bb02f2565526ee3e.md) | 191 | `declaration-track:e4f01db8bb02f2565526ee3e73f34724aa458c6245ce1fc626065b2c0c70911c` |
| 28 | `def` | [mulFast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mulfast--5e43a6c96d886bac0e28cf10.md) | 203 | `declaration-track:5e43a6c96d886bac0e28cf10c74dcca74bbf6a5867e5a1aa7aae5ca2d5507dfb` |
| 29 | `theorem` | [mul_mem_endpoints_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mul-mem-endpoints-left--eb4ce12dc9b72ae6966aefa2.md) | 231 | `result-track:eb4ce12dc9b72ae6966aefa2524a04db9b0cdd5d004c437c03038e8eef97df1c` |
| 30 | `theorem` | [mul_mem_endpoints_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mul-mem-endpoints-right--c419933067daec470c402900.md) | 252 | `result-track:c419933067daec470c402900be52bbb1bb3a0f8129cf6c8c181b08810ee322db` |
| 31 | `theorem` | [mul_lower_bound](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mul-lower-bound--7fda7d58d861f6e04db2d3a2.md) | 271 | `result-track:7fda7d58d861f6e04db2d3a2891617756b27401c2fa4f61b8e39811af0c7c39c` |
| 32 | `theorem` | [mul_upper_bound](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mul-upper-bound--a02661ede99b52e0271657a2.md) | 297 | `result-track:a02661ede99b52e0271657a2d6cd5c74978835db5b54f3f01dbefdefc4180381` |
| 33 | `theorem` | [mul_mem_corners](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mul-mem-corners--3935e6c64dc748b6105c63a8.md) | 321 | `result-track:3935e6c64dc748b6105c63a8d5f3d54e780c83d156f2e7b79c92c8af61cf16c7` |
| 34 | `theorem` | [mem_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mem-mul--b35f9b115475f926469d69c7.md) | 328 | `result-track:b35f9b115475f926469d69c7b40af445388b54157e2546c2289dd92459f9f9b7` |
| 35 | `theorem` | [eq_min4_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/eq-min4-of-le--a8a2b6dbfef9c76745375adb.md) | 335 | `result-track:a8a2b6dbfef9c76745375adbab18c6385b033a9b24bbd7be701465999e00307e` |
| 36 | `theorem` | [eq_min4_of_le2](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/eq-min4-of-le2--e4872300fe4a4c0784042598.md) | 338 | `result-track:e4872300fe4a4c07840425984a00a47ec86ac392222f7f8c115a701821820a34` |
| 37 | `theorem` | [eq_min4_of_le3](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/eq-min4-of-le3--e88ecf5d4742f70f7b9327e6.md) | 341 | `result-track:e88ecf5d4742f70f7b9327e6e1c89e6a3fc7aca8294945da5ab2b32d7575e4a6` |
| 38 | `theorem` | [eq_min4_of_le4](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/eq-min4-of-le4--a824bab080eb6a77437e31e0.md) | 344 | `result-track:a824bab080eb6a77437e31e0f6a02a1f49766e72302d5725b129d1366e2e37a5` |
| 39 | `theorem` | [eq_max4_of_ge](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/eq-max4-of-ge--07e8ab592434d32781bc441c.md) | 347 | `result-track:07e8ab592434d32781bc441cc6b30a91cfc66cb03f1a000446e238e0f084c545` |
| 40 | `theorem` | [eq_max4_of_ge2](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/eq-max4-of-ge2--84ddb39294e3e697700380eb.md) | 350 | `result-track:84ddb39294e3e697700380ebf1510feb012cca39af923d8271cb89f5657568ee` |
| 41 | `theorem` | [eq_max4_of_ge3](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/eq-max4-of-ge3--0feb62b83c6d08783c98b655.md) | 353 | `result-track:0feb62b83c6d08783c98b6552172114d7139efe14d9e6513da535a8754a0b1ce` |
| 42 | `theorem` | [eq_max4_of_ge4](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/eq-max4-of-ge4--ed8cbd23526e3be2fdb8d9f7.md) | 356 | `result-track:ed8cbd23526e3be2fdb8d9f7a31f75529256e1a87722ada56362d635abb63aba` |
| 43 | `theorem` | [mulFast_lo](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mulfast-lo--3e8a871b6fa54655628792c3.md) | 360 | `result-track:3e8a871b6fa54655628792c3cb27511077379b6c9ecf190e0e306145ecb7715c` |
| 44 | `theorem` | [mulFast_hi](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mulfast-hi--0f0ad61d896d1b1416c62bd6.md) | 381 | `result-track:0f0ad61d896d1b1416c62bd6084c6b14a595f922047838ab9e3273c55c805b28` |
| 45 | `theorem` | [mem_mulFast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mem-mulfast--098a0cd0f4255316c5375e9b.md) | 404 | `result-track:098a0cd0f4255316c5375e9b88f39431555bc72b854e9356d04700f2fb7908f8` |
| 46 | `def` | [containsZero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/containszero--db0e69846831eb02521ed451.md) | 413 | `declaration-track:db0e69846831eb02521ed45169ab126d63775273da761211f691e54ff1712a66` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/instance--7ced131dc9dc42b76a2bea10.md) | 416 | `declaration-track:7ced131dc9dc42b76a2bea100d5a9f96bd91d0f5fae7a4c23c3952366217cfab` |
| 48 | `structure` | [IntervalRatNonzero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/intervalratnonzero--a1634430411cade79ce79681.md) | 420 | `declaration-track:a1634430411cade79ce7968125ca311658fa30d9241ea6b45514059909e35ccb` |
| 49 | `def` | [invNonzero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/invnonzero--7c025af9dec47c16e62fd7b3.md) | 426 | `declaration-track:7c025af9dec47c16e62fd7b3b816a4d9635cb7f5e50fc4826384c23f1266296d` |
| 50 | `theorem` | [mem_invNonzero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mem-invnonzero--c2a909b39794179c24bc2a97.md) | 450 | `result-track:c2a909b39794179c24bc2a975fa86bcb6e0ec93fa3f1663c40d0f628bf489fa2` |
| 51 | `def` | [scale](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/scale--2f3e398ef56ac8d0ec230f4b.md) | 481 | `declaration-track:2f3e398ef56ac8d0ec230f4b09926caaa25f262e4f1b7b2b287026fc5b252304` |
| 52 | `theorem` | [mem_scale](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mem-scale--b091bb2f7d211531f2345faf.md) | 492 | `result-track:b091bb2f7d211531f2345faf7dce9b9dac7533d2af4e827006e19cf23c6aaf0b` |
| 53 | `def` | [bisect](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/bisect--175a2b0804cab20ba177af65.md) | 509 | `declaration-track:175a2b0804cab20ba177af65d0bf8b861171f1c45789d34ec88dbaf3978c3a3c` |
| 54 | `theorem` | [mem_bisect_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mem-bisect-left--6e5c1e447b1b0d1efe289b0e.md) | 514 | `result-track:6e5c1e447b1b0d1efe289b0e02c829310ecabc1abaafeea0930e2c159ca3e3d1` |
| 55 | `theorem` | [mem_bisect_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mem-bisect-right--290e9109996e0cabfcd24a5f.md) | 519 | `result-track:290e9109996e0cabfcd24a5f9c7bab4d30a7f6bd3bda62b454971b9ab3ee91bc` |
| 56 | `theorem` | [midpoint_sub_lo](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/midpoint-sub-lo--d742ca36e434a4a5ef9a345e.md) | 525 | `result-track:d742ca36e434a4a5ef9a345e4df452894d67ea9e1fa9e8f52b544384b7f9182a` |
| 57 | `theorem` | [hi_sub_midpoint](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/hi-sub-midpoint--c6d2f6d74e1682cd74be7d44.md) | 532 | `result-track:c6d2f6d74e1682cd74be7d4407536dfba40857bd77cd9fdff190917f09db7dba` |
| 58 | `theorem` | [midpoint_ge_lo](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/midpoint-ge-lo--a69be1ce25ce339962ff440d.md) | 539 | `result-track:a69be1ce25ce339962ff440d55957506b75a61918c5b2670072fa5a81e25e86a` |
| 59 | `theorem` | [midpoint_le_hi](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/midpoint-le-hi--5a4f8402d695a3b6a459ad3e.md) | 545 | `result-track:5a4f8402d695a3b6a459ad3eeed8cd61759ea303a6e33ba36d9b6efdb0d277d6` |
| 60 | `theorem` | [midpoint_ge_lo_real](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/midpoint-ge-lo-real--51565e1a7d72fcd18221caf5.md) | 551 | `result-track:51565e1a7d72fcd18221caf5ac8b0d9861e49c1ace2d6e23018985420d192015` |
| 61 | `theorem` | [midpoint_le_hi_real](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/midpoint-le-hi-real--7a1b6038568293f7080555d5.md) | 556 | `result-track:7a1b6038568293f7080555d5534e941c41a96532b0cfc4d92a0bf0437e3c8aa8` |
| 62 | `theorem` | [mem_of_mem_bisect_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mem-of-mem-bisect-left--f0bcad43a11019013dacf438.md) | 561 | `result-track:f0bcad43a11019013dacf4382add96c1d06489a2babcf18c7f74d0c83d605367` |
| 63 | `theorem` | [mem_of_mem_bisect_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mem-of-mem-bisect-right--5350042149cdd0a029c5f5b0.md) | 568 | `result-track:5350042149cdd0a029c5f5b061dc91b18e3920a7b130aa79123605d4ce5e3c61` |
| 64 | `theorem` | [mem_bisect_or](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mem-bisect-or--b86af4d584b28e6b7a67f145.md) | 575 | `result-track:b86af4d584b28e6b7a67f145b4ab9d83f886522672489faf0109832572c66e01` |
| 65 | `theorem` | [mem_default](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mem-default--ae547024ef5a3022685327fe.md) | 582 | `result-track:ae547024ef5a3022685327fec0d378a5c6edd11e2e478fa38ccfe327c5c410af` |
| 66 | `def` | [intersect](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/intersect--a063a7cff4d4fbdb1452984d.md) | 591 | `declaration-track:a063a7cff4d4fbdb1452984d79cb2dc701d28a5d8c4c0ee1446e0ec0dae4910e` |
| 67 | `theorem` | [mem_intersect](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/mem-intersect--fa6533217d48e68656be3e3b.md) | 600 | `result-track:fa6533217d48e68656be3e3b05b2904219803eb7117edb8559f0ead8008e8a35` |
| 68 | `theorem` | [intersect_subset_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/intersect-subset-left--5980cdabf0841fc54fdf12b9.md) | 628 | `result-track:5980cdabf0841fc54fdf12b901964dfbf13ae8af93da997cd87189f4b53b769c` |
| 69 | `theorem` | [intersect_subset_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/declarations/intersect-subset-right--073d75d8a413bf15a7c09ed3.md) | 638 | `result-track:073d75d8a413bf15a7c09ed30e050197ae830ab8338b13032a0c1097f30ac7fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
