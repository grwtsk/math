# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtractClosed.Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9ec0a623f726f43f411ec78b8698507a8ef4bc5",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9ec0a623f726f43f411ec78b8698507a8ef4bc5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.LCNF.ElimDead` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.DependsOn` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ExtractM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/declarations/extractm--af72d08bb1c81fa678d3589e.md) | 30 | `declaration-track:af72d08bb1c81fa678d3589e179453c99106cbde5558378b51458f56aebb4346` |
| 2 | `def` | [extractLetValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/declarations/extractletvalue--eb9f646807739c08b7661ca0.md) | 34 | `declaration-track:eb9f646807739c08b7661ca09c8d4fbdd0871d3a2fd7f5ac254be415d9269aae` |
| 3 | `def` | [extractArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/declarations/extractarg--455eca7b287545258c5c5e92.md) | 43 | `declaration-track:455eca7b287545258c5c5e92c317e0b8c3d0bfcb4229ccd766c2151b0a37abe9` |
| 4 | `def` | [extractFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/declarations/extractfvar--82bc63de1eb29beb7a829fa7.md) | 48 | `declaration-track:82bc63de1eb29beb7a829fa7b92ff38e945a06b29a4aff2fa0fb06194441ed81` |
| 5 | `def` | [isIrrelevantArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/declarations/isirrelevantarg--40d60138e3d1205b395c9ded.md) | 55 | `declaration-track:40d60138e3d1205b395c9dedfdb3cbb66fb3588d2eb2570bc8d0238b3e2dc951` |
| 6 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/declarations/context--322f0bbf8fad63599f0f6755.md) | 60 | `declaration-track:322f0bbf8fad63599f0f675552637424fb1bab1e7ca4aad56344a817c081c5fc` |
| 7 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/declarations/state--036f1b8d7c96e968e46df5b6.md) | 64 | `declaration-track:036f1b8d7c96e968e46df5b690c5701e9557b99c5e2eae4d504bc883a56c8137` |
| 8 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/declarations/m--e0084c1a8c84b9f56d8ff1a6.md) | 71 | `declaration-track:e0084c1a8c84b9f56d8ff1a62ddc12e83c43b224f81a8a5c9757d091951ab6b7` |
| 9 | `def` | [shouldExtractLetValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/declarations/shouldextractletvalue--a0f15d522a2bb3bed1129769.md) | 75 | `declaration-track:a0f15d522a2bb3bed1129769e6dfa2d7e4bef92f6b6e6e653cd12ff84c6c7043` |
| 10 | `def` | [shouldExtractArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/declarations/shouldextractarg--c274f6fa753f258c6626ab11.md) | 104 | `declaration-track:c274f6fa753f258c6626ab11287a3674b3e715e88add42416d0edb8cbaf1a5f8` |
| 11 | `def` | [shouldExtractFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/declarations/shouldextractfvar--7b207f711db88b005f95b18a.md) | 109 | `declaration-track:7b207f711db88b005f95b18ac8d6a54dd78c3f83a8c53064200d6e0fda11c3b6` |
| 12 | `def` | [searchArrayLiteral](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/declarations/searcharrayliteral--971e9669fe83c2f54bcb9c9b.md) | 135 | `declaration-track:971e9669fe83c2f54bcb9c9b7b3d7a90a9fb6cec3e7ba17385a0a81b1f8bc1a4` |
| 13 | `def` | [visitCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/declarations/visitcode--c62880879d0544ec0fe79b1a.md) | 176 | `declaration-track:c62880879d0544ec0fe79b1ac4f5e8b19cfd51555b7620195276ed908fa1fe12` |
| 14 | `def` | [visitDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/declarations/visitdecl--3df76e2a92bddbc423c2ecf0.md) | 246 | `declaration-track:3df76e2a92bddbc423c2ecf0ab4b1b7b5f8478e172b522a3b8cbeff16767d3eb` |
| 15 | `def` | [Decl.extractClosed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/declarations/decl-extractclosed--bc995a8430b8f347326c67fb.md) | 252 | `declaration-track:bc995a8430b8f347326c67fb8ee01c28c8d13a074528ffc3bcea709eba9a1794` |
| 16 | `def` | [extractClosed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/declarations/extractclosed--d23eab9ce620a14048e98f3f.md) | 260 | `declaration-track:d23eab9ce620a14048e98f3ff8437c2acabbe5de9b4afb0590d4561aa945bffd` |
| 17 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/declarations/builtin-initialize--9aa197d26b47f4ffc4e999a0.md) | 270 | `declaration-track:9aa197d26b47f4ffc4e999a05ed4f02d71b5ca9143afaf6540b36562757dd38b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
