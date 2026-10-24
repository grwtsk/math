# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SumIntegralComparisons.Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d4dddf3a84b25237de66aac222f7ab3e2f6796a",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d4dddf3a84b25237de66aac222f7ab3e2f6796a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_Ico_le_integral_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/sum-ico-le-integral-of-le--5c7a86369b3980c71a8b9745.md) | 68 | `result-track:5c7a86369b3980c71a8b974561bdebf73c7b7d7b887318f902529d8687941535` |
| 2 | `lemma` | [integral_le_sum_Ico_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/integral-le-sum-ico-of-le--c9b89f56c8431c2b2be5e3bc.md) | 84 | `result-track:c9b89f56c8431c2b2be5e3bcc04ba81798e169531d52208ab97578a9163c00b8` |
| 3 | `theorem` | [intervalIntegrable_subset_of_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/intervalintegrable-subset-of-integrableon--db3717f8972e731a36098bdf.md) | 90 | `result-track:db3717f8972e731a36098bdf0010f9801b5f0ff62898f9051bb143dc3e2d00e4` |
| 4 | `theorem` | [AntitoneOn.integral_le_sum_of_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/antitoneon-integral-le-sum-of-integrableon--95b85c3b8cfccd945c74a59a.md) | 97 | `result-track:95b85c3b8cfccd945c74a59ad5833cd4c8faca77e4dfeb8636403e6ec4111ef4` |
| 5 | `theorem` | [AntitoneOn.integral_le_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/antitoneon-integral-le-sum--1474af2e592365efa9f8a337.md) | 113 | `result-track:1474af2e592365efa9f8a337494bb06ac12f5845675472236cf7e32c72e2fdb3` |
| 6 | `theorem` | [AntitoneOn.integral_le_sum_Ico](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/antitoneon-integral-le-sum-ico--cb23362989d0cd9a4a6d9f1e.md) | 118 | `result-track:cb23362989d0cd9a4a6d9f1edf264a7279ac467bef235b3b0cd11671ac0c0031` |
| 7 | `theorem` | [AntitoneOn.sum_le_integral_of_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/antitoneon-sum-le-integral-of-integrableon--d4f518fcd253b7ed222cf4ff.md) | 125 | `result-track:d4f518fcd253b7ed222cf4ff10c90f244cbd06de2192b6153736bce3d11d0e11` |
| 8 | `theorem` | [AntitoneOn.sum_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/antitoneon-sum-le-integral--eb618e6c74f94b34edb8e048.md) | 141 | `result-track:eb618e6c74f94b34edb8e0484dbd2daecd9afa98877f083a968ebc44c0044e88` |
| 9 | `theorem` | [AntitoneOn.sum_le_integral_Ico](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/antitoneon-sum-le-integral-ico--616d03fbf70dce53d744d7b5.md) | 146 | `result-track:616d03fbf70dce53d744d7b5ba7995940f8230d21e1e089ebff5a5c3c45748c9` |
| 10 | `theorem` | [MonotoneOn.sum_le_integral_of_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/monotoneon-sum-le-integral-of-integrableon--42f4f6da7e641e8bc37744a9.md) | 153 | `result-track:42f4f6da7e641e8bc37744a9fb9cb6fe1edf800ae669c7f81b8659a7657928dc` |
| 11 | `theorem` | [MonotoneOn.sum_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/monotoneon-sum-le-integral--383d1b266c223e56b36e19cd.md) | 159 | `result-track:383d1b266c223e56b36e19cd33274632be7e479b80debc0e83efd9ffad3a39cd` |
| 12 | `theorem` | [MonotoneOn.sum_le_integral_Ico](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/monotoneon-sum-le-integral-ico--c3419ef0aabb1bbdbc517ecc.md) | 164 | `result-track:c3419ef0aabb1bbdbc517eccd167f3b46aec94caa9ea5659b3957ad6d2487f30` |
| 13 | `theorem` | [MonotoneOn.integral_le_sum_of_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/monotoneon-integral-le-sum-of-integrableon--644e34294b93bcb87d5b72f5.md) | 169 | `result-track:644e34294b93bcb87d5b72f537254a54d32576bedecacf488c76892b70016319` |
| 14 | `theorem` | [MonotoneOn.integral_le_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/monotoneon-integral-le-sum--f2ef79e62b43fb1944e980af.md) | 175 | `result-track:f2ef79e62b43fb1944e980afe0377dcf89ac9b75d5902dc27e139655ac1de0a7` |
| 15 | `theorem` | [MonotoneOn.integral_le_sum_Ico](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/monotoneon-integral-le-sum-ico--e415582a4930f8ed1bb0b74a.md) | 180 | `result-track:e415582a4930f8ed1bb0b74aab7880ec977cbd96f8a1b8ac87c68af3c8acb47a` |
| 16 | `lemma` | [sum_mul_Ico_le_integral_of_monotone_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/sum-mul-ico-le-integral-of-monotone-antitone--1c9f7675b817707091dc83b1.md) | 185 | `result-track:1c9f7675b817707091dc83b15c9d2d9e88e274b506650c760e86cff573d3a32f` |
| 17 | `lemma` | [integral_le_sum_mul_Ico_of_antitone_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/integral-le-sum-mul-ico-of-antitone-monotone--440dfb4e314875bb45ddacad.md) | 204 | `result-track:440dfb4e314875bb45ddacadfa6bc0b1166ea499eb67174e59f779e0dc9bd811` |
| 18 | `lemma` | [AntitoneOn.sum_Ico_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/antitoneon-sum-ico-le-integral--2dd437507865fef135f296d0.md) | 227 | `result-track:2dd437507865fef135f296d03fae19ed49a630dd095cc78b4c1419ca5afd16e9` |
| 19 | `lemma` | [AntitoneOn.sum_range_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/antitoneon-sum-range-le-integral--55fb97a95fdd81ab020b07ed.md) | 237 | `result-track:55fb97a95fdd81ab020b07ed1d6fb73f2225efca1b037468e3b3f07af12badfb` |
| 20 | `theorem` | [AntitoneOn.summable_of_integrableOn_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/antitoneon-summable-of-integrableon-ioi--79c83fd92de39cf59d4be638.md) | 246 | `result-track:79c83fd92de39cf59d4be6387258f3e0e669c45e64d7a097e0510145ece9aa13` |
| 21 | `theorem` | [AntitoneOn.summable_of_integrableOn_Ioi_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/antitoneon-summable-of-integrableon-ioi-zero--581a23db15bf295218a45a43.md) | 256 | `result-track:581a23db15bf295218a45a438d1144421b38eee1f7328a57065648520dbebdc9` |
| 22 | `theorem` | [AntitoneOn.tsum_comp_add_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/antitoneon-tsum-comp-add-le-integral--dd5dbec07a89d53f2c0eac71.md) | 262 | `result-track:dd5dbec07a89d53f2c0eac716f81d3d485fa361e31bdf09ead65dcb689b041d7` |
| 23 | `theorem` | [AntitoneOn.tsum_add_one_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/antitoneon-tsum-add-one-le-integral--935a49d14c12f2062efaec8d.md) | 276 | `result-track:935a49d14c12f2062efaec8dae127abb860a30639734a2e0791e0e964f0a042c` |
| 24 | `theorem` | [AntitoneOn.tsum_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/antitoneon-tsum-le-integral--b7768bf5cccabf9ebd13ae53.md) | 283 | `result-track:b7768bf5cccabf9ebd13ae531799bb9522b1d40efa6d32dcbe6ed64d4a28095b` |
| 25 | `theorem` | [AntitoneOn.abs_tsum_sub_sum_range_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/antitoneon-abs-tsum-sub-sum-range-le-integral--f25a2494f4d00f230e1d1394.md) | 290 | `result-track:f25a2494f4d00f230e1d1394ce4c413ba4842ea65a7ed4808a682850c902813d` |
| 26 | `theorem` | [AntitoneOn.integrableOn_Ioi_of_summable_comp_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/antitoneon-integrableon-ioi-of-summable-comp-add--9622c50e9e2f6f9258f621e6.md) | 304 | `result-track:9622c50e9e2f6f9258f621e64c197d12319879adac7c1114550a8f9218341948` |
| 27 | `theorem` | [AntitoneOn.integrableOn_Ioi_zero_of_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/antitoneon-integrableon-ioi-zero-of-summable--6ba5ff9aa31dc61e72e30df3.md) | 322 | `result-track:6ba5ff9aa31dc61e72e30df3d834755c4fb19fc45b69b7401eeb92a8850dec05` |
| 28 | `theorem` | [AntitoneOn.integral_le_tsum_comp_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/antitoneon-integral-le-tsum-comp-add--2501d6494159dda4e3290e5e.md) | 330 | `result-track:2501d6494159dda4e3290e5e46eb7792463099b9ed4c89960e3d5ec8de140712` |
| 29 | `theorem` | [AntitoneOn.integral_le_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/declarations/antitoneon-integral-le-tsum--a8e3e4d2cfba93dbf5668101.md) | 347 | `result-track:a8e3e4d2cfba93dbf5668101e428ccb4fd5d964262dcaf41ee9386ad73c32e60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
