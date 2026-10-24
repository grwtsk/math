# Verification target: GRWTSK.Geometry.AlgebraicGeometry.ActiveRegion.Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c149542422e1e393c991d726f7f710516dbb847e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c149542422e1e393c991d726f7f710516dbb847e`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.WorldModel.Registry` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ActiveModelRegion](../../../../../mathematics/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean/declarations/activemodelregion--d45ea10751c66e3832a343b9.md) | 15 | `declaration-track:d45ea10751c66e3832a343b9d24047c4c0ba7d46b44b74d8b4a571b155cccca5` |
| 2 | `def` | [ofDependencyClosure](../../../../../mathematics/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean/declarations/ofdependencyclosure--d0aec9ba0f1c6daed3b4b82f.md) | 35 | `declaration-track:d0aec9ba0f1c6daed3b4b82fd26280cd1b9ab0f0ad0bce7a014b7fe15bbd29f9` |
| 3 | `theorem` | [selectedVersion_unique](../../../../../mathematics/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean/declarations/selectedversion-unique--81a00212037f95772446e514.md) | 65 | `result-track:81a00212037f95772446e514a9ac8bf423ca7a9def15e6ea916d32baf09aec47` |
| 4 | `theorem` | [finite](../../../../../mathematics/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean/declarations/finite--b42d85113830295e775342f0.md) | 77 | `result-track:b42d85113830295e775342f07ab9337f444349dad62d62100820c29ddc752276` |
| 5 | `theorem` | [activeClosure_is_least_dependencyClosedRegion](../../../../../mathematics/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean/declarations/activeclosure-is-least-dependencyclosedregion--429e0d6c2a4889bcddf63569.md) | 86 | `result-track:429e0d6c2a4889bcddf63569b277af11451071991f05a990276b5d8dcad7b0aa` |
| 6 | `structure` | [Certificate](../../../../../mathematics/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean/declarations/certificate--a353a1d29aaf44da3e4d4461.md) | 120 | `declaration-track:a353a1d29aaf44da3e4d44619a9696770ce868de9593c9d7cc1dfd3e997a3531` |
| 7 | `def` | [Certificate.Accepted](../../../../../mathematics/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean/declarations/certificate-accepted--b5a1c771d7ba93276de77872.md) | 126 | `declaration-track:b5a1c771d7ba93276de77872bf221bff59ce6d822748d98cf307f2293e6bb823` |
| 8 | `theorem` | [Certificate.rejected_of_stale](../../../../../mathematics/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean/declarations/certificate-rejected-of-stale--907800eb1bc431973b87afce.md) | 133 | `result-track:907800eb1bc431973b87afce91f741c62cd8e918f41aa5e60a7f5d64f5aeb77b` |
| 9 | `structure` | [VersionSensitiveAttention](../../../../../mathematics/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean/declarations/versionsensitiveattention--96e12ed7186b907da7bdfb10.md) | 145 | `declaration-track:96e12ed7186b907da7bdfb10b7ec47498011318b3389d5585e86510c7229cd20` |
| 10 | `theorem` | [attention_changes_of_selectedVersion_change](../../../../../mathematics/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean/declarations/attention-changes-of-selectedversion-change--ee3520faafa8b571f82651a6.md) | 157 | `result-track:ee3520faafa8b571f82651a601344d3c0e69d616a274bb92cfd42f48fd56f6bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
