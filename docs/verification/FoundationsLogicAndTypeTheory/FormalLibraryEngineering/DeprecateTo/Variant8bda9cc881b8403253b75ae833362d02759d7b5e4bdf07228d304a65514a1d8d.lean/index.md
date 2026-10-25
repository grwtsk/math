# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecateTo.Variant8bda9cc881b8403253b75ae833362d02759d7b5e4bdf07228d304a65514a1d8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a374440b2c34e34cc91b727a79d9451f253e49f4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant8bda9cc881b8403253b75ae833362d02759d7b5e4bdf07228d304a65514a1d8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant8bda9cc881b8403253b75ae833362d02759d7b5e4bdf07228d304a65514a1d8d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant8bda9cc881b8403253b75ae833362d02759d7b5e4bdf07228d304a65514a1d8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a374440b2c34e34cc91b727a79d9451f253e49f4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant8bda9cc881b8403253b75ae833362d02759d7b5e4bdf07228d304a65514a1d8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant8bda9cc881b8403253b75ae833362d02759d7b5e4bdf07228d304a65514a1d8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.TryThis` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkDeprecationStx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant8bda9cc881b8403253b75ae833362d02759d7b5e4bdf07228d304a65514a1d8d.lean/declarations/mkdeprecationstx--977d5dd6406124d04aaa83e4.md) | 44 | `declaration-track:977d5dd6406124d04aaa83e49e26f63d8c6f446ad2e99f4d738c540a9f261f4f` |
| 2 | `def` | [newNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant8bda9cc881b8403253b75ae833362d02759d7b5e4bdf07228d304a65514a1d8d.lean/declarations/newnames--0ef4d1dbc9630397e1ff7960.md) | 53 | `declaration-track:0ef4d1dbc9630397e1ff79608e09657a9a231c0d2e8dcd983ef360af4ee4aae0` |
| 3 | `def` | [renameTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant8bda9cc881b8403253b75ae833362d02759d7b5e4bdf07228d304a65514a1d8d.lean/declarations/renametheorem--e3ceb99ca8edcf7efe0b45c7.md) | 69 | `declaration-track:e3ceb99ca8edcf7efe0b45c7be84aa4b70dd9377dcce5f7c4220a3c337c4bd94` |
| 4 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant8bda9cc881b8403253b75ae833362d02759d7b5e4bdf07228d304a65514a1d8d.lean/declarations/elab--3549e2fd2eaf746c4eef79b6.md) | 110 | `declaration-track:3549e2fd2eaf746c4eef79b67e27d35bdbed1683c75fa28f60ef6e855a6ae35c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
