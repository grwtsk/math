# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InitAttr.Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85e2af84af2515ac600c17ff08f48ad42033b091",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85e2af84af2515ac600c17ff08f48ad42033b091`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Stream` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Compiler.NameMangling` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Compiler.ModPkgExt` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getIOTypeArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/getiotypearg--89ad0e0cd5bab3e0cf6b2b1c.md) | 19 | `declaration-track:89ad0e0cd5bab3e0cf6b2b1ca29dc5be8d76ff1f789b62e93607a7f7fad1134f` |
| 2 | `def` | [isUnitType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/isunittype--c243d6d70f7775205d83f95e.md) | 23 | `declaration-track:c243d6d70f7775205d83f95e02db2a6c5f64cbb1bf9e48c4c83a891309022d39` |
| 3 | `def` | [isIOUnit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/isiounit--474d76200545b7f583040a8a.md) | 27 | `declaration-track:474d76200545b7f583040a8a7679e2c12b0765bc4d1ddb7d4fc6cbce7b29d5dd` |
| 4 | `opaque` | [runModInitCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/runmodinitcore--297e98e829c2ba7279242f96.md) | 33 | `declaration-track:297e98e829c2ba7279242f96d67ef2223ffdc2a56c58e36556641e08a0955d0a` |
| 5 | `def` | [runModInit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/runmodinit--0f31068aa44c72a4a95a7358.md) | 40 | `declaration-track:0f31068aa44c72a4a95a7358d0ebba772bc0834f3d4cbb241c1099df177eb675` |
| 6 | `opaque` | [runInit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/runinit--ea1285cbe6c0049390e26e48.md) | 45 | `declaration-track:ea1285cbe6c0049390e26e48af186e1541ccbd89f8f4c6684fb5eab7c1ff7259` |
| 7 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/builtin-initialize--f39053532db8fcfad2fea121.md) | 48 | `declaration-track:f39053532db8fcfad2fea121a85d107b636b9e8c56d9621cd46a8c91b5ed23ac` |
| 8 | `def` | [registerInitAttrUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/registerinitattrunsafe--0fa59e06839c77e4b443ab15.md) | 50 | `declaration-track:0fa59e06839c77e4b443ab1555670cf2a14db6a290427e924a2624a9b0cb413b` |
| 9 | `opaque` | [registerInitAttrInner](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/registerinitattrinner--aa30f69ee465f967fc133a81.md) | 82 | `declaration-track:aa30f69ee465f967fc133a8147ea9ebe8fd09e76f9a253bd26d026fd4fd64150` |
| 10 | `def` | [registerInitAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/registerinitattr--fbd330dac1d6b7f1d881d3f6.md) | 85 | `declaration-track:fbd330dac1d6b7f1d881d3f677a51dfb78f9a2d69cea5f02c95c1e27fb46a66f` |
| 11 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/builtin-initialize--48bac7971566bde402a982df.md) | 101 | `declaration-track:48bac7971566bde402a982df50ddf6ad99b95246e8daab1dac641d470542a70c` |
| 12 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/builtin-initialize--18d6a13947ba776ea9a40579.md) | 110 | `declaration-track:18d6a13947ba776ea9a40579261e9bde77110fd44db0bd73b03771d76ac75fab` |
| 13 | `def` | [getInitFnNameForCore?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/getinitfnnameforcore--781bb4de79d094a0a5bb2d2f.md) | 112 | `declaration-track:781bb4de79d094a0a5bb2d2f8e45137a47cf23891cb9ec72c130528ca2cc0da6` |
| 14 | `def` | [getBuiltinInitFnNameFor?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/getbuiltininitfnnamefor--7be0d3461dc333680a194811.md) | 118 | `declaration-track:7be0d3461dc333680a194811c076c1d42dbbabd16a725ee7996ecf657354a86f` |
| 15 | `def` | [getRegularInitFnNameFor?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/getregularinitfnnamefor--b9ff3e4d91797c70db7834d6.md) | 122 | `declaration-track:b9ff3e4d91797c70db7834d64d974dffa3fad0d81b2818b5ba3e7fd8de4c6039` |
| 16 | `def` | [getInitFnNameFor?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/getinitfnnamefor--3a41b2b1a8139ac7c2d7cee2.md) | 126 | `declaration-track:3a41b2b1a8139ac7c2d7cee229d76745457a69a038a2f12d64eafa5d1cb54fd3` |
| 17 | `def` | [isIOUnitInitFnCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/isiounitinitfncore--78c93d148f47ff12e314ba21.md) | 129 | `declaration-track:78c93d148f47ff12e314ba21d6b8045b05634f8fe778cfeb77d0fc5fb7915e30` |
| 18 | `def` | [isIOUnitRegularInitFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/isiounitregularinitfn--58a4437ee08dc555c1c5db70.md) | 134 | `declaration-track:58a4437ee08dc555c1c5db701c72b95a7d25b71042c39c01be2ce596f5ef1337` |
| 19 | `def` | [isIOUnitBuiltinInitFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/isiounitbuiltininitfn--664c1e8b7ce97873fa7961e9.md) | 137 | `declaration-track:664c1e8b7ce97873fa7961e9c31d57dac938b187152ba9c795593949a54f232c` |
| 20 | `def` | [isIOUnitInitFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/isiounitinitfn--34ea36c6d356f50533c5298a.md) | 140 | `declaration-track:34ea36c6d356f50533c5298adf9ad51cf1ab75b328bbe1b952da4e56290faea8` |
| 21 | `def` | [hasInitAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/hasinitattr--52ee72d70db5fecc06387833.md) | 143 | `declaration-track:52ee72d70db5fecc063878334d32307ea8e56c9b6e09ec1343cc36410ad9d4d7` |
| 22 | `def` | [setBuiltinInitAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/setbuiltininitattr--b9a35a95973d412386f1a0ec.md) | 146 | `declaration-track:b9a35a95973d412386f1a0ec2c08dd7237ab3bb12c7463d9a470e4184836bd21` |
| 23 | `def` | [declareBuiltin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/declarebuiltin--1cfb331baedb1c00d64dfe61.md) | 149 | `declaration-track:1cfb331baedb1c00d64dfe6163e20f9e07e0ddc706b32e96427751c00f56faf8` |
| 24 | `def` | [runInitAttrForMod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/runinitattrformod--d49baa0347c2d3a2342bd790.md) | 159 | `declaration-track:d49baa0347c2d3a2342bd7909748386077b8ed830c60db8aa73904b5cded4d65` |
| 25 | `def` | [runInitAttrs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/runinitattrs--877c62219914fc7f25a14ac7.md) | 199 | `declaration-track:877c62219914fc7f25a14ac798ad6a160bcc381cc2edb036d3f41f8e18b2d031` |
| 26 | `def` | [runInitAttrsForModules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/runinitattrsformodules--7a9544fd9f7bba79f494148b.md) | 212 | `declaration-track:7a9544fd9f7bba79f494148b7909c75849380f9c75a3d3ede7d8cbb3d228e883` |
| 27 | `def` | [getRegularInitAttrModIdxs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/declarations/getregularinitattrmodidxs--f25af12a799b334b7a93985a.md) | 225 | `declaration-track:f25af12a799b334b7a93985a6fa4eb3a10b4cb0624996cc4113d2c1807d2f50e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
