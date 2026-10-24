# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.HurwitzZeta.Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "309d890d816b4df2033c53921061c2a3f207fbcd",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `309d890d816b4df2033c53921061c2a3f207fbcd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hurwitzZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/declarations/hurwitzzeta--8bdfd97d49b9deb391a0a3f7.md) | 62 | `declaration-track:8bdfd97d49b9deb391a0a3f799feaf7b726e7a908dec6792c317f5dbebcb41b8` |
| 2 | `lemma` | [hurwitzZetaEven_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/declarations/hurwitzzetaeven-eq--227c408030e4dd3def53a5a5.md) | 65 | `result-track:227c408030e4dd3def53a5a56a1bfa8345067ecf5fc869576b78d570e5a4ee53` |
| 3 | `lemma` | [hurwitzZetaOdd_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/declarations/hurwitzzetaodd-eq--34ce7ba8724da2a80837d3fb.md) | 70 | `result-track:34ce7ba8724da2a80837d3fbd4bbc5cfc0af85d4933b2fcd6a154b19c9013ad1` |
| 4 | `lemma` | [differentiableAt_hurwitzZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/declarations/differentiableat-hurwitzzeta--f5c3402e1074ffcd3d0c444e.md) | 76 | `result-track:f5c3402e1074ffcd3d0c444ec0e022dc37df3718531d420b5922fed58d7e8d9a` |
| 5 | `lemma` | [hasSum_hurwitzZeta_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/declarations/hassum-hurwitzzeta-of-one-lt-re--5ae0cd63f596014cabd2f2a0.md) | 82 | `result-track:5ae0cd63f596014cabd2f2a0b1ffeee76d0788f928dcbb0508c6bd1550d7d99b` |
| 6 | `lemma` | [hurwitzZeta_residue_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/declarations/hurwitzzeta-residue-one--b8edd433ea7e3b77788a9521.md) | 92 | `result-track:b8edd433ea7e3b77788a9521d2686d8a7e8852d178eb700831aa2b0e5595cf04` |
| 7 | `lemma` | [differentiableAt_hurwitzZeta_sub_one_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/declarations/differentiableat-hurwitzzeta-sub-one-div--37c495eec93555b1378e98b9.md) | 98 | `result-track:37c495eec93555b1378e98b9b9ce909769cf560d756fffa58c02a92a1ab57aae` |
| 8 | `lemma` | [tendsto_hurwitzZeta_sub_one_div_nhds_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/declarations/tendsto-hurwitzzeta-sub-one-div-nhds-one--26e5417dadb792198ce0f7f6.md) | 106 | `result-track:26e5417dadb792198ce0f7f696b0565658fe7a4fecf3b1ae75a707e989005ffa` |
| 9 | `lemma` | [differentiable_hurwitzZeta_sub_hurwitzZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/declarations/differentiable-hurwitzzeta-sub-hurwitzzeta--a1a95f33ccddf99ef9103e01.md) | 113 | `result-track:a1a95f33ccddf99ef9103e013e967333924b895d91498d26da1b9c2a150189f1` |
| 10 | `def` | [expZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/declarations/expzeta--eb66551df4a3c1594b0274d0.md) | 125 | `declaration-track:eb66551df4a3c1594b0274d0cc1155e7006f700c7ba74aa0a644a4aad90f0195` |
| 11 | `lemma` | [cosZeta_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/declarations/coszeta-eq--068305e0f0fb8496891b101b.md) | 128 | `result-track:068305e0f0fb8496891b101b68df46c2a4e3e88857c4af3e5961388529139a7a` |
| 12 | `lemma` | [sinZeta_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/declarations/sinzeta-eq--e50c418a7a0f98f2603a89c4.md) | 133 | `result-track:e50c418a7a0f98f2603a89c40a01fd7f26f848637a3fce09f50c1ac4731d659a` |
| 13 | `lemma` | [hasSum_expZeta_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/declarations/hassum-expzeta-of-one-lt-re--659c9bb98489b351b8eb498d.md) | 138 | `result-track:659c9bb98489b351b8eb498d2827b86a46f4da248c93134439c6362c259d6d04` |
| 14 | `lemma` | [differentiableAt_expZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/declarations/differentiableat-expzeta--5bb43af024e9942cc4aa897b.md) | 145 | `result-track:5bb43af024e9942cc4aa897b935e7917d30f619875714a9ea04d65aa76944656` |
| 15 | `lemma` | [differentiable_expZeta_of_ne_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/declarations/differentiable-expzeta-of-ne-zero--f2163af65e83f8ad0e721091.md) | 152 | `result-track:f2163af65e83f8ad0e721091792026f7ad3ca9bb40baf4d68baa284b8855bfa9` |
| 16 | `lemma` | [LSeriesHasSum_exp](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/declarations/lserieshassum-exp--8d86f78d97b738023c66926e.md) | 157 | `result-track:8d86f78d97b738023c66926e46ca1e445afa35cf9a626649683ddd8469e8b955` |
| 17 | `lemma` | [hurwitzZeta_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/declarations/hurwitzzeta-one-sub--fd4060d4958f88f6285db488.md) | 166 | `result-track:fd4060d4958f88f6285db4885d8c960c34f235339849ceaf4819fee2c1cb2bd3` |
| 18 | `lemma` | [expZeta_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/declarations/expzeta-one-sub--eade4ef1aecaadec0259b239.md) | 182 | `result-track:eade4ef1aecaadec0259b2394a178b6a9c3f814e6ab35d39b17daa414df89880` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
