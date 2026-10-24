# is_transcendental_of_subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "018a1223267835ca45d23b5cc9f0b3125ebd3006",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6308d370-4f2e-a89d-af14-5dd0b30a8ebe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81a7d8d3-6c2d-f8f1-3da0-6b420433d149",
  "kind": "theorem",
  "lexical_name": "is_transcendental_of_subsingleton",
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
  "slug": "is-transcendental-of-subsingleton--36ffc56a1696609becc7ae22",
  "source": {
    "blob": "018a1223267835ca45d23b5cc9f0b3125ebd3006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 41,
    "path": "GRWTSK/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36ffc56a1696609becc7ae221ac19045585258ee7de29864f875106a3d334cf8",
  "verification": {
    "reference": "docs/verification/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81a7d8d3-6c2d-f8f1-3da0-6b420433d149`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem is_transcendental_of_subsingleton [Subsingleton R] (x : A) : Transcendental R x :=
  fun ⟨p, h, _⟩ => h <| Subsingleton.elim p 0
#align is_transcendental_of_subsingleton is_transcendental_of_subsingleton

variable {R}

/-- A subalgebra is algebraic if all its elements are algebraic. -/
nonrec
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebraic/Varianta559f87e95e3257a754c9800a8f0af02da2e3e2fa2268909a3d8dc2314035350.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `018a1223267835ca45d23b5cc9f0b3125ebd3006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
