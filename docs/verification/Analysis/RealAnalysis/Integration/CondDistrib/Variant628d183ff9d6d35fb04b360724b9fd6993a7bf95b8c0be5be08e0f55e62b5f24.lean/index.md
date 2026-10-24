# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CondDistrib.Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e1be1911d2c8be1c92bd23208fa8eb6239bc83e",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e1be1911d2c8be1c92bd23208fa8eb6239bc83e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Disintegration.Unique` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Notation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/instance--ccc4938c254793ec5e7bb047.md) | 64 | `declaration-track:ccc4938c254793ec5e7bb0476e0d56fc5cc8376eef9493ebeeace954501a445b` |
| 2 | `lemma` | [condDistrib_apply_of_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/conddistrib-apply-of-ne-zero--82924c903c85ea902d3bf93b.md) | 71 | `result-track:82924c903c85ea902d3bf93b78f37054be9fdf4fc1739992b737e8e09f4e9999` |
| 3 | `lemma` | [compProd_map_condDistrib](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/compprod-map-conddistrib--1b79cead10eedea2a7211fc8.md) | 78 | `result-track:1b79cead10eedea2a7211fc8e89c6a1b8918b624168d7e79e7b0a61d591e7d24` |
| 4 | `theorem` | [measurable_condDistrib](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/measurable-conddistrib--3de20bced93881c042d0212e.md) | 84 | `result-track:3de20bced93881c042d0212e64a03ccb9292d85d1465d5685c33ac89b0f0e8ac` |
| 5 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.ae_integrable_condDistrib_map_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/root-measuretheory-aestronglymeasurable-ae-integrable-conddistrib-map-if--a9b347347acd3449b1ab1cdc.md) | 88 | `result-track:a9b347347acd3449b1ab1cdc29a5a9e591940b078fc62ab05e91c042b7201ca9` |
| 6 | `theorem` | [_root_.MeasureTheory.StronglyMeasurable.integral_condDistrib](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/root-measuretheory-stronglymeasurable-integral-conddistrib--44ff26aeae7935608d51d190.md) | 97 | `result-track:44ff26aeae7935608d51d190adf40634c8d44bfac84798c6c9ea2f999e5de7b2` |
| 7 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.integral_condDistrib_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/root-measuretheory-aestronglymeasurable-integral-conddistrib-map--5e7489c42da90e46e900ea77.md) | 101 | `result-track:5e7489c42da90e46e900ea77c669395fc800413df91b43a6b5499409a54a77a4` |
| 8 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.integral_condDistrib](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/root-measuretheory-aestronglymeasurable-integral-conddistrib--b11c5679e841d1a3a589da71.md) | 106 | `result-track:b11c5679e841d1a3a589da7134398bd05d104f3b7e2eca0ccb871646c37aa8ff` |
| 9 | `theorem` | [stronglyMeasurable_integral_condDistrib](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/stronglymeasurable-integral-conddistrib--fea064de5f3c1e10bb2cb92c.md) | 111 | `result-track:fea064de5f3c1e10bb2cb92ce2c911ee4f1bed24ae705588b1cce150a74bc852` |
| 10 | `theorem` | [aestronglyMeasurable_integral_condDistrib](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/aestronglymeasurable-integral-conddistrib--dc6d1d3aef31079df23b8a38.md) | 115 | `result-track:dc6d1d3aef31079df23b8a38d2f9b44f17963e582e7d68fe7042915850d32093` |
| 11 | `theorem` | [condDistrib_ae_eq_of_measure_eq_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/conddistrib-ae-eq-of-measure-eq-compprod--80e8eea7eb47e62b51dab397.md) | 127 | `result-track:80e8eea7eb47e62b51dab397e6710f5058908b2a1c7f2c60b410bb45c904a90e` |
| 12 | `theorem` | [integrable_toReal_condDistrib](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/integrable-toreal-conddistrib--3661983492be5e601ebbf31a.md) | 141 | `result-track:3661983492be5e601ebbf31ab8d3b09e7cbe9c201f98cac9f63b1d01b877e8b4` |
| 13 | `theorem` | [_root_.MeasureTheory.Integrable.condDistrib_ae_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/root-measuretheory-integrable-conddistrib-ae-map--69f15e53ceceb472fc213db3.md) | 151 | `result-track:69f15e53ceceb472fc213db32072644ca1e83d5a1fe55d960213fdc50111605d` |
| 14 | `theorem` | [_root_.MeasureTheory.Integrable.condDistrib_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/root-measuretheory-integrable-conddistrib-ae--3298cc84b20d850dc38e45f5.md) | 156 | `result-track:3298cc84b20d850dc38e45f54376b5d25eb3fd657cf876891e7cd69c3afe8044` |
| 15 | `theorem` | [_root_.MeasureTheory.Integrable.integral_norm_condDistrib_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/root-measuretheory-integrable-integral-norm-conddistrib-map--a8b5268ad0d11cdbc8da992b.md) | 161 | `result-track:a8b5268ad0d11cdbc8da992b98532e47800a4b86af54d43297759ea5690fa13d` |
| 16 | `theorem` | [_root_.MeasureTheory.Integrable.integral_norm_condDistrib](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/root-measuretheory-integrable-integral-norm-conddistrib--3d69f1fcf41776aa13edbdd0.md) | 166 | `result-track:3d69f1fcf41776aa13edbdd0f9b74b7f39241eb426307305ea8c30885b0cfbdb` |
| 17 | `theorem` | [_root_.MeasureTheory.Integrable.norm_integral_condDistrib_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/root-measuretheory-integrable-norm-integral-conddistrib-map--a285d8473ed08c94348a7397.md) | 173 | `result-track:a285d8473ed08c94348a7397ed13cf5c8b92236600828d7c94417cc65a531725` |
| 18 | `theorem` | [_root_.MeasureTheory.Integrable.norm_integral_condDistrib](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/root-measuretheory-integrable-norm-integral-conddistrib--8f2c88a48bb7bb3b1cb9fc1d.md) | 178 | `result-track:8f2c88a48bb7bb3b1cb9fc1d46ed1193b3d19e08354120d44346d93d08656c19` |
| 19 | `theorem` | [_root_.MeasureTheory.Integrable.integral_condDistrib_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/root-measuretheory-integrable-integral-conddistrib-map--0c5a84aa6705aa4412393810.md) | 183 | `result-track:0c5a84aa6705aa441239381051cbc7e65a2c8178057349c87c1e3a5718189600` |
| 20 | `theorem` | [_root_.MeasureTheory.Integrable.integral_condDistrib](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/root-measuretheory-integrable-integral-conddistrib--97caefbf80db3cdb9b726929.md) | 189 | `result-track:97caefbf80db3cdb9b72692926b534700351bea41ae43eb6832bb8cc8963ef76` |
| 21 | `theorem` | [setLIntegral_preimage_condDistrib](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/setlintegral-preimage-conddistrib--630cbdee341a66b73d4d9d57.md) | 196 | `result-track:630cbdee341a66b73d4d9d57f609f1378669e417042b8adf23fe900001ee2ea6` |
| 22 | `theorem` | [setLIntegral_condDistrib_of_measurableSet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/setlintegral-conddistrib-of-measurableset--71d3c6216abda29b8aaedfbe.md) | 206 | `result-track:71d3c6216abda29b8aaedfbee8ec895b6a8ff9925ed8282dff9513bfe2556d92` |
| 23 | `theorem` | [condDistrib_ae_eq_condExp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/conddistrib-ae-eq-condexp--aea1b5d304e17353a99fe9d7.md) | 214 | `result-track:aea1b5d304e17353a99fe9d7121121b5c20e692a2fd1c0e8dfd813fcfe10d5ad` |
| 24 | `theorem` | [condExp_prod_ae_eq_integral_condDistrib'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/condexp-prod-ae-eq-integral-conddistrib--91d34eaf5bd45a82e40c21b4.md) | 232 | `result-track:91d34eaf5bd45a82e40c21b4984c3082b7ef4859407235c573902e91474d125b` |
| 25 | `theorem` | [condExp_prod_ae_eq_integral_condDistrib₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/condexp-prod-ae-eq-integral-conddistrib--ec0328f8ef88ec6eb13d1147.md) | 259 | `result-track:ec0328f8ef88ec6eb13d1147cc1bc961107d1672d2c9f91c0d261bc9498f960c` |
| 26 | `theorem` | [condExp_prod_ae_eq_integral_condDistrib](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/condexp-prod-ae-eq-integral-conddistrib--102b8a7cc960111cd983259d.md) | 273 | `result-track:102b8a7cc960111cd983259d04a4d002756f6c5f8318eb6e916bf96cb900ff04` |
| 27 | `theorem` | [condExp_ae_eq_integral_condDistrib](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/condexp-ae-eq-integral-conddistrib--802c88922374caf7fc23f1bd.md) | 284 | `result-track:802c88922374caf7fc23f1bd874ef93a939d9107186a99d17bcb6754c14255aa` |
| 28 | `theorem` | [condExp_ae_eq_integral_condDistrib'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/condexp-ae-eq-integral-conddistrib--8457d0ab7c9a021d3df5b8a2.md) | 295 | `result-track:8457d0ab7c9a021d3df5b8a2a1881b26f0360702b8d6dee7178d840c177d50d1` |
| 29 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.comp_snd_map_prodMk](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/root-measuretheory-aestronglymeasurable-comp-snd-map-prodmk--4c614d9b991b13d07369274c.md) | 306 | `result-track:4c614d9b991b13d07369274ced5fcdcf3f835c493f8ec4dc2869484ac993ae38` |
| 30 | `theorem` | [_root_.MeasureTheory.Integrable.comp_snd_map_prodMk](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/root-measuretheory-integrable-comp-snd-map-prodmk--c436cccab7a859dcfeac833e.md) | 329 | `result-track:c436cccab7a859dcfeac833eab9a70e6f2fad4cd0c8e8a53d5590186ce657fc6` |
| 31 | `theorem` | [aestronglyMeasurable_comp_snd_map_prodMk_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/aestronglymeasurable-comp-snd-map-prodmk-iff--5a5f472b73f784841a1d4a0d.md) | 345 | `result-track:5a5f472b73f784841a1d4a0df7350ab20f6390188547d7e9e422ed0c7d1988b4` |
| 32 | `theorem` | [integrable_comp_snd_map_prodMk_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/integrable-comp-snd-map-prodmk-iff--1340850ba10488ec5d15b677.md) | 355 | `result-track:1340850ba10488ec5d15b677ea938e93c99f4da91a4bb075ab3d8197d86b4c9b` |
| 33 | `theorem` | [condExp_ae_eq_integral_condDistrib_id](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondDistrib/Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.lean/declarations/condexp-ae-eq-integral-conddistrib-id--99f3521ae40a2e2038548eed.md) | 363 | `result-track:99f3521ae40a2e2038548eed70433326c535216a176a9fec1ef3ed1abcdc5c9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
