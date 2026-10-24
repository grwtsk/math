# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.HurwitzZeta.Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da81bd0210638dc1cf0adec660e12e6280788bea",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da81bd0210638dc1cf0adec660e12e6280788bea`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean.json)

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
| 1 | `def` | [hurwitzZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/declarations/hurwitzzeta--777773a5fd0f01bd2c38f619.md) | 54 | `declaration-track:777773a5fd0f01bd2c38f6198e19b5f46c2a18d29c623954b5b4d2834a797115` |
| 2 | `lemma` | [hurwitzZetaEven_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/declarations/hurwitzzetaeven-eq--7b01e6433f050e80a811f9cc.md) | 57 | `result-track:7b01e6433f050e80a811f9ccc1ef6d62b849eb54d698f84f86cc51f433ed884d` |
| 3 | `lemma` | [hurwitzZetaOdd_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/declarations/hurwitzzetaodd-eq--392cedc02271e4ef11bf84bd.md) | 62 | `result-track:392cedc02271e4ef11bf84bd74b8d4d6d8b776a09e9c0bf0ef57fb7991ddd73c` |
| 4 | `lemma` | [differentiableAt_hurwitzZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/declarations/differentiableat-hurwitzzeta--4153f6eeceac1de08b646c11.md) | 68 | `result-track:4153f6eeceac1de08b646c11b00ad80fe8667e9dbbe64d22ecc17051344a581e` |
| 5 | `lemma` | [hasSum_hurwitzZeta_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/declarations/hassum-hurwitzzeta-of-one-lt-re--cb00551537794dcc9e03c1a6.md) | 74 | `result-track:cb00551537794dcc9e03c1a6d9e9178eb877f60e4543ac5a46fdab50939c8a45` |
| 6 | `lemma` | [hurwitzZeta_residue_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/declarations/hurwitzzeta-residue-one--d662933c0f763be61439b4e3.md) | 84 | `result-track:d662933c0f763be61439b4e3bdb7e76aab1085733ad50a27281d468af66f60fd` |
| 7 | `lemma` | [differentiableAt_hurwitzZeta_sub_one_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/declarations/differentiableat-hurwitzzeta-sub-one-div--df29afc068435c3ca3d29131.md) | 90 | `result-track:df29afc068435c3ca3d2913187811fbb69f84042ad3573a9c009355515150eb0` |
| 8 | `lemma` | [tendsto_hurwitzZeta_sub_one_div_nhds_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/declarations/tendsto-hurwitzzeta-sub-one-div-nhds-one--650ba65894eb590ef5f1ae01.md) | 98 | `result-track:650ba65894eb590ef5f1ae013ad74edecaa506e50d8c72cc0bf800ad20b6fb9e` |
| 9 | `lemma` | [differentiable_hurwitzZeta_sub_hurwitzZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/declarations/differentiable-hurwitzzeta-sub-hurwitzzeta--87054a3370c946f34694a511.md) | 105 | `result-track:87054a3370c946f34694a5116c3ba0f6788e40db086e8929de40b7fb27651fee` |
| 10 | `def` | [expZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/declarations/expzeta--58ea49b1f96aaf50af2c8301.md) | 117 | `declaration-track:58ea49b1f96aaf50af2c8301a134681db4a79fc82c0da015258903968520cf4e` |
| 11 | `lemma` | [cosZeta_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/declarations/coszeta-eq--079744b68f560f54ccbd4a3b.md) | 120 | `result-track:079744b68f560f54ccbd4a3b8ef16e1961285339d3ab21384532e546b4079df6` |
| 12 | `lemma` | [sinZeta_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/declarations/sinzeta-eq--63db5f7d2858dfbaa6bb0716.md) | 125 | `result-track:63db5f7d2858dfbaa6bb0716161430882d5bf4ee0a1d31684cbde6013eec6a0d` |
| 13 | `lemma` | [hasSum_expZeta_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/declarations/hassum-expzeta-of-one-lt-re--c73e9c3c8c6e9ae14d9b0198.md) | 130 | `result-track:c73e9c3c8c6e9ae14d9b01987c2a0b4863f760e483261fc93dad15a5f5bd2c16` |
| 14 | `lemma` | [differentiableAt_expZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/declarations/differentiableat-expzeta--100297d60a98a72b6f21b181.md) | 137 | `result-track:100297d60a98a72b6f21b181e933d8a3ac9c53fcd55cdfdc2700b905cac0289a` |
| 15 | `lemma` | [differentiable_expZeta_of_ne_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/declarations/differentiable-expzeta-of-ne-zero--cc0a6f2e0cf2cf986d16e903.md) | 144 | `result-track:cc0a6f2e0cf2cf986d16e9031ecb5d202758be9711b4e4565ee4ba595f8a9850` |
| 16 | `lemma` | [LSeriesHasSum_exp](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/declarations/lserieshassum-exp--c055397a70425be7511bdd94.md) | 149 | `result-track:c055397a70425be7511bdd948b2a3f59935b9552f6b57d919a6bbd050293323c` |
| 17 | `lemma` | [hurwitzZeta_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/declarations/hurwitzzeta-one-sub--126b9735349004a75b41dcb1.md) | 158 | `result-track:126b9735349004a75b41dcb1a4595d7cfd4e372ec050c4ee0f55ccae0332caac` |
| 18 | `lemma` | [expZeta_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/declarations/expzeta-one-sub--c5544a92f27ee3bffc394a96.md) | 174 | `result-track:c5544a92f27ee3bffc394a9675ee296a1263ab8988cfd1f9ed6b2057a8720b76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
