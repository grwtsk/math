# Verification target: GRWTSK.Analysis.FiniteSum.DyadicVariance

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfe082a52be34a45500785f7c1cbd0c67119ccbf",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteSum/DyadicVariance.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FiniteSums/DyadicVariance.lean/index.md) · [Full source](../../../../mathematics/Analysis/FiniteSums/DyadicVariance.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfe082a52be34a45500785f7c1cbd0c67119ccbf`.

Source path: `GRWTSK/Analysis/FiniteSum/DyadicVariance.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteSum/DyadicVariance.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pairMean](../../../../mathematics/Analysis/FiniteSums/DyadicVariance.lean/declarations/pairmean--50cbec307eea06a2d6105a98.md) | 17 | `declaration-track:50cbec307eea06a2d6105a98d3327e3508455ec3a0476e57f570ae5aff2fa834` |
| 2 | `theorem` | [pair_centered_split](../../../../mathematics/Analysis/FiniteSums/DyadicVariance.lean/declarations/pair-centered-split--bc71dcd571822c51f9e76e25.md) | 19 | `result-track:bc71dcd571822c51f9e76e25ce60e523d15ff4bd493ac190acef7df581aac7ba` |
| 3 | `theorem` | [pair_mean_preserves_sum](../../../../mathematics/Analysis/FiniteSums/DyadicVariance.lean/declarations/pair-mean-preserves-sum--25c46bd0f2069b6a1c72c76d.md) | 25 | `result-track:25c46bd0f2069b6a1c72c76d722762106f59dff43b4098b80b8bcbd5ce86fdc4` |
| 4 | `theorem` | [refinement_gain_nonneg](../../../../mathematics/Analysis/FiniteSums/DyadicVariance.lean/declarations/refinement-gain-nonneg--426538a2a980901dc66b8252.md) | 29 | `result-track:426538a2a980901dc66b82529a273b89701270a67ad7435a435a82fb87ac64a1` |
| 5 | `theorem` | [finite_refinement](../../../../mathematics/Analysis/FiniteSums/DyadicVariance.lean/declarations/finite-refinement--428cc1d96eaac16ed166e669.md) | 33 | `result-track:428cc1d96eaac16ed166e66935c855504ec7c87938bd2a4312f6d3dcaeb8e424` |
| 6 | `theorem` | [finite_refinement_monotone](../../../../mathematics/Analysis/FiniteSums/DyadicVariance.lean/declarations/finite-refinement-monotone--9d080de89ad988703eba05d5.md) | 40 | `result-track:9d080de89ad988703eba05d56d9d35fb8c44d34726a3b83fcb98b44f3b14d9c3` |
| 7 | `theorem` | [quarter_range_moment_bound](../../../../mathematics/Analysis/FiniteSums/DyadicVariance.lean/declarations/quarter-range-moment-bound--8026bfee2185805d0367a01e.md) | 49 | `result-track:8026bfee2185805d0367a01e09c1ede07f3bf13b78108d1adcc2dcce6e47c4cc` |
| 8 | `theorem` | [retained_mean_identity](../../../../mathematics/Analysis/FiniteSums/DyadicVariance.lean/declarations/retained-mean-identity--0139ee63093502010f2e89ee.md) | 54 | `result-track:0139ee63093502010f2e89ee2b3e3f7dc4abf405c8f6e088f51d046e0d0bf828` |
| 9 | `theorem` | [finite_fine_budget](../../../../mathematics/Analysis/FiniteSums/DyadicVariance.lean/declarations/finite-fine-budget--35192a52faaf50d9d519487f.md) | 58 | `result-track:35192a52faaf50d9d519487f8313414e38bd9923c1db5229cee7de910b5c82c7` |
| 10 | `theorem` | [complete_return](../../../../mathematics/Analysis/FiniteSums/DyadicVariance.lean/declarations/complete-return--2cef40a8e50ef83c979ab118.md) | 67 | `result-track:2cef40a8e50ef83c979ab11826cc6b081e659235cc44e42ab5795328146277be` |
| 11 | `theorem` | [source_scale_budget](../../../../mathematics/Analysis/FiniteSums/DyadicVariance.lean/declarations/source-scale-budget--9128251a75a7ab3ffd297a0c.md) | 71 | `result-track:9128251a75a7ab3ffd297a0cc9d48e7d7b5c9c7bca0bce9b0e7e69cea85dde84` |
| 12 | `theorem` | [endpoint_control](../../../../mathematics/Analysis/FiniteSums/DyadicVariance.lean/declarations/endpoint-control--5d0180542ce71fe7c7b25eb7.md) | 78 | `result-track:5d0180542ce71fe7c7b25eb7ea84e5a0605582caf56e319744193c7bceb4fd66` |
| 13 | `theorem` | [primitive_completion](../../../../mathematics/Analysis/FiniteSums/DyadicVariance.lean/declarations/primitive-completion--6cd7932126a085104ce87e9f.md) | 81 | `result-track:6cd7932126a085104ce87e9fa802fc3053d447fa6eebc61eebb0f42e23df1985` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
