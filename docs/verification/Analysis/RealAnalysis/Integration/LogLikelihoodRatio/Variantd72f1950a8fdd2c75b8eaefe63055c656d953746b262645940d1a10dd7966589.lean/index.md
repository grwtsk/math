# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogLikelihoodRatio.Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37b2870c80644f23843895c114b78276809ab931",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37b2870c80644f23843895c114b78276809ab931`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Tilted` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/llr--29bedf194eb2a11ceea47d6e.md) | 41 | `declaration-track:29bedf194eb2a11ceea47d6e6d758104460d3d978178452da919d5316b251c64` |
| 2 | `lemma` | [llr_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/llr-def--baadf49958d69d65640123fb.md) | 43 | `result-track:baadf49958d69d65640123fb1b79985625b95878da462c646f916b933c5ebdfd` |
| 3 | `lemma` | [llr_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/llr-self--ebdb4cad7a0c3b1962989d86.md) | 45 | `result-track:ebdb4cad7a0c3b1962989d862aaa30223bac704a0b3c666e2e596ddf1f03411e` |
| 4 | `lemma` | [exp_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/exp-llr--614056663423022058ef8ddb.md) | 48 | `result-track:614056663423022058ef8ddb1d20d227c76f96c7cc2e5e3393b130c9440e61bf` |
| 5 | `lemma` | [exp_llr_of_ac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/exp-llr-of-ac--df51a3a708542955b7e210de.md) | 57 | `result-track:df51a3a708542955b7e210debf2d69a9d8d87921a7ed3bf7652746b5819ef979` |
| 6 | `lemma` | [exp_llr_of_ac'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/exp-llr-of-ac--be763c4ddfed09d05108246e.md) | 63 | `result-track:be763c4ddfed09d05108246ec854dabaa57c1c39eed4524fa4a2c825244f1f73` |
| 7 | `lemma` | [neg_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/neg-llr--cd71c3f6d36c51e8598e9046.md) | 68 | `result-track:cd71c3f6d36c51e8598e9046af2228990a808d4b97b241f1b6e33cee3c7bb2fc` |
| 8 | `lemma` | [exp_neg_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/exp-neg-llr--a55601e199f877d9259b04a4.md) | 74 | `result-track:a55601e199f877d9259b04a47ee56526df8fb742aa0607a4964f64561ce4720c` |
| 9 | `lemma` | [exp_neg_llr'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/exp-neg-llr--98745c64897ac0571122bc80.md) | 80 | `result-track:98745c64897ac0571122bc809d16da1cb2608a8e4d0857fef8d9e0c6b005748c` |
| 10 | `lemma` | [measurable_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/measurable-llr--43d363d8c21088bf5fcb474c.md) | 87 | `result-track:43d363d8c21088bf5fcb474ca2ebf4ddd68e31d44dcd7e8915d4ba57e1096ee8` |
| 11 | `lemma` | [stronglyMeasurable_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/stronglymeasurable-llr--5a1e19c0bf7be3e35a8837a3.md) | 91 | `result-track:5a1e19c0bf7be3e35a8837a3f2418d9d161ed6682c718bae86ca223ba9bccb6d` |
| 12 | `lemma` | [llr_smul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/llr-smul-left--447b42806e1d55268a5b6ca4.md) | 94 | `result-track:447b42806e1d55268a5b6ca4d176dc8cdf849c3a413a49ae1b8f8e1cdbac5574` |
| 13 | `lemma` | [llr_smul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/llr-smul-right--2fbdefac6fe6f38e1f8532f1.md) | 111 | `result-track:2fbdefac6fe6f38e1f8532f13ca48000cca442a4e1343272beee5adf7531ce76` |
| 14 | `lemma` | [integrable_rnDeriv_mul_log_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/integrable-rnderiv-mul-log-iff--6ebd82880f6ea1e056be178b.md) | 129 | `result-track:6ebd82880f6ea1e056be178b572dad3cec9d1ab40d267f09e878d84800528233` |
| 15 | `lemma` | [integral_rnDeriv_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/integral-rnderiv-mul-log--8e7dfcb0b132d91dc6a86b0b.md) | 134 | `result-track:8e7dfcb0b132d91dc6a86b0ba261274d82f245f84bbfd1c21f19f7826bbcf1f9` |
| 16 | `lemma` | [llr_tilted_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/llr-tilted-left--82811aa176ca7cecc96dab02.md) | 140 | `result-track:82811aa176ca7cecc96dab02c0cbf0b44c2ee9c09533f8f6304ae686635145a5` |
| 17 | `lemma` | [integrable_llr_tilted_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/integrable-llr-tilted-left--6824a136681c061923874176.md) | 158 | `result-track:6824a136681c0619238741761743d16893b1baf60a8d801cac8e300b897b4a0b` |
| 18 | `lemma` | [integral_llr_tilted_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/integral-llr-tilted-left--5fd00f50a5d0d8cc6cf1d4c7.md) | 165 | `result-track:5fd00f50a5d0d8cc6cf1d4c7fc9d53cd48dd4acf7246bb442aa6333594ba1ea7` |
| 19 | `lemma` | [llr_tilted_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/llr-tilted-right--6488f07f9b536cd1e8a9d59a.md) | 179 | `result-track:6488f07f9b536cd1e8a9d59aa84c60e14b5992401bb029a846927c8361b38526` |
| 20 | `lemma` | [integrable_llr_tilted_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/integrable-llr-tilted-right--e1d7c8b1d4cf55cc91bc34b9.md) | 194 | `result-track:e1d7c8b1d4cf55cc91bc34b9b910f6a39fb0118d06b0f32f817955eb18c37ce4` |
| 21 | `lemma` | [integral_llr_tilted_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/declarations/integral-llr-tilted-right--80a392d8cc1c758e4c527d9f.md) | 201 | `result-track:80a392d8cc1c758e4c527d9f6429992519e5f0e69501181c7cbcb11605a4c642` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
