# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameDemangling.Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57bc1e98253350a88bd7cd1e01b84c820e15db37",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57bc1e98253350a88bd7cd1e01b84c820e15db37`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.While` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Data.String.TakeDrop` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.String.Search` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.String.Iterate` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Data.NameTrie` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dropPrefix?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/dropprefix--99ea8d8a24c7a83f046c20c6.md) | 23 | `declaration-track:99ea8d8a24c7a83f046c20c62484f6e40f91fcd4789aae88593aa92d7d56ed1b` |
| 2 | `def` | [isAllDigits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/isalldigits--f66ea651daa57ed1ad61c580.md) | 26 | `declaration-track:f66ea651daa57ed1ad61c580221d23690b7a97f4f1ce15a0da1718d10e7430a2` |
| 3 | `def` | [nameToNameParts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/nametonameparts--2a3d20ae75b104f169efc4d9.md) | 29 | `declaration-track:2a3d20ae75b104f169efc4d9da71f9481f499fc15b1ed02a4f7349c745827aa8` |
| 4 | `def` | [namePartsToName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/namepartstoname--cf091d6bf47355cd27e484ba.md) | 37 | `declaration-track:cf091d6bf47355cd27e484ba5436062f0092b62a319088adc325be14aeebb6b9` |
| 5 | `def` | [formatNameParts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/formatnameparts--0e010bedadb0c23757d03ae8.md) | 44 | `declaration-track:0e010bedadb0c23757d03ae89cd3d970240bb7122ecc8fb71980d502687be19d` |
| 6 | `def` | [matchSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/matchsuffix--2577eabef2727733c4d0032a.md) | 47 | `declaration-track:2577eabef2727733c4d0032a76e9d3974a3981c190ac7c956086343ed2bd386b` |
| 7 | `def` | [isSpecIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/isspecindex--c628afd1d00c88373d86e4f3.md) | 61 | `declaration-track:c628afd1d00c88373d86e4f391c3ebe9779f4e5fe81e2a3a44408aed2bcfe144` |
| 8 | `def` | [stripPrivate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/stripprivate--e21c49032a9e7a5b5bf3ce2c.md) | 66 | `declaration-track:e21c49032a9e7a5b5bf3ce2c10a0d758b2352492e18f0c2a2f8058c357dc52a9` |
| 9 | `structure` | [SpecEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/specentry--15da81dbfd674ccff8f5cd3d.md) | 78 | `declaration-track:15da81dbfd674ccff8f5cd3de762776ac83fd56c748a155ae049f51b0b54d18f` |
| 10 | `def` | [processSpecContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/processspeccontext--fdd486778d5afdd56624f5b4.md) | 82 | `declaration-track:fdd486778d5afdd56624f5b46d518a7b1812c7ba9f0a213614e6ae328608e822` |
| 11 | `def` | [postprocessNameParts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/postprocessnameparts--2b5e32f5b43b4c2324d13ad5.md) | 102 | `declaration-track:2b5e32f5b43b4c2324d13ad5c619f45776bf0df090cb882eeabaef65d2195865` |
| 12 | `def` | [demangleBody](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/demanglebody--4a4383d61f622bf0bcee1631.md) | 209 | `declaration-track:4a4383d61f622bf0bcee163167954ef8348358fc8cbcc8e647b6779348682aca` |
| 13 | `def` | [demangleWithPkg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/demanglewithpkg--ee5cd4e1f6dd0397aa73c45a.md) | 216 | `declaration-track:ee5cd4e1f6dd0397aa73c45a696b7594f2afc0abdce8c94f5c6595163dfdadbf` |
| 14 | `def` | [stripColdSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/stripcoldsuffix--ff40f3357be033ce4a247d70.md) | 233 | `declaration-track:ff40f3357be033ce4a247d70a9168a9d415b83df3ddac91c7ee443eddd988823` |
| 15 | `def` | [demangleCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/demanglecore--366687f932427486099f026e.md) | 238 | `declaration-track:366687f932427486099f026ee98e5766cdbc600455e9b7a3a434eb2fd44b910f` |
| 16 | `def` | [demangleSymbol](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/demanglesymbol--4bf1a1981e2776b820defc3a.md) | 272 | `declaration-track:4bf1a1981e2776b820defc3ac76a499df5c40e0faa69f02b95a3fae4171cae75` |
| 17 | `def` | [skipWhile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/skipwhile--3e19b742d5e30fd75e50dbbc.md) | 294 | `declaration-track:3e19b742d5e30fd75e50dbbc30316399e352ec741f03f34146504aafeec644c9` |
| 18 | `def` | [splitAt₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/splitat--b017091b0e5f505814fd3cd1.md) | 300 | `declaration-track:b017091b0e5f505814fd3cd1d838d472f7a21843fe5b3b36165a0bed74f924f9` |
| 19 | `def` | [extractSymbol](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/extractsymbol--7cccf03097af177cff7b2573.md) | 304 | `declaration-track:7cccf03097af177cff7b2573722d84ef4598f7be6d63319d6192745e212668bd` |
| 20 | `def` | [demangleBtLine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/demanglebtline--ba965c6bff1e849f271c6208.md) | 330 | `declaration-track:ba965c6bff1e849f271c62084dd99a287790b260de47776c2d9de6d5b6ce020c` |
| 21 | `def` | [demangleBtLineCStr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant7b8386fafefd01ac8040224c5fe68c6f81291bbf1ea879d2e79ab14835f44dcf.lean/declarations/demanglebtlinecstr--ff9083a750002fcb80a0baf0.md) | 336 | `declaration-track:ff9083a750002fcb80a0baf059339ae322b815f73cf48b3928217c6ddcdeef6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
