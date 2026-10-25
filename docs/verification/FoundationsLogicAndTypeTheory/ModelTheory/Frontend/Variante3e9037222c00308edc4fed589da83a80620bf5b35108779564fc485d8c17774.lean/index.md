# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Frontend.Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "965a761b628ebc7b7c780c7a6d12fde6e2e9b339",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `965a761b628ebc7b7c780c7a6d12fde6e2e9b339`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.System.Platform` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Compiler.Options` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Compiler.InitAttr` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Linter.PersistentLintLog` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Util.ProfilerServer` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/state--436bf9d51c62e631751f6493.md) | 22 | `declaration-track:436bf9d51c62e631751f64938f391c189947359da26500b18de9ecabe5ef32bc` |
| 2 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/context--36a3f7d061b8edf4f8781621.md) | 29 | `declaration-track:36a3f7d061b8edf4f8781621176ca7d5fce06177831e5ae91e6b9764cc81f6c9` |
| 3 | `abbrev` | [FrontendM](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/frontendm--9df2aa3570fae278688e3ce3.md) | 32 | `declaration-track:9df2aa3570fae278688e3ce3cebdcdcc8760600aaccfb79767289c9cdee71a03` |
| 4 | `def` | [setCommandState](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/setcommandstate--3992d5052cd500eebee8ef69.md) | 34 | `declaration-track:3992d5052cd500eebee8ef69f1006aaafdbc6064a15c73c6dc36671a9d55afab` |
| 5 | `def` | [runCommandElabM](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/runcommandelabm--dc97bc754577436f59207598.md) | 37 | `declaration-track:dc97bc754577436f592075982a586a8189506e54b58ba9a949de238e3d3efeb6` |
| 6 | `def` | [elabCommandAtFrontend](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/elabcommandatfrontend--eebf700e543e9a4ea9e4346a.md) | 51 | `declaration-track:eebf700e543e9a4ea9e4346ac166de58059a8d348b42f97991df4e1abb717be1` |
| 7 | `def` | [updateCmdPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/updatecmdpos--e8bc3ad2a556cda03803be2e.md) | 55 | `declaration-track:e8bc3ad2a556cda03803be2e294d46284143327e3d967883a7ee9aec477a7f0b` |
| 8 | `def` | [getParserState](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/getparserstate--915ca8e5c0ebe1df6a74de2f.md) | 58 | `declaration-track:915ca8e5c0ebe1df6a74de2f2a881e74683f779f311c70081985450a29fc3333` |
| 9 | `def` | [getCommandState](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/getcommandstate--36e4a89944598f675c54d5ce.md) | 59 | `declaration-track:36e4a89944598f675c54d5ce0168c853ac105cab888a9f49c4a774c39f4c402b` |
| 10 | `def` | [setParserState](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/setparserstate--b133ea8872cf3d3c4ea20d78.md) | 60 | `declaration-track:b133ea8872cf3d3c4ea20d7879861ee6133b38146eb08b5d9c8c6ac0b747ad9b` |
| 11 | `def` | [setMessages](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/setmessages--b14fd4f07207521b9444666d.md) | 61 | `declaration-track:b14fd4f07207521b9444666daa543f0b05793ff877454ae89d0d4060b0db7564` |
| 12 | `def` | [getInputContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/getinputcontext--708fe4659c8f10370d59a867.md) | 62 | `declaration-track:708fe4659c8f10370d59a867929f22ae2d32757d6acd4a0a707c770bc4de7067` |
| 13 | `def` | [processCommand](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/processcommand--979718f981a72d56a5058ba4.md) | 64 | `declaration-track:979718f981a72d56a5058ba47acc650ad9a4e0ede5e2e622e608873232a0b52d` |
| 14 | `def` | [processCommands](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/processcommands--1701e4ffa72c24e3d11a154e.md) | 79 | `declaration-track:1701e4ffa72c24e3d11a154e184d1282e1766fa24e62134f143ce83220eb2be1` |
| 15 | `structure` | [IncrementalState](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/incrementalstate--68e8ba80a288a82da1f124ec.md) | 88 | `declaration-track:68e8ba80a288a82da1f124ec1b71db9ad6967850a9dedc2524b4aa28b572e51b` |
| 16 | `def` | [IO.processCommandsIncrementally](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/io-processcommandsincrementally--d823efd1f50528dc4a89b4d0.md) | 99 | `declaration-track:d823efd1f50528dc4a89b4d01377339ed60c2630e4c24a87a9882a3ec9ddf839` |
| 17 | `def` | [IO.processCommands](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/io-processcommands--e966aa5d8bd7241595127778.md) | 129 | `declaration-track:e966aa5d8bd724159512777869f89870f5820f4257c069389b1bd5bd66c447df` |
| 18 | `def` | [process](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/process--39c8540cc31309f4aae1dc81.md) | 134 | `declaration-track:39c8540cc31309f4aae1dc8170df27cfacbe8056e7ce24e3aee386a1562f1663` |
| 19 | `def` | [collectCommandLints](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/collectcommandlints--75e3e05fd2a8a1a849077cc0.md) | 144 | `declaration-track:75e3e05fd2a8a1a849077cc01749bacd97092f61c4bccd54d2961e8ba1165fe4` |
| 20 | `structure` | [IncrSnapshot](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/incrsnapshot--ad2abe0f2dc0cc3edabeba7b.md) | 155 | `declaration-track:ad2abe0f2dc0cc3edabeba7b94722fe9c585798a2e66258964b113c0be45c62b` |
| 21 | `def` | [regionsToModuleArtifacts](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/regionstomoduleartifacts--7e4f568b78bd3f8c0a42285d.md) | 164 | `declaration-track:7e4f568b78bd3f8c0a42285d8d0a9d03f1ce8221ea3e22ddf221a380f250dfdc` |
| 22 | `def` | [readModuleArtifactRegions](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/readmoduleartifactregions--eaadf6761ad7acf8ccf89daa.md) | 183 | `declaration-track:eaadf6761ad7acf8ccf89daaaf929016c3bad13b457409d292699c4f8de45bbf` |
| 23 | `def` | [loadIncrSnapshot](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/loadincrsnapshot--b549180dd86971be7ce8feb1.md) | 197 | `declaration-track:b549180dd86971be7ce8feb1fd1e15041138d88313bc996bd2d78a64d6bb132c` |
| 24 | `def` | [resolveCancelTokensForSave](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/resolvecanceltokensforsave--094075a68dc6eb92cd3dfc30.md) | 236 | `declaration-track:094075a68dc6eb92cd3dfc301b953b43b882a8feb030a97f1eba1bece78a4925` |
| 25 | `def` | [setMainModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/setmainmodule--7d38df5e69df996251d3add2.md) | 249 | `declaration-track:7d38df5e69df996251d3add22605f144840fe56f5fc72e33c11ed516104a1ba0` |
| 26 | `def` | [runFrontend](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/declarations/runfrontend--f294b49f618bf1887b836741.md) | 269 | `declaration-track:f294b49f618bf1887b836741edf5c7c306d74b385e43ac435f99c5420e43fa53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
