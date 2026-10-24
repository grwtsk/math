# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EventPath.Variantd77adf3ef82edba2fb749917e1e72b61aa6ae1d36aafeaad558f0f109a327438

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b23fe2bb4fee1fc2618289fb6011c39bd6f79fd",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EventPath/Variantd77adf3ef82edba2fb749917e1e72b61aa6ae1d36aafeaad558f0f109a327438.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EventPath/Variantd77adf3ef82edba2fb749917e1e72b61aa6ae1d36aafeaad558f0f109a327438.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EventPath/Variantd77adf3ef82edba2fb749917e1e72b61aa6ae1d36aafeaad558f0f109a327438.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b23fe2bb4fee1fc2618289fb6011c39bd6f79fd`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EventPath/Variantd77adf3ef82edba2fb749917e1e72b61aa6ae1d36aafeaad558f0f109a327438.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EventPath/Variantd77adf3ef82edba2fb749917e1e72b61aa6ae1d36aafeaad558f0f109a327438.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Oracle.Naming.Cochain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.CochainElements.DegreeZeroCochain` — import line 8; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.EventElements.NameFeatureVectorZero` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EventPath](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EventPath/Variantd77adf3ef82edba2fb749917e1e72b61aa6ae1d36aafeaad558f0f109a327438.lean/declarations/eventpath--342f4e7a6a5d96557c1a50f3.md) | 18 | `declaration-track:342f4e7a6a5d96557c1a50f35f3e2e8454ec01186f81a7abe9ca8abed3b4ae32` |
| 2 | `structure` | [ExactPathCertificate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EventPath/Variantd77adf3ef82edba2fb749917e1e72b61aa6ae1d36aafeaad558f0f109a327438.lean/declarations/exactpathcertificate--320f90c3d1cdf9ea6d983fa4.md) | 23 | `declaration-track:320f90c3d1cdf9ea6d983fa496854902a2e02d34f38fe57676175d5ecbba5231` |
| 3 | `theorem` | [coboundary_integral_closedWalk_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EventPath/Variantd77adf3ef82edba2fb749917e1e72b61aa6ae1d36aafeaad558f0f109a327438.lean/declarations/coboundary-integral-closedwalk-eq-zero--1060ce4a926bc24ca39f401b.md) | 27 | `result-track:1060ce4a926bc24ca39f401b478fc8dc47777dd482488efc7735b121eb3b877a` |
| 4 | `theorem` | [parallel_paths_have_equal_integral_of_exact_cochain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EventPath/Variantd77adf3ef82edba2fb749917e1e72b61aa6ae1d36aafeaad558f0f109a327438.lean/declarations/parallel-paths-have-equal-integral-of-exact-cochain--07e6cf0d425db5a62fbfbf31.md) | 35 | `result-track:07e6cf0d425db5a62fbfbf31ba4e028af94ee679e1497debf861b7dcd849dcc5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
