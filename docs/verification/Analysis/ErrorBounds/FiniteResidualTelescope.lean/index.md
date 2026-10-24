# Verification target: GRWTSK.Analysis.ErrorBounds.FiniteResidualTelescope

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da5a7c1f966592f1d1451a34d46f24d52b8884ff",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/FiniteResidualTelescope.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/FiniteResidualTelescope.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/FiniteResidualTelescope.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da5a7c1f966592f1d1451a34d46f24d52b8884ff`.

Source path: `GRWTSK/Analysis/ErrorBounds/FiniteResidualTelescope.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/FiniteResidualTelescope.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [residualTotal](../../../../mathematics/Analysis/ErrorBounds/FiniteResidualTelescope.lean/declarations/residualtotal--43ad755a55beb7865c1173ff.md) | 28 | `declaration-track:43ad755a55beb7865c1173ff7579522f07a1cfe31362ef8e32005c16b5569834` |
| 2 | `theorem` | [residualTotal_zero](../../../../mathematics/Analysis/ErrorBounds/FiniteResidualTelescope.lean/declarations/residualtotal-zero--cb8b8ded1da415f1c94495e1.md) | 32 | `result-track:cb8b8ded1da415f1c94495e1df4c51a30f1eb32d322f87aa71f7e4410d4fd11d` |
| 3 | `theorem` | [residualTotal_succ](../../../../mathematics/Analysis/ErrorBounds/FiniteResidualTelescope.lean/declarations/residualtotal-succ--661105a8402ac58c037e7dc8.md) | 34 | `result-track:661105a8402ac58c037e7dc8663bd4226990945f252dc2f2770a9ec08ad623c2` |
| 4 | `theorem` | [residualTotal_eq_endpointDifference](../../../../mathematics/Analysis/ErrorBounds/FiniteResidualTelescope.lean/declarations/residualtotal-eq-endpointdifference--d0ce89dae669025e4b299f2d.md) | 38 | `result-track:d0ce89dae669025e4b299f2d92229a8e5cb8562de1a0362851bfd285ae5de99c` |
| 5 | `theorem` | [exact_residual_telescope](../../../../mathematics/Analysis/ErrorBounds/FiniteResidualTelescope.lean/declarations/exact-residual-telescope--c1b664f0c9b54a53f69f7108.md) | 46 | `result-track:c1b664f0c9b54a53f69f710892e75600404af642fb92ac2affd69ecd5ee6202f` |
| 6 | `def` | [VanishesAtInfinity](../../../../mathematics/Analysis/ErrorBounds/FiniteResidualTelescope.lean/declarations/vanishesatinfinity--12a1c6c7b503ba318a426689.md) | 54 | `declaration-track:12a1c6c7b503ba318a426689548fea1cc3a686d8cb255338de04ce0f34ca3297` |
| 7 | `theorem` | [zero](../../../../mathematics/Analysis/ErrorBounds/FiniteResidualTelescope.lean/declarations/zero--18d4490b9874614c276b3ea8.md) | 60 | `result-track:18d4490b9874614c276b3ea8bb74d3eb09807b3500d0e01d80d23a2dfd9949f1` |
| 8 | `theorem` | [neg](../../../../mathematics/Analysis/ErrorBounds/FiniteResidualTelescope.lean/declarations/neg--82731f81a8cabf1548d39bf0.md) | 65 | `result-track:82731f81a8cabf1548d39bf01bc7c80617b5f3749eeeb1ba888160cb4d5b6e6b` |
| 9 | `theorem` | [add](../../../../mathematics/Analysis/ErrorBounds/FiniteResidualTelescope.lean/declarations/add--fb08603f7d83eea5e6e6a76a.md) | 74 | `result-track:fb08603f7d83eea5e6e6a76adad6106d9e7c7d1b8bdf1b6cf13b5a7c85c22d18` |
| 10 | `theorem` | [sub](../../../../mathematics/Analysis/ErrorBounds/FiniteResidualTelescope.lean/declarations/sub--fc02287c5a5ccad9c246e600.md) | 91 | `result-track:fc02287c5a5ccad9c246e600d8f2fd5b4c965f164d8d6cf8a88abef41df8db75` |
| 11 | `theorem` | [of_nonnegative_bound](../../../../mathematics/Analysis/ErrorBounds/FiniteResidualTelescope.lean/declarations/of-nonnegative-bound--edde10f64817797842b864ad.md) | 97 | `result-track:edde10f64817797842b864ad6fbbd5666ca01fb94f3026d3b4d58695c961361d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
