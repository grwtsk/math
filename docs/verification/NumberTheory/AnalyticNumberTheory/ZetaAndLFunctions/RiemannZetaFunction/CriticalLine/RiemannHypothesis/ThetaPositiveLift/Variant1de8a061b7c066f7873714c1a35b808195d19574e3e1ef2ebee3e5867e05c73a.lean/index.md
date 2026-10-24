# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7715a65ed23e6e48213dd9fa4f474501737ac431",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7715a65ed23e6e48213dd9fa4f474501737ac431`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiWronskianFourDeterminantBound` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaExpTwo_gt_four](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean/declarations/thetaexptwo-gt-four--b0528e0275757eb1f1225380.md) | 29 | `result-track:b0528e0275757eb1f122538092a4e221524668942f34fd28438b7c98111bb90c` |
| 2 | `theorem` | [thetaRankFour_exp_neg_three_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean/declarations/thetarankfour-exp-neg-three-le--9cb1a6bea74de7a9bef0cd1c.md) | 36 | `result-track:9cb1a6bea74de7a9bef0cd1c17be3226ef360c21f7f081b1afb70c45805c59bc` |
| 3 | `theorem` | [thetaRankFour_tenth_power_exp_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean/declarations/thetarankfour-tenth-power-exp-bound--622a454919e12f0ac988d02d.md) | 54 | `result-track:622a454919e12f0ac988d02d13a6032922b9edd0574dab878dc48c1c8c6897c9` |
| 4 | `def` | [thetaPhiRankFourPerturbationPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean/declarations/thetaphirankfourperturbationpolynomial--03aca6067ab2c27b42754fd2.md) | 103 | `declaration-track:03aca6067ab2c27b42754fd2fe67fec9b61fa0c2136facd4f875782257592751` |
| 5 | `theorem` | [thetaPhiRankFour_scalar_error_lt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean/declarations/thetaphirankfour-scalar-error-lt--8cee044121482e1032b15422.md) | 111 | `result-track:8cee044121482e1032b1542212e9d7f7827529465280e0ae6cb80a5c21b6cfd2` |
| 6 | `theorem` | [thetaPhiRankFour_determinant_error_lt_budget_of_modeA_ge_twelve](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean/declarations/thetaphirankfour-determinant-error-lt-budget-of-modea-ge-twelve--17b68228302c11fafc10b080.md) | 178 | `result-track:17b68228302c11fafc10b080623b4854be3703e831a98768110555299e06f057` |
| 7 | `theorem` | [thetaModeA_ge_twelve_of_half_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean/declarations/thetamodea-ge-twelve-of-half-le--b9f581f0592ca17d4fe7feb7.md) | 201 | `result-track:b9f581f0592ca17d4fe7feb72f11f38a111c3b34da5678e4da049620c0e5a5eb` |
| 8 | `theorem` | [thetaPhiRankFourPerturbationControlledFrom_half](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean/declarations/thetaphirankfourperturbationcontrolledfrom-half--1f037a78c75ca3312b7f730b.md) | 219 | `result-track:1f037a78c75ca3312b7f730bd79bcfc7f59efa459c0f25b12e7dc5a07c865e69` |
| 9 | `theorem` | [thetaPhiWronskianFour_pos_of_half_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean/declarations/thetaphiwronskianfour-pos-of-half-le--700388bb8e46162ed2f273fb.md) | 227 | `result-track:700388bb8e46162ed2f273fb4375dc74580a8a77ef93d3756cbcf738597c3ac5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
