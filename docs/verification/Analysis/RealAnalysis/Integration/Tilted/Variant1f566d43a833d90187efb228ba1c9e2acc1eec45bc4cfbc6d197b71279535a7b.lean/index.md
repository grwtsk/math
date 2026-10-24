# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Tilted.Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2a77d80e74ed9d0096077c531a77dda5c728e46",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2a77d80e74ed9d0096077c531a77dda5c728e46`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Measure.tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/measure-tilted--d2b75a37f089ea9832bb8fc7.md) | 38 | `declaration-track:d2b75a37f089ea9832bb8fc77d51521d44ae44508c831ef1dce7b5e8219cd966` |
| 2 | `lemma` | [tilted_of_not_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/tilted-of-not-integrable--b9e34cecbb8db4b9123acdd0.md) | 42 | `result-track:b9e34cecbb8db4b9123acdd009f375a296572d7bb3117418f9f5b5cf143335d1` |
| 3 | `lemma` | [tilted_of_not_aemeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/tilted-of-not-aemeasurable--65a30ee415419a267cff172e.md) | 47 | `result-track:65a30ee415419a267cff172e68bd2ce419b701dadc74a8cfe8d8bedd81908178` |
| 4 | `lemma` | [tilted_zero_measure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/tilted-zero-measure--e68066904a6dae580b2c72dc.md) | 53 | `result-track:e68066904a6dae580b2c72dc216f9441a33070052a990a9c491ce61be3f00f22` |
| 5 | `lemma` | [tilted_const'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/tilted-const--151da3ab31a0c27a038d90e6.md) | 56 | `result-track:151da3ab31a0c27a038d90e6134b6870cc18055093614ed182b15ebd148e6ce9` |
| 6 | `lemma` | [tilted_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/tilted-const--a95cb7a2ea418c48295d70b9.md) | 70 | `result-track:a95cb7a2ea418c48295d70b994566ab656e5146dd13dfa6540c2e0175e2c4745` |
| 7 | `lemma` | [tilted_zero'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/tilted-zero--1474c110ffae943c35238856.md) | 74 | `result-track:1474c110ffae943c35238856bfc7aa638746e164c8613daaba87f4cc6d606528` |
| 8 | `lemma` | [tilted_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/tilted-zero--1091e5d7475a5b4ba61c54ca.md) | 78 | `result-track:1091e5d7475a5b4ba61c54ca83c98ccb63391b382bf2b7e95f083c56328c8efd` |
| 9 | `lemma` | [tilted_congr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/tilted-congr--b49ba161e8d5e99b259e6ea6.md) | 80 | `result-track:b49ba161e8d5e99b259e6ea63a4ef2b201fcdbcc6fc257d4c3e1bc0aa3682bab` |
| 10 | `lemma` | [tilted_eq_withDensity_nnreal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/tilted-eq-withdensity-nnreal--8da1737c15ba47b3d35118ab.md) | 90 | `result-track:8da1737c15ba47b3d35118ab45b03a9b318f1787f5f682c0526261f4983acc85` |
| 11 | `lemma` | [tilted_apply'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/tilted-apply--4e671921eaa5e113e2522af9.md) | 97 | `result-track:4e671921eaa5e113e2522af9d2db7189f055418f5cc963b2ccfd99ed1d4ff8e6` |
| 12 | `lemma` | [tilted_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/tilted-apply--7c010c6987ef20e08f50c7b3.md) | 101 | `result-track:7c010c6987ef20e08f50c7b3b6c590cfa46ea6449505529f2a6ad1b95d4b2a86` |
| 13 | `lemma` | [tilted_apply_eq_ofReal_integral'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/tilted-apply-eq-ofreal-integral--2bfb5544c1b89c549d9c270e.md) | 105 | `result-track:2bfb5544c1b89c549d9c270e4e0335c9e17d47ab8ed18c9f9170da5df744397c` |
| 14 | `lemma` | [tilted_apply_eq_ofReal_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/tilted-apply-eq-ofreal-integral--682686b8ed506d1832209ab5.md) | 114 | `result-track:682686b8ed506d1832209ab564c0c59e8afdc958e3d9e1843eb292c91336cf8e` |
| 15 | `lemma` | [isProbabilityMeasure_tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/isprobabilitymeasure-tilted--ce871ea5df2ef0211f25e133.md) | 122 | `result-track:ce871ea5df2ef0211f25e133176ada8848790212823edadf4ee48c73ec72e492` |
| 16 | `instance` | [isZeroOrProbabilityMeasure_tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/iszeroorprobabilitymeasure-tilted--476656e749f2a6f43f8221c5.md) | 134 | `declaration-track:476656e749f2a6f43f8221c562ce38163e867f57e69cabe0e2491a76d1c5e040` |
| 17 | `lemma` | [setLIntegral_tilted'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/setlintegral-tilted--953312785b3ccc7a5c55fa25.md) | 146 | `result-track:953312785b3ccc7a5c55fa251b0eac65d5df0f7e542b4aa652a003d5bac0afa9` |
| 18 | `lemma` | [setLIntegral_tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/setlintegral-tilted--c1a141776259165eec1161d0.md) | 164 | `result-track:c1a141776259165eec1161d057ffd2735cedf85d4a57df08fc416b5f23dee5d1` |
| 19 | `lemma` | [lintegral_tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/lintegral-tilted--e830084028e447044bbad890.md) | 181 | `result-track:e830084028e447044bbad8906ca20eea6fae0df45f5dec31bbd7d4a3ffe59e7f` |
| 20 | `lemma` | [setIntegral_tilted'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/setintegral-tilted--83970b8a0f251270b368ed37.md) | 192 | `result-track:83970b8a0f251270b368ed37ac5e48a1221921e53eeb6a92d2de9db0fa156b91` |
| 21 | `lemma` | [setIntegral_tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/setintegral-tilted--e399702cd8386d49c41d45ba.md) | 209 | `result-track:e399702cd8386d49c41d45bab272972e3b25925c2a343c80349a78c46ed20512` |
| 22 | `lemma` | [integral_tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/integral-tilted--1957b8c2b46d3aadb2a6410e.md) | 226 | `result-track:1957b8c2b46d3aadb2a6410e549d73e5c1ca780114e2bf6744990fb2d9f378df` |
| 23 | `lemma` | [integral_exp_tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/integral-exp-tilted--211695bbbbff46523c6644a5.md) | 232 | `result-track:211695bbbbff46523c6644a5aef91ee45daa4c806c21a934afb99bf4cf5048d2` |
| 24 | `lemma` | [tilted_tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/tilted-tilted--2cc3185095a99952f1fde33c.md) | 247 | `result-track:2cc3185095a99952f1fde33cb4643b6ff413acbd720d1ed2379aff39305fac1c` |
| 25 | `lemma` | [tilted_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/tilted-comm--8389ed1cbb2cc6196719a865.md) | 265 | `result-track:8389ed1cbb2cc6196719a865c0d29c8490abc303c402a6c7be1098a390a70b93` |
| 26 | `lemma` | [tilted_neg_same'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/tilted-neg-same--a372fa99f0e3a27018d5c50d.md) | 271 | `result-track:a372fa99f0e3a27018d5c50d1d4e45e1a719209f5f6061b225ac0a3412e7edaa` |
| 27 | `lemma` | [tilted_neg_same](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/tilted-neg-same--513c8c51901905de0fbe49ce.md) | 275 | `result-track:513c8c51901905de0fbe49ce2b25549f0a86068f21e3ef47023e132be573523c` |
| 28 | `lemma` | [tilted_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/tilted-absolutelycontinuous--b079d6760d96cea9a35a0359.md) | 279 | `result-track:b079d6760d96cea9a35a035989f52a5648dd3196ba2570555bcaa7a7e3c99c7f` |
| 29 | `lemma` | [absolutelyContinuous_tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/absolutelycontinuous-tilted--f1757fddc7dbad3acfca7835.md) | 282 | `result-track:f1757fddc7dbad3acfca78351545dd38a1970612244b7b6873f1b2f22feb14b6` |
| 30 | `lemma` | [integrable_tilted_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/integrable-tilted-iff--52dd58bb33cda216d8ba5ce1.md) | 292 | `result-track:52dd58bb33cda216d8ba5ce195e19fa07212f8cfdffff126a85cac46ae6d6194` |
| 31 | `lemma` | [rnDeriv_tilted_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/rnderiv-tilted-right--b2caded44f6b1e5f9d80f042.md) | 313 | `result-track:b2caded44f6b1e5f9d80f0428bd8392340f0d5784634a39d98bb9dce13b3da5f` |
| 32 | `lemma` | [toReal_rnDeriv_tilted_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/toreal-rnderiv-tilted-right--241ab645f30e762b114df206.md) | 331 | `result-track:241ab645f30e762b114df20603e32af66c0e8e905ef5afeea88d53e7a6217212` |
| 33 | `lemma` | [rnDeriv_tilted_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/rnderiv-tilted-left--0d1e9706460fec600f04613d.md) | 341 | `result-track:0d1e9706460fec600f04613d9001c0a46d8c92b0d13f2021d020f7a2214ed3d0` |
| 34 | `lemma` | [toReal_rnDeriv_tilted_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/toreal-rnderiv-tilted-left--b34d4590c35f69e0b1807384.md) | 350 | `result-track:b34d4590c35f69e0b18073841b8758e7c0d3fce42e3d3befc25b34db6e887977` |
| 35 | `lemma` | [rnDeriv_tilted_left_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/rnderiv-tilted-left-self--d17cb7fb297dcb694aa1f58d.md) | 359 | `result-track:d17cb7fb297dcb694aa1f58dcc795e2c85fcff4d4da9df72669279b27ecf4f8c` |
| 36 | `lemma` | [log_rnDeriv_tilted_left_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/declarations/log-rnderiv-tilted-left-self--a8f0394100828379405f0e0f.md) | 365 | `result-track:a8f0394100828379405f0e0ffa8f958049a80f83e8b5def939624615174a4b3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
