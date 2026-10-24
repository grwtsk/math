# resLE_eq_morphismRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a2b2da6-010f-2a1c-0cc0-477503f012bc",
  "kind": "lemma",
  "lexical_name": "resLE_eq_morphismRestrict",
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
  "slug": "resle-eq-morphismrestrict--4daba606638e25c4db927837",
  "source": {
    "blob": "9e40f79e69284ea6cb2f9d636b6ee39bddde5c6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 663,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Restrict/Variantd4557136d0e551fed0ba3b76dd7a2559b2bdc826806b2ae1ea51d2a06dbbfc5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4daba606638e25c4db927837604ea7c8d3cabe6af0f29c1a8cc6a74e964fc1c5",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Restrict/Variantd4557136d0e551fed0ba3b76dd7a2559b2bdc826806b2ae1ea51d2a06dbbfc5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a2b2da6-010f-2a1c-0cc0-477503f012bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma resLE_eq_morphismRestrict : f.resLE U (f ⁻¹ᵁ U) le_rfl = f ∣_ U := by
  simp [resLE]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Restrict/Variantd4557136d0e551fed0ba3b76dd7a2559b2bdc826806b2ae1ea51d2a06dbbfc5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Restrict/Variantd4557136d0e551fed0ba3b76dd7a2559b2bdc826806b2ae1ea51d2a06dbbfc5f.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e40f79e69284ea6cb2f9d636b6ee39bddde5c6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
