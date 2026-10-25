# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElimInfo.Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc22ec5dd0315225ce106d3c8c1185aa21b327a1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc22ec5dd0315225ce106d3c8c1185aa21b327a1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Iterators` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ElimAltInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/declarations/elimaltinfo--92dbca9508129ed527478a8c.md) | 16 | `declaration-track:92dbca9508129ed527478a8c88c80d40a04ef851f8dd44bebc1bc80f6b3e73ec` |
| 2 | `structure` | [ElimInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/declarations/eliminfo--a8c629b1e567398320a7f01b.md) | 35 | `declaration-track:a8c629b1e567398320a7f01bec7790c9d4ec2af9dbd77f53779bbcde46cb994e` |
| 3 | `def` | [altArity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/declarations/altarity--9c431ba663593a407d5143d6.md) | 51 | `declaration-track:9c431ba663593a407d5143d6598d73b89dc0c1b37f060c11c9b88a4024a569cd` |
| 4 | `def` | [getElimExprInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/declarations/getelimexprinfo--3598baff82d7a83d3f4738a7.md) | 57 | `declaration-track:3598baff82d7a83d3f4738a7007b358344d500da5664413bf14f3d566db4b106` |
| 5 | `def` | [getElimInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/declarations/geteliminfo--295d733cfc6de6922356c340.md) | 93 | `declaration-track:295d733cfc6de6922356c34060cd532ce58dee3b57bbd3f38c45565e57155f92` |
| 6 | `def` | [addImplicitTargets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/declarations/addimplicittargets--9487cf8ec5b0df2a02be1e36.md) | 101 | `declaration-track:9487cf8ec5b0df2a02be1e3684aa3a85a37ed4587bf755870d1a39acefba60a4` |
| 7 | `structure` | [CustomEliminator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/declarations/customeliminator--e5b4a224ca701e68c9ee00c9.md) | 135 | `declaration-track:e5b4a224ca701e68c9ee00c96844b85749ca6c39f9c515f0730b3acd69bd5a16` |
| 8 | `structure` | [CustomEliminators](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/declarations/customeliminators--2aeb4937a0e01306fad9cddd.md) | 141 | `declaration-track:2aeb4937a0e01306fad9cdddb2ed33c15c97cfa22068955f7b0e4903063dc9ca` |
| 9 | `def` | [addCustomEliminatorEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/declarations/addcustomeliminatorentry--72ede9f49618b60ffce4d722.md) | 145 | `declaration-track:72ede9f49618b60ffce4d722e2309d5c3c693c90714d4b055fe8eb3b68b63af3` |
| 10 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/declarations/builtin-initialize--012248d29f19bafb14d317ae.md) | 149 | `declaration-track:012248d29f19bafb14d317ae9b94f60267a8b93f06cc302e9d7b9f94eda7ee47` |
| 11 | `def` | [mkCustomEliminator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/declarations/mkcustomeliminator--eecae351f9a88d6ef5a095eb.md) | 156 | `declaration-track:eecae351f9a88d6ef5a095eb99955ce58ca2b4d6622759176eace21d3d499381` |
| 12 | `def` | [addCustomEliminator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/declarations/addcustomeliminator--f6b5f5516328448479691d04.md) | 180 | `declaration-track:f6b5f5516328448479691d04f1c3fd9ae23c559b70d3a49a2106f7ecc5949679` |
| 13 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/declarations/builtin-initialize--11be4641a5f80f67c5b0255c.md) | 216 | `declaration-track:11be4641a5f80f67c5b0255cd7b0a83bb2cce9c533636b619f6ab00358848eba` |
| 14 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/declarations/builtin-initialize--efaa4e407daad0a7baf8e51c.md) | 256 | `declaration-track:efaa4e407daad0a7baf8e51c99a5d05832346ba8b02948844533b2e692023061` |
| 15 | `def` | [getCustomEliminators](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/declarations/getcustomeliminators--99dd572d4bd324c763397132.md) | 265 | `declaration-track:99dd572d4bd324c763397132b658a54d25b6996982ef10ff20153629c90f62bd` |
| 16 | `def` | [getCustomEliminator?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/declarations/getcustomeliminator--fd60c2f47a4ec97202f1fb4e.md) | 276 | `declaration-track:fd60c2f47a4ec97202f1fb4e7d07794125e9f6974a263db5ccc29ace5e36383d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
