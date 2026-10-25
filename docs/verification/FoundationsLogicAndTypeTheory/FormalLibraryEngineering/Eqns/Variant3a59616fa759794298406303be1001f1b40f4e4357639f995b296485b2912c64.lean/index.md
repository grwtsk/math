# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eqns.Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbb0c35cb5e67f6cfc202167fc9ee17aab4d2be3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbb0c35cb5e67f6cfc202167fc9ee17aab4d2be3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.PreDefinition.EqnsUtils` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.CasesOnStuckLHS` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Delta` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Main` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Delta` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.CasesOnStuckLHS` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Split` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EqnInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean/declarations/eqninfo--9768f4c2372022e8ef142ba1.md) | 24 | `declaration-track:9768f4c2372022e8ef142ba129eec55fce68554701dd3a0a48f1c88724f9b32e` |
| 2 | `def` | [findBRecOnLHS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean/declarations/findbreconlhs--b24f149ca9e1cb13e769b754.md) | 39 | `declaration-track:b24f149ca9e1cb13e769b754e24fb380028c7ea286d95805fb07760d025c79ad` |
| 3 | `def` | [deltaRHS?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean/declarations/deltarhs--6305828288af6a8aac1d7502.md) | 57 | `declaration-track:6305828288af6a8aac1d75023cc30ab6b788ede4ec0894943e3fab2a541db610` |
| 4 | `def` | [mkProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean/declarations/mkproof--a62a36b440ce9d9236618893.md) | 75 | `declaration-track:a62a36b440ce9d92366188930fc329850b06a84698f58014b82eb17a2c9cf509` |
| 5 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean/declarations/builtin-initialize--3f4fc4b7a7251f28b9971457.md) | 150 | `declaration-track:3f4fc4b7a7251f28b9971457691a9b2d6bc8dae713f6a68c2309f4c5f5fcf08a` |
| 6 | `def` | [registerEqnsInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean/declarations/registereqnsinfo--0cb06f2b916dbc3ab268fe14.md) | 157 | `declaration-track:0cb06f2b916dbc3ab268fe14e41e5032c1fd9ff934da589e0b709c2ec8516713` |
| 7 | `def` | [mkUnfoldEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean/declarations/mkunfoldeq--b913f730bee11fd6742b1f5d.md) | 164 | `declaration-track:b913f730bee11fd6742b1f5dc536ae2c5d970b845c5f693e46987d263ed6bd5c` |
| 8 | `def` | [getUnfoldFor?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean/declarations/getunfoldfor--7f171612a794144b609b39a6.md) | 183 | `declaration-track:7f171612a794144b609b39a690719620a8985f2ec95283c5d68bfac52c283f73` |
| 9 | `def` | [getStructuralRecArgPosImp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean/declarations/getstructuralrecargposimp--a4d27b3334501ca7fd798008.md) | 191 | `declaration-track:a4d27b3334501ca7fd798008936cdc161ebca88bc3c400042c722c64c1bc801b` |
| 10 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean/declarations/builtin-initialize--fe511a5974d89eb7281892b4.md) | 196 | `declaration-track:fe511a5974d89eb7281892b4697c40ee8a4389217389f067c049837ec052c7d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
