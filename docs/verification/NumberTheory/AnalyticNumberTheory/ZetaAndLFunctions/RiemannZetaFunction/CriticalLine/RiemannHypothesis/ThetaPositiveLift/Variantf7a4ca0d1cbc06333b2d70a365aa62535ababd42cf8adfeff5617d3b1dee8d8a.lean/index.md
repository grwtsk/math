# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17acc66ac83f859eb645f200fc9feb9845ce29d8",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17acc66ac83f859eb645f200fc9feb9845ce29d8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.InvolutionCompression` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiSignedMomentParityCriterion` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiParityInvolution](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphiparityinvolution--47805bfcf642f3c9d9a4da34.md) | 46 | `declaration-track:47805bfcf642f3c9d9a4da345f1db5bfc788d9513697a6111e218894d91316bd` |
| 2 | `theorem` | [thetaPhiParityInvolution_transpose](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphiparityinvolution-transpose--bcee207569fefa591eeecb00.md) | 52 | `result-track:bcee207569fefa591eeecb00191b17b145437ca1322708e5ba9e1022d531a4c4` |
| 3 | `theorem` | [thetaPhiParityInvolution_sq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphiparityinvolution-sq--09eba9bc3ff451d009730d73.md) | 63 | `result-track:09eba9bc3ff451d009730d73b76e9f220a4cbfe9ecee387b79cf7f07384cd246` |
| 4 | `def` | [thetaPhiSignedMomentSupportOperator](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphisignedmomentsupportoperator--415dcdc8b7685b35431decd3.md) | 83 | `declaration-track:415dcdc8b7685b35431decd30f30538a55bac57206c223f2104bd6387e2fce59` |
| 5 | `def` | [thetaPhiSupportParityPhase](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphisupportparityphase--22938a7ca8564278c8f7c492.md) | 89 | `declaration-track:22938a7ca8564278c8f7c49279c6f6cbe0631473a22c1796d5f3f0db629031cd` |
| 6 | `theorem` | [thetaPhiSupportParityPhase_node](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphisupportparityphase-node--e0475bd656933baed1a9a16d.md) | 93 | `result-track:e0475bd656933baed1a9a16d61fcdccf1db16ee474252b28b868660fb6b42f3a` |
| 7 | `theorem` | [thetaPhiParityInvolution_eq_supportPhase](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphiparityinvolution-eq-supportphase--0bb7918c653bb2a3963b4f10.md) | 110 | `result-track:0bb7918c653bb2a3963b4f103d320c636d26e2aa7f94b86c4edad41c6b6659fe` |
| 8 | `theorem` | [thetaPhiSupportOperator_commutes_parity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphisupportoperator-commutes-parity--9fff9a7947f41450dc8e3029.md) | 123 | `result-track:9fff9a7947f41450dc8e30298a9db799561cceec21c6c9fc0c7362a07d1e7c85` |
| 9 | `def` | [thetaPhiSignedMomentKrylovFrame](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphisignedmomentkrylovframe--80e06d5dae5f2531ebe15a2e.md) | 139 | `declaration-track:80e06d5dae5f2531ebe15a2e827b016f4fbea0852145cbcd48fa52eaf3a7e3f6` |
| 10 | `theorem` | [thetaPhiSignedMoment_involutionCompression_apply](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphisignedmoment-involutioncompression-apply--0de0f478d6103d813671b72f.md) | 149 | `result-track:0de0f478d6103d813671b72ff970632c387a68ed852d4f74903bf7f69c298668` |
| 11 | `theorem` | [thetaPhiChristoffelHankel_signedMomentTruncation_eq_involutionCompression](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphichristoffelhankel-signedmomenttruncation-eq-involutioncompressio--6a8228a2a26b5fdc9fbd3ffe.md) | 218 | `result-track:6a8228a2a26b5fdc9fbd3ffe355faf85dc934ffa16ea6ffcf8717a81f17d6f92` |
| 12 | `def` | [thetaPhiSignedMomentCompressionApproximation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphisignedmomentcompressionapproximation--f12e6325a9cc0e34e2edc301.md) | 259 | `declaration-track:f12e6325a9cc0e34e2edc3016dfff9b6b11cbaf51d0c0ec5d42b7bd4c14a1189` |
| 13 | `theorem` | [thetaPhiSignedMomentCompressionApproximation_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphisignedmomentcompressionapproximation-eq--6ff2f4eb3950924df66340b2.md) | 271 | `result-track:6ff2f4eb3950924df66340b268f342982154aeb37e41bc9074c5d21efbae5994` |
| 14 | `theorem` | [thetaPhiSignedMomentCompressionApproximation_tendsto](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphisignedmomentcompressionapproximation-tendsto--cc460f9286d44e9acc4914cd.md) | 287 | `result-track:cc460f9286d44e9acc4914cdc83971724c4572d8b87207b7a2f7e78d7b117295` |
| 15 | `def` | [thetaPhiNormalizedParityCompression](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphinormalizedparitycompression--ebcd66a15f5d38e113133f94.md) | 322 | `declaration-track:ebcd66a15f5d38e113133f94da61254985e76d07e26672b7d37d04f762e0496c` |
| 16 | `theorem` | [thetaPhiNormalizedParityCompression_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphinormalizedparitycompression-eq--b41ea4ae2dcd11ac862e414e.md) | 330 | `result-track:b41ea4ae2dcd11ac862e414e2975d9f2b1a2cc2d5670633adfba3a314513eaf7` |
| 17 | `theorem` | [thetaPhiNormalizedParityCompression_mul_left](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphinormalizedparitycompression-mul-left--808d1a3d8ea8577eda29a3cd.md) | 350 | `result-track:808d1a3d8ea8577eda29a3cd196892f3149aab609746d6776c1bfce377c54920` |
| 18 | `theorem` | [thetaPhiNormalizedParityCompression_eq_det_of_orthonormalized](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphinormalizedparitycompression-eq-det-of-orthonormalized--82535028e22b9b8224a6f07d.md) | 372 | `result-track:82535028e22b9b8224a6f07d251c478f2a08a24b98c334c2436d28e85d7511b9` |
| 19 | `def` | [ThetaPhiFiniteOrthonormalizable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphifiniteorthonormalizable--7530d7b21912fee68d685326.md) | 403 | `declaration-track:7530d7b21912fee68d685326f0485de94a9f8abef238bcb598b54770eae1a102` |
| 20 | `theorem` | [thetaPhiNormalizedParityCompression_of_finiteOrthonormal](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphinormalizedparitycompression-of-finiteorthonormal--b86e385bcf5e83ee5ddb5628.md) | 418 | `result-track:b86e385bcf5e83ee5ddb5628aebb74f1b8b2b9dee65300c2fb00568be5301aa5` |
| 21 | `theorem` | [thetaPhi_involutionCompression_det_mul_left](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf7a4ca0d1cbc06333b2d70a365aa62535ababd42cf8adfeff5617d3b1dee8d8a.lean/declarations/thetaphi-involutioncompression-det-mul-left--5fd7c4383205c1bcf5308326.md) | 439 | `result-track:5fd7c4383205c1bcf53083264fcea6afa11934afc0384a6964d276b6bdffe63d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
