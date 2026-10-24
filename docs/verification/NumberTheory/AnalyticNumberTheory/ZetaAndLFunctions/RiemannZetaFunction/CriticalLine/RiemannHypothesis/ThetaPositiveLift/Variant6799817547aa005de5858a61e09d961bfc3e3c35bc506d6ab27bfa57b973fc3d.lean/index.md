# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant6799817547aa005de5858a61e09d961bfc3e3c35bc506d6ab27bfa57b973fc3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "def562fcf5f9372243578b58fa8fd5701b0f85bc",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6799817547aa005de5858a61e09d961bfc3e3c35bc506d6ab27bfa57b973fc3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6799817547aa005de5858a61e09d961bfc3e3c35bc506d6ab27bfa57b973fc3d.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6799817547aa005de5858a61e09d961bfc3e3c35bc506d6ab27bfa57b973fc3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `def562fcf5f9372243578b58fa8fd5701b0f85bc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6799817547aa005de5858a61e09d961bfc3e3c35bc506d6ab27bfa57b973fc3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6799817547aa005de5858a61e09d961bfc3e3c35bc506d6ab27bfa57b973fc3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiRankFiveFiniteBounds` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiRankFiveExpBounds` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiRankFiveTailBounds` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiSignedMomentParityCriterion` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaRankFive_piBox_contains](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6799817547aa005de5858a61e09d961bfc3e3c35bc506d6ab27bfa57b973fc3d.lean/declarations/thetarankfive-pibox-contains--cc04bcf6b816f11898946caf.md) | 21 | `result-track:cc04bcf6b816f11898946cafefa6220f5b0067312d6351474c8e3e53e7a30f2d` |
| 2 | `theorem` | [thetaRankFive_expBox_contains](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6799817547aa005de5858a61e09d961bfc3e3c35bc506d6ab27bfa57b973fc3d.lean/declarations/thetarankfive-expbox-contains--53f6bcfd76caa4396d7ba45e.md) | 25 | `result-track:53f6bcfd76caa4396d7ba45eaa0aff86a9f017bc855875fe741328251b8def8b` |
| 3 | `theorem` | [thetaRankFive_finite_source_contains](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6799817547aa005de5858a61e09d961bfc3e3c35bc506d6ab27bfa57b973fc3d.lean/declarations/thetarankfive-finite-source-contains--7de7debf1aa3f6589de85b66.md) | 31 | `result-track:7de7debf1aa3f6589de85b66845b2ed46c829c34ddac9f8d70faabf8de536a9e` |
| 4 | `theorem` | [thetaRankFive_full_source_tail](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6799817547aa005de5858a61e09d961bfc3e3c35bc506d6ab27bfa57b973fc3d.lean/declarations/thetarankfive-full-source-tail--0c2df860533b9ce81543bae8.md) | 42 | `result-track:0c2df860533b9ce81543bae8903088ff540f4cfea32a4f7948622a195a7d831d` |
| 5 | `theorem` | [thetaPhiRankFiveJetEnclosure_holds](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6799817547aa005de5858a61e09d961bfc3e3c35bc506d6ab27bfa57b973fc3d.lean/declarations/thetaphirankfivejetenclosure-holds--3e476437286ad3a9e36472f0.md) | 53 | `result-track:3e476437286ad3a9e36472f0fec3dedaf4464dc008ccedeb55734bc417e8f325` |
| 6 | `theorem` | [thetaPhi_signedJetDet_five_zero_neg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6799817547aa005de5858a61e09d961bfc3e3c35bc506d6ab27bfa57b973fc3d.lean/declarations/thetaphi-signedjetdet-five-zero-neg--e96a89a9392912327564d68b.md) | 60 | `result-track:e96a89a9392912327564d68b884c8e470242bbfbd991f9bb8e1531cf3ffb0026` |
| 7 | `theorem` | [thetaPhi_signedJetDet_five_zero_bounds](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6799817547aa005de5858a61e09d961bfc3e3c35bc506d6ab27bfa57b973fc3d.lean/declarations/thetaphi-signedjetdet-five-zero-bounds--bf97ffe5a6b668a5e689887e.md) | 65 | `result-track:bf97ffe5a6b668a5e689887e97fa65278a0c7321ec472172f545c7af360a2eb6` |
| 8 | `theorem` | [continuous_thetaPhi_signedJetDet](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6799817547aa005de5858a61e09d961bfc3e3c35bc506d6ab27bfa57b973fc3d.lean/declarations/continuous-thetaphi-signedjetdet--1cad36ba5155549913cf09ab.md) | 74 | `result-track:1cad36ba5155549913cf09ab3d2e27d3c5390a63a10f923073f665e5a31bd8f8` |
| 9 | `theorem` | [thetaPhi_signedJetDet_five_negative_near_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6799817547aa005de5858a61e09d961bfc3e3c35bc506d6ab27bfa57b973fc3d.lean/declarations/thetaphi-signedjetdet-five-negative-near-zero--e54f6ab8ce285446cde503d2.md) | 85 | `result-track:e54f6ab8ce285446cde503d2afca2c447ee8d5489426c8d2bc5706718d664b51` |
| 10 | `theorem` | [not_thetaPhiAllRankSignedJetCriterion](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6799817547aa005de5858a61e09d961bfc3e3c35bc506d6ab27bfa57b973fc3d.lean/declarations/not-thetaphiallranksignedjetcriterion--b9050d38ad233dd4b8ea6298.md) | 96 | `result-track:b9050d38ad233dd4b8ea629871b98f49e57b011c032fa4267a12f2b3cd2b9b62` |
| 11 | `theorem` | [not_thetaPhiSignedMomentParityCriterion](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6799817547aa005de5858a61e09d961bfc3e3c35bc506d6ab27bfa57b973fc3d.lean/declarations/not-thetaphisignedmomentparitycriterion--1c6a431fbe0006ae39a12ac9.md) | 101 | `result-track:1c6a431fbe0006ae39a12ac9df8c0726085422736b5eeeb79b19905a892e1140` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
