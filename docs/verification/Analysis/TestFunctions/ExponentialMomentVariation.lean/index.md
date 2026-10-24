# Verification target: GRWTSK.Analysis.TestFunctions.ExponentialMomentVariation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "349ab72f75cd0252e42b1aa152a62622da7ce6c8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/TestFunctions/ExponentialMomentVariation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/TestFunctions/ExponentialMomentVariation.lean/index.md) · [Full source](../../../../mathematics/Analysis/TestFunctions/ExponentialMomentVariation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `349ab72f75cd0252e42b1aa152a62622da7ce6c8`.

Source path: `GRWTSK/Analysis/TestFunctions/ExponentialMomentVariation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/TestFunctions/ExponentialMomentVariation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.TestFunctions.EvenSeparation`](../../../../mathematics/Analysis/TestFunctions/EvenSeparation.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [poleVariation](../../../../mathematics/Analysis/TestFunctions/ExponentialMomentVariation.lean/declarations/polevariation--a792af45904841b8d00bd377.md) | 22 | `declaration-track:a792af45904841b8d00bd377d2071791d0e1e11bba33eecdb903be9a3a1f431f` |
| 2 | `theorem` | [integral_second_derivative_exp](../../../../mathematics/Analysis/TestFunctions/ExponentialMomentVariation.lean/declarations/integral-second-derivative-exp--95e2aecd9bbeafdadcbcede6.md) | 25 | `result-track:95e2aecd9bbeafdadcbcede61c27a7300a321140ab3a23e4466ba373513fc020` |
| 3 | `theorem` | [pole_variation_exp_moment_zero](../../../../mathematics/Analysis/TestFunctions/ExponentialMomentVariation.lean/declarations/pole-variation-exp-moment-zero--043a9493714384be023deace.md) | 58 | `result-track:043a9493714384be023deace2a686c781e435ff88f48f5818681f50240eb7e14` |
| 4 | `theorem` | [even_homogeneous_residual_counterexample](../../../../mathematics/Analysis/TestFunctions/ExponentialMomentVariation.lean/declarations/even-homogeneous-residual-counterexample--1c2a34dc387fee89157f96b2.md) | 78 | `result-track:1c2a34dc387fee89157f96b24fa3c82543b4e0ba9acdc43c330b8dc5d22e0d2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
