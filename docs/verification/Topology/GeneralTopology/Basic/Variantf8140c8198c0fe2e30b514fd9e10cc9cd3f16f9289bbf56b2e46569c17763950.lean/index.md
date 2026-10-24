# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30df034906efa8b7cd387e8b2762835a503fecfa",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30df034906efa8b7cd387e8b2762835a503fecfa`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FintypeCat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Profinite` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Profinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/profinite--fe06783843c5f3979ad008b5.md) | 45 | `declaration-track:fe06783843c5f3979ad008b5638952be44e497fec59e685bcf1e37915bd896b4` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/instance--ddd26a10cd6b7a615e0e9016.md) | 49 | `declaration-track:ddd26a10cd6b7a615e0e9016b61fb28c7f1c8db7117c92c6ffb0a7939aa08216` |
| 3 | `abbrev` | [of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/of--0f1176929b03dac243564f40.md) | 56 | `declaration-track:0f1176929b03dac243564f403015f99e1eda53e4c7aae86e095c3f42c516a725` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/instance--390882085201ebf2376d98c1.md) | 60 | `declaration-track:390882085201ebf2376d98c1188a1eb08d796a61a37b0785d1391ef9f3aa24b3` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/instance--160a61628e3d176ece13cae9.md) | 63 | `declaration-track:160a61628e3d176ece13cae901a65773400b34ff6b4fc6e075398953e2d26dd0` |
| 6 | `abbrev` | [profiniteToCompHaus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/profinitetocomphaus--cfdebb4d1102b62afba188da.md) | 69 | `declaration-track:cfdebb4d1102b62afba188da30554f80a9e5ee8cc28bdefd4c8986309f20dd6d` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/instance--633cf0bd3169021039ba711c.md) | 74 | `declaration-track:633cf0bd3169021039ba711cd30181ec79e1b4179a88366d83e29cd63a629879` |
| 8 | `abbrev` | [Profinite.toTopCat](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/profinite-totopcat--ec59a16f1e6e2421eaba6261.md) | 79 | `declaration-track:ec59a16f1e6e2421eaba62614e6721c63c28647ea0262234a804e066cc2f2235` |
| 9 | `def` | [CompHaus.toProfiniteObj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/comphaus-toprofiniteobj--2d8321e38a22ff36b59a1464.md) | 92 | `declaration-track:2d8321e38a22ff36b59a14649153077664eacc0ccd63021a4a85fd46bb8f0dcd` |
| 10 | `def` | [Profinite.toCompHausEquivalence](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/profinite-tocomphausequivalence--373dc4545677ced0de884849.md) | 101 | `declaration-track:373dc4545677ced0de8848490976eae4aec59e58a0f00b50738d81ad802f0e8f` |
| 11 | `def` | [CompHaus.toProfinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/comphaus-toprofinite--b742202cf2430e8fd7d5bf29.md) | 113 | `declaration-track:b742202cf2430e8fd7d5bf2966afca1e21737a51cfd3000821e5e5358fcedcb9` |
| 12 | `theorem` | [CompHaus.toProfinite_obj'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/comphaus-toprofinite-obj--517b0322e47909fc1b9a37f7.md) | 116 | `result-track:517b0322e47909fc1b9a37f71258d703f42f83447be5ea5300c88caeb1fcee68` |
| 13 | `def` | [FintypeCat.botTopology](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/fintypecat-bottopology--afcc97c82b6cd7f54da902f4.md) | 121 | `declaration-track:afcc97c82b6cd7f54da902f4003755cba105bbab459b7632f430d400fb941ff9` |
| 14 | `theorem` | [FintypeCat.discreteTopology](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/fintypecat-discretetopology--97afed3a7045bb1310b1dca0.md) | 127 | `result-track:97afed3a7045bb1310b1dca09ea89a33f1dc1db95fa59b3506bc32075d9d2807` |
| 15 | `def` | [FintypeCat.toProfinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/fintypecat-toprofinite--7fe7212eccb53841bbee488c.md) | 135 | `declaration-track:7fe7212eccb53841bbee488cc8c00037e23fe98a5a57c828469febcd4762051e` |
| 16 | `def` | [FintypeCat.toProfiniteFullyFaithful](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/fintypecat-toprofinitefullyfaithful--01b37b27dfd294171bda0a75.md) | 140 | `declaration-track:01b37b27dfd294171bda0a751e678f667990b4ead6bec5d953e36d32b7ccefef` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/instance--7f0af6de7bce66aa6c2e4b9f.md) | 145 | `declaration-track:7f0af6de7bce66aa6c2e4b9fc11486c36b702195748543330a675209f5161e56` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/instance--74fe3a6d4048f0434c6e8eea.md) | 147 | `declaration-track:74fe3a6d4048f0434c6e8eead33c0b2724f76b5e2cc5081e216c0f7a4efb825a` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/instance--3e6ffc670e8526482917cb0b.md) | 149 | `declaration-track:3e6ffc670e8526482917cb0b9194530ac75ad1f39d9ca76d9b4a973469c4a4bd` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/instance--ff9b74b2955dbb709d6df4c7.md) | 151 | `declaration-track:ff9b74b2955dbb709d6df4c7e5188a6117f09557681c9da46bae557ab08c2332` |
| 21 | `def` | [limitCone](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/limitcone--24541f62a1fe24db45bbcfc9.md) | 161 | `declaration-track:24541f62a1fe24db45bbcfc98eed76f9430a0c430783ad4adb51a7fc0c2f7cb3` |
| 22 | `def` | [limitConeIsLimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/limitconeislimit--16339ba38c322904ae5fccd9.md) | 176 | `declaration-track:16339ba38c322904ae5fccd91d526db1eabfed9e315f6cf8aa12da4fccf6f67a` |
| 23 | `def` | [toProfiniteAdjToCompHaus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/toprofiniteadjtocomphaus--cfd8cfcc725b82ec44cfdbfa.md) | 184 | `declaration-track:cfd8cfcc725b82ec44cfdbfafc3b6d01f7f08a183109e9510127f08a4b47b302` |
| 24 | `instance` | [toCompHaus.reflective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/tocomphaus-reflective--7ce3056952fdc4f029321eed.md) | 188 | `declaration-track:7ce3056952fdc4f029321eed4ed4118109a810662c8fdd972c87d7aced6d6a67` |
| 25 | `instance` | [toCompHaus.createsLimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/tocomphaus-createslimits--3a844619a4a3a12ccb659255.md) | 192 | `declaration-track:3a844619a4a3a12ccb659255b2cd50d5c335c1bc44b507155ff3d773f38143dd` |
| 26 | `instance` | [toTopCat.reflective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/totopcat-reflective--727eea941534cb6b269e1bbd.md) | 195 | `declaration-track:727eea941534cb6b269e1bbd6a7ac6f08e118ea3eeaaf6234f8907a6fb40ddb1` |
| 27 | `instance` | [toTopCat.createsLimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/totopcat-createslimits--636d8ed86042e4e863cf8a27.md) | 198 | `declaration-track:636d8ed86042e4e863cf8a277e5774ecf0d435797e9627b2d983397294f17c7d` |
| 28 | `instance` | [hasLimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/haslimits--2cc462132795a682d10e7a30.md) | 201 | `declaration-track:2cc462132795a682d10e7a30c6a8e012b3a9fd94cc3cf0d9da9de735a0aa2934` |
| 29 | `instance` | [hasColimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/hascolimits--e0c5008164179077364f3652.md) | 204 | `declaration-track:e0c5008164179077364f36522f6ceea6c1e5c0a08fcd5f58dca8dfdb0ca468dc` |
| 30 | `instance` | [forget_preservesLimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/forget-preserveslimits--8b414f297b6ebc0b7c529057.md) | 207 | `declaration-track:8b414f297b6ebc0b7c52905739f8038d8310b8799b1f3e4194ea32971e7c8984` |
| 31 | `theorem` | [epi_iff_surjective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/epi-iff-surjective--f6355bb45b96fe411b73a645.md) | 210 | `result-track:f6355bb45b96fe411b73a645544bd7d2735149c7d1c20800d43d33f9e78247c5` |
| 32 | `def` | [pi](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf8140c8198c0fe2e30b514fd9e10cc9cd3f16f9289bbf56b2e46569c17763950.lean/declarations/pi--d95c5f60ac6c1cf8ada836ca.md) | 245 | `declaration-track:d95c5f60ac6c1cf8ada836ca769db04cc882264a9e031b572503e2ac80730fef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
