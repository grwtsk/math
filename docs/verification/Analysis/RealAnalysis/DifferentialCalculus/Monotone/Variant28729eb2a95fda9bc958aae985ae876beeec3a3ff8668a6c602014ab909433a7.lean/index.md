# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Monotone.Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77501f213b20f6cf60407d4d24ff8eb3c17f7cd0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77501f213b20f6cf60407d4d24ff8eb3c17f7cd0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.OneDim` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Extension` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_apply_add_mul_sq_div_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean/declarations/tendsto-apply-add-mul-sq-div-sub--77c7be0bdf480fcaac8ea9b9.md) | 42 | `result-track:77c7be0bdf480fcaac8ea9b9011b4bf6bec4f429addc51cc73e5851daaa8c8ef` |
| 2 | `theorem` | [StieltjesFunction.ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean/declarations/stieltjesfunction-ae-hasderivat--404d3583a7496e001398e834.md) | 64 | `result-track:404d3583a7496e001398e83433eeb22e84477111c2dfef77298d90a9fca708ba` |
| 3 | `theorem` | [Monotone.ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean/declarations/monotone-ae-hasderivat--25f12139c0f0f3138a309981.md) | 130 | `result-track:25f12139c0f0f3138a309981b8c7db0e7d9653e4da6a4c49008b46006f196d09` |
| 4 | `theorem` | [Monotone.ae_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean/declarations/monotone-ae-differentiableat--e9a575b040fa5352cf4b9942.md) | 206 | `result-track:e9a575b040fa5352cf4b9942a007d2af36977c6415ab28155b2eaf4c401c9cda` |
| 5 | `theorem` | [MonotoneOn.ae_differentiableWithinAt_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean/declarations/monotoneon-ae-differentiablewithinat-of-mem--e1879b2cf2d874c4623646cc.md) | 214 | `result-track:e1879b2cf2d874c4623646ccaa213aba1174a802d085e134f42a9b630502b191` |
| 6 | `theorem` | [MonotoneOn.ae_differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean/declarations/monotoneon-ae-differentiablewithinat--a04439a0d8b55bf3676ba3a7.md) | 236 | `result-track:a04439a0d8b55bf3676ba3a722924ea2c351b7f3464b059a1572904eac74c50f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
