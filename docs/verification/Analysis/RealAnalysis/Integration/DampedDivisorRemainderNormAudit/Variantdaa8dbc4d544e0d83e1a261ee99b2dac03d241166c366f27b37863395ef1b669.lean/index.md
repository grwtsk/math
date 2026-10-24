# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DampedDivisorRemainderNormAudit.Variantdaa8dbc4d544e0d83e1a261ee99b2dac03d241166c366f27b37863395ef1b669

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0de0aab61a107753ab28846ec67047ad7f0f8bbb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variantdaa8dbc4d544e0d83e1a261ee99b2dac03d241166c366f27b37863395ef1b669.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variantdaa8dbc4d544e0d83e1a261ee99b2dac03d241166c366f27b37863395ef1b669.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variantdaa8dbc4d544e0d83e1a261ee99b2dac03d241166c366f27b37863395ef1b669.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0de0aab61a107753ab28846ec67047ad7f0f8bbb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variantdaa8dbc4d544e0d83e1a261ee99b2dac03d241166c366f27b37863395ef1b669.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variantdaa8dbc4d544e0d83e1a261ee99b2dac03d241166c366f27b37863395ef1b669.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorRemainderCore](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variantdaa8dbc4d544e0d83e1a261ee99b2dac03d241166c366f27b37863395ef1b669.lean/declarations/divisorremaindercore--383943ca258e857b36656773.md) | 14 | `declaration-track:383943ca258e857b3665677329fe70e0f49f32450341f42cb9c6f3572146d240` |
| 2 | `theorem` | [divisorRemainderCore_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variantdaa8dbc4d544e0d83e1a261ee99b2dac03d241166c366f27b37863395ef1b669.lean/declarations/divisorremaindercore-measurable--480ee08d4da55e8129ac6a3a.md) | 20 | `result-track:480ee08d4da55e8129ac6a3a82ebef67f45e149a8d549a04aa6db292300e9f51` |
| 3 | `theorem` | [divisorRemainderCore_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variantdaa8dbc4d544e0d83e1a261ee99b2dac03d241166c366f27b37863395ef1b669.lean/declarations/divisorremaindercore-sq-le--0dbe3952333e32b0e5e3c851.md) | 32 | `result-track:0dbe3952333e32b0e5e3c85189b41c78478cbe38ba03688ac1d952dfc79d79e5` |
| 4 | `theorem` | [remainderMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variantdaa8dbc4d544e0d83e1a261ee99b2dac03d241166c366f27b37863395ef1b669.lean/declarations/remaindermajorant-integrable--85227ee16aacb3200054e787.md) | 61 | `result-track:85227ee16aacb3200054e787257386d6e1f50dc274353ba52287a53eca703f17` |
| 5 | `theorem` | [divisorRemainderCore_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variantdaa8dbc4d544e0d83e1a261ee99b2dac03d241166c366f27b37863395ef1b669.lean/declarations/divisorremaindercore-memlp--42dea49dd908840a03ebb795.md) | 68 | `result-track:42dea49dd908840a03ebb7950ef4dc9eb76d4904f062636bbc57ea4b216951e0` |
| 6 | `def` | [divisorRemainderVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variantdaa8dbc4d544e0d83e1a261ee99b2dac03d241166c366f27b37863395ef1b669.lean/declarations/divisorremaindervector--c3e02d822533f19d18231bef.md) | 79 | `declaration-track:c3e02d822533f19d18231bef17b8e41ac19bc055696550f68bbd2570ef8ba488` |
| 7 | `theorem` | [divisorRemainderVector_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variantdaa8dbc4d544e0d83e1a261ee99b2dac03d241166c366f27b37863395ef1b669.lean/declarations/divisorremaindervector-norm-le--f13bf4ee1fec13aab03582a2.md) | 83 | `result-track:f13bf4ee1fec13aab03582a26359a7f88627935b4e5f10a2e6d7a07eff08bb7e` |
| 8 | `theorem` | [sourceMultiplier_divisorRemainder_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variantdaa8dbc4d544e0d83e1a261ee99b2dac03d241166c366f27b37863395ef1b669.lean/declarations/sourcemultiplier-divisorremainder-norm-le--f380bf067af3e5077742a168.md) | 106 | `result-track:f380bf067af3e5077742a168d9e0bcfed17572cff66a9940e90d83cc1b4754e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
