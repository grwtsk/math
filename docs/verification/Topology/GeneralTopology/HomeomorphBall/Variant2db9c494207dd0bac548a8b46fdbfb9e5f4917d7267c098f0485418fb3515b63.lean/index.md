# Verification target: GRWTSK.Topology.GeneralTopology.HomeomorphBall.Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f98adc08604d749c89b6224084e0f635e4c7aa7f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f98adc08604d749c89b6224084e0f635e4c7aa7f`.

Source path: `GRWTSK/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.PartialHomeomorph` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Pointwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sqrt` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PartialHomeomorph.univUnitBall](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/declarations/partialhomeomorph-univunitball--c98758f78708a0682347b2df.md) | 49 | `declaration-track:c98758f78708a0682347b2df015a247c49bca3a97e75bad3960da8730d6137e7` |
| 2 | `theorem` | [PartialHomeomorph.univUnitBall_apply_zero](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/declarations/partialhomeomorph-univunitball-apply-zero--03a939da6aa032a6f3d19f85.md) | 83 | `result-track:03a939da6aa032a6f3d19f85345534b2566646810ccbf22b88fe42a1c1905c36` |
| 3 | `theorem` | [PartialHomeomorph.univUnitBall_symm_apply_zero](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/declarations/partialhomeomorph-univunitball-symm-apply-zero--8ad49f9f3663c977f319ea7a.md) | 87 | `result-track:8ad49f9f3663c977f319ea7a122771840f85b4361774053e6345b79623157393` |
| 4 | `def` | [Homeomorph.unitBall](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/declarations/homeomorph-unitball--e00a8dce725c4e2c2b6feeda.md) | 99 | `declaration-track:e00a8dce725c4e2c2b6feedab98caf2237ae8f9feece0fd5881903ffcd1ff7a0` |
| 5 | `theorem` | [Homeomorph.coe_unitBall_apply_zero](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/declarations/homeomorph-coe-unitball-apply-zero--dec072bee13442a4d69aa773.md) | 103 | `result-track:dec072bee13442a4d69aa773314096cef1ece2e2912846dc9a0018fffff451d4` |
| 6 | `def` | [unitBallBall](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/declarations/unitballball--10c0d063eb7f2d25a3441450.md) | 114 | `declaration-track:10c0d063eb7f2d25a34414507027cdfae849dfec444f41f0816ac893aba2a1d8` |
| 7 | `def` | [univBall](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/declarations/univball--891f9739fedef5818364aee1.md) | 126 | `declaration-track:891f9739fedef5818364aee16703398c9a42c0f159eb8bc9459307c204339678` |
| 8 | `theorem` | [univBall_source](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/declarations/univball-source--b0daa577e877c0d5f42f6b29.md) | 131 | `result-track:b0daa577e877c0d5f42f6b29ba39e867b27b0bd90757027095e1889a70b2e72e` |
| 9 | `theorem` | [univBall_target](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/declarations/univball-target--38876c01ef0c54223466dabe.md) | 134 | `result-track:38876c01ef0c54223466dabeabcdc4b66b45dfa154dde29dd3a200760f12c06f` |
| 10 | `theorem` | [ball_subset_univBall_target](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/declarations/ball-subset-univball-target--534b7edf27649f7ed75f2b46.md) | 137 | `result-track:534b7edf27649f7ed75f2b46dc0502a48c1909b23c4ea681ef7dc95bb39f8771` |
| 11 | `theorem` | [univBall_apply_zero](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/declarations/univball-apply-zero--51ac42b39e6cd04aae687de5.md) | 144 | `result-track:51ac42b39e6cd04aae687de5778bba3e8be017d96805843cc7a846867f6379cc` |
| 12 | `theorem` | [univBall_symm_apply_center](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/declarations/univball-symm-apply-center--a2420cf0305359fec73da785.md) | 148 | `result-track:a2420cf0305359fec73da7852cb8ac07b0309f823fae078eb666227d53cdd8c3` |
| 13 | `theorem` | [continuous_univBall](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/declarations/continuous-univball--b7b44d1679305d0effdcf0ee.md) | 153 | `result-track:b7b44d1679305d0effdcf0ee0cd61993911a1dbaf4f03db5d5eb9f1c512ddbae` |
| 14 | `theorem` | [continuousOn_univBall_symm](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/declarations/continuouson-univball-symm--6a439a8b15f63cc8dcd61fc3.md) | 156 | `result-track:6a439a8b15f63cc8dcd61fc314b5965713bea0746ee082421148f32fab683cab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
