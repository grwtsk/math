# Verification target: GRWTSK.Analysis.SpecialFunctions.XiLogDeriv.Variant8a8b5770939bb4157bf803c1acb289929997cca7557f5cfe125ef05ef2cb17d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c97ecfefcde59493ae06ae47b1b352dfb1f5e8e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/XiLogDeriv/Variant8a8b5770939bb4157bf803c1acb289929997cca7557f5cfe125ef05ef2cb17d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/XiLogDeriv/Variant8a8b5770939bb4157bf803c1acb289929997cca7557f5cfe125ef05ef2cb17d2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/XiLogDeriv/Variant8a8b5770939bb4157bf803c1acb289929997cca7557f5cfe125ef05ef2cb17d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c97ecfefcde59493ae06ae47b1b352dfb1f5e8e`.

Source path: `GRWTSK/Analysis/SpecialFunctions/XiLogDeriv/Variant8a8b5770939bb4157bf803c1acb289929997cca7557f5cfe125ef05ef2cb17d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/XiLogDeriv/Variant8a8b5770939bb4157bf803c1acb289929997cca7557f5cfe125ef05ef2cb17d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Deligne` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LogDeriv` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.Statement` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [differentiableAt_Gammaℝ](../../../../../mathematics/Analysis/SpecialFunctions/XiLogDeriv/Variant8a8b5770939bb4157bf803c1acb289929997cca7557f5cfe125ef05ef2cb17d2.lean/declarations/differentiableat-gamma--8f4589a8db75668f03539b27.md) | 38 | `result-track:8f4589a8db75668f03539b270f8159ff2f460647be96bae124a223c1ddd028f6` |
| 2 | `lemma` | [analyticAt_Gammaℝ](../../../../../mathematics/Analysis/SpecialFunctions/XiLogDeriv/Variant8a8b5770939bb4157bf803c1acb289929997cca7557f5cfe125ef05ef2cb17d2.lean/declarations/analyticat-gamma--f202d2bb5adb368611546387.md) | 53 | `result-track:f202d2bb5adb368611546387e3e6198a07540e471ff979acc834456c4c4c3f53` |
| 3 | `lemma` | [completedZeta_eventuallyEq_mul](../../../../../mathematics/Analysis/SpecialFunctions/XiLogDeriv/Variant8a8b5770939bb4157bf803c1acb289929997cca7557f5cfe125ef05ef2cb17d2.lean/declarations/completedzeta-eventuallyeq-mul--1adfd4ef2044d960007ee30f.md) | 59 | `result-track:1adfd4ef2044d960007ee30fa12345eb1a2cf3890e1f47b02f534322be17ac68` |
| 4 | `lemma` | [analyticAt_riemannZeta](../../../../../mathematics/Analysis/SpecialFunctions/XiLogDeriv/Variant8a8b5770939bb4157bf803c1acb289929997cca7557f5cfe125ef05ef2cb17d2.lean/declarations/analyticat-riemannzeta--d4df92f169d4990f64822d0b.md) | 69 | `result-track:d4df92f169d4990f64822d0bb0433f59db1af52cc7e4eae83e1abb8100f5edac` |
| 5 | `theorem` | [logDeriv_completedZeta](../../../../../mathematics/Analysis/SpecialFunctions/XiLogDeriv/Variant8a8b5770939bb4157bf803c1acb289929997cca7557f5cfe125ef05ef2cb17d2.lean/declarations/logderiv-completedzeta--8f62d0ca5a619224eb8739b6.md) | 75 | `result-track:8f62d0ca5a619224eb8739b61f475da2cfc6d2440ec506d07ef4ab5c89a6bc89` |
| 6 | `theorem` | [logDeriv_completedZeta_one_sub](../../../../../mathematics/Analysis/SpecialFunctions/XiLogDeriv/Variant8a8b5770939bb4157bf803c1acb289929997cca7557f5cfe125ef05ef2cb17d2.lean/declarations/logderiv-completedzeta-one-sub--6c251db041ea3528f47f93dc.md) | 86 | `result-track:6c251db041ea3528f47f93dc40e82ef95ac947b7e2d3fa54e1bb7fe400c355f3` |
| 7 | `theorem` | [completedZeta_zeros_strip](../../../../../mathematics/Analysis/SpecialFunctions/XiLogDeriv/Variant8a8b5770939bb4157bf803c1acb289929997cca7557f5cfe125ef05ef2cb17d2.lean/declarations/completedzeta-zeros-strip--668b163750553feb234e9b70.md) | 103 | `result-track:668b163750553feb234e9b70403a46366fd89aa8a8da6aa557ad0e948ca2261f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
