# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Upgrade.Variant16f388f0551d7b3e48dab726379539ed6ca256a92388adf1db01f386c6bf8fac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e021d2f78ec534220bb767f0c701caef5698e9d6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant16f388f0551d7b3e48dab726379539ed6ca256a92388adf1db01f386c6bf8fac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant16f388f0551d7b3e48dab726379539ed6ca256a92388adf1db01f386c6bf8fac.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant16f388f0551d7b3e48dab726379539ed6ca256a92388adf1db01f386c6bf8fac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e021d2f78ec534220bb767f0c701caef5698e9d6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant16f388f0551d7b3e48dab726379539ed6ca256a92388adf1db01f386c6bf8fac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant16f388f0551d7b3e48dab726379539ed6ca256a92388adf1db01f386c6bf8fac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.System.Project` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [UpgradeClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant16f388f0551d7b3e48dab726379539ed6ca256a92388adf1db01f386c6bf8fac.lean/declarations/upgradeclass--ed9b2c9b3fc9acf32c3cca6a.md) | 8 | `declaration-track:ed9b2c9b3fc9acf32c3cca6a79f927a0d5d255c72fc9b8b4b5df62df001d51a1` |
| 2 | `structure` | [WorkspaceUpgrade](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant16f388f0551d7b3e48dab726379539ed6ca256a92388adf1db01f386c6bf8fac.lean/declarations/workspaceupgrade--c9508f875a25d35aa1d7cb38.md) | 14 | `declaration-track:c9508f875a25d35aa1d7cb381cad091d750a1906157b9858d653800c66c83ee2` |
| 3 | `def` | [DependencyClosed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant16f388f0551d7b3e48dab726379539ed6ca256a92388adf1db01f386c6bf8fac.lean/declarations/dependencyclosed--439cbb10cd6052b0c22a6d39.md) | 26 | `declaration-track:439cbb10cd6052b0c22a6d397e87d606900bf1d72f49108d3c3c9424e0d1cb7d` |
| 4 | `def` | [Affected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant16f388f0551d7b3e48dab726379539ed6ca256a92388adf1db01f386c6bf8fac.lean/declarations/affected--f743462e1bbb8364eded2448.md) | 35 | `declaration-track:f743462e1bbb8364eded24488187f798b3b7477207d5c073162c0f4f67235b3d` |
| 5 | `theorem` | [changed_subset_affected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant16f388f0551d7b3e48dab726379539ed6ca256a92388adf1db01f386c6bf8fac.lean/declarations/changed-subset-affected--49d39f9f097754cc34656210.md) | 44 | `result-track:49d39f9f097754cc34656210a7a9f99c76b6adb73498d7b8b5dbef73a645f030` |
| 6 | `theorem` | [affected_least](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant16f388f0551d7b3e48dab726379539ed6ca256a92388adf1db01f386c6bf8fac.lean/declarations/affected-least--30c7946fc79618df27e93774.md) | 52 | `result-track:30c7946fc79618df27e93774074a2c701850e4774834657639aa35d2b8498cce` |
| 7 | `def` | [TenantUnaffected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant16f388f0551d7b3e48dab726379539ed6ca256a92388adf1db01f386c6bf8fac.lean/declarations/tenantunaffected--b034a254b80265fe16b31daf.md) | 67 | `declaration-track:b034a254b80265fe16b31daf27815bca1bc78ad8548b832c4774a4bb1bc88586` |
| 8 | `theorem` | [tenant_unaffected_iff_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Upgrade/Variant16f388f0551d7b3e48dab726379539ed6ca256a92388adf1db01f386c6bf8fac.lean/declarations/tenant-unaffected-iff-disjoint--938f0dc73802bbee31eac15d.md) | 71 | `result-track:938f0dc73802bbee31eac15d0da2083166070ca902292859880b246089cd8632` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
