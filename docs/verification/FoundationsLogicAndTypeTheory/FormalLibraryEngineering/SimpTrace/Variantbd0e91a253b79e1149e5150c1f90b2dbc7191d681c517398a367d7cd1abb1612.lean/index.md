# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpTrace.Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd937a125122f89a377d70b4dc51ea1f62a80535",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd937a125122f89a377d70b4dc51ea1f62a80535`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.ElabRules` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Simp` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Lean.Parser` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Tactic.TryThis` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean/declarations/syntax--66d7ecf2cdb6da71104d8627.md) | 28 | `declaration-track:66d7ecf2cdb6da71104d8627a775b82cf923f164dfcefe0a5b1c57e2a0635af0` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean/declarations/syntax--14f46bc654bb09e77f0aa9d5.md) | 41 | `declaration-track:14f46bc654bb09e77f0aa9d5edc156872c3d681dd689fd70196e97e6d35a63c3` |
| 3 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean/declarations/macro--e951562cd68777475e8eff01.md) | 44 | `declaration-track:e951562cd68777475e8eff01bbb022ad870c42e590c38fbe9d18464c06fe42fa` |
| 4 | `def` | [mkSimpCallStx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean/declarations/mksimpcallstx--8bb694654bce216edfc7fda7.md) | 49 | `declaration-track:8bb694654bce216edfc7fda7c10a8493da5aa72765857e6de8ce1effcb213a70` |
| 5 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean/declarations/elab-rules--5d5759abe45fac17fa3250eb.md) | 86 | `declaration-track:5d5759abe45fac17fa3250ebcc49bca5fa89708e8db7d7fcbe068e2e3d9e867a` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean/declarations/syntax--c1ce0e329c40fff837f0fa86.md) | 100 | `declaration-track:c1ce0e329c40fff837f0fa868ac61aeffce5b720d202555b02c1861946947a3a` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean/declarations/syntax--b754dfdeb44d3357f9f40073.md) | 103 | `declaration-track:b754dfdeb44d3357f9f40073639cb90745189add24281b8dacb36a0ba0a7bdea` |
| 8 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean/declarations/macro--c24f3d8d6068a8a2b10e36b8.md) | 106 | `declaration-track:c24f3d8d6068a8a2b10e36b82bd72c00cd01efb1fec3bb9d1a1a3e557ca886cb` |
| 9 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean/declarations/elab-rules--43b9aa5d2fc789416a66b85c.md) | 108 | `declaration-track:43b9aa5d2fc789416a66b85c2c40275d65cddcfea280c4b5fdb9e4f96e0811fd` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean/declarations/syntax--28e4b4e6d0d224860b306672.md) | 124 | `declaration-track:28e4b4e6d0d224860b3066726a87fd4f58064905c4e8cb1f2558b5de8e9df608` |
| 11 | `def` | [dsimpLocation'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean/declarations/dsimplocation--d0523cee3e150d980ca16b6a.md) | 128 | `declaration-track:d0523cee3e150d980ca16b6a37be38097a8c9fbf11c89bdd04d8f662fe14ef6c` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean/declarations/syntax--c0add05e8471eb24980585d3.md) | 149 | `declaration-track:c0add05e8471eb24980585d323a929d101acffe3aa2cd072cc389b0cd3efd919` |
| 13 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean/declarations/macro--5d50fc4c03c58685115471a2.md) | 152 | `declaration-track:5d50fc4c03c58685115471a269ba18e968ee21893546a448f351395600a5255b` |
| 14 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean/declarations/elab-rules--468f2bad08bece7f83d79208.md) | 154 | `declaration-track:468f2bad08bece7f83d79208dd4b867ed2f2e661c9ef652e020a68bc38b057a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
