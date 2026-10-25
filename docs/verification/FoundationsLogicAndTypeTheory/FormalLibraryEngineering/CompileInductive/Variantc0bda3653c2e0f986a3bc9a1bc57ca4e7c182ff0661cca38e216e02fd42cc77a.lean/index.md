# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompileInductive.Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd2005a6a3f391e292db70e4cb9a5ffa32e6df60",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd2005a6a3f391e292db70e4cb9a5ffa32e6df60`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Command` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Compiler.CSimpAttr` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Util.FoldConsts` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Data.AssocList` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [replaceConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/declarations/replaceconst--95e0a33a5ad03394600f6b11.md) | 30 | `declaration-track:95e0a33a5ad03394600f6b11a4893a3f2961eec25493ee2f289184b68d801a34` |
| 2 | `def` | [mkRecNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/declarations/mkrecnames--365eca8bba67df8decda2092.md) | 35 | `declaration-track:365eca8bba67df8decda2092483e36a1507eb411da17086583d31f4b452ac886` |
| 3 | `def` | [addAndCompile'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/declarations/addandcompile--00e59625058f0367e301aaa1.md) | 43 | `declaration-track:00e59625058f0367e301aaa17f17e7a2345cba65c6080031faad0b01c7e04dd9` |
| 4 | `def` | [compileDefn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/declarations/compiledefn--78c08761d0787ed71fe482c4.md) | 55 | `declaration-track:78c08761d0787ed71fe482c47c3ddaecc4c74b6c2a98184836ce8403d4b04e18` |
| 5 | `def` | [isCompiled](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/declarations/iscompiled--98e7098740b0a1d220f6efdd.md) | 78 | `declaration-track:98e7098740b0a1d220f6efdd728bb2791134d12234c2e45e225ef2b291ee352a` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/declarations/elab--4e4f46d8e9438f9a3d956401.md) | 89 | `declaration-track:4e4f46d8e9438f9a3d9564015c32ed3619d8ccc30672101c4fbfe12722ec4a97` |
| 7 | `def` | [compileStructOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/declarations/compilestructonly--2cf321299f62860d2c003053.md) | 97 | `declaration-track:2cf321299f62860d2c0030530e7153fdacbd2df37d495294f6ebef6c461f1c33` |
| 8 | `def` | [compileInductiveOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/declarations/compileinductiveonly--d9b5e9ddf02b4691fa797c18.md) | 130 | `declaration-track:d9b5e9ddf02b4691fa797c18c3f12564758f299eee4d965f96226842454c6637` |
| 9 | `def` | [compileInductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/declarations/compileinductive--a0183d5a9dbe2b1e9f9cdd1c.md) | 195 | `declaration-track:a0183d5a9dbe2b1e9f9cdd1c730528635461cac6a0a78fbb0700ca7111593b48` |
| 10 | `def` | [compileSizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/declarations/compilesizeof--14a61314d34ec29472e07807.md) | 203 | `declaration-track:14a61314d34ec29472e07807690ff932b6cd3984856ab48b647e9d503e85dddf` |
| 11 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/declarations/elab--52fcb4d7c316196af6fcb19a.md) | 226 | `declaration-track:52fcb4d7c316196af6fcb19a39390dfb1afdaa049b8b0c223badb46f22484579` |
| 12 | `def` | [Float.valUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/declarations/float-valunsafe--a1af278c6645bbbefbdf48dc.md) | 253 | `declaration-track:a1af278c6645bbbefbdf48dce7a9896bbd58c422011dbdba6ae14d3b6a73c2ed` |
| 13 | `def` | [Float.mkUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/declarations/float-mkunsafe--d5548c62d64582645d4797f6.md) | 254 | `declaration-track:d5548c62d64582645d4797f68a088fe045ccb928fde3c2d2f3ee8426122f848d` |
| 14 | `def` | [Float.valImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/declarations/float-valimpl--f4d4a38e41c1cad44028c658.md) | 255 | `declaration-track:f4d4a38e41c1cad44028c658c818fc995092566b28675164793620a42ed88ceb` |
| 15 | `def` | [Float.mkImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/declarations/float-mkimpl--91aea00624e39971f5e97531.md) | 256 | `declaration-track:91aea00624e39971f5e97531845f5500d258534c79fa7e5cbf01b756dd7d0cf2` |
| 16 | `theorem` | [Float.val_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/declarations/float-val-eq--7ea6864e863b6c02ce42e980.md) | 257 | `result-track:7ea6864e863b6c02ce42e98039b83afaa6c07b19af839b7dfb95dc33ff55939b` |
| 17 | `theorem` | [Float.mk_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/declarations/float-mk-eq--824973b9f3053f75fe0f1179.md) | 258 | `result-track:824973b9f3053f75fe0f1179c00709c66db2e5ee99008b969238a41275b654be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
