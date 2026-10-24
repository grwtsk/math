# Verification target: GRWTSK.Analysis.FunctionalAnalysis.HeatResidualControl.Variantf49da372b92ff15ddcc13e8c8152b8a409df3cad7a9688c9575015fe7014e888

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e96b9e229e9d4585befcc4e6290dd11ea7b19c06",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/HeatResidualControl/Variantf49da372b92ff15ddcc13e8c8152b8a409df3cad7a9688c9575015fe7014e888.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatResidualControl/Variantf49da372b92ff15ddcc13e8c8152b8a409df3cad7a9688c9575015fe7014e888.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatResidualControl/Variantf49da372b92ff15ddcc13e8c8152b8a409df3cad7a9688c9575015fe7014e888.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e96b9e229e9d4585befcc4e6290dd11ea7b19c06`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/HeatResidualControl/Variantf49da372b92ff15ddcc13e8c8152b8a409df3cad7a9688c9575015fe7014e888.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/HeatResidualControl/Variantf49da372b92ff15ddcc13e8c8152b8a409df3cad7a9688c9575015fe7014e888.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.Heat` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Residual` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [heatVisible](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatResidualControl/Variantf49da372b92ff15ddcc13e8c8152b8a409df3cad7a9688c9575015fe7014e888.lean/declarations/heatvisible--0106ae12ca3b83c18ebeea02.md) | 19 | `declaration-track:0106ae12ca3b83c18ebeea02930ab94c1f08f5c8b148f41b7d311cc332675ced` |
| 2 | `def` | [heatFiber](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatResidualControl/Variantf49da372b92ff15ddcc13e8c8152b8a409df3cad7a9688c9575015fe7014e888.lean/declarations/heatfiber--a33b750830523aea4b80a743.md) | 28 | `declaration-track:a33b750830523aea4b80a743e5fe29205fdc8a0b415c3892bb71ff1707c2634e` |
| 3 | `theorem` | [heat_visible_plus_fiber](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatResidualControl/Variantf49da372b92ff15ddcc13e8c8152b8a409df3cad7a9688c9575015fe7014e888.lean/declarations/heat-visible-plus-fiber--662c161badd7c246d6666b0c.md) | 37 | `result-track:662c161badd7c246d6666b0c00b044441efcd4da12b43a6259eb53c1e82fe48d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
