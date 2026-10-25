# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Resolve.Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12bc63da52e494f596009abb873fad86cfda7530",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12bc63da52e494f596009abb873fad86cfda7530`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Util.IO` — import line 11; external provider; requires a separately pinned dependency.
- `Lake.Util.StoreInsts` — import line 12; external provider; requires a separately pinned dependency.
- `Lake.Config.Monad` — import line 13; external provider; requires a separately pinned dependency.
- `Lake.Load.Materialize` — import line 14; external provider; requires a separately pinned dependency.
- `Lake.Load.Lean.Eval` — import line 15; external provider; requires a separately pinned dependency.
- `Lake.Load.Package` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Range.Polymorphic.Iterators` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Range.Polymorphic.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Runtime` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkDepLoadConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/mkdeploadconfig--7025940e50c9c06d56594d71.md) | 33 | `declaration-track:7025940e50c9c06d56594d71e2b6bf6076cbf0b4ecfe5212d1c717143c3884dc` |
| 2 | `def` | [Workspace.addFacetDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/workspace-addfacetdecls--7c6c002b5153722b633ec48b.md) | 49 | `declaration-track:7c6c002b5153722b633ec48be677c341129a28e70cb075cad16b33b93634b118` |
| 3 | `theorem` | [Workspace.packages_addFacetDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/workspace-packages-addfacetdecls--50d021be108f1574f4155f46.md) | 52 | `result-track:50d021be108f1574f4155f46d2bc29677e694fd09dfe73d75fe0f44f518db3c0` |
| 4 | `def` | [Workspace.addDepPackage'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/workspace-adddeppackage--bac5dade0e64862cbc14d8cf.md) | 64 | `declaration-track:bac5dade0e64862cbc14d8cf67b84e073529e10c58daf167f45d887a4d8a76bf` |
| 5 | `def` | [Workspace.setDepIdxs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/workspace-setdepidxs--10278cfdf2a9f80c46d997b2.md) | 77 | `declaration-track:10278cfdf2a9f80c46d997b28d41dcef37dfb0cd087e3ad9bd5d286022441371` |
| 6 | `theorem` | [Workspace.size_packages_setDepIdxs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/workspace-size-packages-setdepidxs--25ba92cc0c6c259e736f87b9.md) | 100 | `result-track:25ba92cc0c6c259e736f87b9a2ee8753706c0935a08c101e42d2747aaf70ab7b` |
| 7 | `def` | [Workspace.updateDepPkgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/workspace-updatedeppkgs--8826d9fe5fc8ed0d4584090b.md) | 104 | `declaration-track:8826d9fe5fc8ed0d4584090b79eceaacf6ccb098d52e8abb38eca353a01470d4` |
| 8 | `structure` | [ResolveState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/resolvestate--635fb52110e246c4d3512d38.md) | 134 | `declaration-track:635fb52110e246c4d3512d38a7bc849e42293fee674b330863206a778f10c44f` |
| 9 | `def` | [init](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/init--894651e4940747eb8f7b68c6.md) | 142 | `declaration-track:894651e4940747eb8f7b68c6b893ea2d8ae257436f5c6e7f299682d372ffd441` |
| 10 | `def` | [reuseDep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/reusedep--8066da256985e117befd067c.md) | 145 | `declaration-track:8066da256985e117befd067cbe85158562ff8ab5f389256d6e3ce3166f69a0b8` |
| 11 | `def` | [newDep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/newdep--663c335e987e9ba0fe982560.md) | 153 | `declaration-track:663c335e987e9ba0fe982560e4737855030c2094cf5f713b5115d79f4d1c5e0b` |
| 12 | `def` | [guardBySizeImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/guardbysizeimpl--580bc6d1c3c242fb329bf3ae.md) | 170 | `declaration-track:580bc6d1c3c242fb329bf3ae6142931ae426b6ca50734881570b9fb4f86d0d95` |
| 13 | `def` | [guardBySize!](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/guardbysize--e403ba4a9e8ef0f73b37bfea.md) | 182 | `declaration-track:e403ba4a9e8ef0f73b37bfea193c9f4ad9002e9c98ed19e0f6a6aad7e007dcae` |
| 14 | `def` | [Workspace.resolveDepsCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/workspace-resolvedepscore--3cc43abc10af4874c1c44a9a.md) | 195 | `declaration-track:3cc43abc10af4874c1c44a9a5ff5fa9e2bb42cd663b8f1a168e8860c290e4c36` |
| 15 | `abbrev` | [UpdateT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/updatet--54cd3c5fa702003517ad99d0.md) | 236 | `declaration-track:54cd3c5fa702003517ad99d0f77223626a784569650f810298554e17b403f7d4` |
| 16 | `def` | [UpdateT.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/updatet-run--0cce98c5e45616413abffef2.md) | 238 | `declaration-track:0cce98c5e45616413abffef299b7790ecf0610daab5c9fd76bef479720ba6a27` |
| 17 | `def` | [reuseManifest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/reusemanifest--ac68ee4f7c17c3a514219b2f.md) | 245 | `declaration-track:ac68ee4f7c17c3a514219b2f9531976901330b3ba089ef2775517de00d8b646f` |
| 18 | `def` | [addDependencyEntries](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/adddependencyentries--b6887e1585a7bd03c56e5182.md) | 275 | `declaration-track:b6887e1585a7bd03c56e5182d0ebc8e1b8ad064a7b04834560bff0b0160f7a82` |
| 19 | `def` | [updateAndMaterializeDep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/updateandmaterializedep--f07c1260cb030095e53d1ba3.md) | 288 | `declaration-track:f07c1260cb030095e53d1ba3bd5c3255315980e62ad05b779d6c469967ef46a6` |
| 20 | `def` | [restartCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/restartcode--f663ce61180863de98bc1043.md) | 312 | `declaration-track:f663ce61180863de98bc10438175e57896c94a55955b7e61450283fe460c0eb9` |
| 21 | `structure` | [ToolchainCandidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/toolchaincandidate--9621f3d36ddfaad32e2c5215.md) | 315 | `declaration-track:9621f3d36ddfaad32e2c5215cb2c8c6540a59c402dd96ad62cb1e69aee7d32dd` |
| 22 | `structure` | [ToolchainState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/toolchainstate--9279ef7d12b7588a12b39032.md) | 323 | `declaration-track:9279ef7d12b7588a12b39032a5cfe47cb6b80b2942b08b8f1d143e6fbf752efd` |
| 23 | `def` | [ToolchainState.replace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/toolchainstate-replace--61208d9a5f9cd0a3a3de0112.md) | 336 | `declaration-track:61208d9a5f9cd0a3a3de011226faccc5aa6dde123b7fb1287547a0ad93b44c62` |
| 24 | `def` | [ToolchainState.addClash](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/toolchainstate-addclash--47de88eeac87802593494fd3.md) | 340 | `declaration-track:47de88eeac87802593494fd39de9c9f9faf955fb32b8ad7f779f303a0c762371` |
| 25 | `def` | [Workspace.updateToolchain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/workspace-updatetoolchain--a3fbf5cd675bc5fe62f2370e.md) | 351 | `declaration-track:a3fbf5cd675bc5fe62f2370e906bc25d5495c526490b846f867ed4d76973c42d` |
| 26 | `def` | [Workspace.updateAndMaterializeCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/workspace-updateandmaterializecore--be029308b0a2603baa843b8d.md) | 454 | `declaration-track:be029308b0a2603baa843b8d97cc081e44cd6395c0576fdf38734af76e1cb106` |
| 27 | `def` | [Workspace.writeManifest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/workspace-writemanifest--2c2f09a3c4a25ba2f9ef0ad8.md) | 503 | `declaration-track:2c2f09a3c4a25ba2f9ef0ad8bf0cba99ec0f9f4889d98a6b1f05656d0c677ec6` |
| 28 | `def` | [Package.runPostUpdateHooks](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/package-runpostupdatehooks--ceea6068d9aebd3fb0bbb97c.md) | 521 | `declaration-track:ceea6068d9aebd3fb0bbb97c619ae7f56749f3484e1ef2d66b481f596fa5b99e` |
| 29 | `def` | [Workspace.updateAndMaterialize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/workspace-updateandmaterialize--815ece1298ffd340056d9b02.md) | 532 | `declaration-track:815ece1298ffd340056d9b026abd99b28c9f72a1726e956d4be1d7fd8a6df9e2` |
| 30 | `def` | [validateManifest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/validatemanifest--f6495d5bf4cfd0b8a6a1d4ef.md) | 547 | `declaration-track:f6495d5bf4cfd0b8a6a1d4ef83649082844b2cf5fbccdddfb1720fafe7be630b` |
| 31 | `def` | [Workspace.materializeDeps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/declarations/workspace-materializedeps--76e7bd910ac145485fb98c73.md) | 568 | `declaration-track:76e7bd910ac145485fb98c73e22ec38347dfaf1c92bbd6f267fad07b391b0e42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
