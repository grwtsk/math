# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompileInductive.Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7219c3020bbb5f5e629c95c4c29d661151a20a76",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7219c3020bbb5f5e629c95c4c29d661151a20a76`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Command` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Compiler.CSimpAttr` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Util.FoldConsts` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Data.AssocList` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [replaceConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/declarations/replaceconst--187def951c9733cfcb3c79be.md) | 38 | `declaration-track:187def951c9733cfcb3c79be1105c8116b4ffdfbc18b4417888de2decb008201` |
| 2 | `def` | [mkRecNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/declarations/mkrecnames--0c42ade811175ea800d1fe83.md) | 43 | `declaration-track:0c42ade811175ea800d1fe83d8516150aa14cd3edc07314111f0d8120420671e` |
| 3 | `def` | [addAndCompile'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/declarations/addandcompile--9ad5f0424b844d2803ed85b0.md) | 51 | `declaration-track:9ad5f0424b844d2803ed85b0ae1ac8c4e76c6a91cad4f57542acc4b646e391d2` |
| 4 | `def` | [compileDefn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/declarations/compiledefn--423eb82ac296f2f0331e5853.md) | 63 | `declaration-track:423eb82ac296f2f0331e58539e4ece16b05a23cabb31544b8791a61ec1a68dbb` |
| 5 | `def` | [isCompiled](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/declarations/iscompiled--9f8e637175204bb2d867ff30.md) | 86 | `declaration-track:9f8e637175204bb2d867ff30456bbdb41507acfdf810ce7738161fe8d3a62e86` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/declarations/elab--463bede41971095ff36ae9f2.md) | 97 | `declaration-track:463bede41971095ff36ae9f21a58b6479b581f207cca4143ee0098b27230b5a4` |
| 7 | `def` | [compileStructOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/declarations/compilestructonly--0b5ff3bb05ea549a3496b3c4.md) | 105 | `declaration-track:0b5ff3bb05ea549a3496b3c4238667f2837bab682b1ac3137497bdb4e23b24c8` |
| 8 | `def` | [compileInductiveOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/declarations/compileinductiveonly--98f7b9d9b9e5b6875ba7e5d1.md) | 138 | `declaration-track:98f7b9d9b9e5b6875ba7e5d1568bf706835f82fecfc875f319dabb6d64810303` |
| 9 | `def` | [compileInductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/declarations/compileinductive--98316841cb983706102f780a.md) | 203 | `declaration-track:98316841cb983706102f780ae6e4c337496e44841bf8c56fa7866bfb7c625194` |
| 10 | `def` | [compileSizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/declarations/compilesizeof--5b673452ccfb86cee39248db.md) | 211 | `declaration-track:5b673452ccfb86cee39248db11a2d565cc0f0a8a7c98850173fa99c367a17c85` |
| 11 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/declarations/elab--725c5651f519f4881e55de46.md) | 234 | `declaration-track:725c5651f519f4881e55de46e1d7827b903b721183813bff7147987f814f4891` |
| 12 | `def` | [Float.valUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/declarations/float-valunsafe--e79bc7037ece5caa431dbaab.md) | 261 | `declaration-track:e79bc7037ece5caa431dbaab1e2b533fcd6f830a7f651a8cd582bff291db35f5` |
| 13 | `def` | [Float.mkUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/declarations/float-mkunsafe--53e074b92091beeb6b71234e.md) | 262 | `declaration-track:53e074b92091beeb6b71234e57e9618541c76c944c8077a55b31227f4d84f4f0` |
| 14 | `def` | [Float.valImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/declarations/float-valimpl--2524f2756c585cac8c278fa3.md) | 263 | `declaration-track:2524f2756c585cac8c278fa326a962b3e3f381d28a2236dd03f29f2a4341c70c` |
| 15 | `def` | [Float.mkImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/declarations/float-mkimpl--28e7338c89cd69ca9510b3d5.md) | 264 | `declaration-track:28e7338c89cd69ca9510b3d517a7dbd897478647f927d66273abd3878687be7b` |
| 16 | `theorem` | [Float.val_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/declarations/float-val-eq--59c2a97ec4a7cf6b82b4093e.md) | 265 | `result-track:59c2a97ec4a7cf6b82b4093e5430557221d42399a1fbeafd5b1ebad0421e8fe1` |
| 17 | `theorem` | [Float.mk_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/declarations/float-mk-eq--22de09e0402ca1f4cab72b7f.md) | 266 | `result-track:22de09e0402ca1f4cab72b7fbdad41e449428482facfd1a583c2600099465d06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
