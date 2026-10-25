# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FVarUtil.Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56fe05fddfbcbbf81f8e08ce35b0696d4d2f88a9",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56fe05fddfbcbbf81f8e08ce35b0696d4d2f88a9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [TraverseFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/traversefvar--aa5c9909a6e9cc940a0413be.md) | 23 | `declaration-track:aa5c9909a6e9cc940a0413be8e3cae025b9c6278ab8638068f55105727e031d6` |
| 2 | `def` | [Expr.mapFVarM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/expr-mapfvarm--5ada654ca41bcfd1efa5ebeb.md) | 29 | `declaration-track:5ada654ca41bcfd1efa5ebeb8e1a444e6c270cadadea8bc41e4b8b42f24ac621` |
| 3 | `def` | [Expr.forFVarM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/expr-forfvarm--81c1b53374f8dfdcfc0b151d.md) | 42 | `declaration-track:81c1b53374f8dfdcfc0b151df3c62696eb34d41cf14f8dcba2a2a924cb1efa8c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/instance--48b7c2070b1ca32dd9572eba.md) | 61 | `declaration-track:48b7c2070b1ca32dd9572eba99e2057cb007ac1aaa1b192c631ad95bf92f2d18` |
| 5 | `def` | [Arg.mapFVarM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/arg-mapfvarm--1c9591f93ac67c99cac173f8.md) | 65 | `declaration-track:1c9591f93ac67c99cac173f850309f09ad8203d76204bcbe7974566d864bc9c7` |
| 6 | `def` | [Arg.forFVarM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/arg-forfvarm--c3ec476afb98c21022daa40d.md) | 71 | `declaration-track:c3ec476afb98c21022daa40d62145fda2b0a74e8c7fef89b98fa5a667c0d6353` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/instance--13fa80f16398bd5ffaf73d41.md) | 77 | `declaration-track:13fa80f16398bd5ffaf73d416c48add965517f86070e7312b7bc6c5ba50a7c89` |
| 8 | `def` | [LetValue.mapFVarM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/letvalue-mapfvarm--ad7583eb81d1cdbe9b4a69fd.md) | 81 | `declaration-track:ad7583eb81d1cdbe9b4a69fd107c45765461d08ce027c251f9e6f208cf9a1c6b` |
| 9 | `def` | [LetValue.forFVarM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/letvalue-forfvarm--7a9416e744091066338976f9.md) | 96 | `declaration-track:7a9416e744091066338976f92143dadde94bf7ed16a92d9d9d3c85a288f15790` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/instance--281a221d66fd4d68159a7c28.md) | 105 | `declaration-track:281a221d66fd4d68159a7c28420d526341da2e9b480065ac1845ac3802ae7e50` |
| 11 | `def` | [LetDecl.mapFVarM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/letdecl-mapfvarm--061753c7bb41703ac333d20e.md) | 109 | `declaration-track:061753c7bb41703ac333d20ed12e196f98b4dff3799e5b63f1baa65b61707adc` |
| 12 | `def` | [LetDecl.forFVarM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/letdecl-forfvarm--4981d9d8ac9e546092fa4e70.md) | 112 | `declaration-track:4981d9d8ac9e546092fa4e70bf8c5de367f7c16f66a0d1c5e0205a841476dffd` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/instance--6829d99626604af2001e9082.md) | 116 | `declaration-track:6829d99626604af2001e90820219c46b6df8c2358718cb953ab4af192c27773d` |
| 14 | `def` | [Param.mapFVarM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/param-mapfvarm--da4c997aaf6eb7cdc1564ba7.md) | 120 | `declaration-track:da4c997aaf6eb7cdc1564ba7ee1ce06cd69599891cee0a02f93d6d33b344d0e1` |
| 15 | `def` | [Param.forFVarM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/param-forfvarm--86f5fde63876c1e360dbd2ce.md) | 123 | `declaration-track:86f5fde63876c1e360dbd2ce90f64fffc57360bf19c39fb041cce075afb3e4ad` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/instance--5e64a64fafc50f961fce0b5e.md) | 126 | `declaration-track:5e64a64fafc50f961fce0b5ea4eb40ea69d3b36f115d45ca80b105a50b4db885` |
| 17 | `def` | [Code.mapFVarM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/code-mapfvarm--c24ead48487b607a46d3f7de.md) | 130 | `declaration-track:c24ead48487b607a46d3f7deb24e6d3f6aa102175adf0fc9ff06a3f143032dff` |
| 18 | `def` | [Code.forFVarM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/code-forfvarm--3dea808dba056db903eff667.md) | 166 | `declaration-track:3dea808dba056db903eff66710ec8fc6d1b470aa87b9ff9fd3887c88308778d4` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/instance--0254af8fec093cd000c217d9.md) | 209 | `declaration-track:0254af8fec093cd000c217d931cfd3124af32fcc2e86ab27dae78849f4658ba7` |
| 20 | `def` | [FunDecl.mapFVarM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/fundecl-mapfvarm--1e879d4c95fcc8c36f33524b.md) | 213 | `declaration-track:1e879d4c95fcc8c36f33524be176bb9407444b4c46ddedef1ab05ca9866a20b0` |
| 21 | `def` | [FunDecl.forFVarM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/fundecl-forfvarm--a558a196e703d243545fbd18.md) | 217 | `declaration-track:a558a196e703d243545fbd18c8da35f670dcb7fd2c820818a55d3cb1b552ed45` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/instance--dedebdef1a289884bf966882.md) | 222 | `declaration-track:dedebdef1a289884bf96688289332902dfa356ac6f5ad4a9384e6a602e3742c7` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/instance--efa9bdf18e73d1d2a98be81b.md) | 226 | `declaration-track:efa9bdf18e73d1d2a98be81b70b49973e7c3fde6eeb247277761483a1bdfc996` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/instance--2c2aa931023a5b78a87500b8.md) | 250 | `declaration-track:2c2aa931023a5b78a87500b874e3e0ac0b555ec7aae9a471d331c0e8ad84548e` |
| 25 | `def` | [anyFVarM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/anyfvarm--b2475eb085fda25a76bc0cf9.md) | 266 | `declaration-track:b2475eb085fda25a76bc0cf9d11e2cc36753688a59523b9cdb2a8c657f79ec4d` |
| 26 | `def` | [allFVarM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/allfvarm--09679382223b374ef80be5ef.md) | 272 | `declaration-track:09679382223b374ef80be5ef2afca3d58fbafa644eb6950cd159345b957491f6` |
| 27 | `def` | [anyFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/anyfvar--c11f8f6df70627b094d20eea.md) | 278 | `declaration-track:c11f8f6df70627b094d20eea46f4ae80edb38fbd60edfce09dcea74bc6f0c5a6` |
| 28 | `def` | [allFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/declarations/allfvar--1afa5776b72bc54a0c4e2e17.md) | 281 | `declaration-track:1afa5776b72bc54a0c4e2e1767e96c823c6b92a5720442e6b6fc18394f7006c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
