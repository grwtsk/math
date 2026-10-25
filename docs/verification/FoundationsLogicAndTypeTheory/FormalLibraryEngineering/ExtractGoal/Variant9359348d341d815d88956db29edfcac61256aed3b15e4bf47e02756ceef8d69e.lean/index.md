# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtractGoal.Variant9359348d341d815d88956db29edfcac61256aed3b15e4bf47e02756ceef8d69e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46ebf8c95a9896b3908aec8e416c0648ea5c27ac",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant9359348d341d815d88956db29edfcac61256aed3b15e4bf47e02756ceef8d69e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant9359348d341d815d88956db29edfcac61256aed3b15e4bf47e02756ceef8d69e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant9359348d341d815d88956db29edfcac61256aed3b15e4bf47e02756ceef8d69e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46ebf8c95a9896b3908aec8e416c0648ea5c27ac`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant9359348d341d815d88956db29edfcac61256aed3b15e4bf47e02756ceef8d69e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant9359348d341d815d88956db29edfcac61256aed3b15e4bf47e02756ceef8d69e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.ElabTerm` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cleanup` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.PrettyPrinter` — import line 9; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Meta.Inaccessible` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant9359348d341d815d88956db29edfcac61256aed3b15e4bf47e02756ceef8d69e.lean/declarations/syntax--52c861ac1955eaab16b9da87.md) | 105 | `declaration-track:52c861ac1955eaab16b9da876f077eb6aaec313afb54e3426e9126b974408dfb` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant9359348d341d815d88956db29edfcac61256aed3b15e4bf47e02756ceef8d69e.lean/declarations/syntax--f9481b77b676cb1f77f3812f.md) | 108 | `declaration-track:f9481b77b676cb1f77f3812f43fef2c6fe351e2d60a159e6dc0d108ef00181d8` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant9359348d341d815d88956db29edfcac61256aed3b15e4bf47e02756ceef8d69e.lean/declarations/syntax--a6a5519de2f5104fb7efe74b.md) | 131 | `declaration-track:a6a5519de2f5104fb7efe74b45ff1dc5772dec62562cf132572ba485cad26ddb` |
| 4 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant9359348d341d815d88956db29edfcac61256aed3b15e4bf47e02756ceef8d69e.lean/declarations/elab-rules--2478d2aadbb070874440959c.md) | 133 | `declaration-track:2478d2aadbb070874440959c884c610c769da2e0f0f2c7292cdac1213a758d8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
