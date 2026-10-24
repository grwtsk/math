# Verification target: GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringPairedTent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66092c73fd39e7219eb5387fc7004a28194fdba6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringPairedTent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringPairedTent.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringPairedTent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66092c73fd39e7219eb5387fc7004a28194fdba6`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringPairedTent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CanonicalPositiveTuringPairedTent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalConjugatePairAccumulation`](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPositiveTuringEnumeration`](../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CanonicalRationalTentEvaluation`](../../../../mathematics/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositivePairRowAlignment](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringPairedTent.lean/declarations/positivepairrowalignment--81b21180c27e5b51a2758794.md) | 55 | `declaration-track:81b21180c27e5b51a2758794ed697fca17a5bd76821c6fcfd9f78dddd50ec3ab` |
| 2 | `theorem` | [row_count_eq_index_card](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringPairedTent.lean/declarations/row-count-eq-index-card--9713a105bd86711bdeac3d6a.md) | 69 | `result-track:9713a105bd86711bdeac3d6a3493335d5bb5254380656f56d05a41526f132f9a` |
| 3 | `theorem` | [full_tent_sum_eq_positive_rows_of_gap_eq_zero](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringPairedTent.lean/declarations/full-tent-sum-eq-positive-rows-of-gap-eq-zero--3dd001684b09a2dcaf26089d.md) | 80 | `result-track:3dd001684b09a2dcaf26089df6f02a7b97c9bdea2e5c7494e7cd675aa45dd04c` |
| 4 | `theorem` | [verified_head_of_positive_pair_packet](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringPairedTent.lean/declarations/verified-head-of-positive-pair-packet--06a50988fbd50bdd1c18ddd4.md) | 111 | `result-track:06a50988fbd50bdd1c18ddd408aa8721cb9dcaba1b980b35665ecc01b40dc4ae` |
| 5 | `theorem` | [prime_in_square_of_positive_pair_packet](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringPairedTent.lean/declarations/prime-in-square-of-positive-pair-packet--061d26d1093e45c583522c35.md) | 137 | `result-track:061d26d1093e45c583522c3503368e95ac5f1db1a576e649df9175adfd9a6e02` |
| 6 | `theorem` | [matching_count_not_alignment_fixture](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringPairedTent.lean/declarations/matching-count-not-alignment-fixture--4e0c01e4c5ffcf97ac3ff5da.md) | 161 | `result-track:4e0c01e4c5ffcf97ac3ff5da69d2d619cf7bdcde2419c670326cde10af6acc5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
