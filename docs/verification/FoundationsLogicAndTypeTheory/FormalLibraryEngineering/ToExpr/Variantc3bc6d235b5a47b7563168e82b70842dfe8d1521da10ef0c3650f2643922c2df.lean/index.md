# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToExpr.Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d73d5cc2ef8bf693ed8883a0f765bef7c10b609",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d73d5cc2ef8bf693ed8883a0f765bef7c10b609`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Deriving.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Util` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkAppNTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean/declarations/mkappnterm--ba0cad57d020d5e194ab443b.md) | 36 | `declaration-track:ba0cad57d020d5e194ab443b02bab48e6f14728fdaedc368c632356230b54abe` |
| 2 | `def` | [updateIndType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean/declarations/updateindtype--94e4072efe0c280958bf9265.md) | 40 | `declaration-track:94e4072efe0c280958bf9265b98fdc98008e56ea272febfd7e106732550e256a` |
| 3 | `def` | [mkToTypeExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean/declarations/mktotypeexpr--8a178c439e3f4565986f2d4e.md) | 50 | `declaration-track:8a178c439e3f4565986f2d4e3917b130da25810ca2be107f48c83a981cc4fdc9` |
| 4 | `def` | [mkToExprBody](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean/declarations/mktoexprbody--69a97f3980710e3e85c52dd2.md) | 68 | `declaration-track:69a97f3980710e3e85c52dd2bfb0811649472fea88cb8e793680d259d984cac1` |
| 5 | `def` | [mkLocalInstanceLetDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean/declarations/mklocalinstanceletdecls--a065ab7ff383f74e7cf8f5f9.md) | 119 | `declaration-track:a065ab7ff383f74e7cf8f5f98761797728bf71aa04dfbc249cfe8aaada85926c` |
| 6 | `def` | [mkAuxFunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean/declarations/mkauxfunction--9f3bca6c8671dd4261b3633c.md) | 146 | `declaration-track:9f3bca6c8671dd4261b3633c016ce4852672abccdc63502b2beffcc6f877aa9b` |
| 7 | `def` | [mkAuxFunctions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean/declarations/mkauxfunctions--d8f318385fda6a175df5042f.md) | 178 | `declaration-track:d8f318385fda6a175df5042f32ffe5f2d1a42a15acffce18c1f7e80f89e235e1` |
| 8 | `def` | [mkInstanceCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean/declarations/mkinstancecmds--992ad96dfc1f95b683b7071a.md) | 191 | `declaration-track:992ad96dfc1f95b683b7071ac4dff126f85cda813b5a61b3292a3182b0cec665` |
| 9 | `def` | [mkToExprInstanceCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean/declarations/mktoexprinstancecmds--509ca0e3a452944ad07c1e60.md) | 215 | `declaration-track:509ca0e3a452944ad07c1e604e63e9d17c9ab4c7fc7a9c12d14dde1e844dd5b3` |
| 10 | `def` | [mkToExprInstanceHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean/declarations/mktoexprinstancehandler--a3e907cfc36b9cb3f83cd64a.md) | 224 | `declaration-track:a3e907cfc36b9cb3f83cd64a37236776f6f920fe31bb28be6cb76984ba77fc0d` |
| 11 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean/declarations/builtin-initialize--160d4aae1ff275a0200acf6b.md) | 234 | `declaration-track:160d4aae1ff275a0200acf6bb5a43dac938aec41020cf419e123a63125a1df5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
