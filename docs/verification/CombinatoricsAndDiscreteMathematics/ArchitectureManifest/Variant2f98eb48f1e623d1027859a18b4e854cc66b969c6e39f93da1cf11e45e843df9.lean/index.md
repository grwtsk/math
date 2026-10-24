# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ArchitectureManifest.Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcd7aafe7ad20f2ed6855255c78997746eb4ed93",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcd7aafe7ad20f2ed6855255c78997746eb4ed93`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Manifest` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ProjectId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/projectid--1854c697d11f37cc9ca22731.md) | 24 | `declaration-track:1854c697d11f37cc9ca2273101c245d2e0521548a8fed293d6e56af2348c8417` |
| 2 | `def` | [directDependencies](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/directdependencies--b630d57d6a864637cd592784.md) | 62 | `declaration-track:b630d57d6a864637cd5927844107f0b19abd6c0fd1869965034cafc343f435e3` |
| 3 | `def` | [rank](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/rank--a6166cba55c8f1cc8e6567c4.md) | 118 | `declaration-track:a6166cba55c8f1cc8e6567c416e02c1a3437aecf90867cb580982284acb23ffb` |
| 4 | `def` | [graph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/graph--2450f0c6b1e36fe292fc9a5e.md) | 155 | `declaration-track:2450f0c6b1e36fe292fc9a5e36d91e72fd32304ba3d72aac3f6b6e93d5cae6a8` |
| 5 | `def` | [ownedNamespace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/ownednamespace--7e8d804000160d7e61e7fc0a.md) | 167 | `declaration-track:7e8d804000160d7e61e7fc0a6928d863692f3cf27d5b9ea10d8ba8f24d065a4f` |
| 6 | `def` | [dependencyInterfaceModules](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/dependencyinterfacemodules--87f16c6c009020190541c554.md) | 208 | `declaration-track:87f16c6c009020190541c5546eb042b872274e688509f9433c833a1c103d4b23` |
| 7 | `def` | [testModule](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/testmodule--bcdfda65752fa20f75f684c5.md) | 212 | `declaration-track:bcdfda65752fa20f75f684c57c4790a13605250b5b5140a0a16d30b708f96f91` |
| 8 | `def` | [ownershipPolicy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/ownershippolicy--d686ab3d01280edd12feee3c.md) | 216 | `declaration-track:d686ab3d01280edd12feee3ccd84f3e05e30e54480a878c332f38939e13de536` |
| 9 | `theorem` | [ownershipPolicy_consistent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/ownershippolicy-consistent--9b24507ff6d52482eb84424e.md) | 228 | `result-track:9b24507ff6d52482eb84424e5bc2228a5085c3e562dd2682dd1e7413843be6a8` |
| 10 | `def` | [currentInventory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/currentinventory--d4e3a851b63a37ed7d37f15b.md) | 243 | `declaration-track:d4e3a851b63a37ed7d37f15b9151de1395f5822ade76ca43e83352a51e6199a3` |
| 11 | `theorem` | [ownershipPolicy_accepts_currentInventory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/ownershippolicy-accepts-currentinventory--77dda0d62087f6de029db966.md) | 251 | `result-track:77dda0d62087f6de029db9666066176b968740c71046e743495a64ccc60466d5` |
| 12 | `theorem` | [aggregate_declaration_free](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/aggregate-declaration-free--5668b7f8480d9f3593ad8f58.md) | 259 | `result-track:5668b7f8480d9f3593ad8f58bb61851a912342ae1325a0fe49b58c8b6d29b675` |
| 13 | `def` | [placeholderFingerprint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/placeholderfingerprint--9d44284bc29728be9ff2a0e1.md) | 266 | `declaration-track:9d44284bc29728be9ff2a0e1bf23cd5d284dfa6984f5b449f02e35ad06849e13` |
| 14 | `def` | [manifest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/manifest--10b69891e6facbe5931d9df1.md) | 270 | `declaration-track:10b69891e6facbe5931d9df1346bc6827cfdf18a408b2ca9c13718a6955d5697` |
| 15 | `theorem` | [manifests_match_graph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/manifests-match-graph--003925ee7879b99a551bf42b.md) | 286 | `result-track:003925ee7879b99a551bf42ba8961fe9d66479b8db3d1e38a1efa66a0fe07d88` |
| 16 | `theorem` | [manifest_dependencies_respect_policy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/manifest-dependencies-respect-policy--663ef80de83b06cf6056fd38.md) | 292 | `result-track:663ef80de83b06cf6056fd38ae6f05ba75378c78933c3aaa19bf4c491f276b9e` |
| 17 | `theorem` | [integration_adapter_directionally_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/integration-adapter-directionally-valid--ced8df0b253a259ce4ad8d3b.md) | 303 | `result-track:ced8df0b253a259ce4ad8d3bf3a9b8c31e0674078360ae39d55fe3d2c011df85` |
| 18 | `theorem` | [ownedNamespace_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/ownednamespace-injective--0561d13b45b178bbaddc46c5.md) | 313 | `result-track:0561d13b45b178bbaddc46c54ffd7a7acb39373796eabd6ee52ee0f97f3cbac0` |
| 19 | `def` | [declaredBy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/declaredby--bf3fea92163dcb81d544d403.md) | 322 | `declaration-track:bf3fea92163dcb81d544d40360df9e08abc6d9fb13970d90a291863d6f49aa0d` |
| 20 | `theorem` | [unique_public_ownership](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/declarations/unique-public-ownership--9feddf72d3f46b505915a8f1.md) | 326 | `result-track:9feddf72d3f46b505915a8f16842ccc29cf81952729c2f9c4969a22322a0731d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
