# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripOneThirdGrid

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bfda65dc0a88e25786cb6a388e3dbcb7d04e169",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bfda65dc0a88e25786cb6a388e3dbcb7d04e169`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripOneThirdSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMidpointGrid`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMidpointGrid.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCoverDepth`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCoverDepth.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Analysis.Normed.Module.Convex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [row](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/row--68b88c64741cc61cf245db1b.md) | 34 | `declaration-track:68b88c64741cc61cf245db1bc23a9b17881371869a838120c0873f645c740115` |
| 2 | `def` | [column](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/column--602ef3f0357f6c4af573541b.md) | 35 | `declaration-track:602ef3f0357f6c4af573541b8ea852d9cd3715d3d8628bd47ce55d2e596063ad` |
| 3 | `def` | [join](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/join--2509a28109ada14acc6248b1.md) | 36 | `declaration-track:2509a28109ada14acc6248b1ce41df45048ee4dff9c98e527b79d7ea6ea3e0b9` |
| 4 | `theorem` | [row_join](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/row-join--d82852f8ff62ce156804fa17.md) | 39 | `result-track:d82852f8ff62ce156804fa17b45276322781363d535eab7d43956793ad6e36fa` |
| 5 | `theorem` | [column_join](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/column-join--eb95db192c09101ac36e2a6e.md) | 46 | `result-track:eb95db192c09101ac36e2a6e6e2f0776b5ba6791ea44b0634a046825c4e5e28f` |
| 6 | `theorem` | [join_row_column](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/join-row-column--215b024b1dc60ef8024c1bec.md) | 52 | `result-track:215b024b1dc60ef8024c1bec1c02a7a31d0aeae019eb805c7d5e2ea874d52973` |
| 7 | `def` | [box](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/box--e15aa62ea0866537240be584.md) | 58 | `declaration-track:e15aa62ea0866537240be58409e5685dca55ae19193bf9dc1bda57215b23af99` |
| 8 | `def` | [rawDisk](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/rawdisk--a5832020e3a3f6d4579032ac.md) | 61 | `declaration-track:a5832020e3a3f6d4579032acc6dbe05380e032f5cf303710a6fe009c63b3af08` |
| 9 | `def` | [disks](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/disks--febd165d9c4f7687c68266f2.md) | 66 | `declaration-track:febd165d9c4f7687c68266f260834c406ef21c6ac61a0459fae120f4edd21459` |
| 10 | `theorem` | [disks_join](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/disks-join--b9261eb2655f64bb76b80970.md) | 68 | `result-track:b9261eb2655f64bb76b8097068ddbd4ba5e55f9dd25765b7bc6101b8b26e9e1b` |
| 11 | `theorem` | [disk_radius_value](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/disk-radius-value--492bbc1e44b37c73055247ce.md) | 73 | `result-track:492bbc1e44b37c73055247cec723bb0f5b69c3de220fbb7d76e87f7d8c3c4194` |
| 12 | `lemma` | [disk_carrier](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/disk-carrier--088958b9efe877019a50a1ce.md) | 77 | `result-track:088958b9efe877019a50a1ce1ff0c42d5cf40bceb71968b335c5cc6300e42b62` |
| 13 | `theorem` | [raw_center_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/raw-center-re--05074a3b693b7972a2835626.md) | 81 | `result-track:05074a3b693b7972a2835626ebf5ec737ad850e2fc9a52a211b706819929006e` |
| 14 | `theorem` | [raw_center_im](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/raw-center-im--af6cb7509628f12046de2d8d.md) | 85 | `result-track:af6cb7509628f12046de2d8d29dd22285470525027d12f5a409563f573788b35` |
| 15 | `lemma` | [box_wellFormed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/box-wellformed--79b0f7190a53e2c9e09e0b66.md) | 89 | `result-track:79b0f7190a53e2c9e09e0b664b736fcc380852c2f2395eb811dd4ee54647e8ad` |
| 16 | `lemma` | [box_carrier_eq_seed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/box-carrier-eq-seed--4118a51e1f51947fa6647b87.md) | 91 | `result-track:4118a51e1f51947fa6647b87ebce0c7cbe55cc475f8416a94d0c516a5885f071` |
| 17 | `lemma` | [raw_center_mem_seed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/raw-center-mem-seed--b46373c3e881330a3d2c6ea8.md) | 96 | `result-track:b46373c3e881330a3d2c6ea8d48bde423cb38ea86fd8341215128b7fe9f1b735` |
| 18 | `lemma` | [center_mem_seed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/center-mem-seed--5b1fbbee819f3e5fe2ce296e.md) | 111 | `result-track:5b1fbbee819f3e5fe2ce296e92622fa1d7faf31b5e003d18a3bcff2b21335087` |
| 19 | `lemma` | [center_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/center-norm-le--2f0845feaa0d998853901be9.md) | 115 | `result-track:2f0845feaa0d998853901be9bfa11127ac3e0723d1863c3f50ffada9b9509a03` |
| 20 | `lemma` | [disk_radius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/disk-radius--13940d1981e82bd250f480ec.md) | 131 | `result-track:13940d1981e82bd250f480eccd56167785241bcd9351367849fa395124285a6a` |
| 21 | `lemma` | [disk_domain](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/disk-domain--370e5c68f4c4b9881f6a1868.md) | 136 | `result-track:370e5c68f4c4b9881f6a186867acb3294bf203311a57960d6cd8debea2de3b45` |
| 22 | `lemma` | [derivative_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/derivative-bound--a597f9c4b26cbb0419048916.md) | 152 | `result-track:a597f9c4b26cbb041904891679fad302e4b085f50f7249f5b172dfbccaf8a8ca` |
| 23 | `lemma` | [center_sample_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/center-sample-lower--78ae6d81bb38d4f71ddf57d8.md) | 161 | `result-track:78ae6d81bb38d4f71ddf57d8e219e733edd085eb3927aa0d7ab0789ea274f851` |
| 24 | `def` | [patch](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/patch--eb9a51a16792e6c209eca590.md) | 168 | `declaration-track:eb9a51a16792e6c209eca590190505e9b74cb1feddedf693950b857fdbfb1807` |
| 25 | `theorem` | [norm_lower_on_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/norm-lower-on-disk--e122fb967f429961d802ca20.md) | 183 | `result-track:e122fb967f429961d802ca20f3fe5ae4c60879934f8fb26d2d37ffab5ef3950b` |
| 26 | `theorem` | [exists_close_center](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/exists-close-center--0794bb034dc577800a71211a.md) | 192 | `result-track:0794bb034dc577800a71211aea8d75bb0e894064c627349bcc93ebdc35b3acd9` |
| 27 | `theorem` | [clearance](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/clearance--1115aac1f859623bfd31e7c2.md) | 232 | `result-track:1115aac1f859623bfd31e7c2bb3350e002cf6becb7f074a717405515711f4c59` |
| 28 | `def` | [directCover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/directcover--5a3a86385d00773a49be1e15.md) | 241 | `declaration-track:5a3a86385d00773a49be1e15517297b484c3b36e03d6fe28074b22ff25eb39dd` |
| 29 | `theorem` | [depth_budget](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/depth-budget--423afe27777f56f02474dfbf.md) | 253 | `result-track:423afe27777f56f02474dfbf126475763b955ea5765a907e702f06061757ce5c` |
| 30 | `theorem` | [search_succeeds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/search-succeeds--e9fee29ae116304a09d45598.md) | 257 | `result-track:e9fee29ae116304a09d45598373d1d659b437ebdb10e711434cfe28b4f24f7fd` |
| 31 | `def` | [checkedTree](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/checkedtree--feb20fc9c92530f3df9469a2.md) | 262 | `declaration-track:feb20fc9c92530f3df9469a2cec0f1bc0aa9dd951b10da2bb0ef13b493c2f765` |
| 32 | `def` | [searchedCover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/searchedcover--b9f29150a662ad823fe20c8f.md) | 265 | `declaration-track:b9f29150a662ad823fe20c8f6827e8366eda46d2ff2a30dccfd2a0edd7aba39b` |
| 33 | `def` | [seedCover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/seedcover--417e8c1075f052ef43f0531a.md) | 269 | `declaration-track:417e8c1075f052ef43f0531a5cfaa73b5082fac16ba97cb74fec5d9737d43089` |
| 34 | `theorem` | [noTargetZero_box](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/declarations/notargetzero-box--4cf53f3240009fe2e84f7fef.md) | 274 | `result-track:4cf53f3240009fe2e84f7feff920095ba9f535579fc7d71c95cc3d2e4818262c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
