# Verification target: GRWTSK.Topology.GeneralTopology.CompactOpen.Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b7449391bbab1cb50ca2bf2e15646e034ac7dc9",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b7449391bbab1cb50ca2bf2e15646e034ac7dc9`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/declarations/instance--bc6fd0712e17a9a72eee8efc.md) | 38 | `declaration-track:bc6fd0712e17a9a72eee8efc0126e6216317139684e6afaf51589a50a134e7b2` |
| 2 | `theorem` | [isInducing_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/declarations/isinducing-tocontinuousmap--faad832af96533f433a14843.md) | 42 | `result-track:faad832af96533f433a1484339d90653883a8ef049299d1306d7403a25182c77` |
| 3 | `theorem` | [isEmbedding_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/declarations/isembedding-tocontinuousmap--60c1fe53f7ac484622e81288.md) | 46 | `result-track:60c1fe53f7ac484622e8128839875f382e381de3d4b643a45b3af0e185c5e1e9` |
| 4 | `instance` | [instContinuousEvalConst](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/declarations/instcontinuousevalconst--160938633e3fdec47e316043.md) | 51 | `declaration-track:160938633e3fdec47e316043bd1e060bbee9ea2ee1a120e77fcd09dc637cc3d8` |
| 5 | `instance` | [instContinuousEval](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/declarations/instcontinuouseval--b84402e37d98a658f5e874e5.md) | 55 | `declaration-track:b84402e37d98a658f5e874e587d943e300a30a8f6ca761ebf62a82344f1d32a9` |
| 6 | `lemma` | [range_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/declarations/range-tocontinuousmap--5343723b6af90eef3275e438.md) | 60 | `result-track:5343723b6af90eef3275e4386608a3a497e86523ee1a1fc5bfc4dfd7a3b6ac16` |
| 7 | `theorem` | [isClosedEmbedding_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/declarations/isclosedembedding-tocontinuousmap--30e64c91c11ddd3b9ff36eb9.md) | 68 | `result-track:30e64c91c11ddd3b9ff36eb98e1685b6301dc6f9d5a34fd2aaeea11c13758fdd` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/declarations/instance--f62b27e8e48d2ddfbf182192.md) | 81 | `declaration-track:f62b27e8e48d2ddfbf18219243b53c7b2e1656446f2883587ae8983cf7bd27d4` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/declarations/instance--28a8d1b6b0d2fdf5e7245f43.md) | 85 | `declaration-track:28a8d1b6b0d2fdf5e7245f434dd9203a186b99dfc7dd83ba653764fe2b1c7e8c` |
| 10 | `theorem` | [continuous_of_continuous_uncurry](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/declarations/continuous-of-continuous-uncurry--ad8d4e9a05089f2d3c6ae77f.md) | 92 | `result-track:ad8d4e9a05089f2d3c6ae77fbd09c90778eef493947172a3ced178f0d5570021` |
| 11 | `theorem` | [continuous_comp](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/declarations/continuous-comp--4f985e35b7814cba6bdf189a.md) | 99 | `result-track:4f985e35b7814cba6bdf189a3eb25fcd42adfa0ee77ba28bbc37c52069e6b67d` |
| 12 | `theorem` | [continuous_comp_left](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/declarations/continuous-comp-left--908dbbb378b99997032cf82c.md) | 106 | `result-track:908dbbb378b99997032cf82c7bc799600caa8cf28553d8369b3a4215740f5328` |
| 13 | `theorem` | [continuous_comp_right](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/declarations/continuous-comp-right--5aac28fa394869c43c8c4367.md) | 112 | `result-track:5aac28fa394869c43c8c4367593551123ce79134e983e18397d82e8ad4045762` |
| 14 | `def` | [compLeft](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/declarations/compleft--7af0304b6e52eeb6cca8610d.md) | 120 | `declaration-track:7af0304b6e52eeb6cca8610deaaaa169a127a513de81a126e242cc9414a5cdf1` |
| 15 | `def` | [compRight](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/declarations/compright--9aa8a119561a7d4dd0bc7780.md) | 130 | `declaration-track:9aa8a119561a7d4dd0bc77808f8b2fdb56c2cb40af6f6852941fb383a091ce83` |
| 16 | `lemma` | [isClosedEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/declarations/isclosedembedding-coe--700ff889bd6dde31f4f77b8c.md) | 142 | `result-track:700ff889bd6dde31f4f77b8c5e6a267ff4f676ee8a823392d2fa378d2b308d4e` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/declarations/instance--18e462a58139b77c09661896.md) | 146 | `declaration-track:18e462a58139b77c096618964c24ab21da7dad39c5910d67f77c7a021488f4ee` |
| 18 | `theorem` | [locallyCompactSpace_of_equicontinuousAt](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/declarations/locallycompactspace-of-equicontinuousat--f0d5bc9833247b1dddc3465b.md) | 157 | `result-track:f0d5bc9833247b1dddc3465b56bb2432bdbfcddffbf13cf3edcf909d7d09dd89` |
| 19 | `theorem` | [locallyCompactSpace_of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/declarations/locallycompactspace-of-hasbasis--b27a401f2b24afa516894bd9.md) | 197 | `result-track:b27a401f2b24afa516894bd9fb5e908e1ddf1cafe496fb62806630881a9a8d85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
