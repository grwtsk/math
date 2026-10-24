# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coproduct.Variant617f5508c638e4e6c57effbf55e3c81aeaaa73abcd0c38a37a9f671431a6c241

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87c5560d945e1fa3e1523d66f28d94c56f351825",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant617f5508c638e4e6c57effbf55e3c81aeaaa73abcd0c38a37a9f671431a6c241.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant617f5508c638e4e6c57effbf55e3c81aeaaa73abcd0c38a37a9f671431a6c241.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant617f5508c638e4e6c57effbf55e3c81aeaaa73abcd0c38a37a9f671431a6c241.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87c5560d945e1fa3e1523d66f28d94c56f351825`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant617f5508c638e4e6c57effbf55e3c81aeaaa73abcd0c38a37a9f671431a6c241.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant617f5508c638e4e6c57effbf55e3c81aeaaa73abcd0c38a37a9f671431a6c241.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EffectiveEpi.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [effectiveEpiStructIsColimitDescOfEffectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant617f5508c638e4e6c57effbf55e3c81aeaaa73abcd0c38a37a9f671431a6c241.lean/declarations/effectiveepistructiscolimitdescofeffectiveepifamily--5c566230563ff9f820c4df9c.md) | 29 | `declaration-track:5c566230563ff9f820c4df9c62ee69344c604e40fc5d9d2b0340eeb64a151905` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant617f5508c638e4e6c57effbf55e3c81aeaaa73abcd0c38a37a9f671431a6c241.lean/declarations/instance--376cab6e4e51c86fbdc94cc9.md) | 39 | `declaration-track:376cab6e4e51c86fbdc94cc927a5a587255dfa5b984bd0bb50527118ccee40eb` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant617f5508c638e4e6c57effbf55e3c81aeaaa73abcd0c38a37a9f671431a6c241.lean/declarations/example--d75856af16e818dbf7d6f85c.md) | 46 | `declaration-track:d75856af16e818dbf7d6f85c82c0676a5d35117193bd8fee38411841e8beb2b1` |
| 4 | `theorem` | [effectiveEpiFamilyStructOfEffectiveEpiDesc_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant617f5508c638e4e6c57effbf55e3c81aeaaa73abcd0c38a37a9f671431a6c241.lean/declarations/effectiveepifamilystructofeffectiveepidesc-aux--700638bac8c3885967c2a2a4.md) | 53 | `result-track:700638bac8c3885967c2a2a43031d33744ad722cc2eec0d8d7c5ede61e12f586` |
| 5 | `def` | [effectiveEpiFamilyStructOfEffectiveEpiDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant617f5508c638e4e6c57effbf55e3c81aeaaa73abcd0c38a37a9f671431a6c241.lean/declarations/effectiveepifamilystructofeffectiveepidesc--760f41efa56b3c9c6394ab15.md) | 93 | `declaration-track:760f41efa56b3c9c6394ab15bd890f3cf049b3e7fe2f6d50cee3b14b1fae27db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
