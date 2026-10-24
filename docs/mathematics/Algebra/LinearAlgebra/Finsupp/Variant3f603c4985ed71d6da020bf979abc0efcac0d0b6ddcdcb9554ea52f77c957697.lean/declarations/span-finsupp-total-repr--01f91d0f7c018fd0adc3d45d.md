# Span.finsupp_total_repr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88ea665c3d1888d240ef7c2990991809bc44f9fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e7354f5-5345-3f16-c066-10586417b31d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bdb15fc6-5889-ab9d-70f9-2946fe76eb17",
  "kind": "theorem",
  "lexical_name": "Span.finsupp_total_repr",
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
  "slug": "span-finsupp-total-repr--01f91d0f7c018fd0adc3d45d",
  "source": {
    "blob": "88ea665c3d1888d240ef7c2990991809bc44f9fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1155,
    "line": 1148,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01f91d0f7c018fd0adc3d45d3d6854ea84edbfaed7b82e96667c2620f1ccd528",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finsupp/Variant3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdb15fc6-5889-ab9d-70f9-2946fe76eb17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1148–1155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Span.finsupp_total_repr {w : Set M} (x : span R w) :
    Finsupp.total w M R (↑) (Span.repr R w x) = x := by
  rw [Span.repr_def]
  exact ((Finsupp.mem_span_iff_total _ _ _).mp x.2).choose_spec
#align span.finsupp_total_repr Span.finsupp_total_repr

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finsupp/Variant3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean#L1148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88ea665c3d1888d240ef7c2990991809bc44f9fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
