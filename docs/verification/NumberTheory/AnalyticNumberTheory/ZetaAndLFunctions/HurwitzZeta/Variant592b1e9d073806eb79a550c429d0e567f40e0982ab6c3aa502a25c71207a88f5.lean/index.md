# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.HurwitzZeta.Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db0a47feb7759c3c8a2a1f811f4968cbae0878fd",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db0a47feb7759c3c8a2a1f811f4968cbae0878fd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.HurwitzZetaEven` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.HurwitzZetaOdd` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hurwitzZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/declarations/hurwitzzeta--a4afca22c2aa15142d5e4641.md) | 49 | `declaration-track:a4afca22c2aa15142d5e4641916a89b2e93cf1f3ca861f77f26e407765088fd7` |
| 2 | `lemma` | [hurwitzZetaEven_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/declarations/hurwitzzetaeven-eq--1966877f10f2ae252ab93521.md) | 52 | `result-track:1966877f10f2ae252ab93521864edc08def21e8d49a3f7c0286bd654fbd0aea1` |
| 3 | `lemma` | [hurwitzZetaOdd_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/declarations/hurwitzzetaodd-eq--7b4e86c7761510c552151344.md) | 57 | `result-track:7b4e86c7761510c5521513441280b22e2d0fc77c5ef7ae55649de708393b2bf9` |
| 4 | `lemma` | [differentiableAt_hurwitzZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/declarations/differentiableat-hurwitzzeta--3c026ca4cec6038a367f63e5.md) | 63 | `result-track:3c026ca4cec6038a367f63e514e691b28a700dcc0c3214c070de70bab5684fb2` |
| 5 | `lemma` | [hasSum_hurwitzZeta_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/declarations/hassum-hurwitzzeta-of-one-lt-re--f3c64c2494454704758d0417.md) | 69 | `result-track:f3c64c2494454704758d0417fc54eeb88d72a692d1e75f3b15c5d53b4dd14604` |
| 6 | `lemma` | [hurwitzZeta_residue_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/declarations/hurwitzzeta-residue-one--7d52546837fa25de3d2cf101.md) | 78 | `result-track:7d52546837fa25de3d2cf1015e07d92e0ee3b8f7fb4bb81d2a5fd940125eb5b8` |
| 7 | `lemma` | [differentiableAt_hurwitzZeta_sub_one_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/declarations/differentiableat-hurwitzzeta-sub-one-div--1de7dbf25ad2f4837a4429f1.md) | 84 | `result-track:1de7dbf25ad2f4837a4429f128f6c17c6b10d5bdfdd77f117673da15a3990499` |
| 8 | `lemma` | [tendsto_hurwitzZeta_sub_one_div_nhds_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/declarations/tendsto-hurwitzzeta-sub-one-div-nhds-one--f39b0efbc877df60e49978ed.md) | 92 | `result-track:f39b0efbc877df60e49978ed3b07b707df1df1339ab8987afa1be919d5ebb807` |
| 9 | `lemma` | [differentiable_hurwitzZeta_sub_hurwitzZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/declarations/differentiable-hurwitzzeta-sub-hurwitzzeta--4d6fd9842349bfb8d10067e7.md) | 99 | `result-track:4d6fd9842349bfb8d10067e7100ba943db75ace63f21086e452a4472df73fef2` |
| 10 | `def` | [expZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/declarations/expzeta--98ab01593646232ead908147.md) | 111 | `declaration-track:98ab01593646232ead908147ec6f9d71a3d13d9c00793290ca9a91cf69ccb822` |
| 11 | `lemma` | [cosZeta_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/declarations/coszeta-eq--20142180283dc9b8478b9155.md) | 114 | `result-track:20142180283dc9b8478b91557e3f925373b5ad0cf5f362c6aaeb19af81f4f88f` |
| 12 | `lemma` | [sinZeta_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/declarations/sinzeta-eq--fc558f70575555e5d3cd5824.md) | 119 | `result-track:fc558f70575555e5d3cd58244ce244f468e359fffe38da85ff2940ba84361cad` |
| 13 | `lemma` | [hasSum_expZeta_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/declarations/hassum-expzeta-of-one-lt-re--954cbd18d605772847d84e51.md) | 125 | `result-track:954cbd18d605772847d84e5132b9ab2feceb9db4b1377ef3a19ce0868b771c0b` |
| 14 | `lemma` | [differentiableAt_expZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/declarations/differentiableat-expzeta--7b7a82aed2daec68a9ef1c28.md) | 132 | `result-track:7b7a82aed2daec68a9ef1c288c6ac518da7735397396334994f4a20e397501f7` |
| 15 | `lemma` | [differentiable_expZeta_of_ne_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/declarations/differentiable-expzeta-of-ne-zero--c474e81ce20e62d6a8b07379.md) | 139 | `result-track:c474e81ce20e62d6a8b07379452e7a4f19d2b1b0d3cb23ba8f42b18e719a81f1` |
| 16 | `lemma` | [LSeriesHasSum_exp](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/declarations/lserieshassum-exp--1128cc02be56be054f27dfce.md) | 144 | `result-track:1128cc02be56be054f27dfce7bc05872d700e668de8d1490306532282dffc9b7` |
| 17 | `lemma` | [hurwitzZeta_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/declarations/hurwitzzeta-one-sub--4a1925bb9af78a495f72aa96.md) | 153 | `result-track:4a1925bb9af78a495f72aa96999b4c336c0033579d19a352142b068c866c014c` |
| 18 | `lemma` | [expZeta_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean/declarations/expzeta-one-sub--0e309fc53935027ba27f7bf0.md) | 169 | `result-track:0e309fc53935027ba27f7bf009bfe5107da201bce86065078f155e7a6f04dc8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
