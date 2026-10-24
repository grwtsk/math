# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "517a5db4594b3b8738d999242832aff3de83a8f4",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `517a5db4594b3b8738d999242832aff3de83a8f4`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.StoneCech` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHausLike.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CompHaus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/comphaus--7fb576362200ffd09428faba.md) | 48 | `declaration-track:7fb576362200ffd09428fabadb0cfb706ed6cda516ec31621bdc4d3ab3014f3e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/instance--01af930affe3b3d05905bc71.md) | 52 | `declaration-track:01af930affe3b3d05905bc71dd93d7f37e606b34312523e0806cb377680f0853` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/instance--ccec1415e6c08aa808cf84b1.md) | 55 | `declaration-track:ccec1415e6c08aa808cf84b176021f5ac2e130d1d6eb752e423347e1ad3e0e1a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/instance--41589961a41e36bf767c65ed.md) | 58 | `declaration-track:41589961a41e36bf767c65ed87b174a215f872f743fdb3aac897a36dde9b0d46` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/instance--0ee2dafde9af6b3ee4d3c95d.md) | 61 | `declaration-track:0ee2dafde9af6b3ee4d3c95dd974ea599a6dd90c6136abfa2de525026276d304` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/instance--c62b91acd9079c3d3448dfbf.md) | 66 | `declaration-track:c62b91acd9079c3d3448dfbf985444ceb3a5620720d049ac513e403a5a01c05d` |
| 7 | `abbrev` | [of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/of--c22b4cabaa6c7ac42e5756eb.md) | 71 | `declaration-track:c22b4cabaa6c7ac42e5756eba7f017885aab69be86b76ada3b795c6c044e0f86` |
| 8 | `abbrev` | [compHausToTop](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/comphaustotop--afa6cab062c54fd72d5a404f.md) | 76 | `declaration-track:afa6cab062c54fd72d5a404fa1666ca0a95f1d68c17b3e3fb70a97800168c367` |
| 9 | `def` | [stoneCechObj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/stonecechobj--770a30113fa38c1e5fc20da1.md) | 83 | `declaration-track:770a30113fa38c1e5fc20da1ed5a9bb30acb71a2d9966f8228bd44faf9759325` |
| 10 | `def` | [stoneCechEquivalence](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/stonecechequivalence--0e0d81b0c67aed707eb254a9.md) | 89 | `declaration-track:0e0d81b0c67aed707eb254a9b2f977957a80c5ec617257577b9f9fabd2074f05` |
| 11 | `def` | [topToCompHaus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/toptocomphaus--94d6343114b2f0e291d8a662.md) | 113 | `declaration-track:94d6343114b2f0e291d8a6627ab3d617ce7ed6e47fb5e63be03139ad021d20c5` |
| 12 | `theorem` | [topToCompHaus_obj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/toptocomphaus-obj--f836c3a2463a804268cb06c4.md) | 116 | `result-track:f836c3a2463a804268cb06c41cbe78a535b1718c4154a23bb7c892763cb570c5` |
| 13 | `instance` | [compHausToTop.reflective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/comphaustotop-reflective--8424aa8d4fe26410b8147077.md) | 121 | `declaration-track:8424aa8d4fe26410b8147077ced1cf8c5f55d971302a1f15d584ca7d263fbe1e` |
| 14 | `instance` | [compHausToTop.createsLimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/comphaustotop-createslimits--4f053454925f9c76ac8dcd4e.md) | 125 | `declaration-track:4f053454925f9c76ac8dcd4e1e0c204c5e135bc4a8ecf89e75fc5ec5ebbf03a1` |
| 15 | `instance` | [CompHaus.hasLimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/comphaus-haslimits--5a985a28c1163079eba567de.md) | 128 | `declaration-track:5a985a28c1163079eba567de5d991ba7ced0174e2e9a9626d9d33b7b4da5560d` |
| 16 | `instance` | [CompHaus.hasColimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/comphaus-hascolimits--07596a97277b91b067404823.md) | 131 | `declaration-track:07596a97277b91b0674048234e2f5043fe8885039389029c9d974418a0a4e970` |
| 17 | `def` | [limitCone](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/limitcone--4f10f946a94afe5ff777796d.md) | 138 | `declaration-track:4f10f946a94afe5ff777796dffe762da85e0e5678134bb18f0f2bf124bb99b8b` |
| 18 | `def` | [limitConeIsLimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/limitconeislimit--dac6a66587421ace77aed7b8.md) | 174 | `declaration-track:dac6a66587421ace77aed7b8439d4ec292f5425cdf037e4a3a6cbd06d9743ae8` |
| 19 | `theorem` | [epi_iff_surjective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/epi-iff-surjective--e1efb34e0877717ca83aaeea.md) | 181 | `result-track:e1efb34e0877717ca83aaeea64dba4e417544f1f28d12b61e39e89b5e4f73273` |
| 20 | `abbrev` | [compHausLikeToCompHaus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant244e4f6d1971127ebe7e8f51ecf37f4d73f8e2203b6e939bc406808e5cce1019.lean/declarations/comphausliketocomphaus--cef719510804eb1209faf907.md) | 217 | `declaration-track:cef719510804eb1209faf907da1dbc42683496b2c5b18137228e9b87c50fd3f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
