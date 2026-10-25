# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Upgrade.Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff2b8b5849d94a1559ca72acd5af1a13a3b2de32",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff2b8b5849d94a1559ca72acd5af1a13a3b2de32`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Project` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Refinement` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WorkspaceUpgrade](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/workspaceupgrade--49a292188bd83518f89fc6f5.md) | 27 | `declaration-track:49a292188bd83518f89fc6f5d20b6c3d99660d6b5a03d27888c46dfc79c68d23` |
| 2 | `def` | [mapDependencyEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/mapdependencyenv--825d5bd48eb04c6bf923da22.md) | 41 | `declaration-track:825d5bd48eb04c6bf923da22374727b458b69436eff9e2da7cc139fb04418d9e` |
| 3 | `theorem` | [mapDependencyEnv_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/mapdependencyenv-apply--3730fbe4f88610cdcd6e987e.md) | 52 | `result-track:3730fbe4f88610cdcd6e987e740263c5fc38938b912f17c15d1d59e2e45eea54` |
| 4 | `theorem` | [project_semantics_natural](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/project-semantics-natural--0008de612c1552470e5423c6.md) | 64 | `result-track:0008de612c1552470e5423c6347345b3e776c5c283242003719197b5be4b0d04` |
| 5 | `theorem` | [evaluate_natural](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/evaluate-natural--327d87f1e0663cc14a92e62a.md) | 76 | `result-track:327d87f1e0663cc14a92e62aeb87fe8d74147b174a664cf7c6635e13b7e1813f` |
| 6 | `def` | [tenantEnvironmentMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/tenantenvironmentmap--90a2a182598306ebd81cd6f3.md) | 91 | `declaration-track:90a2a182598306ebd81cd6f3db1d1d5359707a7bd3147aee9cae67106003489b` |
| 7 | `def` | [tenantRootMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/tenantrootmap--19148c2940ef61c71c7c5d7c.md) | 101 | `declaration-track:19148c2940ef61c71c7c5d7cfc05fd211bc07f960f670c559a9996ac6d156de4` |
| 8 | `theorem` | [tenantEnvironmentMap_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/tenantenvironmentmap-apply--b0753a4fffa12d71dd16dc31.md) | 112 | `result-track:b0753a4fffa12d71dd16dc31dd8a827aee9d8520fcc7e829a00084fe3db34d63` |
| 9 | `theorem` | [tenantRootMap_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/tenantrootmap-apply--fc92db35618f776f5a60f8dc.md) | 125 | `result-track:fc92db35618f776f5a60f8dc38caf9fbf730f01b9a5c68ffbdf049a49820cabf` |
| 10 | `structure` | [WorkspaceArtifactMigration](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/workspaceartifactmigration--d2e4bc0363db0962370cd6f2.md) | 146 | `declaration-track:d2e4bc0363db0962370cd6f290c14b9fe6d6ffd97cc5f901e347d567686b8e82` |
| 11 | `theorem` | [migratedArtifact_valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/migratedartifact-valid--60498fe267beb8eac54fd84e.md) | 167 | `result-track:60498fe267beb8eac54fd84e976d8d8a409dfd9a4f134aafe0f93b8d9c97c61e` |
| 12 | `theorem` | [migratedArtifact_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/migratedartifact-sound--5cc4893383163036b39f2d57.md) | 186 | `result-track:5cc4893383163036b39f2d578742dd938581e7dc4dd91d2d53913d7969e2dd22` |
| 13 | `structure` | [EquivalenceUpgrade](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/equivalenceupgrade--f6613f19b26e78d307914492.md) | 212 | `declaration-track:f6613f19b26e78d307914492eb842a46f7691215223da61816ea94c5b0cc740c` |
| 14 | `def` | [equivPublic](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/equivpublic--500bb99e725626c8254ef46d.md) | 222 | `declaration-track:500bb99e725626c8254ef46d2ebd58cd67f9fce87c4e84c9203ed5f69a77568b` |
| 15 | `theorem` | [equivPublic_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/equivpublic-apply--5dfadc269c149eb7507604ca.md) | 231 | `result-track:5dfadc269c149eb7507604ca42766ef11d018a2f90706cff5406a179c15aac12` |
| 16 | `structure` | [FactorUpgrade](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/factorupgrade--0320054363982ef5b670922e.md) | 244 | `declaration-track:0320054363982ef5b670922ecfefed6c3c7961f57de1736e04e15947440f363f` |
| 17 | `structure` | [RefinementUpgrade](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/refinementupgrade--929b6716ee5fd170d3bc30ab.md) | 252 | `declaration-track:929b6716ee5fd170d3bc30ab767e9ca1efe54c9bb640a275200c861411e90f48` |
| 18 | `theorem` | [map_bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/map-bijective--add07ddf5af9d5e08fb060e6.md) | 265 | `result-track:add07ddf5af9d5e08fb060e677c519aa23ac12370edf76f3a0426d0246ba12c9` |
| 19 | `def` | [toEquivalenceUpgrade](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/toequivalenceupgrade--2a5f9f7e035949c2cea36c8c.md) | 279 | `declaration-track:2a5f9f7e035949c2cea36c8c2ff4985d77885047b9405457b4f93123dd893e20` |
| 20 | `def` | [toFactorUpgrade](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/tofactorupgrade--a368290eb2335e17217384ef.md) | 293 | `declaration-track:a368290eb2335e17217384ef4c59639844b28808237c3d5cf9aad5449b98657b` |
| 21 | `inductive` | [UpgradeDisposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/upgradedisposition--60941b5b6436acc540ceb8be.md) | 305 | `declaration-track:60941b5b6436acc540ceb8be9c0a9592294efc8a1f81d6e9b01d24c386f55ee3` |
| 22 | `structure` | [ImplementationMigration](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/implementationmigration--5f326236d89ea8ff18ef42c1.md) | 315 | `declaration-track:5f326236d89ea8ff18ef42c113d6780328a48aae65eba5bb6d157c694d04cba2` |
| 23 | `structure` | [SystemExport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/systemexport--33ebd9e32145fb5d341ce1d1.md) | 330 | `declaration-track:33ebd9e32145fb5d341ce1d1a0eef1f2c40d192c348b927525aa861d8fc154b5` |
| 24 | `structure` | [SystemUpgrade](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/systemupgrade--b79d06a32f680b755c274b09.md) | 334 | `declaration-track:b79d06a32f680b755c274b0983f143f364c73774b37d8b585a6d1e5ba20fa010` |
| 25 | `theorem` | [step_natural](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/step-natural--a8ae6255e2f413396cccb8de.md) | 339 | `result-track:a8ae6255e2f413396cccb8de899ab03ab264803d082e44e7152c6b487dc81af4` |
| 26 | `theorem` | [observe_natural](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/observe-natural--5c103fc3dad51eee8788a77f.md) | 348 | `result-track:5c103fc3dad51eee8788a77f10ca2761bcd2cda734e60c6af8ecb3154275ec40` |
| 27 | `structure` | [ObserverLocal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/observerlocal--83bf22c17556ca29f90a5533.md) | 361 | `declaration-track:83bf22c17556ca29f90a55339b5cdb818412d316bdd93c23eb95bbc62fd8506e` |
| 28 | `structure` | [ObserverLocalUpgrade](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/observerlocalupgrade--97a3de1a2b6cca1aef36fc92.md) | 367 | `declaration-track:97a3de1a2b6cca1aef36fc92ce3e855fe08a4a57715b9ab88de23010a0074af9` |
| 29 | `theorem` | [observerLocal_natural](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Upgrade/Variantbe11d32407961e61ee55b0af6ca2d4ee862a56dcd63cfd3e974fd67cc3d804f3.lean/declarations/observerlocal-natural--be01896114b54e578d2fb034.md) | 381 | `result-track:be01896114b54e578d2fb0344f53fa9befa9083d956e3600e61a698b68004426` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
