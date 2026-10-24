# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDLargeMobiusTailEstimate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "797b24c722c661d7ee3f8a2f0de91c7618db5331",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `797b24c722c661d7ee3f8a2f0de91c7618db5331`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDLargeMobiusTailIncidence`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDDiagonalEstimate`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDiagonalEstimate.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Analysis.PSeries` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lowMobiusTailIndexSet](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/declarations/lowmobiustailindexset--e514390b3f0a5cbb13480870.md) | 31 | `declaration-track:e514390b3f0a5cbb13480870c601abff6d29eda71e43398b09176933b1c43343` |
| 2 | `def` | [highMobiusTailIndexSet](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/declarations/highmobiustailindexset--238cf36dd6dec835a5571764.md) | 35 | `declaration-track:238cf36dd6dec835a5571764f106a83614b0f5a158afc95af116b457d21ac010` |
| 3 | `theorem` | [mem_lowMobiusTailIndexSet_iff](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/declarations/mem-lowmobiustailindexset-iff--cf8cadd623fff301898dc6ab.md) | 39 | `result-track:cf8cadd623fff301898dc6ab376bd75ed1a59217c0ae2595dca07fc4d4cd19a1` |
| 4 | `theorem` | [mem_highMobiusTailIndexSet_iff](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/declarations/mem-highmobiustailindexset-iff--36dd903ec3abb5554ac4d595.md) | 46 | `result-track:36dd903ec3abb5554ac4d595ca3a9903f038a7ba70bbb45a3dd794548fd98c35` |
| 5 | `theorem` | [modulusIndexSet_eq_low_union_high](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/declarations/modulusindexset-eq-low-union-high--0f74ce39c637d007a37acabc.md) | 53 | `result-track:0f74ce39c637d007a37acabc9435fedf7b2d0efef79ddbdbf90bc2305439dcd0` |
| 6 | `theorem` | [low_high_MobiusTailIndexSet_disjoint](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/declarations/low-high-mobiustailindexset-disjoint--236ab736d028c1ef03b7ea73.md) | 65 | `result-track:236ab736d028c1ef03b7ea730b15e83fdd2a8c567c426907414e55f10a5b175c` |
| 7 | `def` | [lowCoprimeMobiusSquareExpansion](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/declarations/lowcoprimemobiussquareexpansion--a7c17c072c47b307f5cd140e.md) | 76 | `declaration-track:a7c17c072c47b307f5cd140e24a83ab04880a5126ba4f25b23ff18332c2565e3` |
| 8 | `def` | [highCoprimeMobiusSquareExpansion](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/declarations/highcoprimemobiussquareexpansion--fec5305f82c56a9a4bc49ac9.md) | 82 | `declaration-track:fec5305f82c56a9a4bc49ac9d2334f8a6710930cd3341b9ad2f5e33f91792d2d` |
| 9 | `def` | [absoluteHighCoprimeMobiusSquareMajorant](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/declarations/absolutehighcoprimemobiussquaremajorant--add073fc97781ae37a84f8eb.md) | 88 | `declaration-track:add073fc97781ae37a84f8ebbccaed7c9b80257e58414a2dcbcdd5768589d9f6` |
| 10 | `theorem` | [coprimeMobiusSquareExpansion_eq_low_add_high](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/declarations/coprimemobiussquareexpansion-eq-low-add-high--53ae71b389f5a458a94b1cb5.md) | 94 | `result-track:53ae71b389f5a458a94b1cb5dbd026db77ed4d1fa180ec4b8a89ff0a69f650a4` |
| 11 | `theorem` | [abs_highCoprimeMobiusSquareExpansion_le](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/declarations/abs-highcoprimemobiussquareexpansion-le--02a72083a26218ca2e8dafdd.md) | 106 | `result-track:02a72083a26218ca2e8dafdd37bd59ad81fe80a0e7f24ac526fad3df84ab37e4` |
| 12 | `def` | [highMobiusQuotientSquareMass](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/declarations/highmobiusquotientsquaremass--f8dc882a8948d4d8f51d35fd.md) | 128 | `declaration-track:f8dc882a8948d4d8f51d35fd7c37d331ad94c950f78aaa1a336776f69f3b6f13` |
| 13 | `theorem` | [highMobiusTailIndexSet_subset_Ioo](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/declarations/highmobiustailindexset-subset-ioo--812e29730d9dc8e8e9a40d92.md) | 133 | `result-track:812e29730d9dc8e8e9a40d92d0d47a15ce0b00164f361412e9ba53d9d86798dc` |
| 14 | `theorem` | [highMobiusQuotientSquareMass_le](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/declarations/highmobiusquotientsquaremass-le--73338a51c0703ae130038ca2.md) | 144 | `result-track:73338a51c0703ae130038ca2494db070b942724cfc634d2233867d4e56e5fcac` |
| 15 | `theorem` | [absoluteHighCoprimeMobiusSquareMajorant_le_quotientMass](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/declarations/absolutehighcoprimemobiussquaremajorant-le-quotientmass--d9471a050639a929807fc06b.md) | 223 | `result-track:d9471a050639a929807fc06b5f2d921d833a1a997dc94a791e36d71cb2586ca7` |
| 16 | `theorem` | [absoluteHighCoprimeMobiusSquareMajorant_le_target](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/declarations/absolutehighcoprimemobiussquaremajorant-le-target--965d24127091c3a1eef2a409.md) | 294 | `result-track:965d24127091c3a1eef2a4099092577048d22aef620398f6bb0b68237a360d45` |
| 17 | `theorem` | [abs_highCoprimeMobiusSquareExpansion_le_target](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/declarations/abs-highcoprimemobiussquareexpansion-le-target--348fc1475ab7133dfeeb4ccf.md) | 358 | `result-track:348fc1475ab7133dfeeb4ccf04e8e6c10715146ef9ad401c6a230cf2dc7d9ee8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
