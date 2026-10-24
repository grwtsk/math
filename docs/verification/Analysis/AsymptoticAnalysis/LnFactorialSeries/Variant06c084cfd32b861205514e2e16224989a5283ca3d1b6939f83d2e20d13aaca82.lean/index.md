# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.LnFactorialSeries.Variant06c084cfd32b861205514e2e16224989a5283ca3d1b6939f83d2e20d13aaca82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "caa2ae544bc5853f725c138e3d8854eb4634b789",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant06c084cfd32b861205514e2e16224989a5283ca3d1b6939f83d2e20d13aaca82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant06c084cfd32b861205514e2e16224989a5283ca3d1b6939f83d2e20d13aaca82.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant06c084cfd32b861205514e2e16224989a5283ca3d1b6939f83d2e20d13aaca82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `caa2ae544bc5853f725c138e3d8854eb4634b789`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant06c084cfd32b861205514e2e16224989a5283ca3d1b6939f83d2e20d13aaca82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant06c084cfd32b861205514e2e16224989a5283ca3d1b6939f83d2e20d13aaca82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Star` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Star` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.StarOrdered` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [summable_series](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant06c084cfd32b861205514e2e16224989a5283ca3d1b6939f83d2e20d13aaca82.lean/declarations/summable-series--bb54415bc4061f82a065112c.md) | 41 | `result-track:bb54415bc4061f82a065112c3cd59b59ac41e4c5ea0de55d695bfebb467737e5` |
| 2 | `lemma` | [hs_lo](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant06c084cfd32b861205514e2e16224989a5283ca3d1b6939f83d2e20d13aaca82.lean/declarations/hs-lo--ddb69b4325a57b4ed27cb7d2.md) | 50 | `result-track:ddb69b4325a57b4ed27cb7d2a133ed8d42888183b90bdce927e90365e68d59b6` |
| 3 | `lemma` | [tail_drop_factor](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant06c084cfd32b861205514e2e16224989a5283ca3d1b6939f83d2e20d13aaca82.lean/declarations/tail-drop-factor--887139a00c30ad7465587d66.md) | 61 | `result-track:887139a00c30ad7465587d662b9d59a8474064ad450c41602c103be17cae5507` |
| 4 | `lemma` | [tail_factor_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant06c084cfd32b861205514e2e16224989a5283ca3d1b6939f83d2e20d13aaca82.lean/declarations/tail-factor-bound--5b635ad212bd9b97806b761c.md) | 72 | `result-track:5b635ad212bd9b97806b761ce506568d0e5b030896ead719852c0bbe0cb5496a` |
| 5 | `lemma` | [exp_series_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant06c084cfd32b861205514e2e16224989a5283ca3d1b6939f83d2e20d13aaca82.lean/declarations/exp-series-eq--bdcf689261eac812dfb9d734.md) | 84 | `result-track:bdcf689261eac812dfb9d7344e2c7a259d82e8907c7b7811ac56b48ac2b13fba` |
| 6 | `lemma` | [tail_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant06c084cfd32b861205514e2e16224989a5283ca3d1b6939f83d2e20d13aaca82.lean/declarations/tail-bound--90bfefb8e7667e5eebd640fe.md) | 88 | `result-track:90bfefb8e7667e5eebd640fe9c673948d64c8d62fa5928a5cf0d7e6e37a64c0c` |
| 7 | `lemma` | [hs_hi_close](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant06c084cfd32b861205514e2e16224989a5283ca3d1b6939f83d2e20d13aaca82.lean/declarations/hs-hi-close--3ae2898a1fcb83406c9cf258.md) | 93 | `result-track:3ae2898a1fcb83406c9cf258f304330ef8e4f76120af86d93fd070b3621a2774` |
| 8 | `lemma` | [hs_hi](../../../../../mathematics/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant06c084cfd32b861205514e2e16224989a5283ca3d1b6939f83d2e20d13aaca82.lean/declarations/hs-hi--fca8a80b0429e8677c3a91d6.md) | 109 | `result-track:fca8a80b0429e8677c3a91d60754e6ae9d5cd16302744ae74abca983ea758a5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
