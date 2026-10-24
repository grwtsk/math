# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ThetaPositiveLift.Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03b51fccf85e936847b812e20dfbcb80f3c3b224",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03b51fccf85e936847b812e20dfbcb80f3c3b224`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPositiveLift` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.FunctionSeries` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaPhi_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/declarations/thetaphi-summable--2ab58dd003634ef376c54193.md) | 19 | `result-track:2ab58dd003634ef376c5419380d41ab8b4c8a32b1684d3de9216c4f26517de68` |
| 2 | `theorem` | [thetaPhiTerm_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/declarations/thetaphiterm-positive--1a60827e713909ef3b6f01ff.md) | 30 | `result-track:1a60827e713909ef3b6f01ff89d27c7544233b57c6e0f6b1cd6241d96f30a5be` |
| 3 | `theorem` | [thetaPhi_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/declarations/thetaphi-positive--5684821d4cd96827501d7c02.md) | 43 | `result-track:5684821d4cd96827501d7c02bd99827915d7d7b13c71e615569d03767756e42d` |
| 4 | `theorem` | [thetaPhiTerm_eq_gaussians](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/declarations/thetaphiterm-eq-gaussians--0393f41cec19189e0ce83b7b.md) | 50 | `result-track:0393f41cec19189e0ce83b7bc260abdc1928404d4eb3b5398f77a6d500c90c7c` |
| 5 | `def` | [thetaPhiCompactBound](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/declarations/thetaphicompactbound--c597e6a64b1f6c38935ff36d.md) | 64 | `declaration-track:c597e6a64b1f6c38935ff36dfcef1c3819947e3ff994280a13cb03369bd5c64a` |
| 6 | `theorem` | [thetaPhiCompactBound_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/declarations/thetaphicompactbound-summable--ca8e445233c790878ce4c395.md) | 71 | `result-track:ca8e445233c790878ce4c395aef57970d98afce003a5f30befa64b4c4536fde3` |
| 7 | `theorem` | [thetaPhiTerm_norm_le_compactBound](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/declarations/thetaphiterm-norm-le-compactbound--84f2c39e10abba1497fd2bdb.md) | 78 | `result-track:84f2c39e10abba1497fd2bdbf9ef14538187d931efa3656f1b1df5114f746cdc` |
| 8 | `theorem` | [continuous_thetaPhiTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/declarations/continuous-thetaphiterm--59fee53054054c99fbe160fa.md) | 103 | `result-track:59fee53054054c99fbe160fa25bbde84606be035efe52d74981c7c8b00045c1f` |
| 9 | `theorem` | [continuousOn_thetaPhi_Icc](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/declarations/continuouson-thetaphi-icc--086c375354ac59293a7b2203.md) | 108 | `result-track:086c375354ac59293a7b22031138701db24ed3ea1cdc89d5526b1736e0bc740e` |
| 10 | `theorem` | [continuous_thetaPhi](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/declarations/continuous-thetaphi--b45d43fa1892b70a1827c32b.md) | 113 | `result-track:b45d43fa1892b70a1827c32b7682fc951c479cb834a79a9537f883aa4485276b` |
| 11 | `def` | [thetaPhiDecayConstant](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/declarations/thetaphidecayconstant--6804a70bca9ae015de7355f1.md) | 122 | `declaration-track:6804a70bca9ae015de7355f1be0c64b3b9c0d0bf81f0558adc87fde838722aa2` |
| 12 | `theorem` | [thetaPhiDecayConstant_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/declarations/thetaphidecayconstant-positive--a114513ee7d17e1e97b24f4f.md) | 126 | `result-track:a114513ee7d17e1e97b24f4f2578022fd3a4eef8bf07dbcbef5af900502754ff` |
| 13 | `theorem` | [thetaPhi_le_superexp](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/declarations/thetaphi-le-superexp--ea79ec0d6d79468d4dfe5468.md) | 135 | `result-track:ea79ec0d6d79468d4dfe54687d06fa3c3cbb347bf1d7fece6357222f692e6a7e` |
| 14 | `theorem` | [thirteen_mul_le_half_pi_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/declarations/thirteen-mul-le-half-pi-exp--6a417bfba4a9cd2e58e130f9.md) | 172 | `result-track:6a417bfba4a9cd2e58e130f9fed8169adf97ec06ee59ee43825e03e20cfc43a1` |
| 15 | `theorem` | [thetaPhi_le_exp_neg_four_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/declarations/thetaphi-le-exp-neg-four-mul--674e33d35106a0019e808dce.md) | 180 | `result-track:674e33d35106a0019e808dcef4e6e6cabf874d43cf6aaee0ded43aaea332353b` |
| 16 | `theorem` | [thetaPhi_le_exp_neg_two_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/declarations/thetaphi-le-exp-neg-two-mul--d39d394f78268f58b4e5ced8.md) | 188 | `result-track:d39d394f78268f58b4e5ced86658acfff4a3344aa0082634c53fd83eda9dc393` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
