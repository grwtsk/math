# Verification target: GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringUpperTent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5eb9c74754671bfc770a94cc56b2e1b02fe09d5d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringUpperTent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringUpperTent.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringUpperTent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5eb9c74754671bfc770a94cc56b2e1b02fe09d5d`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringUpperTent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CanonicalPositiveTuringUpperTent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalRealPairUpperBound`](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairUpperBound.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringPairedTent`](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringPairedTent.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCriterion`](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [verified_upper_of_positive_pair_packet](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringUpperTent.lean/declarations/verified-upper-of-positive-pair-packet--9b3db397e495fde6c0bc03ec.md) | 54 | `result-track:9b3db397e495fde6c0bc03ecbd5229891d9a5aef8ada5d31ad49e9c270dc0f85` |
| 2 | `theorem` | [verified_limit_of_positive_pair_packet](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringUpperTent.lean/declarations/verified-limit-of-positive-pair-packet--43a6fa2834a2b48436dbf6d0.md) | 82 | `result-track:43a6fa2834a2b48436dbf6d01baecf216aa0baead67d44bbc641ac1eac83efca` |
| 3 | `theorem` | [accepted_claimed_lt_unrounded_add_grid](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringUpperTent.lean/declarations/accepted-claimed-lt-unrounded-add-grid--b7ffca8a4f6f3a8225263c4e.md) | 99 | `result-track:b7ffca8a4f6f3a8225263c4ebc3e51508f29f524a8b34b0dd45014dfe700b23d` |
| 4 | `theorem` | [prime_in_square_of_positive_pair_claimed_upper_packet](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringUpperTent.lean/declarations/prime-in-square-of-positive-pair-claimed-upper-packet--cae4cfe36fe6f40092ff7d9c.md) | 116 | `result-track:cae4cfe36fe6f40092ff7d9c65835e272897c94dc14bd1d2f223eceab9a67da1` |
| 5 | `theorem` | [prime_in_square_of_positive_pair_upper_limit_packet](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringUpperTent.lean/declarations/prime-in-square-of-positive-pair-upper-limit-packet--c44054530f5e528570ec5390.md) | 141 | `result-track:c44054530f5e528570ec5390177698ed4180382bcac1745c56eb9f9cd20b6bdc` |
| 6 | `theorem` | [upper_limit_equality_not_strict_fixture](../../../../mathematics/NumberTheory/Chebyshev/CanonicalPositiveTuringUpperTent.lean/declarations/upper-limit-equality-not-strict-fixture--63286d2eac56c6d20c58477d.md) | 164 | `result-track:63286d2eac56c6d20c58477d5bf2852cf515dacf94e1c69d017b0b7f4ec9b336` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
