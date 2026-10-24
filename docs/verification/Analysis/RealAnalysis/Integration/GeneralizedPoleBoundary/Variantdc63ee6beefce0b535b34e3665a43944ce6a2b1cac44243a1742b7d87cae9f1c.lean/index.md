# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.GeneralizedPoleBoundary.Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb6b5bb3372eb1b9a48cf536c528e2c416090e36",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb6b5bb3372eb1b9a48cf536c528e2c416090e36`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PoleDifferentialCorrelation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveHalfMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/declarations/positivehalfmoment--147d7cf39ad1e1f883dc940f.md) | 24 | `declaration-track:147d7cf39ad1e1f883dc940ff089b0d02cb57e26b1bd27840c3640fd66584d29` |
| 2 | `def` | [negativeHalfMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/declarations/negativehalfmoment--31f4f6cfea7448f156d09820.md) | 28 | `declaration-track:31f4f6cfea7448f156d09820ae3dc1c13d2c4a7ddb3fb5d57a7174f59dd6437c` |
| 3 | `def` | [decayingFirstWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/declarations/decayingfirstweight--559a1b4f2c0d2667f7e073e1.md) | 32 | `declaration-track:559a1b4f2c0d2667f7e073e139cb1b3eceeb441956cc818c560c0ac1134a989d` |
| 4 | `theorem` | [inverse_square_coefficient_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/declarations/inverse-square-coefficient-tendsto-zero--f99fda8607ca1ebe8c23a866.md) | 34 | `result-track:f99fda8607ca1ebe8c23a8664bdb71b6a16cf15d9eb05948d11fd18a48e3a6ae` |
| 5 | `theorem` | [inverse_fourth_coefficient_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/declarations/inverse-fourth-coefficient-tendsto-zero--4850f1b380ef977a5953d83f.md) | 40 | `result-track:4850f1b380ef977a5953d83f181475de9c47a6ca8862ff1267d69575dad9db66` |
| 6 | `theorem` | [source_correlation_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/declarations/source-correlation-fixed-tendsto--f45f2fbf78ca08ff3a96d764.md) | 46 | `result-track:f45f2fbf78ca08ff3a96d7646fd6ec4642a5cea6db36a2a1fe05293e187d6166` |
| 7 | `theorem` | [decaying_first_weight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/declarations/decaying-first-weight-nonneg--36ac1c6dcd35ee74f1110ec0.md) | 74 | `result-track:36ac1c6dcd35ee74f1110ec0e5333f6956bfc053a79d3a78a15a4c2115ff2b59` |
| 8 | `theorem` | [decaying_first_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/declarations/decaying-first-weight-integrable--7fd543550ca057fe18b89710.md) | 82 | `result-track:7fd543550ca057fe18b8971040870a836a6c38b0762e010144427ac79c2997c7` |
| 9 | `theorem` | [decaying_first_weight_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/declarations/decaying-first-weight-integral--13e7fb2c8176ed2ac7ec9299.md) | 94 | `result-track:13e7fb2c8176ed2ac7ec9299bd48f7ca38df79cf75247e3b0f82bd3badee9438` |
| 10 | `theorem` | [negative_half_moment_eq_weighted_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/declarations/negative-half-moment-eq-weighted-integral--4b7b71ff718d55d0bbeded8f.md) | 110 | `result-track:4b7b71ff718d55d0bbeded8fbe97c5c083acd6c1ef7d0208fbc5eab45af547e6` |
| 11 | `theorem` | [negative_half_moment_tendsto_four](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/declarations/negative-half-moment-tendsto-four--d3e80dc1bdd93fdf02adbe1e.md) | 135 | `result-track:d3e80dc1bdd93fdf02adbe1e43af19cf5bb3cec9721816ccac0bb40f5b9d2cb8` |
| 12 | `theorem` | [positive_half_moment_eq_negative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/declarations/positive-half-moment-eq-negative--18ba083830abe37cca8dbd98.md) | 162 | `result-track:18ba083830abe37cca8dbd98a346e7c85f5d254b879077551dfeb598c515be0e` |
| 13 | `theorem` | [positive_half_moment_tendsto_four](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/declarations/positive-half-moment-tendsto-four--514c69612a3d9115f1eebdfa.md) | 170 | `result-track:514c69612a3d9115f1eebdfa530641ab525e8eda5ce54edeb006a3ed5450d6c9` |
| 14 | `theorem` | [positive_half_moment_eventually_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/declarations/positive-half-moment-eventually-pos--718f5226281abb74a5b37f6b.md) | 176 | `result-track:718f5226281abb74a5b37f6bbe98b7544a38e78ba274790d48806c62764cb4f1` |
| 15 | `theorem` | [not_all_positive_half_moments_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/declarations/not-all-positive-half-moments-zero--e0b5bd47b6cb031aee4cec4d.md) | 184 | `result-track:e0b5bd47b6cb031aee4cec4d1f41ca91537020a2465d320151d3dcee89abdc2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
