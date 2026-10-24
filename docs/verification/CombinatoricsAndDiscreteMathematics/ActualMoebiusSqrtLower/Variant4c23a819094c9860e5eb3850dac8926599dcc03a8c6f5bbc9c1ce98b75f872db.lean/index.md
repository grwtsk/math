# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ActualMoebiusSqrtLower.Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87b831ee0a8ae456bbd929d97205358010f68b8b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87b831ee0a8ae456bbd929d97205358010f68b8b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualSqrtSieveBounds` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualAbsMoebius_eq_squarefreeIndicator](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/declarations/actualabsmoebius-eq-squarefreeindicator--b1f0d2575ed893b272e220d1.md) | 20 | `result-track:b1f0d2575ed893b272e220d1bb165e731d2e612e98b66ef7830a04e55f80f800` |
| 2 | `theorem` | [actualAbsMoebius_lower_square_sieve](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/declarations/actualabsmoebius-lower-square-sieve--bad6e292929e8c49af60a6f1.md) | 26 | `result-track:bad6e292929e8c49af60a6f1171efff2caeff19edddf0a6d3bdf66c6542005cb` |
| 3 | `def` | [squareDivisorSqrtMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/declarations/squaredivisorsqrtmass--a07eea631621471d003cd4e8.md) | 50 | `declaration-track:a07eea631621471d003cd4e891daed519965dddcc679ac3205c4ef220435dba5` |
| 4 | `theorem` | [squareDivisorSqrtMass_eq_quotient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/declarations/squaredivisorsqrtmass-eq-quotient--1bfd3e4606a46c0c8b6fba81.md) | 54 | `result-track:1bfd3e4606a46c0c8b6fba814b45005fdfaa63cf15063e446687e212f7f354f1` |
| 5 | `theorem` | [reciprocalSqrt_square_product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/declarations/reciprocalsqrt-square-product--c1ed9c9dc73b74ddc965a59e.md) | 87 | `result-track:c1ed9c9dc73b74ddc965a59e227865f829e349d0efd2793e0b35d67e240277df` |
| 6 | `theorem` | [squareDivisorSqrtMass_eq_scaled](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/declarations/squaredivisorsqrtmass-eq-scaled--653bb026c54b641757de5935.md) | 97 | `result-track:653bb026c54b641757de59350f9e4a8ab70f89b06b81ed6b38565720ea30bdce` |
| 7 | `theorem` | [quotientSqrt_scaled_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/declarations/quotientsqrt-scaled-le--9265d669ce98e5a60f65ad9f.md) | 104 | `result-track:9265d669ce98e5a60f65ad9f586b496dd6869f290743e21672ec07cb7701296e` |
| 8 | `theorem` | [squareDivisorSqrtMass_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/declarations/squaredivisorsqrtmass-le--f471e59b37b640f4c9b6ca62.md) | 114 | `result-track:f471e59b37b640f4c9b6ca62a61d6572c9ca7d5bbe920b76db44dc6df056afd7` |
| 9 | `theorem` | [squareDivisorSqrtMass_le_saved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/declarations/squaredivisorsqrtmass-le-saved--fa13c00b36b0bf3ab729e9cb.md) | 127 | `result-track:fa13c00b36b0bf3ab729e9cb1163080135e1b940342254a7a51bcd4a6a16efcd` |
| 10 | `theorem` | [actualMoebiusSqrtMass_lower_weighted_sieve](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/declarations/actualmoebiussqrtmass-lower-weighted-sieve--2265a6cb3585c2ee064e619e.md) | 147 | `result-track:2265a6cb3585c2ee064e619edec060cf0d0d8e8c5ed7978f926cd2075a57539b` |
| 11 | `theorem` | [squareDivisorSqrtMass_total_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/declarations/squaredivisorsqrtmass-total-le--36e45cc13ab9a6632058f2e4.md) | 172 | `result-track:36e45cc13ab9a6632058f2e430c2d42722bf79d43b061672429b27200cff0f8d` |
| 12 | `theorem` | [actualMoebiusSqrtMass_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/declarations/actualmoebiussqrtmass-lower--cf0a4c96d3ce55261a7204fc.md) | 207 | `result-track:cf0a4c96d3ce55261a7204fc13addc9eff1c4c3786f5363d609a31ccb1c528e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
