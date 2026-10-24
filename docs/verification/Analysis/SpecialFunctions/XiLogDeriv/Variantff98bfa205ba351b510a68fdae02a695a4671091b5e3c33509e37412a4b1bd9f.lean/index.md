# Verification target: GRWTSK.Analysis.SpecialFunctions.XiLogDeriv.Variantff98bfa205ba351b510a68fdae02a695a4671091b5e3c33509e37412a4b1bd9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71b1eaed44eee2f700c68453a76ff012a30a5717",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/XiLogDeriv/Variantff98bfa205ba351b510a68fdae02a695a4671091b5e3c33509e37412a4b1bd9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/XiLogDeriv/Variantff98bfa205ba351b510a68fdae02a695a4671091b5e3c33509e37412a4b1bd9f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/XiLogDeriv/Variantff98bfa205ba351b510a68fdae02a695a4671091b5e3c33509e37412a4b1bd9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71b1eaed44eee2f700c68453a76ff012a30a5717`.

Source path: `GRWTSK/Analysis/SpecialFunctions/XiLogDeriv/Variantff98bfa205ba351b510a68fdae02a695a4671091b5e3c33509e37412a4b1bd9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/XiLogDeriv/Variantff98bfa205ba351b510a68fdae02a695a4671091b5e3c33509e37412a4b1bd9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Deligne` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LogDeriv` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.Statement` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [differentiableAt_Gammaℝ](../../../../../mathematics/Analysis/SpecialFunctions/XiLogDeriv/Variantff98bfa205ba351b510a68fdae02a695a4671091b5e3c33509e37412a4b1bd9f.lean/declarations/differentiableat-gamma--29d85551302a0f9b60e20ad5.md) | 30 | `result-track:29d85551302a0f9b60e20ad5835f9adf24d65db30a43babf5d6ae6f2c0a59872` |
| 2 | `lemma` | [analyticAt_Gammaℝ](../../../../../mathematics/Analysis/SpecialFunctions/XiLogDeriv/Variantff98bfa205ba351b510a68fdae02a695a4671091b5e3c33509e37412a4b1bd9f.lean/declarations/analyticat-gamma--b93572bf656ddeba12fcee07.md) | 45 | `result-track:b93572bf656ddeba12fcee078b121153049563457b37d9ed186393ac1fb0cc49` |
| 3 | `lemma` | [completedZeta_eventuallyEq_mul](../../../../../mathematics/Analysis/SpecialFunctions/XiLogDeriv/Variantff98bfa205ba351b510a68fdae02a695a4671091b5e3c33509e37412a4b1bd9f.lean/declarations/completedzeta-eventuallyeq-mul--682a42c624de7673412b2e2d.md) | 51 | `result-track:682a42c624de7673412b2e2d843f87e10313c32e55dbcb6a940827cebb799e01` |
| 4 | `lemma` | [analyticAt_riemannZeta](../../../../../mathematics/Analysis/SpecialFunctions/XiLogDeriv/Variantff98bfa205ba351b510a68fdae02a695a4671091b5e3c33509e37412a4b1bd9f.lean/declarations/analyticat-riemannzeta--fb6221beb7ed5d79d7e10684.md) | 61 | `result-track:fb6221beb7ed5d79d7e106845e95bd903d7cace569beeac8d5fc0678db1dcb3b` |
| 5 | `theorem` | [logDeriv_completedZeta](../../../../../mathematics/Analysis/SpecialFunctions/XiLogDeriv/Variantff98bfa205ba351b510a68fdae02a695a4671091b5e3c33509e37412a4b1bd9f.lean/declarations/logderiv-completedzeta--f34e899c6adaadb4270d5dda.md) | 67 | `result-track:f34e899c6adaadb4270d5dda12ab603dd02f7eba0f23ec6eb7318c60712db3be` |
| 6 | `theorem` | [logDeriv_completedZeta_one_sub](../../../../../mathematics/Analysis/SpecialFunctions/XiLogDeriv/Variantff98bfa205ba351b510a68fdae02a695a4671091b5e3c33509e37412a4b1bd9f.lean/declarations/logderiv-completedzeta-one-sub--94be04ff5f1737bbef1e71ef.md) | 78 | `result-track:94be04ff5f1737bbef1e71ef246b7104a94fda02eb3a1eec2486ba5813be67de` |
| 7 | `theorem` | [completedZeta_zeros_strip](../../../../../mathematics/Analysis/SpecialFunctions/XiLogDeriv/Variantff98bfa205ba351b510a68fdae02a695a4671091b5e3c33509e37412a4b1bd9f.lean/declarations/completedzeta-zeros-strip--39a76e83c1f0d0f7185ccab3.md) | 95 | `result-track:39a76e83c1f0d0f7185ccab342e6a5eac4871858583c757b41e25ecea00f607d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
