# Verification target: GRWTSK.NumberTheory.Chebyshev.CanonicalTentAbsolute

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58a4d8739d6737642536160d52a6efb156317854",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58a4d8739d6737642536160d52a6efb156317854`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalHighCounting`](../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Series.ScaledHeightCountingTail`](../../../../mathematics/Analysis/Series/ScaledHeightCountingTail.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Complex.TentKernelTail`](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelTail.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Topology.Algebra.InfiniteSum.Group` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [canonicalTailBudget](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean/declarations/canonicaltailbudget--12e155bba080993946d8ab2c.md) | 34 | `declaration-track:12e155bba080993946d8ab2c27d52f42d5e085b7b78223d5af8ccd935b33df2d` |
| 2 | `theorem` | [canonicalTailBudget_eq](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean/declarations/canonicaltailbudget-eq--28d9ee461c549ff666ef10c9.md) | 36 | `result-track:28d9ee461c549ff666ef10c9b86c52f2ff9cd14679d24acd79f4406db6befec9` |
| 3 | `theorem` | [complement_summable_and_bound](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean/declarations/complement-summable-and-bound--c8641131dd9225de3916370f.md) | 43 | `result-track:c8641131dd9225de3916370fed19598eb29d6abf52fc8f4c13097a0945e12206` |
| 4 | `theorem` | [canonical_absolute_summable](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean/declarations/canonical-absolute-summable--47249faec27a66294cdd5bdd.md) | 102 | `result-track:47249faec27a66294cdd5bddff4269f411672298d3725be7dc90c51359890de4` |
| 5 | `theorem` | [norm_full_sub_head_le](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean/declarations/norm-full-sub-head-le--2bdf88524c72e44a8ffb5cb1.md) | 113 | `result-track:2bdf88524c72e44a8ffb5cb14e3e691f0968debb74c8319349cc8a2b80bc36aa` |
| 6 | `theorem` | [norm_full_sub_evaluated_le](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean/declarations/norm-full-sub-evaluated-le--8fb04eedfc7bebf366628d8a.md) | 136 | `result-track:8fb04eedfc7bebf366628d8af6ec99d897e1bd742c78e0e54f988ff320427c58` |
| 7 | `theorem` | [canonicalTailBudget_tendsto_zero](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean/declarations/canonicaltailbudget-tendsto-zero--df854768763993e0eea4bbc4.md) | 152 | `result-track:df854768763993e0eea4bbc4afc8e7e9f4d7f9f7cba2954f4b250dea7b4c2b33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
