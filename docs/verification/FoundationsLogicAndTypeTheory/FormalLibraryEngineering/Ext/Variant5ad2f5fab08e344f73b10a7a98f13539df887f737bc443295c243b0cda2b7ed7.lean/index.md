# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "526ed04905f730e568144cbf0043f439a6d86651",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `526ed04905f730e568144cbf0043f439a6d86651`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Ext` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.RCases` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Elab.Command` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Linter.Init` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withExtHyps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean/declarations/withexthyps--57db09d91d6ada83c1377065.md) | 40 | `declaration-track:57db09d91d6ada83c137706514b74f4be0774870c76d3dbd6a0eee69465f5053` |
| 2 | `def` | [mkExtType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean/declarations/mkexttype--8099547df5e0e18fe4e26476.md) | 65 | `declaration-track:8099547df5e0e18fe4e264760e04616e7e3e04ef30a5441e10a77dd8512e6c3a` |
| 3 | `def` | [mkExtIffType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean/declarations/mkextifftype--da6988674984777e06df7967.md) | 73 | `declaration-track:da6988674984777e06df79674b20b241b6aa90bae8777ee7d437fd2a454ee922` |
| 4 | `def` | [realizeExtTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean/declarations/realizeexttheorem--dddaf5648708e5c6447f9ea3.md) | 104 | `declaration-track:dddaf5648708e5c6447f9ea3d451cf6a81773e714485dd2c0249e926e2b2a8d4` |
| 5 | `def` | [realizeExtIffTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean/declarations/realizeextifftheorem--21c7a0643fb10c226b9655ed.md) | 139 | `declaration-track:21c7a0643fb10c226b9655ed871dc5ff0f63e958b2681a0b0acce4c2328cc752` |
| 6 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean/declarations/builtin-initialize--e486a788af83ecbdf8db41c4.md) | 180 | `declaration-track:e486a788af83ecbdf8db41c4244ceff72dfa3d65af6de3acfd8a94f241d09149` |
| 7 | `def` | [applyExtTheoremAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean/declarations/applyexttheoremat--990de0e74742128f4ef590e0.md) | 220 | `declaration-track:990de0e74742128f4ef590e0f25a61273c0de3d649eb052472510f7fbe64afbd` |
| 8 | `def` | [evalApplyExtTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean/declarations/evalapplyexttheorem--127c639250c7d7d2f66f00a2.md) | 245 | `declaration-track:127c639250c7d7d2f66f00a289d1e0a60b9adad1abcd8d3da6278a200c087e00` |
| 9 | `def` | [tryIntros](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean/declarations/tryintros--e2113fde89d4b45354fa94e2.md) | 252 | `declaration-track:e2113fde89d4b45354fa94e27556ae5edb86adef01616cdce35d3eb722d57772` |
| 10 | `def` | [withExt1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean/declarations/withext1--2571052b72cf568100b8a1d3.md) | 268 | `declaration-track:2571052b72cf568100b8a1d3c9bf82a6f41483e956727e995290481c3731abe5` |
| 11 | `def` | [withExtN](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean/declarations/withextn--509b60cf7bf20166c7d26716.md) | 279 | `declaration-track:509b60cf7bf20166c7d267165bfd32c8eb13b86dfc71777b3cd80062867abcc8` |
| 12 | `def` | [extCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean/declarations/extcore--8839d2384bc5b7196585a62d.md) | 299 | `declaration-track:8839d2384bc5b7196585a62d592a9e689c2591753addab7410098b1a4d92178c` |
| 13 | `def` | [evalExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean/declarations/evalext--04272c3648e29f60981752f8.md) | 305 | `declaration-track:04272c3648e29f60981752f8582eb5cc41f43a5dc70ed162b5462377075de302` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
