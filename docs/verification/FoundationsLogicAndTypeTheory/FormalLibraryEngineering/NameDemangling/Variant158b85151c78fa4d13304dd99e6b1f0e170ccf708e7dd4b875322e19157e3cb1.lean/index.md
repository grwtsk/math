# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameDemangling.Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9219df010e50197717971c85deb838d4746ff82e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9219df010e50197717971c85deb838d4746ff82e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.While` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.String.TakeDrop` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.String.Search` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.String.Iterate` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Data.NameTrie` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dropPrefix?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/dropprefix--2c4c5b8f09f810d543ace790.md) | 31 | `declaration-track:2c4c5b8f09f810d543ace790530bf0817f9ce47c7969db57cf2bed27c9a2de07` |
| 2 | `def` | [isAllDigits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/isalldigits--5a98aba171b82c47628ab7f2.md) | 34 | `declaration-track:5a98aba171b82c47628ab7f2b6c3da544bc40e6b6ea0eb58f3c0c2df52a96e2a` |
| 3 | `def` | [nameToNameParts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/nametonameparts--17f2f0c02c0984a5e28794e7.md) | 37 | `declaration-track:17f2f0c02c0984a5e28794e7f46409873e43ca45164517b9001376d76531add3` |
| 4 | `def` | [namePartsToName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/namepartstoname--f2d9a0c06babe2f86424cee4.md) | 45 | `declaration-track:f2d9a0c06babe2f86424cee49fb56d9df5c8717a55e6f248571f3fe3a84551e2` |
| 5 | `def` | [formatNameParts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/formatnameparts--8f54ce1283731a6637fbcb82.md) | 52 | `declaration-track:8f54ce1283731a6637fbcb826643dd0a9905313bad99bcea373490ab21877a70` |
| 6 | `def` | [matchSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/matchsuffix--1b3f55f57bd77630662c8dcb.md) | 55 | `declaration-track:1b3f55f57bd77630662c8dcba7286c608f0a0a2a929f95f34113e1e9afcc5404` |
| 7 | `def` | [isSpecIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/isspecindex--9d4ceede072aa5c3bbd7f6fa.md) | 69 | `declaration-track:9d4ceede072aa5c3bbd7f6fa2669ee3b19f671eecd0ec3aa8f04bebcea1d07e3` |
| 8 | `def` | [stripPrivate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/stripprivate--9728e27839ce4d50ced89599.md) | 74 | `declaration-track:9728e27839ce4d50ced895994af9c31804b519f8c7db1448c78e0d847de9de63` |
| 9 | `structure` | [SpecEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/specentry--35167a5ba253c4e97dd8ee50.md) | 86 | `declaration-track:35167a5ba253c4e97dd8ee506362836f2d9ba6c4f1c22cfbd35c32ef2d0d1ad8` |
| 10 | `def` | [processSpecContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/processspeccontext--e3fe233eb45d11d51ed637a5.md) | 90 | `declaration-track:e3fe233eb45d11d51ed637a50bd3f520436c32ee7f14fa205085aca0d1bbcf18` |
| 11 | `def` | [postprocessNameParts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/postprocessnameparts--d2d74bc2fb3497df000c72ca.md) | 110 | `declaration-track:d2d74bc2fb3497df000c72ca2215f5288b8140d1dc7089c4fd30083104b58d92` |
| 12 | `def` | [demangleBody](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/demanglebody--c85f2fab28de286a8973585e.md) | 217 | `declaration-track:c85f2fab28de286a8973585edb39e0f294d6518fdf06d77327e193f0b1b555d3` |
| 13 | `def` | [demangleWithPkg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/demanglewithpkg--99f09f767ff99e038a563c2e.md) | 224 | `declaration-track:99f09f767ff99e038a563c2ebee25c26552868d2ad216d3d912ba52b01627378` |
| 14 | `def` | [stripColdSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/stripcoldsuffix--0ea310818f7cea16d648898c.md) | 241 | `declaration-track:0ea310818f7cea16d648898c9caf1a5d7d3bb370402df02846dc40e30bd47f4c` |
| 15 | `def` | [demangleCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/demanglecore--84b481bc67eb12e721f8ce26.md) | 246 | `declaration-track:84b481bc67eb12e721f8ce2691473370e1cb5a65a484bbfb71810176cf695708` |
| 16 | `def` | [demangleSymbol](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/demanglesymbol--2ef339306e3420d17042bcc9.md) | 280 | `declaration-track:2ef339306e3420d17042bcc98a9001eb63a2b01a25521bb4167da17c09d6c8ef` |
| 17 | `def` | [skipWhile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/skipwhile--f042cda4498a18d53e53e15d.md) | 302 | `declaration-track:f042cda4498a18d53e53e15da73c2372e1b59c240d691e8b8ec0e7619494ae0b` |
| 18 | `def` | [splitAt₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/splitat--496be6563b03a37be487c453.md) | 308 | `declaration-track:496be6563b03a37be487c453d2be10feff4d530ce2f86d1a9b5d44361150102e` |
| 19 | `def` | [extractSymbol](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/extractsymbol--136068af622a03f52d9606f1.md) | 312 | `declaration-track:136068af622a03f52d9606f1cc41ce8bb432891547934310c6085d5eaf82d937` |
| 20 | `def` | [demangleBtLine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/demanglebtline--dfdafbd8346dceeffc37d10c.md) | 338 | `declaration-track:dfdafbd8346dceeffc37d10cb0a0f05592d5ca81bb98b37c08a7357cb98a056d` |
| 21 | `def` | [demangleBtLineCStr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/declarations/demanglebtlinecstr--a9e35755dce7185a80bff08d.md) | 344 | `declaration-track:a9e35755dce7185a80bff08d9f96244c0260e4c4ffaa6f5e01edcd52aba3672a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
