# spanFinrank_span_le_ncard_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:537923fa-3162-d010-06c6-77535d93dee8",
  "kind": "lemma",
  "lexical_name": "spanFinrank_span_le_ncard_of_finite",
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
  "slug": "spanfinrank-span-le-ncard-of-finite--5dc0dbf2ba893807be610272",
  "source": {
    "blob": "e0a38c6cdbd59de5409ec9d89b7cd1e9b475cd3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 136,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dc0dbf2ba893807be6102726333a5916aaa0050550baa3801044d95e4e6807e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:537923fa-3162-d010-06c6-77535d93dee8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spanFinrank_span_le_ncard_of_finite {s : Set M} (hs : s.Finite) :
    (span R s).spanFinrank ≤ s.ncard := by
  rw [← Nat.cast_le (α := Cardinal)]
  convert spanRank_span_le_card (R := R) s
  · rw [spanFinrank]
    refine Cardinal.cast_toNat_of_lt_aleph0 (lt_of_le_of_lt (spanRank_span_le_card s) ?_)
    simpa
  · exact Set.cast_ncard hs

/-- Constructs a generating set with cardinality equal to the `spanRank` of the submodule -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0a38c6cdbd59de5409ec9d89b7cd1e9b475cd3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
