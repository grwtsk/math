# Verification target: GRWTSK.Topology.GeneralTopology.Exposed.Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f9920d47ff4baab691ee798a26c504de4cbf8d1",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f9920d47ff4baab691ee798a26c504de4cbf8d1`.

Source path: `GRWTSK/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Extreme` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Function` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsExposed](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/isexposed--dec2060f306bb187dbe8fcc0.md) | 68 | `declaration-track:dec2060f306bb187dbe8fcc04795417f248b0953d7638f8fb74ecbc7b7e44ed5` |
| 2 | `def` | [ContinuousLinearMap.toExposed](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/continuouslinearmap-toexposed--a28bb3b9a57b6595ba8f43ee.md) | 81 | `declaration-track:a28bb3b9a57b6595ba8f43ee4b322bb7247821f754afb4f0ff51d1d1fa401d27` |
| 3 | `theorem` | [ContinuousLinearMap.toExposed.isExposed](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/continuouslinearmap-toexposed-isexposed--c456ec7376e52c507a693b1b.md) | 85 | `result-track:c456ec7376e52c507a693b1b386c5c4fc6512a29bbb83b1433da4b005888d55d` |
| 4 | `theorem` | [isExposed_empty](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/isexposed-empty--6ba239e8033b1e974dff1ad6.md) | 88 | `result-track:6ba239e8033b1e974dff1ad68457b5c274ff294484993e0b601ef21a556f3470` |
| 5 | `theorem` | [subset](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/subset--3e51cecc7b7808a6374b522e.md) | 95 | `result-track:3e51cecc7b7808a6374b522eecacc102962da0d0a0cb576a479d5f9ed38b50ae` |
| 6 | `theorem` | [refl](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/refl--97c98655ddce4c39796fcfb2.md) | 102 | `result-track:97c98655ddce4c39796fcfb2d8a7bd926d0e69f5698ae40aa40354d3cbf94e66` |
| 7 | `theorem` | [antisymm](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/antisymm--b895237068dd1e6519be40cf.md) | 106 | `result-track:b895237068dd1e6519be40cff525fadce823529cd6838ab583376ce24d31eafc` |
| 8 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/mono--792c15ceb6901fddb3d741e0.md) | 114 | `result-track:792c15ceb6901fddb3d741e0f998f4a9ce0685788c6f0a9c95471634c5b9b97d` |
| 9 | `theorem` | [eq_inter_halfspace'](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/eq-inter-halfspace--0c8aaaa9246d23d689c14afa.md) | 124 | `result-track:0c8aaaa9246d23d689c14afad1830d1c033d6c20bbfe8921d9d33c491fd087b1` |
| 10 | `theorem` | [eq_inter_halfspace](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/eq-inter-halfspace--91bbf177543e0c5ffb1d3dd0.md) | 135 | `result-track:91bbf177543e0c5ffb1d3dd0ea40ef79dfa2476772a7b4c75fc3912a10cf60a0` |
| 11 | `theorem` | [inter](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/inter--b29eaa1f6c8b91c3d04cd7fd.md) | 147 | `result-track:b29eaa1f6c8b91c3d04cd7fdcc9ef383e3972e5378c7c878d5bbe81e72e56c6d` |
| 12 | `theorem` | [sInter](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/sinter--54fa4ca18ee125ee0fc2bc03.md) | 163 | `result-track:54fa4ca18ee125ee0fc2bc03469a6c7e27710657b0740122bb1950bb24519cbb` |
| 13 | `theorem` | [inter_left](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/inter-left--99008088dad4e952131cb8b2.md) | 176 | `result-track:99008088dad4e952131cb8b2111cde065fe406e5996cf2c8906eb429c0e40a79` |
| 14 | `theorem` | [inter_right](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/inter-right--41fbbc4ea9962d07754e7dfc.md) | 183 | `result-track:41fbbc4ea9962d07754e7dfcc958b97f8978f07cb2b8bed274b5a4362ccc0473` |
| 15 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/isclosed--6cf12fd142086f7cb19b71f8.md) | 188 | `result-track:6cf12fd142086f7cb19b71f8438d00434896af5ee44a991684ead950b19f849c` |
| 16 | `theorem` | [isCompact](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/iscompact--488434916c14695768a10dd2.md) | 196 | `result-track:488434916c14695768a10dd2b225fbe3f261d232d94ffc9ef7bf69a21c3be613` |
| 17 | `def` | [Set.exposedPoints](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/set-exposedpoints--2b1f0b7fa228f9d9fd1272e4.md) | 207 | `declaration-track:2b1f0b7fa228f9d9fd1272e4d466578836fe6c7d304ca13a8217d3f8a69ef4bf` |
| 18 | `theorem` | [exposed_point_def](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/exposed-point-def--b5a19334ba84dcc3b6bc98ea.md) | 213 | `result-track:b5a19334ba84dcc3b6bc98eae735fa80b95c645cb3298588fd6d6d3b3fb30d1d` |
| 19 | `theorem` | [exposedPoints_subset](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/exposedpoints-subset--31ba66b233266c6149fdd139.md) | 218 | `result-track:31ba66b233266c6149fdd13978768c57ea843df60cc93642af22694adf587139` |
| 20 | `theorem` | [exposedPoints_empty](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/exposedpoints-empty--105ec356dc9c23b3621534f1.md) | 222 | `result-track:105ec356dc9c23b3621534f1d156dea2b4335731e86b7003222c206ad677b1bd` |
| 21 | `theorem` | [mem_exposedPoints_iff_exposed_singleton](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/mem-exposedpoints-iff-exposed-singleton--eb68447935c82df83d202f0b.md) | 227 | `result-track:eb68447935c82df83d202f0b4413d4a6c2e84af7bb0d475ca2f6faa93b617329` |
| 22 | `theorem` | [convex](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/convex--a3d4292d95bef6761f45dfa5.md) | 250 | `result-track:a3d4292d95bef6761f45dfa518a753331d3c7deb4c1ca4d0b19b0eb45d9f2ce8` |
| 23 | `theorem` | [isExtreme](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/isextreme--8a54574c6f13e91225187a5b.md) | 260 | `result-track:8a54574c6f13e91225187a5b72818dbe3179e436d446090e795e303e86db0343` |
| 24 | `theorem` | [exposedPoints_subset_extremePoints](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant949d00017bce7d17e540c1fe6981633522ab73de770a5a4dfed42a87dbdba767.lean/declarations/exposedpoints-subset-extremepoints--271ee9264aeab8380bb13c68.md) | 275 | `result-track:271ee9264aeab8380bb13c68afd5db910593e6141ed6533c54bfde0fa5ae483a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
