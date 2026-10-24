# quasiCompactCover_shrink_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:981532a4-960c-5a9f-171a-4ef36da30a7f",
  "kind": "lemma",
  "lexical_name": "quasiCompactCover_shrink_iff",
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
  "slug": "quasicompactcover-shrink-iff--3875e2832105b685e199a01d",
  "source": {
    "blob": "aa71222fc54dd579398a04fd027505d40186d781",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 41,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3875e2832105b685e199a01dfc3e1f64a49a0692edbb880cd159890c084b41c9",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:981532a4-960c-5a9f-171a-4ef36da30a7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quasiCompactCover_shrink_iff (E : PreZeroHypercover.{w} S) :
    QuasiCompactCover E.shrink ↔ QuasiCompactCover E :=
  ⟨fun _ ↦ .of_hom E.fromShrink, fun _ ↦ .of_hom E.toShrink⟩

/-- The pre-`0`-hypercover family on the category of schemes underlying the fpqc precoverage. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa71222fc54dd579398a04fd027505d40186d781` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
