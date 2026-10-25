# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Upgrade.Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c4bf023c359d03b40d18ac68ca27021bb54ebe5",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c4bf023c359d03b40d18ac68ca27021bb54ebe5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Project` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Refinement` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WorkspaceUpgrade](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/workspaceupgrade--5cb2a52536e4e6adf3805faa.md) | 35 | `declaration-track:5cb2a52536e4e6adf3805faa6ace34e474ef3b642a6a5d7463715587fde6ed7f` |
| 2 | `def` | [mapDependencyEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/mapdependencyenv--52083639368b6de29046955f.md) | 49 | `declaration-track:52083639368b6de29046955f31dd002b298ef07482b77fec8775924dd4a3672c` |
| 3 | `theorem` | [mapDependencyEnv_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/mapdependencyenv-apply--2cc788bec8bbe78c008b954b.md) | 60 | `result-track:2cc788bec8bbe78c008b954b01afb866801e98c38db837f620ddd88a92865d49` |
| 4 | `theorem` | [project_semantics_natural](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/project-semantics-natural--71d8cef2acb2f39a69250908.md) | 72 | `result-track:71d8cef2acb2f39a6925090855c30537b4e65f3c31dd6cf573b48d7f1f8adf04` |
| 5 | `theorem` | [evaluate_natural](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/evaluate-natural--b0e8570853cd0809907b0311.md) | 84 | `result-track:b0e8570853cd0809907b0311e9fca181cec431570baf8c82722b430af1843e7e` |
| 6 | `def` | [tenantEnvironmentMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/tenantenvironmentmap--032340c8ab1d46d3e1c00961.md) | 99 | `declaration-track:032340c8ab1d46d3e1c00961ed52b964142ed3732f6a6f787017b5b924e3d2fe` |
| 7 | `def` | [tenantRootMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/tenantrootmap--c7c6dff6f04ee6ec3e4e00df.md) | 109 | `declaration-track:c7c6dff6f04ee6ec3e4e00df65142151342943ecb96b55baf94200bb116a7bb1` |
| 8 | `theorem` | [tenantEnvironmentMap_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/tenantenvironmentmap-apply--3dccf2e6c542f81d3ea496e3.md) | 120 | `result-track:3dccf2e6c542f81d3ea496e367258536ce0df398e27eef5b91dac8ff7de5e24a` |
| 9 | `theorem` | [tenantRootMap_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/tenantrootmap-apply--bb7ceeadb4d83f21c1bae597.md) | 133 | `result-track:bb7ceeadb4d83f21c1bae5973f04141514b303837b02820e140dd2cb05c52317` |
| 10 | `structure` | [WorkspaceArtifactMigration](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/workspaceartifactmigration--094c90b2fe4ee44948da147b.md) | 154 | `declaration-track:094c90b2fe4ee44948da147bd86597a8ea79240c8b7d9ccc49871e02a595fd7b` |
| 11 | `theorem` | [migratedArtifact_valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/migratedartifact-valid--17e23d87ac67aa38806c1735.md) | 175 | `result-track:17e23d87ac67aa38806c17354f4b8ba5a5660b10c907e3776cd34028a07d3c22` |
| 12 | `theorem` | [migratedArtifact_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/migratedartifact-sound--f4292ffd3852a80b9ec529ca.md) | 194 | `result-track:f4292ffd3852a80b9ec529ca43973b4b755d358bc5fc08f9139798cb1b100326` |
| 13 | `structure` | [EquivalenceUpgrade](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/equivalenceupgrade--6177e197231a3aa4574a9f86.md) | 220 | `declaration-track:6177e197231a3aa4574a9f8655b8abd8942f77cc1d95a81779a51bc0773f8faa` |
| 14 | `def` | [equivPublic](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/equivpublic--b2fe92af16792e708e5b1f7b.md) | 230 | `declaration-track:b2fe92af16792e708e5b1f7be9e4ef882b0f90f54bda22f62dea5ff76000e7c9` |
| 15 | `theorem` | [equivPublic_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/equivpublic-apply--dc21bc64b58d0645e0c52f46.md) | 239 | `result-track:dc21bc64b58d0645e0c52f469d0e44fe4b0544cf068b92a9eb8fbeab1f69d457` |
| 16 | `structure` | [FactorUpgrade](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/factorupgrade--d8cb180f8f4b88eff413e004.md) | 252 | `declaration-track:d8cb180f8f4b88eff413e0047eebf51d056fd0311658cdf7ccc7b3ed667fda9d` |
| 17 | `structure` | [RefinementUpgrade](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/refinementupgrade--c52c12790909e2acb1bc82b9.md) | 260 | `declaration-track:c52c12790909e2acb1bc82b9d667adff0afb65e931bc0075d78c501c7443f612` |
| 18 | `theorem` | [map_bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/map-bijective--db37f5d6a1d95fe7d1e2b8fe.md) | 273 | `result-track:db37f5d6a1d95fe7d1e2b8fec8f355814b34800bcbe50fe0c13006e26c561260` |
| 19 | `def` | [toEquivalenceUpgrade](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/toequivalenceupgrade--e5818e798cc7c7b7458d5b3c.md) | 287 | `declaration-track:e5818e798cc7c7b7458d5b3ceafc557105f1a150ee4c6898a56b3249cbe299f0` |
| 20 | `def` | [toFactorUpgrade](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/tofactorupgrade--dfe873105c3fb83ce683a428.md) | 301 | `declaration-track:dfe873105c3fb83ce683a4282c54e8696513e56e03c8e8698800ffce25594e2a` |
| 21 | `inductive` | [UpgradeDisposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/upgradedisposition--3d828816352c8882082395ab.md) | 313 | `declaration-track:3d828816352c8882082395ab6d05441d79fb69deba6b22543ccb36478bfe7edd` |
| 22 | `structure` | [ImplementationMigration](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/implementationmigration--24a8089d0f8ab954813905d5.md) | 323 | `declaration-track:24a8089d0f8ab954813905d5a7587943df014df6cf7b13693168ce5082aaacc6` |
| 23 | `structure` | [SystemExport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/systemexport--d4c15c0341cd7206a2402628.md) | 338 | `declaration-track:d4c15c0341cd7206a240262843b9d1606fffb5f089e440db59a0faf140d6d447` |
| 24 | `structure` | [SystemUpgrade](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/systemupgrade--cbe9803fe6747d2866c5d23a.md) | 342 | `declaration-track:cbe9803fe6747d2866c5d23a49258a5d9b8f6a1c76901fe9aa8a9e9fcd9cf7e0` |
| 25 | `theorem` | [step_natural](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/step-natural--10512199894e70f36177d7e3.md) | 347 | `result-track:10512199894e70f36177d7e323f408f76f72dbeb10df778f69a7c8cf5866638f` |
| 26 | `theorem` | [observe_natural](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/observe-natural--2c3cc7dff5ff69d6bdc6fd6c.md) | 356 | `result-track:2c3cc7dff5ff69d6bdc6fd6cc8d30a139de489dc69e197a44a5ea9c97fc74f5d` |
| 27 | `structure` | [ObserverLocal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/observerlocal--92ccb704d4db5b76aab2a287.md) | 369 | `declaration-track:92ccb704d4db5b76aab2a2872c7bf7ad94cc44fdfcdc3cdb6cc8dbe723eedfd4` |
| 28 | `structure` | [ObserverLocalUpgrade](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/observerlocalupgrade--cea7845cf888c9a02f971a32.md) | 375 | `declaration-track:cea7845cf888c9a02f971a3245809ff414d6e521f46c17ae1b1625f625028fde` |
| 29 | `theorem` | [observerLocal_natural](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variant6e11193dfb4ce4f9a5eded7177f1c6cd57454520bed8d404ec97c131a23a8a83.lean/declarations/observerlocal-natural--62f53a6d4e5e3ed04a923c1d.md) | 389 | `result-track:62f53a6d4e5e3ed04a923c1d263295d31ce41675acb0b91520e1a886f0765617` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
