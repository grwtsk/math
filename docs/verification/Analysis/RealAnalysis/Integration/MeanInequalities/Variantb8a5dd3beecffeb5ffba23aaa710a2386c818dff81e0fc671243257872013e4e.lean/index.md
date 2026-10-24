# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MeanInequalities.Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "299ef74231950517bf58c7aff960934aa3729c20",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `299ef74231950517bf58c7aff960934aa3729c20`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Lebesgue.Markov` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_rpow_div_add_rpow_div_eq_one_of_lintegral_rpow_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-rpow-div-add-rpow-div-eq-one-of-lintegral-rpow-eq-one--44ce5097a8c6e009328b3b07.md) | 68 | `result-track:44ce5097a8c6e009328b3b07993d519f2112588fadefc04432dfe6f097449ac2` |
| 2 | `theorem` | [lintegral_mul_le_one_of_lintegral_rpow_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-mul-le-one-of-lintegral-rpow-eq-one--c9bf32653b901b80b322db65.md) | 78 | `result-track:c9bf32653b901b80b322db6561d5591bf25dabebbb061bfa909103f372ffb53e` |
| 3 | `theorem` | [lintegral_mul_eq_one_iff_of_lintegral_rpow_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-mul-eq-one-iff-of-lintegral-rpow-eq-one--9db271fa93c4d6e65c1701fe.md) | 85 | `result-track:9db271fa93c4d6e65c1701fe1ae8cab80a471aed02bd1bc2703111921a5b4d16` |
| 4 | `def` | [funMulInvSnorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/funmulinvsnorm--9b23008ab24866f13f8ffc41.md) | 102 | `declaration-track:9b23008ab24866f13f8ffc4159c30e88a43be153452c87c3f776845a825afa00` |
| 5 | `theorem` | [_root_.AEMeasurable.funMulInvSnorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/root-aemeasurable-funmulinvsnorm--7a4e0361fb68681617bff72c.md) | 105 | `result-track:7a4e0361fb68681617bff72c44e859b332a87ee39f27b3a48ed61425d5bc5423` |
| 6 | `theorem` | [fun_eq_funMulInvSnorm_mul_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/fun-eq-funmulinvsnorm-mul-elpnorm--2566a099df405fc697344152.md) | 109 | `result-track:2566a099df405fc6973441529390146502045173ea168fe4092b8db6b91e8bfc` |
| 7 | `theorem` | [funMulInvSnorm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/funmulinvsnorm-rpow--f0803a15e7c603eadab28b2b.md) | 114 | `result-track:f0803a15e7c603eadab28b2b95fb34c73abd628022df46da7e9be484596ba99d` |
| 8 | `theorem` | [funMulInvSnorm_rpow'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/funmulinvsnorm-rpow--7ffd7cb5d2b3d1559466a763.md) | 121 | `result-track:7ffd7cb5d2b3d1559466a7636a3e09af1e28ebded0019651fbcf0b21aea7fb50` |
| 9 | `theorem` | [lintegral_rpow_funMulInvSnorm_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-rpow-funmulinvsnorm-eq-one--70c4e1ba400e753ad2a28028.md) | 126 | `result-track:70c4e1ba400e753ad2a28028f3af553cc222182d63be1ef11a8cdc761c78260f` |
| 10 | `theorem` | [lintegral_mul_eq_lintegral_funMulInvSnorm_mul_funMulInvSnorm_mul_Lp_mul_Lq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-mul-eq-lintegral-funmulinvsnorm-mul-funmulinvsnorm-mul-lp-mul--51dfdf54aac854f673d03e19.md) | 133 | `result-track:51dfdf54aac854f673d03e1902b5afda077aa42c1be7b54902cbb73e38607c31` |
| 11 | `theorem` | [lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-mul-le-lp-mul-lq-of-ne-zero-of-ne-top--07e1f5426e01ddc14dcb1d53.md) | 147 | `result-track:07e1f5426e01ddc14dcb1d535fe0ce5fcf94e6399f9ee04bd07c2ec77484a857` |
| 12 | `theorem` | [lintegral_mul_eq_Lp_mul_Lq_iff_of_ne_zero_of_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-mul-eq-lp-mul-lq-iff-of-ne-zero-of-ne-top--4c8bddcccf879468471f0e0a.md) | 160 | `result-track:4c8bddcccf879468471f0e0af382e4d6862e66d02c878b967f1e004a1d7078f9` |
| 13 | `theorem` | [ae_eq_zero_of_lintegral_rpow_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/ae-eq-zero-of-lintegral-rpow-eq-zero--8dce8990bdc7133a39c1a903.md) | 179 | `result-track:8dce8990bdc7133a39c1a9038b91622969d808dd97eb8b4ad2e58de080083340` |
| 14 | `theorem` | [lintegral_mul_eq_zero_of_lintegral_rpow_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-mul-eq-zero-of-lintegral-rpow-eq-zero--3db22574cf25f12a3f200b4b.md) | 186 | `result-track:3db22574cf25f12a3f200b4b67f89945a27987337250dee80f5184795df83fe2` |
| 15 | `theorem` | [lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_eq_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-mul-le-lp-mul-lq-of-ne-zero-of-eq-top--05218a67d8a8277ea9ee0682.md) | 194 | `result-track:05218a67d8a8277ea9ee068223bd75d49b1497fa563a1fb54df418157ddae450` |
| 16 | `theorem` | [lintegral_mul_le_Lp_mul_Lq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-mul-le-lp-mul-lq--6bc8405dda592d2941be3ea9.md) | 202 | `result-track:6bc8405dda592d2941be3ea9c2442d7139d589b67d10e0a79aed799f19773996` |
| 17 | `theorem` | [lintegral_mul_norm_pow_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-mul-norm-pow-le--c23ddea173104435ee8ce1ca.md) | 222 | `result-track:c23ddea173104435ee8ce1cacde60cb42620f641059c78c9abdde9cba26dd665` |
| 18 | `theorem` | [lintegral_prod_norm_pow_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-prod-norm-pow-le--c52d60f7a7f23f3675cac7c1.md) | 241 | `result-track:c52d60f7a7f23f3675cac7c13e90288206448bf20e38353e4232c4933edc31cd` |
| 19 | `theorem` | [lintegral_mul_prod_norm_pow_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-mul-prod-norm-pow-le--92c68f65e537d799485730a5.md) | 293 | `result-track:92c68f65e537d799485730a5e3c2e27de3e5deafa1f5c1ede6224c5e9b2e450b` |
| 20 | `theorem` | [lintegral_rpow_add_lt_top_of_lintegral_rpow_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-rpow-add-lt-top-of-lintegral-rpow-lt-top--b4b2813d3ccc35b1c7236bf9.md) | 315 | `result-track:b4b2813d3ccc35b1c7236bf9d5a92c56e92b3f06f4300088defad4f0baf17a57` |
| 21 | `theorem` | [lintegral_Lp_mul_le_Lq_mul_Lr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-lp-mul-le-lq-mul-lr--7ab49202ec56811c23ae1983.md) | 329 | `result-track:7ab49202ec56811c23ae1983d5a035f9d49047e130d8038426644c0519e4c994` |
| 22 | `theorem` | [lintegral_mul_rpow_le_lintegral_rpow_mul_lintegral_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-mul-rpow-le-lintegral-rpow-mul-lintegral-rpow--4c34f6a40525afdf419913ae.md) | 362 | `result-track:4c34f6a40525afdf419913ae52bf995c92cbc8686b80dfaa0a03eb8dafeb979c` |
| 23 | `theorem` | [lintegral_rpow_add_le_add_eLpNorm_mul_lintegral_rpow_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-rpow-add-le-add-elpnorm-mul-lintegral-rpow-add--e11abff7b75981c0a8a6a2ec.md) | 368 | `result-track:e11abff7b75981c0a8a6a2ecda6419a2a03371049a9d6de825e3bf9ff77e823e` |
| 24 | `theorem` | [lintegral_Lp_add_le_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-lp-add-le-aux--7f1b69836f06cc3f4b6298d2.md) | 402 | `result-track:7f1b69836f06cc3f4b6298d218f7281300bf05fa1984347d1594ce21340fff1e` |
| 25 | `theorem` | [lintegral_Lp_add_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-lp-add-le--22ee6e91a760679d81093e6b.md) | 432 | `result-track:22ee6e91a760679d81093e6bd7e399c5bbdbba57652ced2f014d2cd7e845d463` |
| 26 | `theorem` | [lintegral_Lp_add_le_of_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/lintegral-lp-add-le-of-le-one--a01fb3c8a8e131a425abd525.md) | 459 | `result-track:a01fb3c8a8e131a425abd5259457f3ef4467e7aeb69fdc40f26566106ab4c7af` |
| 27 | `theorem` | [NNReal.lintegral_mul_le_Lp_mul_Lq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/declarations/nnreal-lintegral-mul-le-lp-mul-lq--bedd3ddf5fb5f49b01b309ba.md) | 480 | `result-track:bedd3ddf5fb5f49b01b309ba3ef5f37e2bea2e4c76e08d62fa5a5ef1b78abf95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
