# limitAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00e8ae210b0f6cdaf43531b7912ef896eb7174c816aa0f5ed766d2ff1d17b94b",
  "kind": "instance",
  "lexical_name": "limitAlgebra",
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
  "slug": "limitalgebra--c7382beaffc0acd933b02d7f",
  "source": {
    "blob": "38b8de2b341bf490197fef7d2e270fdb6bb1a79f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 68,
    "path": "GRWTSK/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7382beaffc0acd933b02d7f9a52d1391439bbe141e956e87ce9e063df90e13a",
  "verification": {
    "reference": "docs/verification/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00e8ae210b0f6cdaf43531b7912ef896eb7174c816aa0f5ed766d2ff1d17b94b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance limitAlgebra (F : J ⥤ AlgebraCatMax.{v, w} R) :
    Algebra R (Types.limitCone (F ⋙ forget (AlgebraCatMax.{v, w} R))).pt :=
  inferInstanceAs <| Algebra R (sectionsSubalgebra F)
#align Algebra.limit_algebra AlgebraCat.limitAlgebra

/-- `limit.π (F ⋙ forget (AlgebraCat R)) j` as a `AlgHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b8de2b341bf490197fef7d2e270fdb6bb1a79f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
