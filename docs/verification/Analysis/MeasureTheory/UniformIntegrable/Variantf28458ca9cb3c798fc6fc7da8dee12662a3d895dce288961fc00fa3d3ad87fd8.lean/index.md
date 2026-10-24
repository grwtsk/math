# Verification target: GRWTSK.Analysis.MeasureTheory.UniformIntegrable.Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a9e30855e47355f31e5828b2c102ac411718319",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a9e30855e47355f31e5828b2c102ac411718319`.

Source path: `GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConvergenceInMeasure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L1Space.Integrable` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UnifIntegrable](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/unifintegrable--46f12f7e7a3b026fc0f6a59e.md) | 71 | `declaration-track:46f12f7e7a3b026fc0f6a59ee9ed3ff929d5a7c138cac7641d0a397c11890480` |
| 2 | `def` | [UniformIntegrable](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/uniformintegrable--f332d811a4c9372e8e2b1f7f.md) | 77 | `declaration-track:f332d811a4c9372e8e2b1f7f893a8b04d15fe7133dd858b04b7ab9c7a53922d8` |
| 3 | `theorem` | [aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/aestronglymeasurable--51f49012325e734164cae00a.md) | 82 | `result-track:51f49012325e734164cae00a33d71af295032d7cd4c69313ec489e62d4328d47` |
| 4 | `theorem` | [unifIntegrable](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/unifintegrable--5df06ba2d0d934bb508dc528.md) | 89 | `result-track:5df06ba2d0d934bb508dc528e2a74c80b22ae4dfa7c05fd7070121677bbb0a6b` |
| 5 | `theorem` | [memLp](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/memlp--de84396cb855e661afda0688.md) | 93 | `result-track:de84396cb855e661afda0688c3fb33aa141f28110671216bd194f113e13161c4` |
| 6 | `theorem` | [add](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/add--73ae4236b757203747c408a3.md) | 112 | `result-track:73ae4236b757203747c408a3f52fe37abfe7a28c115eebb87c1e9ccf21e3f805` |
| 7 | `theorem` | [neg](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/neg--4b36fdcfa8ffabc4603087e6.md) | 128 | `result-track:4b36fdcfa8ffabc4603087e60eb1b04b60b6fb014384648c488f45828c397ab0` |
| 8 | `theorem` | [sub](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/sub--73f8fb97dbb06a24a175fecf.md) | 132 | `result-track:73f8fb97dbb06a24a175fecf30bd8c4516b887a04731fad8433a5768342ee722` |
| 9 | `theorem` | [ae_eq](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/ae-eq--8e8ef95789cd92ab5859555f.md) | 138 | `result-track:8e8ef95789cd92ab5859555fe7e100641eb97ddce0e9393bf3355b9090cec480` |
| 10 | `theorem` | [indicator](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/indicator--ad2e0f8eadf6b13b53a20463.md) | 148 | `result-track:ad2e0f8eadf6b13b53a20463f816ce5e3a76877e15edb184a266eefed3b4a0c3` |
| 11 | `theorem` | [restrict](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/restrict--e310c1434a92358459b234ff.md) | 160 | `result-track:e310c1434a92358459b234ff96492d216235680e715c55eced421f52fdf7c5eb` |
| 12 | `theorem` | [unifIntegrable_zero_meas](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/unifintegrable-zero-meas--38c6ae1edb41f8a0b9477ace.md) | 176 | `result-track:38c6ae1edb41f8a0b9477ace46c5528a0ad174086ab18004ae55df4dcb118594` |
| 13 | `theorem` | [unifIntegrable_congr_ae](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/unifintegrable-congr-ae--854cf76db1562a705a664a65.md) | 180 | `result-track:854cf76db1562a705a664a65073452691650319d496e355b43b854054038d2a5` |
| 14 | `theorem` | [tendsto_indicator_ge](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/tendsto-indicator-ge--f6d95b235985de0b85c5287b.md) | 184 | `result-track:f6d95b235985de0b85c5287b473df0c8bcbed847228165e2e20809cacdf86a28` |
| 15 | `theorem` | [MemLp.integral_indicator_norm_ge_le](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/memlp-integral-indicator-norm-ge-le--1821d17f9870f14f81a12099.md) | 201 | `result-track:1821d17f9870f14f81a12099caebba67c371027a442e34eccd0d8f93fa0e2f08` |
| 16 | `theorem` | [MemLp.integral_indicator_norm_ge_nonneg_le_of_meas](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/memlp-integral-indicator-norm-ge-nonneg-le-of-meas--050a5444b55b2146c93fe9fe.md) | 237 | `result-track:050a5444b55b2146c93fe9fe1a1be0822772d18b1ede556718236f29d0a1bf9d` |
| 17 | `theorem` | [MemLp.integral_indicator_norm_ge_nonneg_le](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/memlp-integral-indicator-norm-ge-nonneg-le--6982810c77b49aed2bc7f866.md) | 243 | `result-track:6982810c77b49aed2bc7f866a75a2d6fa0e6ef264bdc3e85984547f60cbffefb` |
| 18 | `theorem` | [MemLp.eLpNormEssSup_indicator_norm_ge_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/memlp-elpnormesssup-indicator-norm-ge-eq-zero--2ea19d67daa2b507b885b408.md) | 253 | `result-track:2ea19d67daa2b507b885b408ffdb15d7c1122ea5334dc4d4d07ef0683301393e` |
| 19 | `theorem` | [MemLp.eLpNorm_indicator_norm_ge_le](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/memlp-elpnorm-indicator-norm-ge-le--c0e9f58fca130f5ca2966352.md) | 280 | `result-track:c0e9f58fca130f5ca2966352e9483d4f8b2cb2bce08007bab7606283e0f031ea` |
| 20 | `theorem` | [MemLp.eLpNorm_indicator_norm_ge_pos_le](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/memlp-elpnorm-indicator-norm-ge-pos-le--9875cf45fc76fb36154ed657.md) | 316 | `result-track:9875cf45fc76fb36154ed657341cc03762f0e5bab17426ab3d30a9c07b9bed58` |
| 21 | `theorem` | [eLpNorm_indicator_le_of_bound](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/elpnorm-indicator-le-of-bound--9aa427997273f9f881f00207.md) | 329 | `result-track:9aa427997273f9f881f002073991ca54daaa58fd6b883b863bc41622042195c7` |
| 22 | `theorem` | [MemLp.eLpNorm_indicator_le'](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/memlp-elpnorm-indicator-le--20626919d8b5890415222267.md) | 362 | `result-track:20626919d8b58904152222672c693db518b761bdd82e992cdc9c743589a71970` |
| 23 | `theorem` | [MemLp.eLpNorm_indicator_le_of_meas](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/memlp-elpnorm-indicator-le-of-meas--b961c6117aa7a5d75d3aaf68.md) | 393 | `result-track:b961c6117aa7a5d75d3aaf681ea432e9e2b01f2c363c36d209433f758f98b548` |
| 24 | `theorem` | [MemLp.eLpNorm_indicator_le](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/memlp-elpnorm-indicator-le--b4c5e78519a806ae3ca65f38.md) | 403 | `result-track:b4c5e78519a806ae3ca65f38063ec8d7f67e0e81994e07833516c96846f283cc` |
| 25 | `theorem` | [unifIntegrable_const](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/unifintegrable-const--12151add00ec014f616f7aaa.md) | 416 | `result-track:12151add00ec014f616f7aaaf65dd73e7a542f4500ad92ccfb2f2e725f50a7b2` |
| 26 | `theorem` | [unifIntegrable_subsingleton](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/unifintegrable-subsingleton--42a9bb5107886dff4a814b33.md) | 423 | `result-track:42a9bb5107886dff4a814b33ae420b53dafc100d647556ad0a38d9744f8a2d7a` |
| 27 | `theorem` | [unifIntegrable_fin](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/unifintegrable-fin--4abdeef7d6abb5a759378f38.md) | 435 | `result-track:4abdeef7d6abb5a759378f38f84baeedbe8c12c640516969ab9ecb114815cbbc` |
| 28 | `theorem` | [unifIntegrable_finite](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/unifintegrable-finite--f60d58854a32af4efe5f1f41.md) | 459 | `result-track:f60d58854a32af4efe5f1f418adc01fa905ae982812dea22dc8715560e9c4e68` |
| 29 | `theorem` | [eLpNorm_sub_le_of_dist_bdd](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/elpnorm-sub-le-of-dist-bdd--609772ff8f70ee919f711729.md) | 473 | `result-track:609772ff8f70ee919f711729929d571fad6d083085f87fce6089316ee728a3ff` |
| 30 | `theorem` | [tendsto_Lp_finite_of_tendsto_ae_of_meas](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/tendsto-lp-finite-of-tendsto-ae-of-meas--a98a72425129da0fc713752b.md) | 492 | `result-track:a98a72425129da0fc713752bbad8e78f71bfbf384891da53bd41c2a0108a0ba7` |
| 31 | `theorem` | [tendsto_Lp_finite_of_tendsto_ae](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/tendsto-lp-finite-of-tendsto-ae--65d105c3df0707e59e9c0719.md) | 555 | `result-track:65d105c3df0707e59e9c0719d2253f0050c153d801363ec0d792ec1388cee9c4` |
| 32 | `theorem` | [unifIntegrable_of_tendsto_Lp_zero](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/unifintegrable-of-tendsto-lp-zero--55a2976810e489d8917f3be1.md) | 575 | `result-track:55a2976810e489d8917f3be19f9f9d780089fb7907cc4931803538091ddbba3f` |
| 33 | `theorem` | [unifIntegrable_of_tendsto_Lp](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/unifintegrable-of-tendsto-lp--9c550ad92ea2acda5baa25b7.md) | 589 | `result-track:9c550ad92ea2acda5baa25b7d11166372798fea6b135f8bf1ee9d3f47dbf4485` |
| 34 | `theorem` | [tendsto_Lp_finite_of_tendstoInMeasure](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/tendsto-lp-finite-of-tendstoinmeasure--2c7c77fe325bf05da15ddba7.md) | 602 | `result-track:2c7c77fe325bf05da15ddba70204d8bba90b47d006c7c9cc5ae40af86d14cd64` |
| 35 | `theorem` | [tendstoInMeasure_iff_tendsto_Lp_finite](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/tendstoinmeasure-iff-tendsto-lp-finite--97647b9200a3cba9a024c6a1.md) | 615 | `result-track:97647b9200a3cba9a024c6a165644f33cbdfca02e81a719d95999484a91baff3` |
| 36 | `theorem` | [unifIntegrable_of'](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/unifintegrable-of--018ee08d1f3f3a69d85eecc9.md) | 625 | `result-track:018ee08d1f3f3a69d85eecc91440a10329e366ef293627491e2e1382baa05dbb` |
| 37 | `theorem` | [unifIntegrable_of](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/unifintegrable-of--e0053864a73679f0694981f9.md) | 688 | `result-track:e0053864a73679f0694981f9cd839e5812a52162f5464c56cdf92519108a9086` |
| 38 | `theorem` | [uniformIntegrable_zero_meas](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/uniformintegrable-zero-meas--21cda990c76de3574ec4085b.md) | 729 | `result-track:21cda990c76de3574ec4085b39dcff04114aeb063cef69ee4ad2c210198d4ace` |
| 39 | `theorem` | [UniformIntegrable.ae_eq](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/uniformintegrable-ae-eq--585cd1e42b5b10c50a62929a.md) | 733 | `result-track:585cd1e42b5b10c50a62929adc5f2cad58ea7bc56217cacfd842f109f47f1211` |
| 40 | `theorem` | [uniformIntegrable_congr_ae](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/uniformintegrable-congr-ae--44f38af40f7f0fed69263bec.md) | 740 | `result-track:44f38af40f7f0fed69263becc2016ad452966fec6d5c5136c041046ae4d1478c` |
| 41 | `theorem` | [uniformIntegrable_finite](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/uniformintegrable-finite--0345259e718cf329f1367eea.md) | 745 | `result-track:0345259e718cf329f1367eeacee2d5576bd366b7fa67f901695d08b9ad148206` |
| 42 | `theorem` | [uniformIntegrable_subsingleton](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/uniformintegrable-subsingleton--2a54ba150ee1562b8b33850b.md) | 763 | `result-track:2a54ba150ee1562b8b33850b04b2c39cb7239dd672c83c4ba559c78eb4facefa` |
| 43 | `theorem` | [uniformIntegrable_const](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/uniformintegrable-const--276b744675e1332a1fc9b039.md) | 768 | `result-track:276b744675e1332a1fc9b03930f44c9cbf7e76f8ae1e7352b80a4a95d6ea438a` |
| 44 | `theorem` | [uniformIntegrable_of'](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/uniformintegrable-of--f0f5e734c4bec67c84d6eab0.md) | 775 | `result-track:f0f5e734c4bec67c84d6eab03e81a4d7a35d750b797731ee149b31c2488bbda2` |
| 45 | `theorem` | [uniformIntegrable_of](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/uniformintegrable-of--51384f73c31d4abd80ad38b2.md) | 816 | `result-track:51384f73c31d4abd80ad38b2c41037252d37980479fa1f47c062bf0c0de13493` |
| 46 | `theorem` | [UniformIntegrable.spec'](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/uniformintegrable-spec--4014edbffac1126846e68330.md) | 835 | `result-track:4014edbffac1126846e68330eb3d79c40495c3c43d750cbe884474bb5e4103be` |
| 47 | `theorem` | [UniformIntegrable.spec](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/uniformintegrable-spec--68c4197b2c89a108be13653a.md) | 870 | `result-track:68c4197b2c89a108be13653abf8ec19713b3ca69d6550aa7be54c6da629e8eaf` |
| 48 | `theorem` | [uniformIntegrable_iff](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/uniformintegrable-iff--1980511985f8631c8ac3276a.md) | 887 | `result-track:1980511985f8631c8ac3276af5dd55060c733068b59403a3587b0941e0f88641` |
| 49 | `theorem` | [uniformIntegrable_average](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/uniformintegrable-average--6a6683ca1f50fcd89ab9b688.md) | 896 | `result-track:6a6683ca1f50fcd89ab9b68809859309a8bbc1ffcf097420b674637e973fc814` |
| 50 | `theorem` | [uniformIntegrable_average_real](../../../../../mathematics/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/declarations/uniformintegrable-average-real--e3963133883acc757aadff7b.md) | 926 | `result-track:e3963133883acc757aadff7b4c9973954782c7b3cdf4b5be1ba5b539faf51eb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
