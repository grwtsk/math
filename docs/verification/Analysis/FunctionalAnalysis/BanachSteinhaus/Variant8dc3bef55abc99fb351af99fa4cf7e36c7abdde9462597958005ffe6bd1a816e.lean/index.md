# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSteinhaus.Variant8dc3bef55abc99fb351af99fa4cf7e36c7abdde9462597958005ffe6bd1a816e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c112b860d93789bc89b967caefa26a60595c6844",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSteinhaus/Variant8dc3bef55abc99fb351af99fa4cf7e36c7abdde9462597958005ffe6bd1a816e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSteinhaus/Variant8dc3bef55abc99fb351af99fa4cf7e36c7abdde9462597958005ffe6bd1a816e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSteinhaus/Variant8dc3bef55abc99fb351af99fa4cf7e36c7abdde9462597958005ffe6bd1a816e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c112b860d93789bc89b967caefa26a60595c6844`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSteinhaus/Variant8dc3bef55abc99fb351af99fa4cf7e36c7abdde9462597958005ffe6bd1a816e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSteinhaus/Variant8dc3bef55abc99fb351af99fa4cf7e36c7abdde9462597958005ffe6bd1a816e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.Barrelled` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Baire.CompleteMetrizable` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [banach_steinhaus](../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSteinhaus/Variant8dc3bef55abc99fb351af99fa4cf7e36c7abdde9462597958005ffe6bd1a816e.lean/declarations/banach-steinhaus--797d6c3273c51d54c80a5842.md) | 32 | `result-track:797d6c3273c51d54c80a58424bcc9af77de968a907f161a7b8dae26767aebff5` |
| 2 | `theorem` | [banach_steinhaus_iSup_nnnorm](../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSteinhaus/Variant8dc3bef55abc99fb351af99fa4cf7e36c7abdde9462597958005ffe6bd1a816e.lean/declarations/banach-steinhaus-isup-nnnorm--1e9e244a35c2814fdb1de9e5.md) | 42 | `result-track:1e9e244a35c2814fdb1de9e583408a5e4eb1dfcf1b04a2acd5c1efb9e42052ab` |
| 3 | `abbrev` | [continuousLinearMapOfTendsto](../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSteinhaus/Variant8dc3bef55abc99fb351af99fa4cf7e36c7abdde9462597958005ffe6bd1a816e.lean/declarations/continuouslinearmapoftendsto--d4407c1b8513738890b5a1d5.md) | 55 | `declaration-track:d4407c1b8513738890b5a1d5e87cfeda5fe8d06a83b34eacd674d4c115fef4de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
