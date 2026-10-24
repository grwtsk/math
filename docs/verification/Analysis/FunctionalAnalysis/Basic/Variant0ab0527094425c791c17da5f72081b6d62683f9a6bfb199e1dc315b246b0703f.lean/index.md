# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Basic.Variant0ab0527094425c791c17da5f72081b6d62683f9a6bfb199e1dc315b246b0703f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "983dd6681fd2a8c30d969348c9f40b0938ef7fa4",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant0ab0527094425c791c17da5f72081b6d62683f9a6bfb199e1dc315b246b0703f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant0ab0527094425c791c17da5f72081b6d62683f9a6bfb199e1dc315b246b0703f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant0ab0527094425c791c17da5f72081b6d62683f9a6bfb199e1dc315b246b0703f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `983dd6681fd2a8c30d969348c9f40b0938ef7fa4`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant0ab0527094425c791c17da5f72081b6d62683f9a6bfb199e1dc315b246b0703f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Basic/Variant0ab0527094425c791c17da5f72081b6d62683f9a6bfb199e1dc315b246b0703f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Slope` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [strictConvexOn_exp](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant0ab0527094425c791c17da5f72081b6d62683f9a6bfb199e1dc315b246b0703f.lean/declarations/strictconvexon-exp--117cb3029ba54d1420e11b39.md) | 37 | `result-track:117cb3029ba54d1420e11b396dec3cbb8d2a293719f9e7a5fffe975d81cae3c4` |
| 2 | `theorem` | [convexOn_exp](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant0ab0527094425c791c17da5f72081b6d62683f9a6bfb199e1dc315b246b0703f.lean/declarations/convexon-exp--a8a8327bc7e6b04f7cc19455.md) | 59 | `result-track:a8a8327bc7e6b04f7cc194553b887cd94b54fa0a8d3da5a3fc9f0ad7b336b364` |
| 3 | `theorem` | [strictConcaveOn_log_Ioi](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant0ab0527094425c791c17da5f72081b6d62683f9a6bfb199e1dc315b246b0703f.lean/declarations/strictconcaveon-log-ioi--569bf3a41bdc613119997fd9.md) | 63 | `result-track:569bf3a41bdc613119997fd936145168f8a4ae2efb6345bbd88ace44ddbb39b2` |
| 4 | `theorem` | [one_add_mul_self_lt_rpow_one_add](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant0ab0527094425c791c17da5f72081b6d62683f9a6bfb199e1dc315b246b0703f.lean/declarations/one-add-mul-self-lt-rpow-one-add--2ebfed842bc7af23aa9fd179.md) | 94 | `result-track:2ebfed842bc7af23aa9fd179a1bd1a4d045ceab5fb0b9e28031591cea80df3a0` |
| 5 | `theorem` | [one_add_mul_self_le_rpow_one_add](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant0ab0527094425c791c17da5f72081b6d62683f9a6bfb199e1dc315b246b0703f.lean/declarations/one-add-mul-self-le-rpow-one-add--c7b685f98d094523a1e2f03e.md) | 121 | `result-track:c7b685f98d094523a1e2f03edae1407a4b5a06995b81012b9c82f62aad0db7bd` |
| 6 | `theorem` | [rpow_one_add_lt_one_add_mul_self](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant0ab0527094425c791c17da5f72081b6d62683f9a6bfb199e1dc315b246b0703f.lean/declarations/rpow-one-add-lt-one-add-mul-self--dc2acb99075f12a53d0582bb.md) | 131 | `result-track:dc2acb99075f12a53d0582bb911823cb02dec72ca8879ef467068e1ad21b11cd` |
| 7 | `theorem` | [rpow_one_add_le_one_add_mul_self](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant0ab0527094425c791c17da5f72081b6d62683f9a6bfb199e1dc315b246b0703f.lean/declarations/rpow-one-add-le-one-add-mul-self--fcbf787cab76d225417597d3.md) | 160 | `result-track:fcbf787cab76d225417597d37c895d2b06068cdf88a49ada3254f3965a24282e` |
| 8 | `theorem` | [strictConvexOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant0ab0527094425c791c17da5f72081b6d62683f9a6bfb199e1dc315b246b0703f.lean/declarations/strictconvexon-rpow--a319f38ce6c3aabec62d69d5.md) | 171 | `result-track:a319f38ce6c3aabec62d69d56a3a37195e0726307c467852ab1a1cf1197787d9` |
| 9 | `theorem` | [convexOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant0ab0527094425c791c17da5f72081b6d62683f9a6bfb199e1dc315b246b0703f.lean/declarations/convexon-rpow--4eae91501f08b45376a1d7e0.md) | 199 | `result-track:4eae91501f08b45376a1d7e02d3ef7134e9dede7dd6ca5d52c257f3bc2d65581` |
| 10 | `theorem` | [strictConcaveOn_log_Iio](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant0ab0527094425c791c17da5f72081b6d62683f9a6bfb199e1dc315b246b0703f.lean/declarations/strictconcaveon-log-iio--681be1efe7455196c3c92118.md) | 204 | `result-track:681be1efe7455196c3c9211899c562e3b99465515b0a5cc207f55c25ae960abb` |
| 11 | `lemma` | [exp_mul_le_cosh_add_mul_sinh](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant0ab0527094425c791c17da5f72081b6d62683f9a6bfb199e1dc315b246b0703f.lean/declarations/exp-mul-le-cosh-add-mul-sinh--3101c9de16312960f61018d2.md) | 218 | `result-track:3101c9de16312960f61018d2bd55c02c82fffd2677988f871d05c1b4bebab985` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
