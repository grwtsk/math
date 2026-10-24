# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Marginal.Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "861aa70fbfb0b2c6f4005a278ff14a91d6e94654",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `861aa70fbfb0b2c6f4005a278ff14a91d6e94654`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Pi` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lmarginal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lmarginal--73286519064b8101c97dfff9.md) | 82 | `declaration-track:73286519064b8101c97dfff90e3f5b15242978abbffad7bc881d30f0eed30d2b` |
| 2 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.Lmarginal.Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.Measurable.lmarginal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/root-grwtsk-analysis-realanalysis-integration-lmarginal-variant49112b41e--6d171644fd939f4fd681baed.md) | 95 | `result-track:6d171644fd939f4fd681baedd8b60e082f44930ad140e661422fefb505cc6414` |
| 3 | `theorem` | [lmarginal_empty](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lmarginal-empty--55cfbad41a123773d59703f7.md) | 104 | `result-track:55cfbad41a123773d59703f7bf48d01332fb830b066e28add161b34f0db579b1` |
| 4 | `theorem` | [lmarginal_congr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lmarginal-congr--61208066ee8e03c0849fc623.md) | 111 | `result-track:61208066ee8e03c0849fc6233747b94031701b37441a3bfa4c39cc8bc10fa586` |
| 5 | `theorem` | [lmarginal_update_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lmarginal-update-of-mem--e4d139a62bbc520737cc475c.md) | 116 | `result-track:e4d139a62bbc520737cc475cd125c0761d0d743e3ed8cd722dc828ac877de959` |
| 6 | `theorem` | [lmarginal_singleton](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lmarginal-singleton--b32c94d38da65ee8b759af53.md) | 125 | `result-track:b32c94d38da65ee8b759af532206db1bac224f5bf6470761b414d82f344fedfd` |
| 7 | `theorem` | [lmarginal_mono](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lmarginal-mono--1d34e42a0415576bc76c2b69.md) | 139 | `result-track:1d34e42a0415576bc76c2b69ba053833d286ddd94e118c6d9d8f294f090dbc6a` |
| 8 | `theorem` | [lmarginal_union](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lmarginal-union--0e6daa6d71230168f49e9107.md) | 144 | `result-track:0e6daa6d71230168f49e91076b37137f781adbce6b8e14c4927676b05418a308` |
| 9 | `theorem` | [lmarginal_union'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lmarginal-union--fbefa54ff0f2eb26256b90da.md) | 163 | `result-track:fbefa54ff0f2eb26256b90da0d53282fa3d245a5ff98ec70076536f6f6f9577f` |
| 10 | `theorem` | [lmarginal_insert](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lmarginal-insert--7732d35f488b19e3397ada5f.md) | 171 | `result-track:7732d35f488b19e3397ada5fd20022fdaea4bf60d7c4857cda594653bb3da34e` |
| 11 | `theorem` | [lmarginal_erase](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lmarginal-erase--48ef4a80f4e93aae8384b604.md) | 179 | `result-track:48ef4a80f4e93aae8384b6042d2be12eb75bd6b7f30a310c419b74b6be58f254` |
| 12 | `theorem` | [lmarginal_insert'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lmarginal-insert--18a3154721e4a7cdb9c6936b.md) | 186 | `result-track:18a3154721e4a7cdb9c6936bba20b176d2e01e3c93fe83159f7a23a3c7a3a700` |
| 13 | `theorem` | [lmarginal_erase'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lmarginal-erase--02beaf90813b6d7a48b68bb9.md) | 194 | `result-track:02beaf90813b6d7a48b68bb964df47741d2faaf508420b968dcbc6a3bee02466` |
| 14 | `theorem` | [lmarginal_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lmarginal-univ--d04a14e7bbbcc76403a5a1b1.md) | 199 | `result-track:d04a14e7bbbcc76403a5a1b1a1160487154a942cc52c10508b394b913a172771` |
| 15 | `theorem` | [lintegral_eq_lmarginal_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lintegral-eq-lmarginal-univ--c04570a2f0b254b5e9d13718.md) | 207 | `result-track:c04570a2f0b254b5e9d1371848bced84741cdbdf5679bec356d5e4f9fcbf3381` |
| 16 | `theorem` | [lmarginal_image](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lmarginal-image--7afa4bc49fd10520e8f96de0.md) | 210 | `result-track:7afa4bc49fd10520e8f96de0c331602b1463e883113cb223338f6ddfbb489620` |
| 17 | `theorem` | [lmarginal_update_of_notMem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lmarginal-update-of-notmem--30f4872858c9cd8deeddf327.md) | 222 | `result-track:30f4872858c9cd8deeddf327f49b2b088d4b181a3133e378d1bfb067118d3879` |
| 18 | `theorem` | [lmarginal_eq_of_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lmarginal-eq-of-subset--dacca5ae482828e61c7f70c8.md) | 235 | `result-track:dacca5ae482828e61c7f70c82aa0ef72ffec59dddafe37757c6866c8584bfd3b` |
| 19 | `theorem` | [lmarginal_le_of_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lmarginal-le-of-subset--b70179100088506620d9ce87.md) | 241 | `result-track:b70179100088506620d9ce87811f834ce6076000ce7a1384e16477db2d7b1317` |
| 20 | `theorem` | [lintegral_eq_of_lmarginal_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lintegral-eq-of-lmarginal-eq--33607642cab6b25eee68f4bb.md) | 248 | `result-track:33607642cab6b25eee68f4bb66d74717711ceb87989909b5341f888aeda6af67` |
| 21 | `theorem` | [lintegral_le_of_lmarginal_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/declarations/lintegral-le-of-lmarginal-le--b8c550c61a8f2539249bf337.md) | 255 | `result-track:b8c550c61a8f2539249bf3370bad5265fb111b1466e64913aeb60917bfb47e2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
