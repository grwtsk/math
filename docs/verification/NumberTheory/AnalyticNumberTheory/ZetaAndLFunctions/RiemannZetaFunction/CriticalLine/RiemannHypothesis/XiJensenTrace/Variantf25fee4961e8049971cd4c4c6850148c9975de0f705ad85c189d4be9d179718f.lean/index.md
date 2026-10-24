# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiJensenTrace.Variantf25fee4961e8049971cd4c4c6850148c9975de0f705ad85c189d4be9d179718f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68343cc85c34d1b1bfb03ba1377f8ba4ea913198",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf25fee4961e8049971cd4c4c6850148c9975de0f705ad85c189d4be9d179718f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf25fee4961e8049971cd4c4c6850148c9975de0f705ad85c189d4be9d179718f.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf25fee4961e8049971cd4c4c6850148c9975de0f705ad85c189d4be9d179718f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68343cc85c34d1b1bfb03ba1377f8ba4ea913198`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf25fee4961e8049971cd4c4c6850148c9975de0f705ad85c189d4be9d179718f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf25fee4961e8049971cd4c4c6850148c9975de0f705ad85c189d4be9d179718f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailLogSlope` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaTail_index_logConcave](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf25fee4961e8049971cd4c4c6850148c9975de0f705ad85c189d4be9d179718f.lean/declarations/thetatail-index-logconcave--3da165ed44c8d82b94667fe1.md) | 27 | `result-track:3da165ed44c8d82b94667fe11bdf1bec2892db21916376719a0ba62e60de0a50` |
| 2 | `theorem` | [thetaTail_even_index_logConcave](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf25fee4961e8049971cd4c4c6850148c9975de0f705ad85c189d4be9d179718f.lean/declarations/thetatail-even-index-logconcave--091e214621a7c423f14a11e9.md) | 41 | `result-track:091e214621a7c423f14a11e90e34b1fc2d91d9a0468065896937a2903a739896` |
| 3 | `theorem` | [coefficient_eq_thetaTail](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf25fee4961e8049971cd4c4c6850148c9975de0f705ad85c189d4be9d179718f.lean/declarations/coefficient-eq-thetatail--58e4866aba9ce72e245b3d99.md) | 66 | `result-track:58e4866aba9ce72e245b3d99a9bc83ac21fa2b099e81e807022dd63ead868272` |
| 4 | `theorem` | [coefficient_logConcave](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variantf25fee4961e8049971cd4c4c6850148c9975de0f705ad85c189d4be9d179718f.lean/declarations/coefficient-logconcave--cd886b5d2fdd367b792a3fc1.md) | 77 | `result-track:cd886b5d2fdd367b792a3fc121d56aa7d64e812d6fbc6e7061ccfc6bef7964d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
