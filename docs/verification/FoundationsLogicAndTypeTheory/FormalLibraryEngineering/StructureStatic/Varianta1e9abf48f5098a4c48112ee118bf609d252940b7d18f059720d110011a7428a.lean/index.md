# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StructureStatic.Varianta1e9abf48f5098a4c48112ee118bf609d252940b7d18f059720d110011a7428a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "525ac86ebc47a41e16014bdde1c29e93db685f95",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureStatic/Varianta1e9abf48f5098a4c48112ee118bf609d252940b7d18f059720d110011a7428a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureStatic/Varianta1e9abf48f5098a4c48112ee118bf609d252940b7d18f059720d110011a7428a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureStatic/Varianta1e9abf48f5098a4c48112ee118bf609d252940b7d18f059720d110011a7428a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `525ac86ebc47a41e16014bdde1c29e93db685f95`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureStatic/Varianta1e9abf48f5098a4c48112ee118bf609d252940b7d18f059720d110011a7428a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureStatic/Varianta1e9abf48f5098a4c48112ee118bf609d252940b7d18f059720d110011a7428a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop.Script.UScriptToSScript` — import line 10; external provider; requires a separately pinned dependency.
- `Aesop.Script.Util` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureStatic/Varianta1e9abf48f5098a4c48112ee118bf609d252940b7d18f059720d110011a7428a.lean/declarations/state--84b850bae148413bb17c092b.md) | 24 | `declaration-track:84b850bae148413bb17c092b3cefe7f622fd9705831837021e2e8a30ba73e328` |
| 2 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureStatic/Varianta1e9abf48f5098a4c48112ee118bf609d252940b7d18f059720d110011a7428a.lean/declarations/context--4b829331811201f11c0361dc.md) | 27 | `declaration-track:4b829331811201f11c0361dcc0750732763de7c7b1af24c0510f132c65066983` |
| 3 | `abbrev` | [StaticStructureM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureStatic/Varianta1e9abf48f5098a4c48112ee118bf609d252940b7d18f059720d110011a7428a.lean/declarations/staticstructurem--1e07d88f768b954e4465a8ed.md) | 32 | `declaration-track:1e07d88f768b954e4465a8edd5f359a7e3109d2188032a901f9601e878ecf146` |
| 4 | `def` | [StaticStructureM.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureStatic/Varianta1e9abf48f5098a4c48112ee118bf609d252940b7d18f059720d110011a7428a.lean/declarations/staticstructurem-run--390fc06cad2a25b57b6721af.md) | 35 | `declaration-track:390fc06cad2a25b57b6721afe036685a52efcb7a11ae5d0ba4a23f77040c3aa2` |
| 5 | `def` | [structureStaticCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureStatic/Varianta1e9abf48f5098a4c48112ee118bf609d252940b7d18f059720d110011a7428a.lean/declarations/structurestaticcore--300753b2eb44bf936cebccab.md) | 47 | `declaration-track:300753b2eb44bf936cebccab93665ceb4cc4e6a77e2799afb57ef9ae1aeab43c` |
| 6 | `def` | [UScript.toSScriptStatic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureStatic/Varianta1e9abf48f5098a4c48112ee118bf609d252940b7d18f059720d110011a7428a.lean/declarations/uscript-tosscriptstatic--bf7a50b64173d4473314c4e7.md) | 80 | `declaration-track:bf7a50b64173d4473314c4e729496473ee285aea96ddb6a4653919011005be11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
