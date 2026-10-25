# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecateTo.Variant9f6f7d0b4f5f4cb7644dff4ef3f93470a598a377b221620f6740eb483760186d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef79b4be0c8256b9230df8743933ba24ffd3ea1d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant9f6f7d0b4f5f4cb7644dff4ef3f93470a598a377b221620f6740eb483760186d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant9f6f7d0b4f5f4cb7644dff4ef3f93470a598a377b221620f6740eb483760186d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant9f6f7d0b4f5f4cb7644dff4ef3f93470a598a377b221620f6740eb483760186d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef79b4be0c8256b9230df8743933ba24ffd3ea1d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant9f6f7d0b4f5f4cb7644dff4ef3f93470a598a377b221620f6740eb483760186d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant9f6f7d0b4f5f4cb7644dff4ef3f93470a598a377b221620f6740eb483760186d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.TryThis` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkDeprecationStx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant9f6f7d0b4f5f4cb7644dff4ef3f93470a598a377b221620f6740eb483760186d.lean/declarations/mkdeprecationstx--7b8e75255ca872598d852e5f.md) | 52 | `declaration-track:7b8e75255ca872598d852e5f7cec7c4991a8360364ff4fb1b17e7a680342cd87` |
| 2 | `def` | [newNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant9f6f7d0b4f5f4cb7644dff4ef3f93470a598a377b221620f6740eb483760186d.lean/declarations/newnames--9c00b23566b63cc7ebe61331.md) | 61 | `declaration-track:9c00b23566b63cc7ebe61331d41ff2e7f4e9726002d9423b3182e93a9c182d7f` |
| 3 | `def` | [renameTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant9f6f7d0b4f5f4cb7644dff4ef3f93470a598a377b221620f6740eb483760186d.lean/declarations/renametheorem--9e3c824d2deb98f412260aa1.md) | 77 | `declaration-track:9e3c824d2deb98f412260aa1cfa652c8ea5bd351c0e6a12721c56b3af79e1822` |
| 4 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant9f6f7d0b4f5f4cb7644dff4ef3f93470a598a377b221620f6740eb483760186d.lean/declarations/elab--e2b6b9e669cfd8693566c40a.md) | 118 | `declaration-track:e2b6b9e669cfd8693566c40a69d6db54c1d5c3cf5cdb61e821f90c3683b21535` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
