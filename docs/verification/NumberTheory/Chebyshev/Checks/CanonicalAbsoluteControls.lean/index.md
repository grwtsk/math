# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.CanonicalAbsoluteControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ab566877985349b4616536697e665f9f72e773f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/CanonicalAbsoluteControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalAbsoluteControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalAbsoluteControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ab566877985349b4616536697e665f9f72e773f`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/CanonicalAbsoluteControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/CanonicalAbsoluteControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CanonicalTentExplicitFormula`](../../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentExplicitFormula.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cutoff_counts_equal_atom](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalAbsoluteControls.lean/declarations/cutoff-counts-equal-atom--da7260d942d7e966f4b0fd74.md) | 24 | `result-track:da7260d942d7e966f4b0fd74339d1296feaf8fa4e4ac50a0d6f39ffbf2219ee6` |
| 2 | `theorem` | [cutoff_not_strict_tail](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalAbsoluteControls.lean/declarations/cutoff-not-strict-tail--1796548ac556cdeb11e2924a.md) | 32 | `result-track:1796548ac556cdeb11e2924ac131232ae478b8fa306f50627f82cdb6c2fea121` |
| 3 | `theorem` | [multiplicity_not_cardinality](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalAbsoluteControls.lean/declarations/multiplicity-not-cardinality--9a8eff20256ebd4f7c3cb76a.md) | 35 | `result-track:9a8eff20256ebd4f7c3cb76ac6a836e0ff44311efaa1619ae48e442cee60c292` |
| 4 | `theorem` | [same_height_distinct_locations](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalAbsoluteControls.lean/declarations/same-height-distinct-locations--82bb7bb728c97f31e28bbde1.md) | 43 | `result-track:82bb7bb728c97f31e28bbde1cdbd25c434c1038ce52858e2ce4c4ef33bd1061e` |
| 5 | `theorem` | [zero_height_inverse_is_zero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalAbsoluteControls.lean/declarations/zero-height-inverse-is-zero--d93cdf7ac8234faf67b1a5b8.md) | 53 | `result-track:d93cdf7ac8234faf67b1a5b875919643605456097babd3ba53b9a96677a84f1a` |
| 6 | `theorem` | [zero_height_count_is_not_zero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalAbsoluteControls.lean/declarations/zero-height-count-is-not-zero--4343ab4e1886c7d7a6661ed3.md) | 55 | `result-track:4343ab4e1886c7d7a6661ed309549300ec4ee8c2180f36c2834f09c18b249901` |
| 7 | `theorem` | [scale_cannot_be_dropped](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalAbsoluteControls.lean/declarations/scale-cannot-be-dropped--b34c4d5cf53e277fb29d1070.md) | 62 | `result-track:b34c4d5cf53e277fb29d10705b45dbc921285ca2512a406c8f92764857f9647b` |
| 8 | `theorem` | [missing_record_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalAbsoluteControls.lean/declarations/missing-record-rejected--8abe6ce74419c5064761ded8.md) | 65 | `result-track:8abe6ce74419c5064761ded85d3ea0a1450eb59ca1daccc5853fb6fc489ae43e` |
| 9 | `theorem` | [signed_correction_retained](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalAbsoluteControls.lean/declarations/signed-correction-retained--fa3590b315960da859da69cd.md) | 73 | `result-track:fa3590b315960da859da69cdfbda22cfbaf7205e102fe360a7e14de861d47b11` |
| 10 | `theorem` | [first_square_outside_domain](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalAbsoluteControls.lean/declarations/first-square-outside-domain--e1cf48f93530484844879df4.md) | 77 | `result-track:e1cf48f93530484844879df4428b10189188e1a1ab06ffd55fb3e2f0dd0d68a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
