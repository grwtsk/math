# equivalent_of_compress_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d283d264-0bbc-e076-b9db-fabccb52b5d5",
  "kind": "theorem",
  "lexical_name": "equivalent_of_compress_eq",
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
  "slug": "equivalent-of-compress-eq--a886fa4380915ad85eeab4c1",
  "source": {
    "blob": "5879e6f2535b165fb0d9d7710d86ac23b04a744d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E59cd17fe06d3046bced258c9f3d4de0b18924d936cfae267aea40899cda5fb3CertificationFix/Variant13990c5dcf434c75e6ca3ce7212598121b62dde90344917f5e137a4d18090827.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a886fa4380915ad85eeab4c1f0f1c04217a3f5925e73f0002e1e65937084b46e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E59cd17fe06d3046bced258c9f3d4de0b18924d936cfae267aea40899cda5fb3CertificationFix/Variant13990c5dcf434c75e6ca3ce7212598121b62dde90344917f5e137a4d18090827.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d283d264-0bbc-e076-b9db-fabccb52b5d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equivalent_of_compress_eq (q : SufficientRepresentation.{u, v, w, a} C) {x y : State}
    (h : q.compress x = q.compress y) : C.Equivalent x y := by
  intro i
  calc
    C.observe i x = q.recover i (q.compress x) := (q.recover_compress i x).symm
    _ = q.recover i (q.compress y) := by rw [h]
    _ = C.observe i y := q.recover_compress i y

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E59cd17fe06d3046bced258c9f3d4de0b18924d936cfae267aea40899cda5fb3CertificationFix/Variant13990c5dcf434c75e6ca3ce7212598121b62dde90344917f5e137a4d18090827.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E59cd17fe06d3046bced258c9f3d4de0b18924d936cfae267aea40899cda5fb3CertificationFix/Variant13990c5dcf434c75e6ca3ce7212598121b62dde90344917f5e137a4d18090827.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5879e6f2535b165fb0d9d7710d86ac23b04a744d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
