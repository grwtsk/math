# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MeanInequalities.Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "931e69ad6afb3c17b677b6029211c720218e4863",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `931e69ad6afb3c17b677b6029211c720218e4863`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.MeanInequalities` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MeanInequalitiesPow` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.SpecialFunctions.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Add` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_mul_le_one_of_lintegral_rpow_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/lintegral-mul-le-one-of-lintegral-rpow-eq-one--4396ccc2f5cee98f2798057b.md) | 70 | `result-track:4396ccc2f5cee98f2798057bc1b7c6e781b9466fac5611e7eb12be4642445036` |
| 2 | `def` | [funMulInvSnorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/funmulinvsnorm--2eb5ceb61a4f3f94bd842316.md) | 86 | `declaration-track:2eb5ceb61a4f3f94bd842316f210d07a1aae8c2320485a8a8029d85a90182f70` |
| 3 | `theorem` | [fun_eq_funMulInvSnorm_mul_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/fun-eq-funmulinvsnorm-mul-elpnorm--675fa7ec705a0489a7653315.md) | 89 | `result-track:675fa7ec705a0489a7653315ad39b888da1520098c036b7ddd775ab8deed49ca` |
| 4 | `theorem` | [funMulInvSnorm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/funmulinvsnorm-rpow--00bf3dc4dd4b19c022749eb4.md) | 94 | `result-track:00bf3dc4dd4b19c022749eb426fb25ada9b79b2d19b29e88e8b232f4f7484e26` |
| 5 | `theorem` | [lintegral_rpow_funMulInvSnorm_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/lintegral-rpow-funmulinvsnorm-eq-one--59254ada5af5156557b5c8a8.md) | 101 | `result-track:59254ada5af5156557b5c8a81ca36a53561517928e6b8dde2775ff3497f8812e` |
| 6 | `theorem` | [lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/lintegral-mul-le-lp-mul-lq-of-ne-zero-of-ne-top--b2cb051c9e4959d7dcb43e1e.md) | 109 | `result-track:b2cb051c9e4959d7dcb43e1ee5522925c5248fd1cab886469015b3608f616b8c` |
| 7 | `theorem` | [ae_eq_zero_of_lintegral_rpow_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/ae-eq-zero-of-lintegral-rpow-eq-zero--67d7aedac64373b086084fcd.md) | 131 | `result-track:67d7aedac64373b086084fcdee7673774cb0dd3fb38b8cfbb4df35482f4b3998` |
| 8 | `theorem` | [lintegral_mul_eq_zero_of_lintegral_rpow_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/lintegral-mul-eq-zero-of-lintegral-rpow-eq-zero--659b8260e8a94e104676a89f.md) | 138 | `result-track:659b8260e8a94e104676a89f99a0559f07fcb1573957fedbd1a97b5e22707e04` |
| 9 | `theorem` | [lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_eq_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/lintegral-mul-le-lp-mul-lq-of-ne-zero-of-eq-top--e3a61f10e2177d983ce19377.md) | 146 | `result-track:e3a61f10e2177d983ce1937705f0543337910b0c156775e06d3cf0e9ecf7d2c2` |
| 10 | `theorem` | [lintegral_mul_le_Lp_mul_Lq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/lintegral-mul-le-lp-mul-lq--04d6d6438692f4e05b91d81c.md) | 157 | `result-track:04d6d6438692f4e05b91d81c5f3c29ebd83ab93a10129e1b7d15954414ce7442` |
| 11 | `theorem` | [lintegral_mul_norm_pow_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/lintegral-mul-norm-pow-le--06d3ac3e0e82c6efd7c9d499.md) | 177 | `result-track:06d3ac3e0e82c6efd7c9d4993d466ec9938e890e06c6c13685b4903fd26e6782` |
| 12 | `theorem` | [lintegral_prod_norm_pow_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/lintegral-prod-norm-pow-le--a4cb7fb9df5ffa4d2be04994.md) | 196 | `result-track:a4cb7fb9df5ffa4d2be0499410634d98bc6f9f6f390b54d3416f7007ef4f3226` |
| 13 | `theorem` | [lintegral_mul_prod_norm_pow_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/lintegral-mul-prod-norm-pow-le--e99b3f50ae47f1426fdc110e.md) | 248 | `result-track:e99b3f50ae47f1426fdc110eb0dab5c34c944270ee11e466dab30d8920079b9e` |
| 14 | `theorem` | [lintegral_rpow_add_lt_top_of_lintegral_rpow_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/lintegral-rpow-add-lt-top-of-lintegral-rpow-lt-top--5dcadd71c777dfbcdb9ba96a.md) | 270 | `result-track:5dcadd71c777dfbcdb9ba96afaceb260bdd850c2e4defefac10aa80e0e8ffea6` |
| 15 | `theorem` | [lintegral_Lp_mul_le_Lq_mul_Lr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/lintegral-lp-mul-le-lq-mul-lr--44af1a6d92c293c553e51013.md) | 307 | `result-track:44af1a6d92c293c553e51013e0cbfbd5f7bb66298af26a1c183fe0de6f4a5e7d` |
| 16 | `theorem` | [lintegral_mul_rpow_le_lintegral_rpow_mul_lintegral_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/lintegral-mul-rpow-le-lintegral-rpow-mul-lintegral-rpow--438e5f94f303f6aaefbd9695.md) | 340 | `result-track:438e5f94f303f6aaefbd9695270810be58798934a94284efe9c35cd4db82a9c6` |
| 17 | `theorem` | [lintegral_rpow_add_le_add_eLpNorm_mul_lintegral_rpow_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/lintegral-rpow-add-le-add-elpnorm-mul-lintegral-rpow-add--efc7f05e0264c878cf0c238d.md) | 359 | `result-track:efc7f05e0264c878cf0c238dff861c872d9669d7e6ffb0ab3904a25e2a98cfc4` |
| 18 | `theorem` | [lintegral_Lp_add_le_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/lintegral-lp-add-le-aux--ea35f213a2404e73cdea7cb7.md) | 394 | `result-track:ea35f213a2404e73cdea7cb7920c9e7725ef966c78350be1b5a7692c4941ddd4` |
| 19 | `theorem` | [lintegral_Lp_add_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/lintegral-lp-add-le--77dba79c839a3f4d0c852249.md) | 428 | `result-track:77dba79c839a3f4d0c852249fd1748f1ec6a5dacb652610ee0f5e9333d4311c5` |
| 20 | `theorem` | [lintegral_Lp_add_le_of_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/lintegral-lp-add-le-of-le-one--e27e25ca0178e58c1dbfb82a.md) | 458 | `result-track:e27e25ca0178e58c1dbfb82ace26f1d901af2379e4ea2d51bb2ce1b8841404ac` |
| 21 | `theorem` | [NNReal.lintegral_mul_le_Lp_mul_Lq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/declarations/nnreal-lintegral-mul-le-lp-mul-lq--175ae48326eea3dbfc941810.md) | 479 | `result-track:175ae48326eea3dbfc941810425bb2ee9825c79d1ded497e9de424e873009daa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
