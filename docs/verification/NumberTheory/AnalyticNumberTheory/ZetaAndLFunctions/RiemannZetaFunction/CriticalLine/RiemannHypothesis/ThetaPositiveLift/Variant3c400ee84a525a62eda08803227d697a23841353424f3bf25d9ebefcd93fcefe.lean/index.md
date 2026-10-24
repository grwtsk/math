# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e97b644fd04d6a402e3ff47109e231e01d02663",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e97b644fd04d6a402e3ff47109e231e01d02663`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.InvolutionCompression` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiSignedMomentParityCriterion` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiParityInvolution](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphiparityinvolution--a1b0fd1d318cb98e61c801c2.md) | 38 | `declaration-track:a1b0fd1d318cb98e61c801c22a9a9273039a19b847540a59d55ecd687038863b` |
| 2 | `theorem` | [thetaPhiParityInvolution_transpose](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphiparityinvolution-transpose--091903c3b8594e4f7c2255bf.md) | 44 | `result-track:091903c3b8594e4f7c2255bf75c503fc3f864a9f22d5b16911aa39ed2e345a7d` |
| 3 | `theorem` | [thetaPhiParityInvolution_sq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphiparityinvolution-sq--e289d71a10f91314d3c4808c.md) | 55 | `result-track:e289d71a10f91314d3c4808c7ffd8ed32a5ba0fd3bd7d4dfdf16fd47984dfea5` |
| 4 | `def` | [thetaPhiSignedMomentSupportOperator](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphisignedmomentsupportoperator--ac9bb99a7134aba8269b77e8.md) | 75 | `declaration-track:ac9bb99a7134aba8269b77e8b2a2a4fa53b4de2a5db662d05f385e2d5e589e52` |
| 5 | `def` | [thetaPhiSupportParityPhase](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphisupportparityphase--8856ebba732d7d9e2c734b50.md) | 81 | `declaration-track:8856ebba732d7d9e2c734b500f01afa826e3d74d04d9c51ba788d9a10d60327c` |
| 6 | `theorem` | [thetaPhiSupportParityPhase_node](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphisupportparityphase-node--c51dc199da392a404b75c6e3.md) | 85 | `result-track:c51dc199da392a404b75c6e336f5264e4416d7dfc9199b864c8a5ff020c8f9df` |
| 7 | `theorem` | [thetaPhiParityInvolution_eq_supportPhase](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphiparityinvolution-eq-supportphase--2a81c567f16f97c830dfc901.md) | 102 | `result-track:2a81c567f16f97c830dfc901a1f7e3f7dcaa8a4d0c0b363f7ca79e919ff0a999` |
| 8 | `theorem` | [thetaPhiSupportOperator_commutes_parity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphisupportoperator-commutes-parity--b17d2267c6b2aa5beb795891.md) | 115 | `result-track:b17d2267c6b2aa5beb795891c51660dfb25e58d920b867c8fcc5439701daaccf` |
| 9 | `def` | [thetaPhiSignedMomentKrylovFrame](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphisignedmomentkrylovframe--70659531bd6c28b01c64aeaf.md) | 131 | `declaration-track:70659531bd6c28b01c64aeaf4814ccc3979f8df91d9568241cb9b60e28d150f7` |
| 10 | `theorem` | [thetaPhiSignedMoment_involutionCompression_apply](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphisignedmoment-involutioncompression-apply--1c4ef4b6326d86fe15baa9b2.md) | 141 | `result-track:1c4ef4b6326d86fe15baa9b24c30b582d70326eab9d56bb32dc449a002163d0e` |
| 11 | `theorem` | [thetaPhiChristoffelHankel_signedMomentTruncation_eq_involutionCompression](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphichristoffelhankel-signedmomenttruncation-eq-involutioncompressio--581d99483c0661ed5b9c2539.md) | 210 | `result-track:581d99483c0661ed5b9c25399f47f9850ab8c79879f7500f724e950c7ee74287` |
| 12 | `def` | [thetaPhiSignedMomentCompressionApproximation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphisignedmomentcompressionapproximation--7c377874867a331d5f0ababb.md) | 251 | `declaration-track:7c377874867a331d5f0ababb01f880cf2cdb5bd1bd0dc45fe8efe3066317c7c3` |
| 13 | `theorem` | [thetaPhiSignedMomentCompressionApproximation_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphisignedmomentcompressionapproximation-eq--f1592eb8a2f19cc1a211b1c4.md) | 263 | `result-track:f1592eb8a2f19cc1a211b1c4576083095c76b53a3e957cb87b508b746b173fb2` |
| 14 | `theorem` | [thetaPhiSignedMomentCompressionApproximation_tendsto](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphisignedmomentcompressionapproximation-tendsto--e729f5dd65219bf4127fc529.md) | 279 | `result-track:e729f5dd65219bf4127fc52972f47de866e38a2ada85b1aa3e56a297c5484ead` |
| 15 | `def` | [thetaPhiNormalizedParityCompression](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphinormalizedparitycompression--924dd2a171526860c6b43396.md) | 314 | `declaration-track:924dd2a171526860c6b4339639642914c74b004892258d67f69ca9a74712e104` |
| 16 | `theorem` | [thetaPhiNormalizedParityCompression_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphinormalizedparitycompression-eq--2568968e0f36dbb4db26fefa.md) | 322 | `result-track:2568968e0f36dbb4db26fefa90ea6266e53c73b64d9afb1c3e93b9ee476bb720` |
| 17 | `theorem` | [thetaPhiNormalizedParityCompression_mul_left](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphinormalizedparitycompression-mul-left--e410957fd3270710c1c22c02.md) | 342 | `result-track:e410957fd3270710c1c22c026fd8fcf2e6effab917e7efc62533e7e710828123` |
| 18 | `theorem` | [thetaPhiNormalizedParityCompression_eq_det_of_orthonormalized](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphinormalizedparitycompression-eq-det-of-orthonormalized--12044098dea18350fa59bb0e.md) | 364 | `result-track:12044098dea18350fa59bb0ec399f965e2e2678ce14b4447b8de99a01fe7609c` |
| 19 | `def` | [ThetaPhiFiniteOrthonormalizable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphifiniteorthonormalizable--7ec476689f8b51eaa614fa8b.md) | 395 | `declaration-track:7ec476689f8b51eaa614fa8b8f9255317ca7a7fa77703462aa70aa6c271a52f9` |
| 20 | `theorem` | [thetaPhiNormalizedParityCompression_of_finiteOrthonormal](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphinormalizedparitycompression-of-finiteorthonormal--1903674458739be63f962081.md) | 410 | `result-track:1903674458739be63f962081e73406003da3f8dbce26a302bfdd686d027d693c` |
| 21 | `theorem` | [thetaPhi_involutionCompression_det_mul_left](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/declarations/thetaphi-involutioncompression-det-mul-left--207c66d99166d0a094056b27.md) | 431 | `result-track:207c66d99166d0a094056b273d2de8c72aaca62d2e717f7dcb6130131d1bbc60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
