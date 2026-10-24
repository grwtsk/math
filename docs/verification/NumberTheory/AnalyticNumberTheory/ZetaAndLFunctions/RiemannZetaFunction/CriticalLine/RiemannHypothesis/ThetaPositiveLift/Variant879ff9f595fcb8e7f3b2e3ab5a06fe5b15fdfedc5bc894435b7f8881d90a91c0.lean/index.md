# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be85167f0727a3da8a2a46d476e864d7cdfd2f34",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be85167f0727a3da8a2a46d476e864d7cdfd2f34`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiModeOrbitSymmetrization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.SMul` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaPhiDerivativeStep_smul](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean/declarations/thetaphiderivativestep-smul--985df0e2e918cfe9464ce591.md) | 38 | `result-track:985df0e2e918cfe9464ce591fa9d4e636fa0033b836093adee0618111d501cd0` |
| 2 | `def` | [thetaPhiBasePolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean/declarations/thetaphibasepolynomial--8fb1d7dc0c34dbe93aa571e5.md) | 59 | `declaration-track:8fb1d7dc0c34dbe93aa571e582f5a3b2f73858868ebb0a0cc4a0960f5dd7f5c1` |
| 3 | `theorem` | [thetaPhiBasePolynomial_one_eval](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean/declarations/thetaphibasepolynomial-one-eval--ad54601c93d598fa5fbdd8e9.md) | 65 | `result-track:ad54601c93d598fa5fbdd8e992f4f6862996fd039a0493eadade0e638033a9e9` |
| 4 | `theorem` | [thetaPhiBasePolynomial_succ](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean/declarations/thetaphibasepolynomial-succ--d6fe4266bcddc6086eda7dc4.md) | 75 | `result-track:d6fe4266bcddc6086eda7dc43898f1fd83bc15ba792df0c40186ea654e267c62` |
| 5 | `theorem` | [thetaPhiDerivativePolynomial_christoffel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean/declarations/thetaphiderivativepolynomial-christoffel--498206f85e8da78fb65346bd.md) | 81 | `result-track:498206f85e8da78fb65346bd2ef23911570bd073c912ac80a18236ca7046ca67` |
| 6 | `theorem` | [thetaPhiDerivativePolynomial_eval_christoffel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean/declarations/thetaphiderivativepolynomial-eval-christoffel--fffe6a7eec75d70a2047e930.md) | 119 | `result-track:fffe6a7eec75d70a2047e9302c68fc27c9d733d31c5f58bec281cb3c3eb87955` |
| 7 | `def` | [thetaPhiBaseModeValue](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean/declarations/thetaphibasemodevalue--cc51c48a0b1c88b857d59f5f.md) | 134 | `declaration-track:cc51c48a0b1c88b857d59f5f6a6151b2768036409049c4d88624f8dae8d10dd4` |
| 8 | `theorem` | [thetaPhiDerivativeModeValue_christoffel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean/declarations/thetaphiderivativemodevalue-christoffel--ced2f1fadfadd0ae781a02fc.md) | 141 | `result-track:ced2f1fadfadd0ae781a02fcd2eec7cbbe7160b19b1e8fd9cec0eb6fbec4b6f2` |
| 9 | `def` | [thetaPhiBaseTapeTruncation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean/declarations/thetaphibasetapetruncation--b64aebcb73d4275b5215de7e.md) | 152 | `declaration-track:b64aebcb73d4275b5215de7e85a18d2dfa0bca5500eb6c2d2a5212b44f1e02f5` |
| 10 | `theorem` | [thetaPhiDerivativeTapeTruncation_christoffel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean/declarations/thetaphiderivativetapetruncation-christoffel--895e37c05acffdb1980c4229.md) | 158 | `result-track:895e37c05acffdb1980c4229b14f58d97002506913bd32483737ccad752bf5c2` |
| 11 | `def` | [thetaPhiChristoffelHankel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean/declarations/thetaphichristoffelhankel--1eda8da4633b3000bfe6f2f2.md) | 171 | `declaration-track:1eda8da4633b3000bfe6f2f2f6ba3c6b64306bf554f07c5ab6602dc9aa8ef1dd` |
| 12 | `theorem` | [thetaPhiDerivativeHankelTruncation_eq_christoffel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean/declarations/thetaphiderivativehankeltruncation-eq-christoffel--823bd35e01c0b42161f92775.md) | 180 | `result-track:823bd35e01c0b42161f9277579f32c7912fe789319d6bbba558597e7257e2508` |
| 13 | `theorem` | [signedJetDet_truncation_eq_christoffel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean/declarations/signedjetdet-truncation-eq-christoffel--3aa7bc806c42d1924b72ef7c.md) | 196 | `result-track:3aa7bc806c42d1924b72ef7cfed3a337cbe1ceb3b91f1a7220f419e3dc70b74a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
