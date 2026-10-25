# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eqns.Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "498ee9750402d57814612132b4831f26b0c11082",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `498ee9750402d57814612132b4831f26b0c11082`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.PreDefinition.EqnsUtils` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.CasesOnStuckLHS` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Delta` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Main` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Delta` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.CasesOnStuckLHS` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Split` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EqnInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean/declarations/eqninfo--41ca68947822eed860cb5f28.md) | 32 | `declaration-track:41ca68947822eed860cb5f28bd3139d49b5fa89728675ba0a92025f9d8f999d3` |
| 2 | `def` | [findBRecOnLHS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean/declarations/findbreconlhs--6f4ef35d45253ab7d59a5190.md) | 47 | `declaration-track:6f4ef35d45253ab7d59a5190479fc6a98bff8a66b4350c31a9dc04e70b9217bb` |
| 3 | `def` | [deltaRHS?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean/declarations/deltarhs--1d247e8cfc0d223eff1e4187.md) | 65 | `declaration-track:1d247e8cfc0d223eff1e41878ad7ba3a2ee72dc9a43595ae9e11808ee7909aea` |
| 4 | `def` | [mkProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean/declarations/mkproof--634b5e00926782cd80fc1f73.md) | 83 | `declaration-track:634b5e00926782cd80fc1f7381c2a4e25297528f75472e68b233d78e892aa8a6` |
| 5 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean/declarations/builtin-initialize--e98acc69f9d16e33f8274360.md) | 158 | `declaration-track:e98acc69f9d16e33f827436045f047bc9ed4d362340bf1014e32eab8c6345e1c` |
| 6 | `def` | [registerEqnsInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean/declarations/registereqnsinfo--4ef7e2e4f25eede92bec9282.md) | 165 | `declaration-track:4ef7e2e4f25eede92bec9282110754c8d873bdafb0172a6908c5eeec6f45a60f` |
| 7 | `def` | [mkUnfoldEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean/declarations/mkunfoldeq--6be1586d87714a98b38b2142.md) | 172 | `declaration-track:6be1586d87714a98b38b2142ba4a257bfcf61383e24a47867946ff9ba1001ccb` |
| 8 | `def` | [getUnfoldFor?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean/declarations/getunfoldfor--eaaa497ac2b3ee3651b2dfb7.md) | 191 | `declaration-track:eaaa497ac2b3ee3651b2dfb7b696aa96c3ecf4c80bd9541f6be54eff43718acb` |
| 9 | `def` | [getStructuralRecArgPosImp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean/declarations/getstructuralrecargposimp--9f4fb2a7cbc04eb3df632553.md) | 199 | `declaration-track:9f4fb2a7cbc04eb3df632553bb29ebe7813f2dec74b16b79d5f06f541c808c9a` |
| 10 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean/declarations/builtin-initialize--9cb3b7c6575f8b0e28831da2.md) | 204 | `declaration-track:9cb3b7c6575f8b0e28831da27e461eb42605c1154e6d1795b87f379cb1d32691` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
