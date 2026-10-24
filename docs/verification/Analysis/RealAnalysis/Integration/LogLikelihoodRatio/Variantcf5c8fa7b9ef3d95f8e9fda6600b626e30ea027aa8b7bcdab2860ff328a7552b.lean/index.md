# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogLikelihoodRatio.Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8059a462929f9cf7b5daa80f6b5fe657a1027ef5",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8059a462929f9cf7b5daa80f6b5fe657a1027ef5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Tilted` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/llr--5b257a7a19a87b196b1f1460.md) | 33 | `declaration-track:5b257a7a19a87b196b1f14601599efdea3870b3030076ceb815cb204ff041467` |
| 2 | `lemma` | [llr_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/llr-def--db81b3a6a5be6db25f5d0009.md) | 35 | `result-track:db81b3a6a5be6db25f5d00098d98c39e5b58b5374f3f26f31b35a707d4234e80` |
| 3 | `lemma` | [llr_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/llr-self--63aeb82154a9a6b148915cff.md) | 37 | `result-track:63aeb82154a9a6b148915cff90c144e6664271ce88a3d489c121bd2d976cad00` |
| 4 | `lemma` | [exp_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/exp-llr--2f1843a61fdfdacb19a626e7.md) | 40 | `result-track:2f1843a61fdfdacb19a626e70db45e007fca0a0c10f728b3300e0e546698716a` |
| 5 | `lemma` | [exp_llr_of_ac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/exp-llr-of-ac--afbc6013d3d590e36d23f3ae.md) | 49 | `result-track:afbc6013d3d590e36d23f3aef416fafdec58df18a9045fbeca37985c53d5a54c` |
| 6 | `lemma` | [exp_llr_of_ac'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/exp-llr-of-ac--fcc02fd097e74456e13f2fdc.md) | 55 | `result-track:fcc02fd097e74456e13f2fdc2274450367ccc01a8d8cf8bda54d4f958c58eac7` |
| 7 | `lemma` | [neg_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/neg-llr--02be2ba18a6b0650d22da27e.md) | 60 | `result-track:02be2ba18a6b0650d22da27ee64fc7700ef4f05bf5039ce8e539b90273b79180` |
| 8 | `lemma` | [exp_neg_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/exp-neg-llr--d202dab381245126a3c0e1fc.md) | 66 | `result-track:d202dab381245126a3c0e1fcee781abf02d7f22065ce76239bcdac7a66ee6e11` |
| 9 | `lemma` | [exp_neg_llr'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/exp-neg-llr--b525f2c1f0f2f8def88a35a7.md) | 72 | `result-track:b525f2c1f0f2f8def88a35a7be8ebf6661bfe0f06acee746c7a99643b9137145` |
| 10 | `lemma` | [measurable_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/measurable-llr--f02de1cf1f484357290a16c5.md) | 79 | `result-track:f02de1cf1f484357290a16c5bfe5a3c335cfef7a962c18bbfcf825663b1d7fe3` |
| 11 | `lemma` | [stronglyMeasurable_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/stronglymeasurable-llr--5d4ea48b091ab7e3b6ae37d5.md) | 83 | `result-track:5d4ea48b091ab7e3b6ae37d51926f2b91f8a68d1af2a777ef153a83bd1110ac7` |
| 12 | `lemma` | [llr_smul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/llr-smul-left--5e3aad6790ce04e0f4edd208.md) | 86 | `result-track:5e3aad6790ce04e0f4edd208b7fbb52e536f8417bd0db8e36d0685effe2a7a79` |
| 13 | `lemma` | [llr_smul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/llr-smul-right--f863a40ebb984c1b6700d477.md) | 103 | `result-track:f863a40ebb984c1b6700d477d57935289278cae797cfa3eb258e5fa899171f75` |
| 14 | `lemma` | [integrable_rnDeriv_mul_log_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/integrable-rnderiv-mul-log-iff--2bb35f1ef881b5cd60e3a754.md) | 121 | `result-track:2bb35f1ef881b5cd60e3a75426767d0489f6b33f34df170f0b3353f05831d215` |
| 15 | `lemma` | [integral_rnDeriv_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/integral-rnderiv-mul-log--b43accc06e73550f6bc33fd1.md) | 126 | `result-track:b43accc06e73550f6bc33fd107abebab2bf3b99f33c27317907a39a625f7113a` |
| 16 | `lemma` | [llr_tilted_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/llr-tilted-left--4c08d6f19b6e8628be0b596b.md) | 132 | `result-track:4c08d6f19b6e8628be0b596b97dc8813dcc4db918fe25f68016e66eb479d82cc` |
| 17 | `lemma` | [integrable_llr_tilted_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/integrable-llr-tilted-left--2bf0ead41391a35bfb06405b.md) | 150 | `result-track:2bf0ead41391a35bfb06405b8ff70ccc4c7efff44a4e2688b75e9bbc11619b09` |
| 18 | `lemma` | [integral_llr_tilted_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/integral-llr-tilted-left--3085a878e52004eddd954de2.md) | 157 | `result-track:3085a878e52004eddd954de26fb4a8b434ba6537297d2d230c07b9e3d5af6b64` |
| 19 | `lemma` | [llr_tilted_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/llr-tilted-right--33e8300f08f8ae89a028c602.md) | 171 | `result-track:33e8300f08f8ae89a028c602ae0c7b992c75a160edbc8460a5ca2759d23ff35b` |
| 20 | `lemma` | [integrable_llr_tilted_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/integrable-llr-tilted-right--e8ab5b629e437522048e3f9f.md) | 186 | `result-track:e8ab5b629e437522048e3f9f3ed3e20bee7bbde83cf90cddaa2182067732d4df` |
| 21 | `lemma` | [integral_llr_tilted_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/declarations/integral-llr-tilted-right--bf88c0e64003b1ce3be9c255.md) | 193 | `result-track:bf88c0e64003b1ce3be9c2550e839c725dd3cab4c1e00805c037ed2530b1439b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
