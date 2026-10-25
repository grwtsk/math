# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Internalize.Variant03147465470bd54e3fdd8b8b7834216af55e3199a2dfaa31fca83d7af4e57440

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc51046e1cebaa517da3140d9eda925a8c4aff2a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant03147465470bd54e3fdd8b8b7834216af55e3199a2dfaa31fca83d7af4e57440.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant03147465470bd54e3fdd8b8b7834216af55e3199a2dfaa31fca83d7af4e57440.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant03147465470bd54e3fdd8b8b7834216af55e3199a2dfaa31fca83d7af4e57440.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc51046e1cebaa517da3140d9eda925a8c4aff2a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant03147465470bd54e3fdd8b8b7834216af55e3199a2dfaa31fca83d7af4e57440.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant03147465470bd54e3fdd8b8b7834216af55e3199a2dfaa31fca83d7af4e57440.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.Util` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.StructId` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Var` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Util` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Reify` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getType?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant03147465470bd54e3fdd8b8b7834216af55e3199a2dfaa31fca83d7af4e57440.lean/declarations/gettype--29074faeeffd39dd9ee7a241.md) | 26 | `declaration-track:29074faeeffd39dd9ee7a24198375780a5ae579604723d51b6361c4cd696a821` |
| 2 | `def` | [isForbiddenParent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant03147465470bd54e3fdd8b8b7834216af55e3199a2dfaa31fca83d7af4e57440.lean/declarations/isforbiddenparent--bcacc0e2cf0ef4c78cbeb28f.md) | 40 | `declaration-track:bcacc0e2cf0ef4c78cbeb28ffaec3569c7df112fd8e84f5aedc2df21f9e3e725` |
| 3 | `def` | [markVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant03147465470bd54e3fdd8b8b7834216af55e3199a2dfaa31fca83d7af4e57440.lean/declarations/markvars--3ce57b1d7893edd28ffacefe.md) | 56 | `declaration-track:3ce57b1d7893edd28ffacefeea0fb47432c00afb8d6efde1b317b94d2143f67d` |
| 4 | `def` | [internalize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant03147465470bd54e3fdd8b8b7834216af55e3199a2dfaa31fca83d7af4e57440.lean/declarations/internalize--280903e419b49123c50ec310.md) | 92 | `declaration-track:280903e419b49123c50ec3105164300ab7d9e033d151c7ef2c4b27e780bacb6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
