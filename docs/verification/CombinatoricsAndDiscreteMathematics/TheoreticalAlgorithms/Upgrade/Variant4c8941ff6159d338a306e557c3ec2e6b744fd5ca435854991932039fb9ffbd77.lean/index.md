# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Upgrade.Variant4c8941ff6159d338a306e557c3ec2e6b744fd5ca435854991932039fb9ffbd77

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c67cd0b50e00bbd7a64467104ecc0e2a0fda4060",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant4c8941ff6159d338a306e557c3ec2e6b744fd5ca435854991932039fb9ffbd77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant4c8941ff6159d338a306e557c3ec2e6b744fd5ca435854991932039fb9ffbd77.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant4c8941ff6159d338a306e557c3ec2e6b744fd5ca435854991932039fb9ffbd77.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c67cd0b50e00bbd7a64467104ecc0e2a0fda4060`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant4c8941ff6159d338a306e557c3ec2e6b744fd5ca435854991932039fb9ffbd77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant4c8941ff6159d338a306e557c3ec2e6b744fd5ca435854991932039fb9ffbd77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.System.Project` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [UpgradeClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant4c8941ff6159d338a306e557c3ec2e6b744fd5ca435854991932039fb9ffbd77.lean/declarations/upgradeclass--69684e809439ab71df525ec0.md) | 16 | `declaration-track:69684e809439ab71df525ec0b5225223913f8ef51f6deaf07e42f0a7035c2f87` |
| 2 | `structure` | [WorkspaceUpgrade](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant4c8941ff6159d338a306e557c3ec2e6b744fd5ca435854991932039fb9ffbd77.lean/declarations/workspaceupgrade--e8dcd99054f47eb930953671.md) | 22 | `declaration-track:e8dcd99054f47eb930953671f3f6e29e18a16d41803245bb28b646971e3bce3c` |
| 3 | `def` | [DependencyClosed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant4c8941ff6159d338a306e557c3ec2e6b744fd5ca435854991932039fb9ffbd77.lean/declarations/dependencyclosed--40e55d871cada03432a2814e.md) | 34 | `declaration-track:40e55d871cada03432a2814e978a6f2c212773b3d03544cdb124e26d4f8e86c4` |
| 4 | `def` | [Affected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant4c8941ff6159d338a306e557c3ec2e6b744fd5ca435854991932039fb9ffbd77.lean/declarations/affected--cbabdb939d53f22c0f167422.md) | 43 | `declaration-track:cbabdb939d53f22c0f1674224b2d98767527ad9929653522e5f6d73c6b62a361` |
| 5 | `theorem` | [changed_subset_affected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant4c8941ff6159d338a306e557c3ec2e6b744fd5ca435854991932039fb9ffbd77.lean/declarations/changed-subset-affected--1ce192199708f881ef253718.md) | 52 | `result-track:1ce192199708f881ef2537187bbee03082d0f519184877d9fbcb858a0c6adfec` |
| 6 | `theorem` | [affected_least](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant4c8941ff6159d338a306e557c3ec2e6b744fd5ca435854991932039fb9ffbd77.lean/declarations/affected-least--0dfbaded3d202fd15315b8f8.md) | 60 | `result-track:0dfbaded3d202fd15315b8f89b6d2ce30e868a3faffe88ad5ab9702b896ae5aa` |
| 7 | `def` | [TenantUnaffected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant4c8941ff6159d338a306e557c3ec2e6b744fd5ca435854991932039fb9ffbd77.lean/declarations/tenantunaffected--803252dea54a644783961b16.md) | 75 | `declaration-track:803252dea54a644783961b161415a855a82bdd648f140d966882aa874f3ca1bb` |
| 8 | `theorem` | [tenant_unaffected_iff_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant4c8941ff6159d338a306e557c3ec2e6b744fd5ca435854991932039fb9ffbd77.lean/declarations/tenant-unaffected-iff-disjoint--ff51eaa9e0c572e8f5672d53.md) | 79 | `result-track:ff51eaa9e0c572e8f5672d5341a9a3d886a4348cbfb6637324e1c00379eaf820` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
