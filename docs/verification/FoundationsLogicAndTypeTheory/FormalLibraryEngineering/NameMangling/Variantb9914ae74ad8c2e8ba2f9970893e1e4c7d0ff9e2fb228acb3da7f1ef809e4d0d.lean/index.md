# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameMangling.Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e08d8ef771904ac0c8419368d637846486fc9a6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e08d8ef771904ac0c8419368d637846486fc9a6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.TakeDrop` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.UInt.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.FindPos` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [digitChar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/digitchar--50f4c3ff06ccd2e501472172.md) | 17 | `declaration-track:50f4c3ff06ccd2e501472172a59dbbca847d2c9a9bdcd2c85a40f1028d639372` |
| 2 | `def` | [pushHex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/pushhex--001862e46a3d2d84f051cd79.md) | 23 | `declaration-track:001862e46a3d2d84f051cd79b4121087b6a086120a1b0ad85167d3442e6e926c` |
| 3 | `def` | [mangleAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/mangleaux--a2259d6ee48d888a93512391.md) | 35 | `declaration-track:a2259d6ee48d888a93512391eed1c13f2919118282b10bc3f8f0b6c64e88aef0` |
| 4 | `def` | [Internal.mangle](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/internal-mangle--8b56df0bc616d9d601293134.md) | 51 | `declaration-track:8b56df0bc616d9d601293134da4bba9305792add0cf4dea75778f14239f38d80` |
| 5 | `def` | [checkLowerHex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/checklowerhex--3c471b352fd27ddb681dc1e7.md) | 58 | `declaration-track:3c471b352fd27ddb681dc1e7a28b5b7f3c3b41df4b571ae78cf2eb15fe79d6eb` |
| 6 | `def` | [fromHex?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/fromhex--a5d83c1766af96701395e449.md) | 68 | `declaration-track:a5d83c1766af96701395e449a1e59fa9d76de33e0a26accde31137c2f27258dd` |
| 7 | `def` | [parseLowerHex?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/parselowerhex--f71c530126a3145c1e215e60.md) | 75 | `declaration-track:f71c530126a3145c1e215e605cea2197f74f641015dbafc93a86d040cbbaf202` |
| 8 | `theorem` | [lt_of_parseLowerHex?_eq_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/lt-of-parselowerhex-eq-some--b5350ffc50558abc7bacfc3e.md) | 87 | `result-track:b5350ffc50558abc7bacfc3e4f55cd023db174f96102718e6763d5fe17f4f473` |
| 9 | `def` | [checkDisambiguation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/checkdisambiguation--9ffdc0af4a0a8f24348a58cb.md) | 98 | `declaration-track:9ffdc0af4a0a8f24348a58cb41b13dd2b879de60e65b5fde352d5e633289a257` |
| 10 | `def` | [needDisambiguation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/needdisambiguation--3d0c9e06bdd9edef00e65212.md) | 115 | `declaration-track:3d0c9e06bdd9edef00e65212c93ab5cc1206dd35cc20213e8406ee2c2ec8dd97` |
| 11 | `def` | [Name.mangleAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/name-mangleaux--668bd4188bdd46d1d60f4c69.md) | 120 | `declaration-track:668bd4188bdd46d1d60f4c69867d26a854fe954f13ba316588a4c5a1b5482ef9` |
| 12 | `def` | [Name.mangle](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/name-mangle--a580091ea1bfab5721a76cb2.md) | 136 | `declaration-track:a580091ea1bfab5721a76cb2c986b589470ee141e6c3d36197d7d5434148c473` |
| 13 | `def` | [mkMangledBoxedName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/mkmangledboxedname--446e32f5c4c39c98e49a97fc.md) | 145 | `declaration-track:446e32f5c4c39c98e49a97fc6c10f90fb95a14e83c509b443aa34f77e72cd753` |
| 14 | `def` | [mkModuleInitializationStem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/mkmoduleinitializationstem--b51f8abeeadc0bbc503ae262.md) | 156 | `declaration-track:b51f8abeeadc0bbc503ae262c3ba95135abbd2e7f1c90a790ad4138f954776ac` |
| 15 | `def` | [mkModuleInitializationPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/mkmoduleinitializationprefix--3810c52d28436da3986442d4.md) | 160 | `declaration-track:3810c52d28436da3986442d4610a666c4e5c63cea479b2a3f55613b885e35cf5` |
| 16 | `def` | [mkModuleInitializationFunctionName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/mkmoduleinitializationfunctionname--c7591670b59c90f69a8585a6.md) | 166 | `declaration-track:c7591670b59c90f69a8585a68e8235824466a5174d94fe9547c41e436386424e` |
| 17 | `def` | [mkPackageSymbolPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/mkpackagesymbolprefix--383e48fbbf24b4df82167e9c.md) | 169 | `declaration-track:383e48fbbf24b4df82167e9c7edd58a836e9e231293dc1f6d4acc9bdc612387a` |
| 18 | `def` | [Name.demangleAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/name-demangleaux--ab3b9fd423e3e46af6349d9a.md) | 173 | `declaration-track:ab3b9fd423e3e46af6349d9a07d44b2a4c201e4f67fd436e42daecffd2ef9f76` |
| 19 | `def` | [Name.demangle](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/name-demangle--b474aa9f3b19d037088377c1.md) | 235 | `declaration-track:b474aa9f3b19d037088377c1e282e222035f98b8fc7766c14cd2152d9eaf61b3` |
| 20 | `def` | [Name.demangle?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/declarations/name-demangle--38ce21be93f625fea93c2c91.md) | 242 | `declaration-track:38ce21be93f625fea93c2c91fd543a5d402791dbab3e365dcca721cf1d5e0be1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
