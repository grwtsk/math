# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SplitIf.Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6d48ef371e536bcfb63fdbce623bc73b9d88708",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6d48ef371e536bcfb63fdbce623bc73b9d88708`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Simp.Main` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SplitKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/splitkind--0b23bd2de9e92b194b5800ba.md) | 22 | `declaration-track:0b23bd2de9e92b194b5800ba6ba60ca6ea9f776f8532931f3dc0e247d4ebada5` |
| 2 | `def` | [SplitKind.considerIte](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/splitkind-considerite--c1e08950689cb2383461c7a4.md) | 25 | `declaration-track:c1e08950689cb2383461c7a4dd979660a94b07e98a1e23d79da3d8972df17a90` |
| 3 | `def` | [SplitKind.considerMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/splitkind-considermatch--310681412424e68ac8f9f41b.md) | 29 | `declaration-track:310681412424e68ac8f9f41b7650146b9e40837b24fe4d2db2e9df2098dff952` |
| 4 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/context--d01419cc658a2c7cf36421f9.md) | 35 | `declaration-track:d01419cc658a2c7cf36421f909c2b792f622cd4c259b6d28be514d70f8057630` |
| 5 | `abbrev` | [FindM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/findm--13ab86daee4ebc172c26f554.md) | 39 | `declaration-track:13ab86daee4ebc172c26f5544474fd22429dc804d2d4343322b3dcb2fd357a00` |
| 6 | `def` | [isCandidate?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/iscandidate--1aae069717e8768d23482c99.md) | 47 | `declaration-track:1aae069717e8768d23482c99e7f616454530bd5f85eb0502339c028d8b47eb74` |
| 7 | `def` | [checkVisited](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/checkvisited--489c614ac31b7984aa2beda2.md) | 64 | `declaration-track:489c614ac31b7984aa2beda2d6339d005e16f3ed17ba7bfb1c7bcd70a3c17769` |
| 8 | `def` | [visit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/visit--6277f7c5e78fd15e1d0f00b8.md) | 69 | `declaration-track:6277f7c5e78fd15e1d0f00b8c984facb12887980a9be0c0610d1bea016427741` |
| 9 | `def` | [findSplit?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/findsplit--de97e1982bc40a8dca9e0850.md) | 110 | `declaration-track:de97e1982bc40a8dca9e08507034aff569c0c214d4ad1d9b3e5d3dd683055e7d` |
| 10 | `def` | [findIfToSplit?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/findiftosplit--8ff8ffb8b77f8a5875f87c08.md) | 131 | `declaration-track:8ff8ffb8b77f8a5875f87c08965e819da32088ec7615fdb866b4489afff2720d` |
| 11 | `def` | [getSimpContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/getsimpcontext--edde4f7368bf1d61334b9adf.md) | 150 | `declaration-track:edde4f7368bf1d61334b9adfa1f75d66e1bd24dc54c981ede8ecd0039876262f` |
| 12 | `def` | [getSimpContext'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/getsimpcontext--ed0810490788704b01236d3a.md) | 164 | `declaration-track:ed0810490788704b01236d3a8b834965d9fd17597dcb47ed7de21f302af5a604` |
| 13 | `def` | [discharge?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/discharge--ef188464232aeda4b349ad29.md) | 182 | `declaration-track:ef188464232aeda4b349ad29577eaec3c540ca3f110d6aa34bb8638625041ae8` |
| 14 | `def` | [reduceIte'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/reduceite--65c881572b7cc8e8c03a4ae3.md) | 205 | `declaration-track:65c881572b7cc8e8c03a4ae3eb382d7a7efae30e323b4634a4bb2ea6a2702219` |
| 15 | `def` | [getBinderName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/getbindername--07a2d96a840c1c22c8a6ce45.md) | 227 | `declaration-track:07a2d96a840c1c22c8a6ce45b31191d5f206be9b4424ea70ec92b759746c20f5` |
| 16 | `def` | [reduceDIte'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/reducedite--ec57a09bdd9e89d96db558cc.md) | 231 | `declaration-track:ec57a09bdd9e89d96db558cc54d1d5697c32e7fda842f0b897513a5d0b9bffed` |
| 17 | `def` | [getSimprocs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/getsimprocs--e9456163feb0a33a2a59cb35.md) | 260 | `declaration-track:e9456163feb0a33a2a59cb35d8b89ab8328593232db9bfa0dbd9822ab188a1b7` |
| 18 | `def` | [mkDischarge?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/mkdischarge--0d3f30e69848823d6a7cd5ee.md) | 266 | `declaration-track:0d3f30e69848823d6a7cd5eeab3159d6f13e0ced6d72ba31d811bac592631f37` |
| 19 | `def` | [splitIfAt?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/splitifat--fe5aee5ba7223223ebde848d.md) | 269 | `declaration-track:fe5aee5ba7223223ebde848d6bba4c04f179b868877148861b33d3fa6922bcdb` |
| 20 | `def` | [getNumIndices](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/getnumindices--aa05a5109778928ce67353fe.md) | 285 | `declaration-track:aa05a5109778928ce67353fedbbf5e2b05dd78103d1e1fafdca2a7a3de4aa175` |
| 21 | `def` | [simpIfTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/simpiftarget--17888d69eb216887a4aabf8c.md) | 292 | `declaration-track:17888d69eb216887a4aabf8c8f5f0ee82afe3fc80e3e04b1c5a017d01bb137f3` |
| 22 | `def` | [simpIfLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/simpiflocaldecl--b6f952bafff7fd8211160df8.md) | 308 | `declaration-track:b6f952bafff7fd8211160df8672bb5ae16095238a7bcf1e3d65a1bf5c7f51d16` |
| 23 | `def` | [splitIfTarget?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/splitiftarget--3d7a824ff9889a4860eaa721.md) | 324 | `declaration-track:3d7a824ff9889a4860eaa72139bed3740ee8c6651b9b693b29f62a7e6fc5898d` |
| 24 | `def` | [splitIfLocalDecl?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/splitiflocaldecl--465bc054bcde1c8d96c53f6f.md) | 337 | `declaration-track:465bc054bcde1c8d96c53f6f7ffd87a2ca9a951bfe3bab90032818c16ddf6d4c` |
| 25 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/declarations/builtin-initialize--80b70bdc8d42da1303956a5c.md) | 348 | `declaration-track:80b70bdc8d42da1303956a5cdb0d652728a5295b677d13a39186ace604879891` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
