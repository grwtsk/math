# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.KLFun.Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97822309dfe0f295b88a71451cde5639c15c456c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97822309dfe0f295b88a71451cde5639c15c456c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.NegMulLog` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Decomposition.IntegralRNDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.LogLikelihoodRatio` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [klFun](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/klfun--8fd7b747335f07cda8059c00.md) | 49 | `declaration-track:8fd7b747335f07cda8059c005e31702783d558ef7f3c9e8c1b0cf289917bd298` |
| 2 | `lemma` | [klFun_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/klfun-apply--c7142d8f5441b94fce4e5202.md) | 51 | `result-track:c7142d8f5441b94fce4e5202fe8ddc8efbc2c38fe267cf8a14e9816195308e71` |
| 3 | `lemma` | [klFun_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/klfun-zero--755e2861c8ddc526f77b41bc.md) | 53 | `result-track:755e2861c8ddc526f77b41bc5a2ad09959acd4088547d1c307d4274195237398` |
| 4 | `lemma` | [klFun_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/klfun-one--e4d037890fbc24e5fe1d76d3.md) | 55 | `result-track:e4d037890fbc24e5fe1d76d312099e2a54d6bcfd181b34406176deab7d500e5d` |
| 5 | `lemma` | [strictConvexOn_klFun](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/strictconvexon-klfun--38aef9409d35cff36eb0a08f.md) | 58 | `result-track:38aef9409d35cff36eb0a08f90620d3024dcae52c726778946c3c00c0340ad52` |
| 6 | `lemma` | [convexOn_klFun](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/convexon-klfun--e864192338ec31af15243fa8.md) | 63 | `result-track:e864192338ec31af15243fa893b4388ae629aab23687ead18bcc0c4c8073bd1e` |
| 7 | `lemma` | [convexOn_Ioi_klFun](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/convexon-ioi-klfun--469159f2a2a16bd25272b0ba.md) | 67 | `result-track:469159f2a2a16bd25272b0ba11bf9a348fe08ca3390c07b7b0b3f414fbd2f423` |
| 8 | `lemma` | [continuous_klFun](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/continuous-klfun--4e5527258b3ec2fd5a5abc3b.md) | 72 | `result-track:4e5527258b3ec2fd5a5abc3bd76f3df68d0ef306cc962cbf8d5772a637f358ee` |
| 9 | `lemma` | [measurable_klFun](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/measurable-klfun--54256aae9894a5e0ac5cc9e0.md) | 76 | `result-track:54256aae9894a5e0ac5cc9e0f29a906c0581984b0c86bb941f9d63d0ffbd8b15` |
| 10 | `lemma` | [stronglyMeasurable_klFun](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/stronglymeasurable-klfun--a4480f8eac9dc08561bd9c16.md) | 80 | `result-track:a4480f8eac9dc08561bd9c16856f38eb8cbf08a3ca54332af1fb745e35e70605` |
| 11 | `lemma` | [hasDerivAt_klFun](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/hasderivat-klfun--77bbc99184a94d83b0755aa5.md) | 85 | `result-track:77bbc99184a94d83b0755aa5a8f01cd8a0d962ab3352406dc67b68785769aadd` |
| 12 | `lemma` | [not_differentiableAt_klFun_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/not-differentiableat-klfun-zero--45fef717c4a74890fee935ea.md) | 89 | `result-track:45fef717c4a74890fee935ea7dc3b53dd066cbe1f35f0f05d56df19244a8983c` |
| 13 | `lemma` | [deriv_klFun](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/deriv-klfun--05810ef0459f9faeee3877ce.md) | 95 | `result-track:05810ef0459f9faeee3877ce506e167e4875197f8ff8b1c9d8454bee913bde2d` |
| 14 | `lemma` | [not_differentiableWithinAt_klFun_Ioi_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/not-differentiablewithinat-klfun-ioi-zero--2608880e9098a1e99ec5e2e4.md) | 102 | `result-track:2608880e9098a1e99ec5e2e49a42d01029d0ee17129284849c3c3fb8c1b7dce4` |
| 15 | `lemma` | [not_differentiableWithinAt_klFun_Iio_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/not-differentiablewithinat-klfun-iio-zero--8c2ddb97b9eed6504787000a.md) | 107 | `result-track:8c2ddb97b9eed6504787000a22da1cd844027641d1ce7e8b13f1973f28e6082a` |
| 16 | `lemma` | [rightDeriv_klFun](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/rightderiv-klfun--8c457421bdb60dd897025338.md) | 115 | `result-track:8c457421bdb60dd8970253383b259b5dedad7ad31198938678e1013ae7c80c30` |
| 17 | `lemma` | [leftDeriv_klFun](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/leftderiv-klfun--ba166a063f580e43096b6a1d.md) | 124 | `result-track:ba166a063f580e43096b6a1d4e4aa1089709ce516cb461d2e927bc7ab2106141` |
| 18 | `lemma` | [rightDeriv_klFun_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/rightderiv-klfun-one--b021965183a92ced18b8fd78.md) | 130 | `result-track:b021965183a92ced18b8fd787991425acb370d7e8ac7c64816215d9b71e9e197` |
| 19 | `lemma` | [leftDeriv_klFun_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/leftderiv-klfun-one--dbfd7912128ad7c31104062f.md) | 132 | `result-track:dbfd7912128ad7c31104062fdfa73cad6c3917bc10fc47aaa622412885074f4c` |
| 20 | `lemma` | [tendsto_rightDeriv_klFun_atTop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/tendsto-rightderiv-klfun-attop--493a35210009a42e18ded626.md) | 134 | `result-track:493a35210009a42e18ded626298ac0f0c6c2e14ef38ba9844de688a8d40fbdfa` |
| 21 | `lemma` | [isMinOn_klFun](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/isminon-klfun--25fc043c506307f5d5199951.md) | 141 | `result-track:25fc043c506307f5d519995176b565076d837c0dbe4f7a7837d7c459aea5591e` |
| 22 | `lemma` | [klFun_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/klfun-nonneg--d724c84b2d5349a20f8a2e35.md) | 145 | `result-track:d724c84b2d5349a20f8a2e3571d631462c67a3fc1a26783674eeb41d74666460` |
| 23 | `lemma` | [klFun_eq_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/klfun-eq-zero-iff--ad41b7fe2b45a56b5ad5e420.md) | 147 | `result-track:ad41b7fe2b45a56b5ad5e420a9d6f9fd7939b1f72d2e752d65736e0d014b108c` |
| 24 | `lemma` | [tendsto_klFun_atTop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/tendsto-klfun-attop--7bfc5f139073c83490c385b4.md) | 152 | `result-track:7bfc5f139073c83490c385b47521dc43c26966d3cc6bd0fae90e4ebfb63f5645` |
| 25 | `lemma` | [integrable_klFun_rnDeriv_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/integrable-klfun-rnderiv-iff--b39aa3f3906d7976123884db.md) | 165 | `result-track:b39aa3f3906d7976123884db0d051e7675d8b6ed88b59cbe9a6fb775a9eb4db8` |
| 26 | `lemma` | [integral_klFun_rnDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Variant2a8bd6be0fdcea32c85d5e671d412890b222ec0678f337f594a3beef8823b5bf.lean/declarations/integral-klfun-rnderiv--6490fcb8db73db0552536216.md) | 174 | `result-track:6490fcb8db73db0552536216c9ed20a4fc319a17607c94ba7144b79c7354332e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
