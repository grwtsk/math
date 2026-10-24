# Verification target: GRWTSK.Analysis.MeasureTheory.Condexp.Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bef9d427b651443dcd00ebe371222d28463b4c51",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bef9d427b651443dcd00ebe371222d28463b4c51`.

Source path: `GRWTSK/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.CondDistrib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.comp_snd_map_prod_id](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/declarations/root-measuretheory-aestronglymeasurable-comp-snd-map-prod-id--3fcac6554f03c5ca7e432151.md) | 44 | `result-track:3fcac6554f03c5ca7e43215163149123f64d4095ffd26c116d4be3f771051b0f` |
| 2 | `theorem` | [_root_.MeasureTheory.Integrable.comp_snd_map_prod_id](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/declarations/root-measuretheory-integrable-comp-snd-map-prod-id--a2d26cdea0da3a93019d1859.md) | 52 | `result-track:a2d26cdea0da3a93019d18599962a6ef1b927eab7e81dd6ac9f2fbb508b0dff3` |
| 3 | `lemma` | [condexpKernel_apply_eq_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/declarations/condexpkernel-apply-eq-conddistrib--c9323416a5b246cee5356e51.md) | 78 | `result-track:c9323416a5b246cee5356e5127dfc1ed97df02c3d3d427cadeec537c35851115` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/declarations/instance--0dc68dae4f5274de8e4cdf53.md) | 82 | `declaration-track:0dc68dae4f5274de8e4cdf53a81908b081e580d2a524f358a2e75afd113f7e58` |
| 5 | `theorem` | [measurable_condexpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/declarations/measurable-condexpkernel--da534cf7a0eef349728553fc.md) | 88 | `result-track:da534cf7a0eef349728553fcd615977cd332cc9013ee3df03b60f0e75498a23e` |
| 6 | `theorem` | [stronglyMeasurable_condexpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/declarations/stronglymeasurable-condexpkernel--2791998b355e83a608a8e0ca.md) | 96 | `result-track:2791998b355e83a608a8e0ca36ff2dd0daa9fe6600ebf87712f85079d5e7294b` |
| 7 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.integral_condexpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/declarations/root-measuretheory-aestronglymeasurable-integral-condexpkernel--185ca4b4f89f156f79872d90.md) | 100 | `result-track:185ca4b4f89f156f79872d903ecf016ee97d3c9f0dc453d4959391fcee82d7bc` |
| 8 | `theorem` | [aestronglyMeasurable'_integral_condexpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/declarations/aestronglymeasurable-integral-condexpkernel--bb6ab5a1e7129519228428b9.md) | 109 | `result-track:bb6ab5a1e7129519228428b98c7b5c86c79789da6ab02e47a4c3b92b80fc343a` |
| 9 | `theorem` | [_root_.MeasureTheory.Integrable.condexpKernel_ae](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/declarations/root-measuretheory-integrable-condexpkernel-ae--beb03244d2c4a5c873a37876.md) | 126 | `result-track:beb03244d2c4a5c873a37876b27493d7e03c2b1d4e85389c689999cbf3f8410c` |
| 10 | `theorem` | [_root_.MeasureTheory.Integrable.integral_norm_condexpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/declarations/root-measuretheory-integrable-integral-norm-condexpkernel--ff97d0c768b5ed60931ba4ed.md) | 134 | `result-track:ff97d0c768b5ed60931ba4edcf17f2e1e474342a4f9e949bf79fe7f27c2a804b` |
| 11 | `theorem` | [_root_.MeasureTheory.Integrable.norm_integral_condexpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/declarations/root-measuretheory-integrable-norm-integral-condexpkernel--81f5ec3ba1423fae7aaa0f2d.md) | 142 | `result-track:81f5ec3ba1423fae7aaa0f2d61fd95b57373c0798a1fe59e9705105898b6fbd0` |
| 12 | `theorem` | [_root_.MeasureTheory.Integrable.integral_condexpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/declarations/root-measuretheory-integrable-integral-condexpkernel--2c046a4bb1d8dc438ef7424d.md) | 151 | `result-track:2c046a4bb1d8dc438ef7424d7190cd19901acb322bb4eedce1aebc0b781a76af` |
| 13 | `theorem` | [integrable_toReal_condexpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/declarations/integrable-toreal-condexpkernel--404e8b23a06d5b4bbf0f888d.md) | 160 | `result-track:404e8b23a06d5b4bbf0f888d535c8ac70e5449530a9964106acec761232ea154` |
| 14 | `lemma` | [condexpKernel_ae_eq_condexp'](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/declarations/condexpkernel-ae-eq-condexp--0f81c88755b2332b0dfc85d1.md) | 168 | `result-track:0f81c88755b2332b0dfc85d1ec22df21959bab5185fe1c1948ae5c624b962b34` |
| 15 | `lemma` | [condexpKernel_ae_eq_condexp](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/declarations/condexpkernel-ae-eq-condexp--a95cfa8d893f72e403800198.md) | 176 | `result-track:a95cfa8d893f72e40380019805e3004c55b8dd71b9aaf983dcbabf1c4a037303` |
| 16 | `lemma` | [condexpKernel_ae_eq_trim_condexp](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/declarations/condexpkernel-ae-eq-trim-condexp--e5703230f788ee674a60d249.md) | 181 | `result-track:e5703230f788ee674a60d249c2d11538831efb134d8bc8700855b0e294de6ddf` |
| 17 | `theorem` | [condexp_ae_eq_integral_condexpKernel'](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/declarations/condexp-ae-eq-integral-condexpkernel--831ca0ce1960320f1577c769.md) | 189 | `result-track:831ca0ce1960320f1577c7699b1495aa1ab40a0e9e39bdf7e9ea6293dc90f842` |
| 18 | `theorem` | [condexp_ae_eq_integral_condexpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/declarations/condexp-ae-eq-integral-condexpkernel--d021a47366dfe62ceb1f7a9e.md) | 199 | `result-track:d021a47366dfe62ceb1f7a9e743403a5fced6755442c725bdab87fad4e95cbc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
