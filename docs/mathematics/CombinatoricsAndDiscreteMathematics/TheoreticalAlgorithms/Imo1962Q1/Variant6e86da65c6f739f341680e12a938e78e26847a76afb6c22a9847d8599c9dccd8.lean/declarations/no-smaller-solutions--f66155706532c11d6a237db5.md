# no_smaller_solutions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f567a18-fe57-9c0c-680d-2abec6d605b6",
  "kind": "theorem",
  "lexical_name": "no_smaller_solutions",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "no-smaller-solutions--f66155706532c11d6a237db5",
  "source": {
    "blob": "5e86f8b3bd6245bbecbb093480e58cc255850b8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f66155706532c11d6a237db52e5607f4c8667f7b09d18e1603465e90d92a543b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f567a18-fe57-9c0c-680d-2abec6d605b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_smaller_solutions (n : ℕ) (h1 : ProblemPredicate n) : n ≥ 153846 := by
  cases' without_digits h1 with c h2
  have h3 : (digits 10 c).length < 6 ∨ (digits 10 c).length ≥ 6 := by apply lt_or_ge
  cases' h3 with h3 h3
  case inr => exact case_more_digits h3 h2
  case inl =>
    interval_cases h : (digits 10 c).length
    · exfalso; exact case_0_digit h h2
    · exfalso; exact case_1_digit h h2
    · exfalso; exact case_2_digit h h2
    · exfalso; exact case_3_digit h h2
    · exfalso; exact case_4_digit h h2
    · have h4 : c = 15384 := case_5_digit h h2
      have h5 : n = 10 * 15384 + 6 := h4 ▸ h2.left
      norm_num at h5
      exact h5.ge
#align imo1962_q1.no_smaller_solutions Imo1962Q1.no_smaller_solutions

end Imo1962Q1

open Imo1962Q1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e86f8b3bd6245bbecbb093480e58cc255850b8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
