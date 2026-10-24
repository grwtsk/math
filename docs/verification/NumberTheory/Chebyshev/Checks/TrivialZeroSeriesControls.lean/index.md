# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.TrivialZeroSeriesControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebd37c6af1ba37624bed816a0edb4172513bf4d9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/TrivialZeroSeriesControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TrivialZeroSeriesControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TrivialZeroSeriesControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebd37c6af1ba37624bed816a0edb4172513bf4d9`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/TrivialZeroSeriesControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/TrivialZeroSeriesControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.TrivialZeroTentSeries`](../../../../../mathematics/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [first_two_parameters](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TrivialZeroSeriesControls.lean/declarations/first-two-parameters--4418e5327ad76d7b7a77a07e.md) | 22 | `result-track:4418e5327ad76d7b7a77a07ee6f592286e23cf17ffbf403347faf9cb405b81dc` |
| 2 | `theorem` | [same_height_distinct_points](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TrivialZeroSeriesControls.lean/declarations/same-height-distinct-points--cd29a94c7961e17229906254.md) | 26 | `result-track:cd29a94c7961e172299062549ad9d4070bb5aed103f524c31f883017575ad3b8` |
| 3 | `theorem` | [first_trivial_is_excluded](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TrivialZeroSeriesControls.lean/declarations/first-trivial-is-excluded--1297b04c62fa1c2054dca479.md) | 35 | `result-track:1297b04c62fa1c2054dca479913901571449002a38d955b8df902b01017022c7` |
| 4 | `theorem` | [no_positive_height_guard](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TrivialZeroSeriesControls.lean/declarations/no-positive-height-guard--dc6b9c67eb4a641280417013.md) | 39 | `result-track:dc6b9c67eb4a641280417013d49aaaf292d25dc2499ce3a15da5071d5ac4bea9` |
| 5 | `theorem` | [first_trivial_derivative_nonzero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TrivialZeroSeriesControls.lean/declarations/first-trivial-derivative-nonzero--b40ac3cabfac6c250111ece4.md) | 43 | `result-track:b40ac3cabfac6c250111ece47ef0e79bd573e581a968bc4e95ac71c324264818` |
| 6 | `theorem` | [first_density_at_two](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TrivialZeroSeriesControls.lean/declarations/first-density-at-two--75135826627da8850aec0b93.md) | 47 | `result-track:75135826627da8850aec0b93a82373d14a756fa76372555daf8857697e9f0024` |
| 7 | `theorem` | [finite_density_still_has_remainder](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TrivialZeroSeriesControls.lean/declarations/finite-density-still-has-remainder--17deaa70927738c60782817b.md) | 53 | `result-track:17deaa70927738c60782817be8851bda70fc8d33c75c9ac411d596a1ff956492` |
| 8 | `theorem` | [empty_prefix_is_not_complete](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TrivialZeroSeriesControls.lean/declarations/empty-prefix-is-not-complete--42ad84b99b3f071392d370c0.md) | 59 | `result-track:42ad84b99b3f071392d370c0d1479afda6ae6eae529aff1b1ea38c8ddb6a2106` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
