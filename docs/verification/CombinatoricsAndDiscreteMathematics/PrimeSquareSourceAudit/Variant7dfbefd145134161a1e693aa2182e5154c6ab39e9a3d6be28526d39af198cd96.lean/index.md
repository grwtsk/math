# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeSquareSourceAudit.Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f665fb2c6457dca848725e645649845c68dedfb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f665fb2c6457dca848725e645649845c68dedfb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.Cutoff` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPrimeSquare](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/declarations/isprimesquare--380ac4d4f5ebd1170f516c0c.md) | 13 | `declaration-track:380ac4d4f5ebd1170f516c0c41e358421facac58990f6f8ec311e90f1d841f1c` |
| 2 | `def` | [primeSquareIndices](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/declarations/primesquareindices--721d6490a8c862f22963de01.md) | 16 | `declaration-track:721d6490a8c862f22963de01f620783fa5cceca373e73465bb57b4e98c4edd42` |
| 3 | `def` | [closedPrimeRoots](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/declarations/closedprimeroots--81ca8042c5ec871a4d3ae84b.md) | 21 | `declaration-track:81ca8042c5ec871a4d3ae84b9e007f58772b7dc63129fb30f8726ab9e40230e1` |
| 4 | `def` | [strictPrimeRoots](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/declarations/strictprimeroots--0678122fb5ff3e40941275bc.md) | 25 | `declaration-track:0678122fb5ff3e40941275bcdc078a5675272acc73ed737a8d5e1f3b5ff32e02` |
| 5 | `def` | [primeSquareContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/declarations/primesquarecontribution--2a17033f6d93bfc3be9a50cc.md) | 29 | `declaration-track:2a17033f6d93bfc3be9a50cc4d3548cc3a1167b23a9fbcf9320d31eeebac0418` |
| 6 | `theorem` | [mem_closedPrimeRoots_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/declarations/mem-closedprimeroots-iff--472c0164fbcc2c4e2e91deb3.md) | 33 | `result-track:472c0164fbcc2c4e2e91deb3393d43a02c1fe019208f515ba2d91521b1f4cff0` |
| 7 | `theorem` | [mem_strictPrimeRoots_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/declarations/mem-strictprimeroots-iff--34bcc38991facc05bf633f90.md) | 41 | `result-track:34bcc38991facc05bf633f90ed4b6334191484ef66019fe512664d03b4ecd929` |
| 8 | `theorem` | [prime_square_cutoff_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/declarations/prime-square-cutoff-iff--257b107524da3ca33e4809c6.md) | 47 | `result-track:257b107524da3ca33e4809c66cb8cc5a3dd1202b0e8bdc91ccf0423943fafb4a` |
| 9 | `theorem` | [primeSquareIndices_eq_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/declarations/primesquareindices-eq-image--416f7e40470859b2a6b44bdd.md) | 57 | `result-track:416f7e40470859b2a6b44bdd8e863df69db7ee5b06b5ce198e9aa0c637b0ed94` |
| 10 | `theorem` | [four_mem_primeSquareIndices_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/declarations/four-mem-primesquareindices-iff--19c94713f7314df775e9176d.md) | 71 | `result-track:19c94713f7314df775e9176dd5163ac554fb47d127295b504cf526590712ad93` |
| 11 | `theorem` | [prime_square_summand](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/declarations/prime-square-summand--639453e38501b2ee34442c18.md) | 83 | `result-track:639453e38501b2ee34442c18cf0bc09aba4dd8108b58b6ed01a70bf84402ab89` |
| 12 | `theorem` | [primeSquareContribution_eq_strict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/declarations/primesquarecontribution-eq-strict--480849134281e38f0823372f.md) | 94 | `result-track:480849134281e38f0823372f12981e377d4f4ba83abdcdebac3a441df5133773` |
| 13 | `theorem` | [prime_root_endpoint_summand_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/declarations/prime-root-endpoint-summand-zero--4b10fc9966eff6a6c8a297bf.md) | 106 | `result-track:4b10fc9966eff6a6c8a297bf3804bfc47e5eb1292c01d66ebbe61618ed1f2738` |
| 14 | `theorem` | [primeSquareContribution_eq_closed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/declarations/primesquarecontribution-eq-closed--fa87d09a779cfde47b97233c.md) | 120 | `result-track:fa87d09a779cfde47b97233c96f8d16ee9fc6e144b437d27bf4e312b760fb991` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
