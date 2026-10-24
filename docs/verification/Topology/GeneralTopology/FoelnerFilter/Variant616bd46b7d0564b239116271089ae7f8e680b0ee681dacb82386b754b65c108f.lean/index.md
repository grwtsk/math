# Verification target: GRWTSK.Topology.GeneralTopology.FoelnerFilter.Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9dc382502a9964b7efbbb15afdb03ea4e85504de",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9dc382502a9964b7efbbb15afdb03ea4e85504de`.

Source path: `GRWTSK/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAddFoelner](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/declarations/isaddfoelner--3d543aeccdff68b2d4d4925e.md) | 86 | `declaration-track:3d543aeccdff68b2d4d4925e0dce0434756db6308b2d932f9e8b2a3d895abc72` |
| 2 | `structure` | [IsFoelner](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/declarations/isfoelner--3660fc91927cb754507b18f4.md) | 99 | `declaration-track:3660fc91927cb754507b18f41bb4f954e899c168b96a3be0bcd820e4a0880b70` |
| 3 | `theorem` | [univ_of_isFiniteMeasure](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/declarations/univ-of-isfinitemeasure--8bcd9c58dd0f1757f503aaf6.md) | 112 | `result-track:8bcd9c58dd0f1757f503aaf659bfd1dca1319df825dba607b4485fe4cca40afc` |
| 4 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/declarations/mono--a0de0549e6f2dc7522d761d0.md) | 120 | `result-track:a0de0549e6f2dc7522d761d05836ca918452cd391c85e4ec19fdd308ad96cf43` |
| 5 | `theorem` | [comp_tendsto](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/declarations/comp-tendsto--98071fa813243f7f540b89c1.md) | 128 | `result-track:98071fa813243f7f540b89c18e738b8313d8c419f057b48ca6347034beb70cdd` |
| 6 | `def` | [mean](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/declarations/mean--6f19097b168c8e45519cff73.md) | 140 | `declaration-track:6f19097b168c8e45519cff734b79bbcc01e0f1b2a8a7abb362d6b6c8cb06e3ce` |
| 7 | `theorem` | [tendsto_nhds_mean](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/declarations/tendsto-nhds-mean--3a8aa5e75b3e4d45caf52603.md) | 144 | `result-track:3a8aa5e75b3e4d45caf52603b430e696a53b786f45dd1e91695dfd3517ddab05` |
| 8 | `theorem` | [mean_univ_eq_one](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/declarations/mean-univ-eq-one--98a4a26af69d14814f834671.md) | 154 | `result-track:98a4a26af69d14814f8346714f3072fc8b76f4f7bae9b860c0d1e6c5850142fa` |
| 9 | `theorem` | [mean_union_eq_add_of_disjoint](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/declarations/mean-union-eq-add-of-disjoint--654efd416bf17616d8afbf5f.md) | 161 | `result-track:654efd416bf17616d8afbf5fc6713976fc584b80b19cce4b1113aac6ccffa431` |
| 10 | `theorem` | [tendsto_meas_smul_symmDiff_smul](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/declarations/tendsto-meas-smul-symmdiff-smul--551fb17931ff0cce9643c0e6.md) | 171 | `result-track:551fb17931ff0cce9643c0e61d4e4b77087bd2b857bd7a3ec660e606c0481393` |
| 11 | `theorem` | [mean_smul_eq_mean_smul](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/declarations/mean-smul-eq-mean-smul--03e94e7a48a64d9d91800e07.md) | 177 | `result-track:03e94e7a48a64d9d91800e07a015e1307579cd56979c31605b105d3d6a98153e` |
| 12 | `theorem` | [mean_smul_eq_mean](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/declarations/mean-smul-eq-mean--db5584de2acfc54a0feb8750.md) | 193 | `result-track:db5584de2acfc54a0feb875072ff0ba32ec36046ba5d5c2bf3f0d7d450a178c3` |
| 13 | `theorem` | [amenable](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/declarations/amenable--7da4ce0a09cf3a7f2caf7a24.md) | 204 | `result-track:7da4ce0a09cf3a7f2caf7a24ffa52f43c53fc56316f5d700bc154bbb51d8be3a` |
| 14 | `def` | [maxFoelner](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/declarations/maxfoelner--bd46ef3e0e4ede9a3d9121c2.md) | 224 | `declaration-track:bd46ef3e0e4ede9a3d9121c2c074383a0a14ed569df640b47825151b1e7f7abb` |
| 15 | `theorem` | [isFoelner_iff_tendsto](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/declarations/isfoelner-iff-tendsto--09b9f61c6e50ba48b64b8185.md) | 230 | `result-track:09b9f61c6e50ba48b64b818534845bdceb8b0d5b5703ea727196c0cd4b0e4454` |
| 16 | `theorem` | [isFoelner_maxFoelner](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/declarations/isfoelner-maxfoelner--5cc5fdac47b23aed73e31aab.md) | 235 | `result-track:5cc5fdac47b23aed73e31aab3ec8447385ce43be422110f6ae252493a2f750a0` |
| 17 | `theorem` | [amenable_of_maxFoelner_neBot](../../../../../mathematics/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/declarations/amenable-of-maxfoelner-nebot--597aad3b1710284eae09a41f.md) | 239 | `result-track:597aad3b1710284eae09a41f4dbc799aabd15f004b3db93e071295342e2e90b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
