# Verification target: GRWTSK.Algebra.LinearAlgebra.IntrinsicGrassmannian.Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdce41df2f103c57d6c409da0324946a6dd7ae91",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdce41df2f103c57d6c409da0324946a6dd7ae91`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PluckerRecognition` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IntrinsicPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/intrinsicplane--c190d4ff033c3a173dadb0a4.md) | 30 | `declaration-track:c190d4ff033c3a173dadb0a459b8e7d83edba8b9cb92028e069fbbf55512ff63` |
| 2 | `def` | [FullRankFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/fullrankframe--11a79e8b43fa45399d8af629.md) | 34 | `declaration-track:11a79e8b43fa45399d8af62919b372ce84228cc65f9489a1f4126c5df2ced44c` |
| 3 | `def` | [representedPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/representedplane--a56e034634205bfe538ba71d.md) | 38 | `declaration-track:a56e034634205bfe538ba71dadfa1b0811ab8c7601c391391946d86970749922` |
| 4 | `theorem` | [representedPlane_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/representedplane-eq-iff--76d48dd43d9f31e85beb779b.md) | 42 | `result-track:76d48dd43d9f31e85beb779ba89712ff4dd48afd06772c325bef9e5945dc2e71` |
| 5 | `theorem` | [exists_frame_of_intrinsicPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/exists-frame-of-intrinsicplane--c7c6876d3ee98402fa2f5d9b.md) | 52 | `result-track:c7c6876d3ee98402fa2f5d9bbd602d061859f2331b2d6f9211192eb22f98cbc2` |
| 6 | `theorem` | [representedPlane_surjective](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/representedplane-surjective--eec51b6b2dd19d9cbcf06f99.md) | 75 | `result-track:eec51b6b2dd19d9cbcf06f99175c80244a5fd43d61ce56e9d528586356f5cdeb` |
| 7 | `theorem` | [intrinsicPlane_dimension_le](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/intrinsicplane-dimension-le--0e58e764ca85b6f03e25ff8c.md) | 82 | `result-track:0e58e764ca85b6f03e25ff8c66704c5e32b24bfcb9e24ced43d2d10ad795e79e` |
| 8 | `theorem` | [no_intrinsicPlane_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/no-intrinsicplane-of-lt--1d39430a8ae9460e73b80677.md) | 89 | `result-track:1d39430a8ae9460e73b80677c2d54a252884ec8a9d790594b3af3b8317e653cf` |
| 9 | `def` | [planeFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/planeframe--6079794c889dfcfda140fa16.md) | 94 | `declaration-track:6079794c889dfcfda140fa16fa0e33f3484e2244cab9662adeeca7ee502b0293` |
| 10 | `theorem` | [representedPlane_planeFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/representedplane-planeframe--b12e906587f62d03630caf8c.md) | 98 | `result-track:b12e906587f62d03630caf8c15861b3b45926483cc0b9d02a2143570df2666bc` |
| 11 | `def` | [framePresentationSetoid](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/framepresentationsetoid--21df02fd6a5779f10aeb7857.md) | 103 | `declaration-track:21df02fd6a5779f10aeb78571c559252ab58ec71eba8d8a7d2cc5d4a8decdc32` |
| 12 | `abbrev` | [FramePresentationQuotient](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/framepresentationquotient--6aefc957f56f11ee89801a75.md) | 108 | `declaration-track:6aefc957f56f11ee89801a75b047e9a232c9ade569534416054456a7d9ff0dd5` |
| 13 | `def` | [quotientToPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/quotienttoplane--be95512f24cb8cce2afc3d6e.md) | 111 | `declaration-track:be95512f24cb8cce2afc3d6e04db8b5af9d3f4ea8463ef15e12eb9757ef700a2` |
| 14 | `def` | [planeToQuotient](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/planetoquotient--93d1cf8b03559405c01ef75d.md) | 115 | `declaration-track:93d1cf8b03559405c01ef75d7a1086a28724dcfe31252e924d2019a2d1b67194` |
| 15 | `theorem` | [quotientToPlane_mk](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/quotienttoplane-mk--df6cb0e7768ad412032f6c74.md) | 119 | `result-track:df6cb0e7768ad412032f6c74f3c30a5eebb942bfe6000b4a5e9285d2dedd2563` |
| 16 | `theorem` | [planeToQuotient_representedPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/planetoquotient-representedplane--3ca1c67dc6b487932dae2b7c.md) | 124 | `result-track:3ca1c67dc6b487932dae2b7cf204f113164b86d5ca7c3a1fbea3f6de7f336c9b` |
| 17 | `def` | [frameQuotientEquivPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/framequotientequivplane--b269454960ec323573ab60c3.md) | 131 | `declaration-track:b269454960ec323573ab60c36c300124569ba82b9e95cfd86d68ade5682d55a7` |
| 18 | `theorem` | [frameClass_eq_iff_rowSpace](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/frameclass-eq-iff-rowspace--57f24d4e5068cfc4f532f467.md) | 143 | `result-track:57f24d4e5068cfc4f532f467593035e119387a4f201eab180b16275c61de63de` |
| 19 | `theorem` | [frameClass_eq_iff_orderedMinor_proportional](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/frameclass-eq-iff-orderedminor-proportional--ff083d1d617c93f0ead2e19a.md) | 153 | `result-track:ff083d1d617c93f0ead2e19a3348b87abb11f52b6e5f65ea3b53c268ef4c9328` |
| 20 | `theorem` | [intrinsicPlane_has_ordered_chart](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/intrinsicplane-has-ordered-chart--4d8aaadca73c500249d5b031.md) | 162 | `result-track:4d8aaadca73c500249d5b031a01ba3d23fd444e2517bef6f7c1c5eb225e5d702` |
| 21 | `def` | [IntrinsicNonnegative](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/intrinsicnonnegative--cc02a4fdef36c9c5da40246a.md) | 173 | `declaration-track:cc02a4fdef36c9c5da40246a55f57b6a92ea83c607ecd42407d23f7904891429` |
| 22 | `def` | [IntrinsicPositive](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/intrinsicpositive--263d18b5efb61c385231b952.md) | 177 | `declaration-track:263d18b5efb61c385231b9520c0391953323c004d5fc6592fc7b52568d5bd682` |
| 23 | `theorem` | [intrinsicNonnegative_of_positive](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/intrinsicnonnegative-of-positive--0231b844e31f7c879f1b7376.md) | 181 | `result-track:0231b844e31f7c879f1b7376d9d0dacb29c0c016378958c6f3a76f0f17c49983` |
| 24 | `def` | [NonnegativeFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/nonnegativeframe--5e51876d67531375a7d552b7.md) | 187 | `declaration-track:5e51876d67531375a7d552b7889ee777b0844a5e8663d71ebffb1e20f33cad63` |
| 25 | `def` | [PositiveFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/positiveframe--c77baa91f5e03b769d728cd8.md) | 191 | `declaration-track:c77baa91f5e03b769d728cd8d54877f699d0c88a96d9380376f3ae6c2dc9f8c8` |
| 26 | `def` | [nonnegativeFrameToPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/nonnegativeframetoplane--3960edc189d7c4d075588d92.md) | 195 | `declaration-track:3960edc189d7c4d075588d9274bba474f45b29818dd6acb6a3e97239ba429608` |
| 27 | `theorem` | [nonnegativeFrameToPlane_surjective](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/nonnegativeframetoplane-surjective--11a517cb815913c5f2d289e6.md) | 200 | `result-track:11a517cb815913c5f2d289e60e91091c4a83791b47b2d5cc47fafb64b5fb2a97` |
| 28 | `def` | [positiveFrameToPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/positiveframetoplane--de4645fbda96f497c94e8913.md) | 208 | `declaration-track:de4645fbda96f497c94e89136514e671f47b29ca17f6c3a30415adf670333347` |
| 29 | `theorem` | [positiveFrameToPlane_surjective](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/positiveframetoplane-surjective--10be37ae082900c0946956df.md) | 213 | `result-track:10be37ae082900c0946956df5b924df8d07ca89de839a4a1f0c175d36393cbfe` |
| 30 | `theorem` | [nonnegativeFrames_positiveGauge](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean/declarations/nonnegativeframes-positivegauge--402a2009aa3c5584f01c00b1.md) | 221 | `result-track:402a2009aa3c5584f01c00b153eb9ef4e847746550ab528437d2032d1a00f018` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
