# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Positivity.Variant97f7dbbe137721c72f469e06ab3d8ae1d9b371c3547077c7fbe294361d7ea9ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "993343642cdb493aedc58554b9465952e6f936f9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant97f7dbbe137721c72f469e06ab3d8ae1d9b371c3547077c7fbe294361d7ea9ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant97f7dbbe137721c72f469e06ab3d8ae1d9b371c3547077c7fbe294361d7ea9ed.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant97f7dbbe137721c72f469e06ab3d8ae1d9b371c3547077c7fbe294361d7ea9ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `993343642cdb493aedc58554b9465952e6f936f9`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant97f7dbbe137721c72f469e06ab3d8ae1d9b371c3547077c7fbe294361d7ea9ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant97f7dbbe137721c72f469e06ab3d8ae1d9b371c3547077c7fbe294361d7ea9ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.TaylorSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Positivity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Deriv` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [iteratedDeriv_alternating](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant97f7dbbe137721c72f469e06ab3d8ae1d9b371c3547077c7fbe294361d7ea9ed.lean/declarations/iteratedderiv-alternating--d36d5c9d1aaedbc7d9a0ea65.md) | 36 | `result-track:d36d5c9d1aaedbc7d9a0ea659d5cb1856c8c8c068cc75b92cb9a6093b5d6b2fc` |
| 2 | `lemma` | [positive](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant97f7dbbe137721c72f469e06ab3d8ae1d9b371c3547077c7fbe294361d7ea9ed.lean/declarations/positive--8f7e8c748e19f5bf4f760485.md) | 55 | `result-track:8f7e8c748e19f5bf4f76048578b8dd454db4472b2d2e2f417960c89a7b4c429b` |
| 3 | `lemma` | [positive_of_differentiable_of_eqOn](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant97f7dbbe137721c72f469e06ab3d8ae1d9b371c3547077c7fbe294361d7ea9ed.lean/declarations/positive-of-differentiable-of-eqon--9dd04af9c9e16f17dd5b437b.md) | 64 | `result-track:9dd04af9c9e16f17dd5b437b9d110916170d92c3a4e83289947dc7dce2a068d4` |
| 4 | `lemma` | [iteratedDeriv_LSeries_alternating](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant97f7dbbe137721c72f469e06ab3d8ae1d9b371c3547077c7fbe294361d7ea9ed.lean/declarations/iteratedderiv-lseries-alternating--e3f971a4c4285bd5aebdffdc.md) | 88 | `result-track:e3f971a4c4285bd5aebdffdc1d3c81746b892a80899cffddd5d65d46446007a9` |
| 5 | `lemma` | [LSeries_positive](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant97f7dbbe137721c72f469e06ab3d8ae1d9b371c3547077c7fbe294361d7ea9ed.lean/declarations/lseries-positive--c5c0687518fa54522b4e04a9.md) | 95 | `result-track:c5c0687518fa54522b4e04a9ca5cb499e075c05d57ec770977a0a03319b85e0c` |
| 6 | `lemma` | [LSeries_positive_of_differentiable_of_eqOn](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant97f7dbbe137721c72f469e06ab3d8ae1d9b371c3547077c7fbe294361d7ea9ed.lean/declarations/lseries-positive-of-differentiable-of-eqon--51eca4d96b353bb6f52bf964.md) | 103 | `result-track:51eca4d96b353bb6f52bf964e2909ca0e2a8dd0a4a53030413bcb49e2c275674` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
