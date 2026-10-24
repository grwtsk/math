# Verification target: GRWTSK.Analysis.MeasureTheory.Condexp.Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22b2fba4bd6999892b15237d35d702bae0c7935d",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22b2fba4bd6999892b15237d35d702bae0c7935d`.

Source path: `GRWTSK/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.CondDistrib` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.MeasureTheory.AEStronglyMeasurable.comp_snd_map_prod_id](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable--af2a3972e930b391d28c9d78.md) | 52 | `result-track:af2a3972e930b391d28c9d7835d364c11534652eaf0633cf4f7d39d977e00045` |
| 2 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.MeasureTheory.Integrable.comp_snd_map_prod_id](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable--e710329f32c7a91fae237fbc.md) | 60 | `result-track:e710329f32c7a91fae237fbc8beda13de9eb1f23cf119f95036fcc6a6d821959` |
| 3 | `lemma` | [condexpKernel_apply_eq_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/declarations/condexpkernel-apply-eq-conddistrib--b6ca81bfc76056b606cd537a.md) | 86 | `result-track:b6ca81bfc76056b606cd537a68765b8ce228841c3382086f22f370708e51d379` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/declarations/instance--cc8e8f91eee9c023e08bda2e.md) | 90 | `declaration-track:cc8e8f91eee9c023e08bda2e87ff14183a780a8a345c9907cc1e7594f9feb7b2` |
| 5 | `theorem` | [measurable_condexpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/declarations/measurable-condexpkernel--270beba6f5058b1236376a9d.md) | 96 | `result-track:270beba6f5058b1236376a9d67141c9c6e677d9db2bcaff29f50fd0250d7d49e` |
| 6 | `theorem` | [stronglyMeasurable_condexpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/declarations/stronglymeasurable-condexpkernel--f8b32a483a9802929ea6abf8.md) | 104 | `result-track:f8b32a483a9802929ea6abf8bd9a266c4b378f714a45ef37eb19080815a32154` |
| 7 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.MeasureTheory.AEStronglyMeasurable.integral_condexpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable--6bac2ea3474a65247658a2a1.md) | 108 | `result-track:6bac2ea3474a65247658a2a186b35d72399400664f66e9d40612d9cf4a6436b0` |
| 8 | `theorem` | [aestronglyMeasurable'_integral_condexpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/declarations/aestronglymeasurable-integral-condexpkernel--4b12c84a1b86d40277da19e7.md) | 117 | `result-track:4b12c84a1b86d40277da19e788c06b7bac1fc60e6b81fd46f49e1e682c2bb894` |
| 9 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.MeasureTheory.Integrable.condexpKernel_ae](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable--442b6b98958cba57bacce7bf.md) | 134 | `result-track:442b6b98958cba57bacce7bf27c8974293c22d5e33b1d1721caa24f43c8a7503` |
| 10 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.MeasureTheory.Integrable.integral_norm_condexpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable--15a562d3b30c7c80688d6dbd.md) | 142 | `result-track:15a562d3b30c7c80688d6dbd00b2fd4552ec26ff068507d8a1476103a1995e02` |
| 11 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.MeasureTheory.Integrable.norm_integral_condexpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable--39b347d05fbd8a38040e7387.md) | 150 | `result-track:39b347d05fbd8a38040e7387fda8fcb3abdcaf1c9ad37d055d2119b9795f67ec` |
| 12 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.MeasureTheory.Integrable.integral_condexpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable--4597c90debdb14a39189f376.md) | 159 | `result-track:4597c90debdb14a39189f376b44addfe2715d08fdcf1e268bfd65c08e3db03a6` |
| 13 | `theorem` | [integrable_toReal_condexpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/declarations/integrable-toreal-condexpkernel--a09b6e192e12d9796fac1728.md) | 168 | `result-track:a09b6e192e12d9796fac172840f1293bd6803554515a3be88eebfe925eb2d459` |
| 14 | `lemma` | [condexpKernel_ae_eq_condexp'](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/declarations/condexpkernel-ae-eq-condexp--c5e635ffe233d42fcb1f7710.md) | 176 | `result-track:c5e635ffe233d42fcb1f77106f556a7d0482a8780cac2e9ea717f73bbe636988` |
| 15 | `lemma` | [condexpKernel_ae_eq_condexp](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/declarations/condexpkernel-ae-eq-condexp--5ece67fa4604d06bcaf92923.md) | 184 | `result-track:5ece67fa4604d06bcaf9292317e393013486e928688c402b8bd4ef83189977b9` |
| 16 | `lemma` | [condexpKernel_ae_eq_trim_condexp](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/declarations/condexpkernel-ae-eq-trim-condexp--aee0da8d2d9d0df91d5e2f78.md) | 189 | `result-track:aee0da8d2d9d0df91d5e2f78146d4066f45d13698f161478218a22baaf1826f0` |
| 17 | `theorem` | [condexp_ae_eq_integral_condexpKernel'](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/declarations/condexp-ae-eq-integral-condexpkernel--3648ab99261773365fd68976.md) | 197 | `result-track:3648ab99261773365fd68976d371fcd7bfb77bb48d068bd7b0b7229b76715934` |
| 18 | `theorem` | [condexp_ae_eq_integral_condexpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/declarations/condexp-ae-eq-integral-condexpkernel--41460126fcbe195f95977d94.md) | 207 | `result-track:41460126fcbe195f95977d9429c94f6da664d9679deb2848e3c076e9d08c65b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
