# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.HigherPowerTsumAudit.Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf17ddbecbb7b48790f5165264fdf912a16cc509",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf17ddbecbb7b48790f5165264fdf912a16cc509`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ProperPrimePowers` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHigherPrimePower](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/ishigherprimepower--857a529915d6733224b0b87b.md) | 17 | `declaration-track:857a529915d6733224b0b87b49f8a27c896522d7757d0415280915ed0a1ef968` |
| 2 | `def` | [higherPrimePowerIndices](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/higherprimepowerindices--1b45a42d2650c9a193c17c1b.md) | 20 | `declaration-track:1b45a42d2650c9a193c17c1b4b078919ce981fe38cb06fef8ebba43460a22765` |
| 3 | `def` | [higherPrimePowerContribution](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/higherprimepowercontribution--8264196f9c2eae45d27d2b61.md) | 25 | `declaration-track:8264196f9c2eae45d27d2b615f14a29118b0d5876514135ec8fbd4bb0132949a` |
| 4 | `theorem` | [prime_power_representation_unique](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/prime-power-representation-unique--62a3362bfea44d0c878055b5.md) | 31 | `result-track:62a3362bfea44d0c878055b5e2fd27eb10bc579a8af926914493f950eb7ca824` |
| 5 | `theorem` | [primeSquare_not_higher](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/primesquare-not-higher--e4c001cdb619058a9918ce37.md) | 37 | `result-track:e4c001cdb619058a9918ce3712edd69d15d6e55ba1c5d61b555136f8d764eaf9` |
| 6 | `theorem` | [primeSquare_not_prime](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/primesquare-not-prime--8fd8a53257c617836aee84dd.md) | 45 | `result-track:8fd8a53257c617836aee84dd3ec5adc244314a348f71a19b94f67092559c93c3` |
| 7 | `theorem` | [higher_not_prime](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/higher-not-prime--816bb1a4fabd23181ea1715b.md) | 50 | `result-track:816bb1a4fabd23181ea1715b59922d1350b2405773cc6b0a99854fb1aaf5522d` |
| 8 | `theorem` | [nonprime_primePower_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/nonprime-primepower-iff--9032992764f9e6759b963861.md) | 55 | `result-track:9032992764f9e6759b9638613b29efa3e098bc7dd8de39fce267fb1672d2613b` |
| 9 | `theorem` | [nonprime_weight_zero_of_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/nonprime-weight-zero-of-outside--ee66484684e86a137d7c4e96.md) | 75 | `result-track:ee66484684e86a137d7c4e9609062f25975842f36ea04a090d25294839597bb6` |
| 10 | `theorem` | [primeSquare_higher_indices_disjoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/primesquare-higher-indices-disjoint--3a118c19b1faf41b8a41cfe0.md) | 83 | `result-track:3a118c19b1faf41b8a41cfe04d0718e188543d5aa26e4feab062845edc77d345` |
| 11 | `theorem` | [properPrimePowerContribution_eq_square_add_higher](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/properprimepowercontribution-eq-square-add-higher--9942e8b25da18d50af105382.md) | 91 | `result-track:9942e8b25da18d50af105382f52bd5e87095650fa9e45b2815b68ba4215a2989` |
| 12 | `theorem` | [primePowerContribution_eq_prime_square_higher](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/primepowercontribution-eq-prime-square-higher--c75daaf67a92c3f98d504da6.md) | 112 | `result-track:c75daaf67a92c3f98d504da600268ac3c8421aaf1fab4f8d052dfc57635cd7f1` |
| 13 | `theorem` | [eight_higher_not_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/eight-higher-not-square--a47648ae86817517f70ba794.md) | 120 | `result-track:a47648ae86817517f70ba79404dbd2382d19bd535aff6dfb92312f611e56a5e7` |
| 14 | `theorem` | [eight_mem_higherPrimePowerIndices_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/eight-mem-higherprimepowerindices-iff--caaa007784f1b2ce18903c3a.md) | 125 | `result-track:caaa007784f1b2ce18903c3af1afe0a19cd0bbd0a27b79ebfc05929ed911a4cd` |
| 15 | `theorem` | [sqrt_nat_power](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/sqrt-nat-power--9204af00e03e8702e15ad43e.md) | 144 | `result-track:9204af00e03e8702e15ad43ea728c12a1e7a31ba5a3c05d136dc256ec6948fc1` |
| 16 | `theorem` | [higher_prime_power_weight](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/higher-prime-power-weight--b618c7c133979e2b60a0ece6.md) | 151 | `result-track:b618c7c133979e2b60a0ece6c7364198de80cb7cce9000d1cf9c5d65f0cb1ddd` |
| 17 | `theorem` | [higher_prime_power_summand](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/higher-prime-power-summand--c8e8b7b2178f4373e6efc422.md) | 158 | `result-track:c8e8b7b2178f4373e6efc422e8b003e6b864bda387a6d3c16a48146d4f4f1f1c` |
| 18 | `abbrev` | [HigherPowerIndex](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/higherpowerindex--2aa9f633e4bfc9a6bb8dfb46.md) | 178 | `declaration-track:2aa9f633e4bfc9a6bb8dfb463c4c1ef1cd0a1b7095e43b57e923a4435933430c` |
| 19 | `def` | [powerIndex](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/powerindex--e5bbfce05866cd16e4eb347b.md) | 181 | `declaration-track:e5bbfce05866cd16e4eb347bb19dd4d4a73fb0fd3e17af6469331b578dfbc568` |
| 20 | `theorem` | [powerIndex_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/powerindex-injective--873641c30bf4109a9fd835ba.md) | 184 | `result-track:873641c30bf4109a9fd835ba8a80c128fdd0d6ec013a000003464239738b1194` |
| 21 | `def` | [higherPairIndices](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/higherpairindices--582d6299f19393f999fb43e6.md) | 194 | `declaration-track:582d6299f19393f999fb43e677633503d42ddd93062da6b25ee8484ea7c3ce53` |
| 22 | `def` | [higherSourceTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/highersourceterm--ebd2fd6685a3148258763578.md) | 198 | `declaration-track:ebd2fd6685a3148258763578c496aef4164194cdf07c99bb51d04f11dd901c31` |
| 23 | `theorem` | [powerIndex_isHigher](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/powerindex-ishigher--2160b587deb672ebcedfaa0d.md) | 203 | `result-track:2160b587deb672ebcedfaa0d923240d8ce5941b8ab6de427297743a445e95d03` |
| 24 | `theorem` | [powerIndex_two_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/powerindex-two-le--650a1a5bf6e772a597f6d369.md) | 207 | `result-track:650a1a5bf6e772a597f6d3698684c053fe103c95117383228271e49d1dc18e4b` |
| 25 | `theorem` | [mem_higherPairIndices_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/mem-higherpairindices-iff--2e4be9d32cb81e27f9434528.md) | 211 | `result-track:2e4be9d32cb81e27f9434528b5de82ff6ba73e9b13f55b3e8f92b801eb513710` |
| 26 | `theorem` | [higherPairIndices_image](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/higherpairindices-image--216598800d2fc994a736758d.md) | 218 | `result-track:216598800d2fc994a736758dd3b96bebc03c00738f24dc263bdd8b4b623cb9a9` |
| 27 | `theorem` | [higherPrimePowerContribution_eq_finite_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/higherprimepowercontribution-eq-finite-sum--83fc1466f7e2c482b5b57f41.md) | 233 | `result-track:83fc1466f7e2c482b5b57f41022ff167009680db415c95aaa3ebc7c07cbcb464` |
| 28 | `theorem` | [higherSourceTerm_zero_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/highersourceterm-zero-outside--c9af5bb5dc903ab540dc4b03.md) | 243 | `result-track:c9af5bb5dc903ab540dc4b03eb73395ed43abb650ed935f8d0356569128c74fc` |
| 29 | `theorem` | [higherSourceTerm_finite_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/highersourceterm-finite-support--262eac7b26c61e7a8b524f4e.md) | 258 | `result-track:262eac7b26c61e7a8b524f4e8d967a99bfc1eb827b4804530a96951e903e9bf4` |
| 30 | `theorem` | [higherSourceTerm_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/highersourceterm-summable--005e7eb6dc477fa11772be91.md) | 264 | `result-track:005e7eb6dc477fa11772be91661da8ba7b95bb1ab1eff689406dd9d6fbb7f0fd` |
| 31 | `theorem` | [higherSourceTerm_norm_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/highersourceterm-norm-summable--108e05297558851f5294db8b.md) | 269 | `result-track:108e05297558851f5294db8bcc27855a335e721d2ae80ddc55ad0de99fb8de71` |
| 32 | `theorem` | [higherPrimePowerContribution_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantab07993221914af38d87511a4f05d329477edc2eb530c6145da0ff66f70908c8.lean/declarations/higherprimepowercontribution-eq-tsum--bfe05c1af817fbba72070107.md) | 276 | `result-track:bfe05c1af817fbba72070107387baab43ea2d1b6175dbd8ef347bb9f238d466b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
