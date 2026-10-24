# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a1da1e43ff7c1cdfa62ee124b9b16e07ffe37f5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a1da1e43ff7c1cdfa62ee124b9b16e07ffe37f5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiWronskianFourDominant` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiDominantJet7](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b.lean/declarations/thetaphidominantjet7--6212b70af9dbf40b8a34eba7.md) | 27 | `declaration-track:6212b70af9dbf40b8a34eba70a020e9fb4b52501aae107d48fb733b282380061` |
| 2 | `def` | [thetaPhiRemainderJet7](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b.lean/declarations/thetaphiremainderjet7--d87bae229493cecc7ea3d371.md) | 31 | `declaration-track:d87bae229493cecc7ea3d371d6e7b88bf4c05649ba4790ff9fae2a2b68ab2fb2` |
| 3 | `theorem` | [thetaPhiNormalizedJet7_eq_dominant_add_remainder](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b.lean/declarations/thetaphinormalizedjet7-eq-dominant-add-remainder--b1ac165e3138bebb90cf144a.md) | 35 | `result-track:b1ac165e3138bebb90cf144a85211e89149b452541735fb8a859df0c05895b69` |
| 4 | `def` | [thetaPhiJetDet4Perturbation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b.lean/declarations/thetaphijetdet4perturbation--766b1e512dc23b0f073e42d4.md) | 43 | `declaration-track:766b1e512dc23b0f073e42d43d12da68e4fa240fade4cdf19c714aa42f85ea64` |
| 5 | `theorem` | [thetaPhiJetDet4_eq_dominant_add_perturbation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b.lean/declarations/thetaphijetdet4-eq-dominant-add-perturbation--739f6176187d19633f2c3c7b.md) | 49 | `result-track:739f6176187d19633f2c3c7b8969e2b8de9b1a186858a3196ff7d0bddf2f8279` |
| 6 | `theorem` | [thetaPhiDominantJet7_det_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b.lean/declarations/thetaphidominantjet7-det-pos--1544557ab48936c2495e583a.md) | 57 | `result-track:1544557ab48936c2495e583aacb5bcc13fac3756f7ec7f0db269865b816f813b` |
| 7 | `theorem` | [thetaPhiJetDet4_single_mode_quartic_ge_369](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b.lean/declarations/thetaphijetdet4-single-mode-quartic-ge-369--50a181cf967e1dc98e251724.md) | 65 | `result-track:50a181cf967e1dc98e251724d9e97d3974361d55a2581fcca7f81738bd2478ce` |
| 8 | `def` | [thetaPhiRankFourDominantBudget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b.lean/declarations/thetaphirankfourdominantbudget--3e468702183efbd758e9d99d.md) | 82 | `declaration-track:3e468702183efbd758e9d99dea96d3f06f55b39578d40564607f928a3385fcf7` |
| 9 | `theorem` | [thetaPhiRankFourDominantBudget_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b.lean/declarations/thetaphirankfourdominantbudget-pos--246bfe2a7a1815c8d7845cf0.md) | 85 | `result-track:246bfe2a7a1815c8d7845cf01f28fd6b0bfd35d8d96c9b4db5faaf7f2411db55` |
| 10 | `theorem` | [thetaPhiDominantJet7_det_ge_budget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b.lean/declarations/thetaphidominantjet7-det-ge-budget--e74f73ee7a1d8f4589df1046.md) | 92 | `result-track:e74f73ee7a1d8f4589df1046bec0bc8584f2589d63ac716bfb69aadf2c840b0e` |
| 11 | `theorem` | [thetaPhiJetDet4_normalized_pos_of_perturbation_lt_budget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b.lean/declarations/thetaphijetdet4-normalized-pos-of-perturbation-lt-budget--a459f9fe9e6baec854903f01.md) | 123 | `result-track:a459f9fe9e6baec854903f01036fd1a81d793b15cd6c82b974070abf6f8d82b2` |
| 12 | `theorem` | [thetaPhiWronskianFour_pos_of_perturbation_lt_budget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b.lean/declarations/thetaphiwronskianfour-pos-of-perturbation-lt-budget--7c2eb7ee843df9ee111a092c.md) | 135 | `result-track:7c2eb7ee843df9ee111a092c79cc595bd4fa59eb8d016d3669aae9e4bc9a0e0f` |
| 13 | `def` | [ThetaPhiRankFourPerturbationControlledFrom](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b.lean/declarations/thetaphirankfourperturbationcontrolledfrom--6c527ce4211ec9d483f17933.md) | 145 | `declaration-track:6c527ce4211ec9d483f17933aa51c476a2e1651d5ebd434cc0258ee3dce2d5d9` |
| 14 | `theorem` | [thetaPhiWronskianFour_pos_from_perturbation_control](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb440f5e86069d42754d4d40284b7b336173dc05341c8ddb4c1e5c5ebd6f3be5b.lean/declarations/thetaphiwronskianfour-pos-from-perturbation-control--6821feb8e805bf7c2521c68e.md) | 151 | `result-track:6821feb8e805bf7c2521c68e86f0cde5ba4a46061a58e4644aef4dd9fa27b4ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
