# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DampedDivisorRemainderNorm.Variant472c914a3c491cda2321dbc64ff49128ce055b31ff524de89184e3f140dc9c71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9983b3c372cfc4d53476baa8334fa12b7cfdb3ad",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variant472c914a3c491cda2321dbc64ff49128ce055b31ff524de89184e3f140dc9c71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variant472c914a3c491cda2321dbc64ff49128ce055b31ff524de89184e3f140dc9c71.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variant472c914a3c491cda2321dbc64ff49128ce055b31ff524de89184e3f140dc9c71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9983b3c372cfc4d53476baa8334fa12b7cfdb3ad`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variant472c914a3c491cda2321dbc64ff49128ce055b31ff524de89184e3f140dc9c71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variant472c914a3c491cda2321dbc64ff49128ce055b31ff524de89184e3f140dc9c71.lean.json)

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
| 1 | `def` | [divisorRemainderCore](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variant472c914a3c491cda2321dbc64ff49128ce055b31ff524de89184e3f140dc9c71.lean/declarations/divisorremaindercore--8117c0ca7ab393a372e6e917.md) | 14 | `declaration-track:8117c0ca7ab393a372e6e917c36f017e718b88b6b05d56ea5256eb98196fea07` |
| 2 | `theorem` | [divisorRemainderCore_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variant472c914a3c491cda2321dbc64ff49128ce055b31ff524de89184e3f140dc9c71.lean/declarations/divisorremaindercore-measurable--76217d55346fc0d4c1f48e6e.md) | 20 | `result-track:76217d55346fc0d4c1f48e6e7324ffc01e74d581b2a4ed8ff6f25a87ca569bd9` |
| 3 | `theorem` | [divisorRemainderCore_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variant472c914a3c491cda2321dbc64ff49128ce055b31ff524de89184e3f140dc9c71.lean/declarations/divisorremaindercore-sq-le--8071eb18e9bd80a427b78c31.md) | 32 | `result-track:8071eb18e9bd80a427b78c31797c0f13c78d7b37bb4ebf38c8c8d5a9d035ec22` |
| 4 | `theorem` | [remainderMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variant472c914a3c491cda2321dbc64ff49128ce055b31ff524de89184e3f140dc9c71.lean/declarations/remaindermajorant-integrable--649d9492514b73acd8858548.md) | 61 | `result-track:649d9492514b73acd88585484d158848435ee5b7dfe36d0da9a4b43b315296b6` |
| 5 | `theorem` | [divisorRemainderCore_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variant472c914a3c491cda2321dbc64ff49128ce055b31ff524de89184e3f140dc9c71.lean/declarations/divisorremaindercore-memlp--9240804b2508deebd683c7e2.md) | 68 | `result-track:9240804b2508deebd683c7e24f2fd6b70e64744c099dad699025531a4e80c09e` |
| 6 | `def` | [divisorRemainderVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variant472c914a3c491cda2321dbc64ff49128ce055b31ff524de89184e3f140dc9c71.lean/declarations/divisorremaindervector--a55b88cff69891cabe43a483.md) | 79 | `declaration-track:a55b88cff69891cabe43a4831ebbe491a7d93a52622fb677e84af46076477460` |
| 7 | `theorem` | [divisorRemainderVector_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variant472c914a3c491cda2321dbc64ff49128ce055b31ff524de89184e3f140dc9c71.lean/declarations/divisorremaindervector-norm-le--738947abe590b99993f6c51b.md) | 83 | `result-track:738947abe590b99993f6c51b78e27f8d34b621bdb26a5bc8a585e1e6d1681e6e` |
| 8 | `theorem` | [sourceMultiplier_divisorRemainder_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variant472c914a3c491cda2321dbc64ff49128ce055b31ff524de89184e3f140dc9c71.lean/declarations/sourcemultiplier-divisorremainder-norm-le--8ea0eaa591986a50967de4bb.md) | 106 | `result-track:8ea0eaa591986a50967de4bbcc4cd91db6a02a53fcf956824b0e91ec69443e77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
