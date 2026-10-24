# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ChebyshevUpperBounds.Varianta5f42af1108c9294cad7b4f3af603c54afbc5943b8a449375fd490ab9e5e8827

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "683ba3ebf7aed383f8559a95c9097ebd43e16cd2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ChebyshevUpperBounds/Varianta5f42af1108c9294cad7b4f3af603c54afbc5943b8a449375fd490ab9e5e8827.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ChebyshevUpperBounds/Varianta5f42af1108c9294cad7b4f3af603c54afbc5943b8a449375fd490ab9e5e8827.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ChebyshevUpperBounds/Varianta5f42af1108c9294cad7b4f3af603c54afbc5943b8a449375fd490ab9e5e8827.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `683ba3ebf7aed383f8559a95c9097ebd43e16cd2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ChebyshevUpperBounds/Varianta5f42af1108c9294cad7b4f3af603c54afbc5943b8a449375fd490ab9e5e8827.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ChebyshevUpperBounds/Varianta5f42af1108c9294cad7b4f3af603c54afbc5943b8a449375fd490ab9e5e8827.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.ChebyshevDyadicUpper` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [chebyshevTheta_linear_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ChebyshevUpperBounds/Varianta5f42af1108c9294cad7b4f3af603c54afbc5943b8a449375fd490ab9e5e8827.lean/declarations/chebyshevtheta-linear-upper--c1cf2ecaed536eab3c9952a5.md) | 20 | `result-track:c1cf2ecaed536eab3c9952a512e7b0fcbcf8461b9ced2b4e9addfaa4828a0b15` |
| 2 | `theorem` | [ChebyshevThetaUpperBoundTarget_checked](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ChebyshevUpperBounds/Varianta5f42af1108c9294cad7b4f3af603c54afbc5943b8a449375fd490ab9e5e8827.lean/declarations/chebyshevthetaupperboundtarget-checked--897acacb96d1956c2ae9a894.md) | 25 | `result-track:897acacb96d1956c2ae9a894a3de3bea5f46e7250cdfd7ef83b58ed7a1b67e6e` |
| 3 | `def` | [ChebyshevPsiLinearUpperBoundTarget](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ChebyshevUpperBounds/Varianta5f42af1108c9294cad7b4f3af603c54afbc5943b8a449375fd490ab9e5e8827.lean/declarations/chebyshevpsilinearupperboundtarget--c47c41389e0f770fe51ba675.md) | 30 | `declaration-track:c47c41389e0f770fe51ba675c1a19126198a42a942103f5836db9226518dfe7e` |
| 4 | `def` | [PrimeCountingLinearUpperBoundTarget](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ChebyshevUpperBounds/Varianta5f42af1108c9294cad7b4f3af603c54afbc5943b8a449375fd490ab9e5e8827.lean/declarations/primecountinglinearupperboundtarget--36959ca08b6afeb043d502bd.md) | 34 | `declaration-track:36959ca08b6afeb043d502bdfc95dda66b2ea5732b405f1350879b61d4a392dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
