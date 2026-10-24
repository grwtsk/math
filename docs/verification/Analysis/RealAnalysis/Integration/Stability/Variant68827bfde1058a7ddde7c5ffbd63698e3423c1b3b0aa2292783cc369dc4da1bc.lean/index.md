# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Stability.Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67038b8cde04b83ca48c8bbfe74fc60f24eab369",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67038b8cde04b83ca48c8bbfe74fc60f24eab369`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PairCeiling.Defs` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DivergenceTheorem` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cell_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/cell-le--b0ac266b75d5de5de1d280db.md) | 43 | `result-track:b0ac266b75d5de5de1d280db72cb2d6865058b6468ccd6d8c69f370b030a040b` |
| 2 | `lemma` | [cell_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/cell-subset--41f76a9214fa825ed4e449b0.md) | 47 | `result-track:41f76a9214fa825ed4e449b09d77ec8dff6046bcaef5801c5adb36db861e7c86` |
| 3 | `lemma` | [Cstep_ae_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/cstep-ae-cell--b1b73e1053d83fde48a19093.md) | 54 | `result-track:b1b73e1053d83fde48a190930eeea6ad6917ea0d92e188121665f9fa1155824f` |
| 4 | `lemma` | [intervalIntegrable_gC_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/intervalintegrable-gc-cell--ef7af3c897e647dc14969d57.md) | 63 | `result-track:ef7af3c897e647dc14969d57b01e6c3395ef2ba5a710ba244a861e63007d4dda` |
| 5 | `lemma` | [integral_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/integral-cell--bfaf5ea05135017e5546d666.md) | 76 | `result-track:bfaf5ea05135017e5546d6667195aec308165304ed5cedd2e69526524fc49b05` |
| 6 | `lemma` | [integral_gC_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/integral-gc-eq-sum--b900228534bdcf80ac88e38d.md) | 89 | `result-track:b900228534bdcf80ac88e38d6bd942135a660b1682dab1b7308c7b4d2e2ec300` |
| 7 | `lemma` | [abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/abel--be01be398daf31f79a34127a.md) | 106 | `result-track:be01be398daf31f79a34127a4d7fd6ba03a793400c2b9ff3f8ec88862b773cee` |
| 8 | `theorem` | [integral_gC](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/integral-gc--ea26f6ea1f1818195d8b401f.md) | 122 | `result-track:ea26f6ea1f1818195d8b401f517d955076bbd0554739f7d0dd633bf1d8ac2b26` |
| 9 | `lemma` | [intervalIntegrable_gC](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/intervalintegrable-gc--644335a02340d6ab325ac1b8.md) | 128 | `result-track:644335a02340d6ab325ac1b86def6cc61e3181f242ccd489743515effd2c151c` |
| 10 | `lemma` | [integral_r_mul_id](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/integral-r-mul-id--b993cd2b2f3bf536a99fe8ea.md) | 139 | `result-track:b993cd2b2f3bf536a99fe8eaf239c880e0f9d0fd163c071462f3c5c3ef2d9ac4` |
| 11 | `theorem` | [abel_ibp_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/abel-ibp-first--5302a46efb531d733c94e07e.md) | 155 | `result-track:5302a46efb531d733c94e07e1a109d356d7d240bf0e50b93703a16de11306b13` |
| 12 | `theorem` | [first_order_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/first-order-bound--ea88362ce9a1a0ae63c48791.md) | 177 | `result-track:ea88362ce9a1a0ae63c4879189595038ae3092fa40129d79710d9a33f88a6f68` |
| 13 | `def` | [grid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/grid--ff9a44f80cf88766896a054e.md) | 206 | `declaration-track:ff9a44f80cf88766896a054e1a78893e956340082b9705b0488e573774acc997` |
| 14 | `lemma` | [grid_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/grid-countable--fdef4b1e9d464a942e6f5269.md) | 208 | `result-track:fdef4b1e9d464a942e6f5269d23a7853f072179c7f675e637ad86366fb406577` |
| 15 | `lemma` | [measurable_Cstep](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/measurable-cstep--92d1f88dc3a0cb9265697b28.md) | 211 | `result-track:92d1f88dc3a0cb9265697b28deb55112a6ff3775b009b4515eb8854ea28a1f70` |
| 16 | `lemma` | [measurable_Dfun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/measurable-dfun--1a1539dcd39c8414c8962731.md) | 218 | `result-track:1a1539dcd39c8414c89627311aa7bb4b237d200a931ad73d89b0d525ac93d11e` |
| 17 | `lemma` | [intervalIntegrable_Dfun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/intervalintegrable-dfun--3df6f9344a96a1c23d03e6d7.md) | 222 | `result-track:3df6f9344a96a1c23d03e6d7c0aad54e509d84eca55f1706a530d07553a9fad1` |
| 18 | `lemma` | [continuousOn_Efun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/continuouson-efun--f2566eed0fccb22d38c18cdf.md) | 228 | `result-track:f2566eed0fccb22d38c18cdfe94b800cf15402e32b929c87625d343a9422d162` |
| 19 | `lemma` | [exists_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/exists-cell--ca5230a1d8c4acc0fed1fa56.md) | 235 | `result-track:ca5230a1d8c4acc0fed1fa563a9c5e3bd5420dd0f716f562a2449fa2d2cdfc9a` |
| 20 | `lemma` | [Dfun_eqOn_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/dfun-eqon-cell--ced6ae2c98c6926490f33173.md) | 257 | `result-track:ced6ae2c98c6926490f331737e1c71149e532b9fbd2faad24918be236858badb` |
| 21 | `lemma` | [continuousAt_Dfun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/continuousat-dfun--862e79d62ed678ef95545a57.md) | 262 | `result-track:862e79d62ed678ef95545a578dd0fa60c000af12f276db86c676f20d0643b306` |
| 22 | `lemma` | [hasDerivAt_Efun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/hasderivat-efun--d3039177d2a403799cf27f2f.md) | 269 | `result-track:d3039177d2a403799cf27f2fea909e67497bae4b21acd4961950081b68183d80` |
| 23 | `theorem` | [abel_ibp_second](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/abel-ibp-second--0423d32867045faf759cfc1e.md) | 283 | `result-track:0423d32867045faf759cfc1ec54366814fc83a1f7f58acb50e9e3de3122c2d83` |
| 24 | `theorem` | [ceiling_stability](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/declarations/ceiling-stability--4d0124ae9a2a1e465cbe35a8.md) | 313 | `result-track:4d0124ae9a2a1e465cbe35a8652d31b4df9bdde459e2e8f6a041846c806406f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
