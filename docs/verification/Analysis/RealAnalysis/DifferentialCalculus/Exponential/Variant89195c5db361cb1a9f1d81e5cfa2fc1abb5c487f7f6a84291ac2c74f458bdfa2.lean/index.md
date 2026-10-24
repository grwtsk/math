# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Exponential.Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "221fc6fc0289d3953b8af70281b12e66b192ed1d",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `221fc6fc0289d3953b8af70281b12e66b192ed1d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Algebra.Exponential` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Exponential` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.CauSeqFilter` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictFDerivAt_exp_zero_of_radius_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasstrictfderivat-exp-zero-of-radius-pos--af2c12c7fb1dc164e6222693.md) | 68 | `result-track:af2c12c7fb1dc164e62226931f62b4df4e92b292d2f64dd3978b098497cb94fe` |
| 2 | `theorem` | [hasFDerivAt_exp_zero_of_radius_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasfderivat-exp-zero-of-radius-pos--6b543bff5f53831c1a1e5e29.md) | 77 | `result-track:6b543bff5f53831c1a1e5e29ca414d93457b0c8352f7f7143d47058cf869335a` |
| 3 | `theorem` | [hasFDerivAt_exp_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasfderivat-exp-of-mem-ball--96d93f306fc4e74cadc9d551.md) | 91 | `result-track:96d93f306fc4e74cadc9d5516e7245ced102f9e5da848aee79825ccecd4cb178` |
| 4 | `theorem` | [hasStrictFDerivAt_exp_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasstrictfderivat-exp-of-mem-ball--67e93f137772b9b3ec21f470.md) | 111 | `result-track:67e93f137772b9b3ec21f470f4f2d56fb168baac756647b7de31128453399a8a` |
| 5 | `theorem` | [hasStrictDerivAt_exp_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasstrictderivat-exp-of-mem-ball--b7a1ef30c77464788d236bc8.md) | 125 | `result-track:b7a1ef30c77464788d236bc8d4ff4ff362e670c20a3633f317c5d27005aa070d` |
| 6 | `theorem` | [hasDerivAt_exp_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasderivat-exp-of-mem-ball--eec88d04565f7954cf8820e0.md) | 132 | `result-track:eec88d04565f7954cf8820e08255e3289a25227578469efcf01d284e97b17799` |
| 7 | `theorem` | [hasStrictDerivAt_exp_zero_of_radius_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasstrictderivat-exp-zero-of-radius-pos--423c0e34c9cafe506e81d143.md) | 138 | `result-track:423c0e34c9cafe506e81d143243c5ea1804b44a8122179a455a354ace2e736e4` |
| 8 | `theorem` | [hasDerivAt_exp_zero_of_radius_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasderivat-exp-zero-of-radius-pos--d0a0fa919f415c058f0a05f5.md) | 144 | `result-track:d0a0fa919f415c058f0a05f5e9b9e4ba40c83325fe6f61a48e4aa84ad281377e` |
| 9 | `theorem` | [hasStrictFDerivAt_exp_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasstrictfderivat-exp-zero--17d73581e58ff481ba5ea936.md) | 156 | `result-track:17d73581e58ff481ba5ea9362904486137d61867abbe6db3ca9caf2befe1d608` |
| 10 | `theorem` | [hasFDerivAt_exp_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasfderivat-exp-zero--5c89b991ee3d54bdc03116cd.md) | 161 | `result-track:5c89b991ee3d54bdc03116cdcda9e108f1b5c92b045efb0936136f1605e2e8ba` |
| 11 | `theorem` | [hasStrictFDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasstrictfderivat-exp--7d553df98ad1e80960a26353.md) | 172 | `result-track:7d553df98ad1e80960a2635394875ee3b738a81dd81ed22835986de9dbaf6f58` |
| 12 | `theorem` | [hasFDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasfderivat-exp--e644018429b2404d215e5db5.md) | 177 | `result-track:e644018429b2404d215e5db55a8c4aeff9b4957473e573985444ca4b458d1545` |
| 13 | `theorem` | [hasStrictDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasstrictderivat-exp--1387edeb63c7630f5a4344dc.md) | 188 | `result-track:1387edeb63c7630f5a4344dc5adc2395b0e17533cd07dc2ddeff385435ea24b5` |
| 14 | `theorem` | [hasDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasderivat-exp--3301c92ef0e818fc1b965d9a.md) | 193 | `result-track:3301c92ef0e818fc1b965d9a505d766a5a92490e96309de356942b910aae91d7` |
| 15 | `theorem` | [hasStrictDerivAt_exp_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasstrictderivat-exp-zero--6f253330ba5c08a0bb5b5ad8.md) | 197 | `result-track:6f253330ba5c08a0bb5b5ad82d416e92000faa6088afec350f68bf70c3f3eeb3` |
| 16 | `theorem` | [hasDerivAt_exp_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasderivat-exp-zero--f1763ddea17fb6e9eecc73cc.md) | 201 | `result-track:f1763ddea17fb6e9eecc73cca1825fcc41ea4797954b18ebd9d534da48e306c8` |
| 17 | `theorem` | [Complex.exp_eq_exp_ℂ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/complex-exp-eq-exp--ce555408456ff5c3d77a1cbc.md) | 206 | `result-track:ce555408456ff5c3d77a1cbc061c168eb7c2297f2ff7f04f99a5e48d5250ef18` |
| 18 | `theorem` | [Real.exp_eq_exp_ℝ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/real-exp-eq-exp--5097ba6181291e695fb7d049.md) | 212 | `result-track:5097ba6181291e695fb7d049dc9db11bfb9c1c3e2e5d1a73e1b9ab1304802fb6` |
| 19 | `theorem` | [hasFDerivAt_exp_smul_const_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasfderivat-exp-smul-const-of-mem-ball--57b061cc93ba8338a9ee7149.md) | 254 | `result-track:57b061cc93ba8338a9ee7149d14afc11b2c5cbd797eeb7cb265db1f2123afe00` |
| 20 | `theorem` | [hasFDerivAt_exp_smul_const_of_mem_ball'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasfderivat-exp-smul-const-of-mem-ball--4b1ae3de43eec74d0c018db2.md) | 284 | `result-track:4b1ae3de43eec74d0c018db2000e16f9db4f900d81df473a333736ac2c8fa8ba` |
| 21 | `theorem` | [hasStrictFDerivAt_exp_smul_const_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasstrictfderivat-exp-smul-const-of-mem-ball--5afcac1653317bd2799c8b42.md) | 293 | `result-track:5afcac1653317bd2799c8b420e6f64d523f380e6d6f65fe6d2ae636e640e2851` |
| 22 | `theorem` | [hasStrictFDerivAt_exp_smul_const_of_mem_ball'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasstrictfderivat-exp-smul-const-of-mem-ball--545d0fcf28c135eebe77ee32.md) | 304 | `result-track:545d0fcf28c135eebe77ee32a03f315854614b0adf76cb4ba2bd4d16aaa8edf7` |
| 23 | `theorem` | [hasStrictDerivAt_exp_smul_const_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasstrictderivat-exp-smul-const-of-mem-ball--1ef6cd775105a4494d3583af.md) | 316 | `result-track:1ef6cd775105a4494d3583af1db325dbb3ee1dc5e3ad71d5e19d4bde673cd8d1` |
| 24 | `theorem` | [hasStrictDerivAt_exp_smul_const_of_mem_ball'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasstrictderivat-exp-smul-const-of-mem-ball--30d6f30e6292e6e8f1c54896.md) | 321 | `result-track:30d6f30e6292e6e8f1c5489666a080c59959174d663187d138e7eb791444a811` |
| 25 | `theorem` | [hasDerivAt_exp_smul_const_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasderivat-exp-smul-const-of-mem-ball--b82f0f4d5d8c76cc2f873b3a.md) | 326 | `result-track:b82f0f4d5d8c76cc2f873b3a42c8313c277e4e4a80cdfe77d20150eb5ca23609` |
| 26 | `theorem` | [hasDerivAt_exp_smul_const_of_mem_ball'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasderivat-exp-smul-const-of-mem-ball--26f4d82f90842cd1f758f75d.md) | 331 | `result-track:26f4d82f90842cd1f758f75d79de82b094739238a9d2273179b6edadb97ae205` |
| 27 | `theorem` | [hasFDerivAt_exp_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasfderivat-exp-smul-const--e25fdca8720e343aac4a1b2b.md) | 346 | `result-track:e25fdca8720e343aac4a1b2b61627e0130eeb6c2ea0105565a4b5f693431e88b` |
| 28 | `theorem` | [hasFDerivAt_exp_smul_const'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasfderivat-exp-smul-const--5802d602ce1f927147c3fcea.md) | 351 | `result-track:5802d602ce1f927147c3fcea94066c8156104732eb5909d2e8d41df9e0b04664` |
| 29 | `theorem` | [hasStrictFDerivAt_exp_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasstrictfderivat-exp-smul-const--ab452e769aad387cd7a0fd70.md) | 357 | `result-track:ab452e769aad387cd7a0fd706b8d92b3365a903b4c9abae3770d193cbecef7aa` |
| 30 | `theorem` | [hasStrictFDerivAt_exp_smul_const'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasstrictfderivat-exp-smul-const--66501bd44a9c5ac14b127b42.md) | 363 | `result-track:66501bd44a9c5ac14b127b429e61633f80e1fecf87c38f5b4eab67e94dee6ff2` |
| 31 | `theorem` | [hasStrictDerivAt_exp_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasstrictderivat-exp-smul-const--82d6731461f6cd06bf81ee9b.md) | 371 | `result-track:82d6731461f6cd06bf81ee9bbd5268e144fbab97279a3a1ef8223fefad445ba1` |
| 32 | `theorem` | [hasStrictDerivAt_exp_smul_const'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasstrictderivat-exp-smul-const--f4dbc29d9419178d88867705.md) | 376 | `result-track:f4dbc29d9419178d888677058ffe5ae8cb1505176f2460a9e3f0b0550506931a` |
| 33 | `theorem` | [hasDerivAt_exp_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasderivat-exp-smul-const--b73350f53cc810b694ca9798.md) | 381 | `result-track:b73350f53cc810b694ca9798acafd62a7d44646563c06e9fb6febcb4ca43ed84` |
| 34 | `theorem` | [hasDerivAt_exp_smul_const'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hasderivat-exp-smul-const--10255ae37d4a41bde35ddd0f.md) | 385 | `result-track:10255ae37d4a41bde35ddd0f811f9ce8e5757fe770ff8737d01444cbfcdca940` |
| 35 | `lemma` | [HasSum.exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variant89195c5db361cb1a9f1d81e5cfa2fc1abb5c487f7f6a84291ac2c74f458bdfa2.lean/declarations/hassum-exp--8e0c78b5470cb96668c4645a.md) | 399 | `result-track:8e0c78b5470cb96668c4645ad970a24fd9dadfdd83988d248244cc276b52fbca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
