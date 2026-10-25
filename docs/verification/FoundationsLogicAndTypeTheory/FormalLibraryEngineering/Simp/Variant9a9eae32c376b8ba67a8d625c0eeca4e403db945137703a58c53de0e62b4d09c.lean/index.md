# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variant9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "309563b89dc22a2ec2eddc4a4dede051ec96297b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `309563b89dc22a2ec2eddc4a4dede051ec96297b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Util` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.MatchDiscrOnly` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.MarkNestedSubsingletons` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Util` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [simpCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c.lean/declarations/simpcore--9aeb5721d5df671d1ea26461.md) | 19 | `declaration-track:9aeb5721d5df671d1ea264617486eb33791b3234cf480c0543d1c72281ba3dba` |
| 2 | `def` | [dsimpCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c.lean/declarations/dsimpcore--89f3d05f22cf3137627e0d80.md) | 38 | `declaration-track:89f3d05f22cf3137627e0d805fc8a0429f921f928af8a3412cab50bc88fcd0d9` |
| 3 | `def` | [preprocessImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c.lean/declarations/preprocessimpl--a85cc6353aeda92908004620.md) | 51 | `declaration-track:a85cc6353aeda92908004620cbf92043c24fcacc2650600efc28912b5236bc48` |
| 4 | `def` | [pushNewFact'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c.lean/declarations/pushnewfact--c4da6bcbdf4dab2837aa2624.md) | 79 | `declaration-track:c4da6bcbdf4dab2837aa2624ec8346df3e1c985811ae9f65788d0708aa5d6f7b` |
| 5 | `def` | [pushNewFact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c.lean/declarations/pushnewfact--81b5134ef138a6dbfd4e0c36.md) | 91 | `declaration-track:81b5134ef138a6dbfd4e0c3600322c7997b4345e1f769bbce1cb7d40df7cd998` |
| 6 | `def` | [preprocessLight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c.lean/declarations/preprocesslight--43b6f609e87cb526de23566b.md) | 100 | `declaration-track:43b6f609e87cb526de23566b62cdab3de04c7c4e95b41cbf1df4e99868af269c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
