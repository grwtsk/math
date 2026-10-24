# Verification target: GRWTSK.Topology.GeneralTopology.ExtremallyDisconnected.Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9398a10bec500bb329a185e11a9d8a1eee72adee",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9398a10bec500bb329a185e11a9d8a1eee72adee`.

Source path: `GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.StoneCech` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ExtremallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean/declarations/extremallydisconnected--1e4e090367a0cb9bccbfc884.md) | 55 | `declaration-track:1e4e090367a0cb9bccbfc8842b699f444db38d96ec100f17dd169c4081108195` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean/declarations/instance--96af7e1485aaa49b7455ef1c.md) | 63 | `declaration-track:96af7e1485aaa49b7455ef1c24df6bac81bfe5a2ee3b5d124a9d470f15dc19a2` |
| 3 | `def` | [CompactT2.Projective](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean/declarations/compactt2-projective--138e067c17d2d6220282c0aa.md) | 88 | `declaration-track:138e067c17d2d6220282c0aa47811844d50a12f94b30e35978960985afaa6427` |
| 4 | `theorem` | [StoneCech.projective](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean/declarations/stonecech-projective--2ca9721800bd7a79b0c9d900.md) | 97 | `result-track:2ca9721800bd7a79b0c9d90013c4db5bbad9e9f307c160b54224d8854e008eba` |
| 5 | `theorem` | [CompactT2.Projective.extremallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean/declarations/compactt2-projective-extremallydisconnected--e4eaaa78e6fe2ab6b3f72ab1.md) | 109 | `result-track:e4eaaa78e6fe2ab6b3f72ab182e0da0a18fa13e8985c0e043726fb176bbf585a` |
| 6 | `lemma` | [exists_compact_surjective_zorn_subset](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean/declarations/exists-compact-surjective-zorn-subset--77700d585e6343839e23d301.md) | 157 | `result-track:77700d585e6343839e23d301b493a0c255b1c566c218ae1496b9cc8b880d945a` |
| 7 | `lemma` | [image_subset_closure_compl_image_compl_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean/declarations/image-subset-closure-compl-image-compl-of-isopen--41b4bacfbca80128d808b39b.md) | 193 | `result-track:41b4bacfbca80128d808b39bab3704ae3a871af5f625f6f77790f97fdb838f2d` |
| 8 | `lemma` | [ExtremallyDisconnected.disjoint_closure_of_disjoint_IsOpen](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean/declarations/extremallydisconnected-disjoint-closure-of-disjoint-isopen--d42958a14da98941eb0e8960.md) | 220 | `result-track:d42958a14da98941eb0e8960b9c778986eefa988e6ea6f503fd85149c88944cf` |
| 9 | `lemma` | [ExtremallyDisconnected.homeoCompactToT2_injective](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean/declarations/extremallydisconnected-homeocompacttot2-injective--bead8b2753de20aa5bb5767d.md) | 225 | `result-track:bead8b2753de20aa5bb5767dc8d4929988d51c48462583f9db1f1ffc74534ecd` |
| 10 | `def` | [ExtremallyDisconnected.homeoCompactToT2](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean/declarations/extremallydisconnected-homeocompacttot2--4422267d9be244e316f7ea00.md) | 256 | `declaration-track:4422267d9be244e316f7ea002a8411abbefa37e809b6231da432177388906379` |
| 11 | `theorem` | [CompactT2.ExtremallyDisconnected.projective](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean/declarations/compactt2-extremallydisconnected-projective--edafc587f06b37dae1375cc7.md) | 265 | `result-track:edafc587f06b37dae1375cc789c7e1bb153850748cff3619b8b3d9958a3c8081` |
| 12 | `theorem` | [CompactT2.projective_iff_extremallyDisconnnected](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean/declarations/compactt2-projective-iff-extremallydisconnnected--1a74b1aa22168a4382710de3.md) | 293 | `result-track:1a74b1aa22168a4382710de3b6474941dc0824549bb2a9e1cf88573f2554dd6a` |
| 13 | `instance` | [instExtremallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant946b4529026bd0160ec87edcef44f344ab93e2b70b01633971dfa491b2aff091.lean/declarations/instextremallydisconnected--985cf6d602589348ee8bff30.md) | 301 | `declaration-track:985cf6d602589348ee8bff30d1a2115a5f4335e50abaa23e9ecc9ef96de2f6a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
