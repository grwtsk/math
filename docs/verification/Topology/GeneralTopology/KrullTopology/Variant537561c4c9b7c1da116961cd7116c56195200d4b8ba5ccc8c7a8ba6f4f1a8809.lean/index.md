# Verification target: GRWTSK.Topology.GeneralTopology.KrullTopology.Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecfa5ca65fbd459e20de06a2362187f0ad3edfaf",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecfa5ca65fbd459e20de06a2362187f0ad3edfaf`.

Source path: `GRWTSK/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Galois.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.FilterBasis` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.OpenSubgroup` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteExts](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/declarations/finiteexts--be94709847e87542e9463623.md) | 62 | `declaration-track:be94709847e87542e94636235c572cfd7042a94cbd1d0372acebe8964d9c83f0` |
| 2 | `def` | [fixedByFinite](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/declarations/fixedbyfinite--d52fbcf5bd8903ac74599474.md) | 68 | `declaration-track:d52fbcf5bd8903ac745994741a3aa8015ad99f0085690ded5146470dd10cfa09` |
| 3 | `theorem` | [top_fixedByFinite](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/declarations/top-fixedbyfinite--1cbdc5764c9a8e67a280b678.md) | 78 | `result-track:1cbdc5764c9a8e67a280b678b677db441c8b81702316cfbf7ac67c6382a8e603` |
| 4 | `def` | [galBasis](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/declarations/galbasis--b9d328cff1bcd7e22265423e.md) | 87 | `declaration-track:b9d328cff1bcd7e22265423ed559f77d9a06b6d7b40922f0506f3402b6b15e9d` |
| 5 | `theorem` | [mem_galBasis_iff](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/declarations/mem-galbasis-iff--8a1f8bf5e2b35995f7b6f7ef.md) | 99 | `result-track:8a1f8bf5e2b35995f7b6f7ef87b36989818aac3199a70e9d878cd94c11e9140e` |
| 6 | `def` | [galGroupBasis](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/declarations/galgroupbasis--22e4ed3968010d1746a353e8.md) | 105 | `declaration-track:22e4ed3968010d1746a353e838aef719d0d1fb67e406e2f8ff5c2bed1d0351b4` |
| 7 | `instance` | [krullTopology](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/declarations/krulltopology--68aa2498c6ad476116da652e.md) | 138 | `declaration-track:68aa2498c6ad476116da652eaf1f704fbdff17e359a3e8d95d1b825c735ee8e7` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/declarations/instance--f7b15ae63c817db8b76a402d.md) | 144 | `declaration-track:f7b15ae63c817db8b76a402dd1ec10ddc9aabb1036e697023a26c7a255892d41` |
| 9 | `lemma` | [krullTopology_mem_nhds_one_iff](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/declarations/krulltopology-mem-nhds-one-iff--0f77d032d47b32d92420769b.md) | 148 | `result-track:0f77d032d47b32d92420769bc7df2c7f4714c2ca511d4d155314c4b8a0ce0dd5` |
| 10 | `lemma` | [krullTopology_mem_nhds_one_iff_of_normal](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/declarations/krulltopology-mem-nhds-one-iff-of-normal--cb19ba88dbc7e3791d138c81.md) | 159 | `result-track:cb19ba88dbc7e3791d138c8128b01d107db03d8902172b3fdb633004cc4a22a0` |
| 11 | `theorem` | [IntermediateField.fixingSubgroup_isOpen](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/declarations/intermediatefield-fixingsubgroup-isopen--1e5a21caf62b9e134b7c1924.md) | 174 | `result-track:1e5a21caf62b9e134b7c1924afa76308cfab255c56d5ffb6af81aa90e6a1ac8d` |
| 12 | `theorem` | [IntermediateField.fixingSubgroup_isClosed](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/declarations/intermediatefield-fixingsubgroup-isclosed--5d98397e08bad015e972081d.md) | 184 | `result-track:5d98397e08bad015e972081d0e3a2cfc9f6f71f4cd159999fbbbbb7056bf032e` |
| 13 | `theorem` | [krullTopology_t2](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/declarations/krulltopology-t2--3b5aa637c4b6bed682cf3187.md) | 190 | `result-track:3b5aa637c4b6bed682cf3187e01b3e3befd8137f4e83f7c46c7bac71c24f7ab1` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/declarations/instance--2e6aa71ea30585c24dba13c8.md) | 228 | `declaration-track:2e6aa71ea30585c24dba13c8abd11ed5f443cf08a0cf01492ff94c1de30076e8` |
| 15 | `theorem` | [krullTopology_isTotallySeparated](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/declarations/krulltopology-istotallyseparated--2994b623f6e863c9320e994f.md) | 246 | `result-track:2994b623f6e863c9320e994fb588ab070ec4fb0bc7dc7d1844ceab866c4e30f3` |
| 16 | `instance` | [krullTopology_discreteTopology_of_finiteDimensional](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/declarations/krulltopology-discretetopology-of-finitedimensional--40c74e52d21073dba73e7f6f.md) | 255 | `declaration-track:40c74e52d21073dba73e7f6fc9c355bd59a24546e3fbd911f0877489845ea20a` |
| 17 | `theorem` | [map_fixingSubgroup](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/declarations/map-fixingsubgroup--61a28b381c0db06f7cf53d67.md) | 272 | `result-track:61a28b381c0db06f7cf53d67a119b382db0ee28cd4fdd459dc3afc959bbc68c4` |
| 18 | `theorem` | [map_fixingSubgroup_index](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/declarations/map-fixingsubgroup-index--8aba506ed282e1f0ac510300.md) | 291 | `result-track:8aba506ed282e1f0ac5103007c10df79ae84d2e86f3fb99eafc8d85b44281562` |
| 19 | `theorem` | [finrank_eq_fixingSubgroup_index](../../../../../mathematics/Topology/GeneralTopology/KrullTopology/Variant537561c4c9b7c1da116961cd7116c56195200d4b8ba5ccc8c7a8ba6f4f1a8809.lean/declarations/finrank-eq-fixingsubgroup-index--a66aba2b60d74d5ff47c8237.md) | 299 | `result-track:a66aba2b60d74d5ff47c8237a8c364cac4b1669f04b55b304823fa4c7373a036` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
