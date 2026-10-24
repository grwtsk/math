# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt06.Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2935afdf3ed1459502f7991e828c44c7b96e5a49",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2935afdf3ed1459502f7991e828c44c7b96e5a49`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCellMoment` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/declarations/cellkernel--dd4c21abae964711e84121b4.md) | 13 | `declaration-track:dd4c21abae964711e84121b471efd06bdf836cc76a96fbc05cb36cd0c955d929` |
| 2 | `def` | [cellDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/declarations/cellderivative--47b48ac6c4512bf72d6b7bad.md) | 14 | `declaration-track:47b48ac6c4512bf72d6b7bad2dd4004ff9b9a95cf18a296ce6306d97a2cebf51` |
| 3 | `def` | [derivativeMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/declarations/derivativemajorant--4d90573843d554737095308b.md) | 15 | `declaration-track:4d90573843d554737095308b8414e519e18397a971792e27ae0cca1ca63e3c69` |
| 4 | `theorem` | [cellKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/declarations/cellkernel-integrable--48f961fe3c728ef27e17758f.md) | 17 | `result-track:48f961fe3c728ef27e17758f81ace10aa4678b5a1cf336c3e837e8415507ddde` |
| 5 | `theorem` | [cellDerivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/declarations/cellderivative-integrable--71e17f7e4a2f315f8ce8822d.md) | 27 | `result-track:71e17f7e4a2f315f8ce8822d41a6639d3776a6f73c1df60d0355e9323176cd4c` |
| 6 | `theorem` | [cellKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/declarations/cellkernel-hasderivat--933838c59cbeec8f7b515bd4.md) | 38 | `result-track:933838c59cbeec8f7b515bd46fcfbe57fb0707d8eda4dcca6cc76b4eff155872` |
| 7 | `theorem` | [cellDerivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/declarations/cellderivative-bound--c159f276e6ebbafc620b64fa.md) | 53 | `result-track:c159f276e6ebbafc620b64faa79736e59d44de714ea8d85a46d7d442360f0542` |
| 8 | `theorem` | [term_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/declarations/term-hasderivat--3116993b351d5e24b3473759.md) | 73 | `result-track:3116993b351d5e24b3473759dac3f532297a5e71b3f662b8e86de3f80a8987a8` |
| 9 | `theorem` | [term_hasDerivAt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/declarations/term-hasderivat-one--1d3b0742ee3c87fa794bb95d.md) | 98 | `result-track:1d3b0742ee3c87fa794bb95dbe961a93abf9afe95aa2d0975a222ce172e7c6bb` |
| 10 | `theorem` | [derivativeMajorant_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/declarations/derivativemajorant-nonneg--e46d2a226c8cb5ca13e8ea43.md) | 104 | `result-track:e46d2a226c8cb5ca13e8ea4315f4f70d6992f5236260f4d96abce81a42e69f89` |
| 11 | `theorem` | [derivativeMajorant_le_pSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/declarations/derivativemajorant-le-pseries--935788fbffb479e7b661e5e6.md) | 109 | `result-track:935788fbffb479e7b661e5e67a19e71db77137c57633433ff5264bbe749bd34d` |
| 12 | `theorem` | [derivativeMajorant_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/declarations/derivativemajorant-summable--d2682b30024745d970a9ab73.md) | 131 | `result-track:d2682b30024745d970a9ab73921e350c19a0dcf74670d2e03e7b6b9595ea9568` |
| 13 | `def` | [termDerivValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/declarations/termderivvalue--3f794dfbaafc0c17e1b1290a.md) | 139 | `declaration-track:3f794dfbaafc0c17e1b1290a0e553fb1dbc3b95870dcfb8f541784d136961cd5` |
| 14 | `theorem` | [termDerivValue_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/declarations/termderivvalue-bound--1eafb278356ed2cb61c47f4c.md) | 142 | `result-track:1eafb278356ed2cb61c47f4cd28cc8d0b175b76437cae35f988c469e5bfc5aa7` |
| 15 | `theorem` | [termDerivValue_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/declarations/termderivvalue-one--e7f611af84c0b6a75fa6794a.md) | 151 | `result-track:e7f611af84c0b6a75fa6794a2a134be6a0ba3dfcf586bebb361d290827049cd1` |
| 16 | `theorem` | [termTSum_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/declarations/termtsum-hasderivat--85d1551681126348f362cc2f.md) | 155 | `result-track:85d1551681126348f362cc2f4688075826f41e130381f592c82aebdb236153a4` |
| 17 | `theorem` | [termTSum_hasDerivAt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/declarations/termtsum-hasderivat-one--619352468e7b5bed4b479d02.md) | 163 | `result-track:619352468e7b5bed4b479d0259e493da64cddf92aa6c86eb6013b1cb9db2f8f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
