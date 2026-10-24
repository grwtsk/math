# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DampedDivisorRemainderNorm.Variantf1f27a6b991e11795bba906b8fc0b0f154d389b09dc5b017f2e66e19a306d429

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65aa7b9c0026530b7a25b3d750c09dc5574e8cbf",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variantf1f27a6b991e11795bba906b8fc0b0f154d389b09dc5b017f2e66e19a306d429.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variantf1f27a6b991e11795bba906b8fc0b0f154d389b09dc5b017f2e66e19a306d429.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variantf1f27a6b991e11795bba906b8fc0b0f154d389b09dc5b017f2e66e19a306d429.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65aa7b9c0026530b7a25b3d750c09dc5574e8cbf`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variantf1f27a6b991e11795bba906b8fc0b0f154d389b09dc5b017f2e66e19a306d429.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variantf1f27a6b991e11795bba906b8fc0b0f154d389b09dc5b017f2e66e19a306d429.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorRemainderCore](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variantf1f27a6b991e11795bba906b8fc0b0f154d389b09dc5b017f2e66e19a306d429.lean/declarations/divisorremaindercore--9152a7789c8536934cc1a5b5.md) | 22 | `declaration-track:9152a7789c8536934cc1a5b5abec6163f83cb5c8a3b1ef43728e9e6a39e8e611` |
| 2 | `theorem` | [divisorRemainderCore_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variantf1f27a6b991e11795bba906b8fc0b0f154d389b09dc5b017f2e66e19a306d429.lean/declarations/divisorremaindercore-measurable--d5c0cc1a1198fcda33afd8b3.md) | 28 | `result-track:d5c0cc1a1198fcda33afd8b3720f7b0f4ed635dd8e8893daef914df4bb387fc4` |
| 3 | `theorem` | [divisorRemainderCore_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variantf1f27a6b991e11795bba906b8fc0b0f154d389b09dc5b017f2e66e19a306d429.lean/declarations/divisorremaindercore-sq-le--0c867cd23710644a55b79a95.md) | 40 | `result-track:0c867cd23710644a55b79a959f66a792aec61da8334cbb035473b0b911559b2a` |
| 4 | `theorem` | [remainderMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variantf1f27a6b991e11795bba906b8fc0b0f154d389b09dc5b017f2e66e19a306d429.lean/declarations/remaindermajorant-integrable--8a54968da054c8254d051ae2.md) | 69 | `result-track:8a54968da054c8254d051ae2aafac46a1a010a8d696c49ab31a1c49e1d27c38d` |
| 5 | `theorem` | [divisorRemainderCore_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variantf1f27a6b991e11795bba906b8fc0b0f154d389b09dc5b017f2e66e19a306d429.lean/declarations/divisorremaindercore-memlp--fdbb0ce78085798109864fb5.md) | 76 | `result-track:fdbb0ce78085798109864fb51e65148945cb4b9fb3d7e1e5f09d81a489b08ef9` |
| 6 | `def` | [divisorRemainderVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variantf1f27a6b991e11795bba906b8fc0b0f154d389b09dc5b017f2e66e19a306d429.lean/declarations/divisorremaindervector--963bf4b39fd26132e2fc0355.md) | 87 | `declaration-track:963bf4b39fd26132e2fc0355e02774c9823f4994c815c10cdacaec92c31dc221` |
| 7 | `theorem` | [divisorRemainderVector_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variantf1f27a6b991e11795bba906b8fc0b0f154d389b09dc5b017f2e66e19a306d429.lean/declarations/divisorremaindervector-norm-le--30b93852f735ef373025fba9.md) | 91 | `result-track:30b93852f735ef373025fba9c02c90b0403feb22c1188f377b74e02f90da4f6e` |
| 8 | `theorem` | [sourceMultiplier_divisorRemainder_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNorm/Variantf1f27a6b991e11795bba906b8fc0b0f154d389b09dc5b017f2e66e19a306d429.lean/declarations/sourcemultiplier-divisorremainder-norm-le--686f3db90a59793fe804e36f.md) | 114 | `result-track:686f3db90a59793fe804e36f89341852463b7d38c3b49e3b2cc4efcde255eba6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
