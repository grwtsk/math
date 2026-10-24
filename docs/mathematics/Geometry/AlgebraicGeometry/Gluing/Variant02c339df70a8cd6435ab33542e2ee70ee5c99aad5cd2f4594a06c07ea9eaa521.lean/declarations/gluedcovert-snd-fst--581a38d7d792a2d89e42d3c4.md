# gluedCoverT'_snd_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfa1c392-af08-1b1d-5394-d0b6d1650406",
  "kind": "theorem",
  "lexical_name": "gluedCoverT'_snd_fst",
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
  "slug": "gluedcovert-snd-fst--581a38d7d792a2d89e42d3c4",
  "source": {
    "blob": "30158fa53d40ec14bdd9eea6368777899c2d5605",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 288,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant02c339df70a8cd6435ab33542e2ee70ee5c99aad5cd2f4594a06c07ea9eaa521.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:581a38d7d792a2d89e42d3c4b26cfaaa624857610ae15833dc3dff25fc34a658",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Gluing/Variant02c339df70a8cd6435ab33542e2ee70ee5c99aad5cd2f4594a06c07ea9eaa521.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfa1c392-af08-1b1d-5394-d0b6d1650406`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gluedCoverT'_snd_fst (x y z : 𝒰.J) :
    gluedCoverT' 𝒰 x y z ≫ pullback.snd _ _ ≫ pullback.fst _ _ =
      pullback.fst _ _ ≫ pullback.snd _ _ := by
  delta gluedCoverT'; simp

@[simp, reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Gluing/Variant02c339df70a8cd6435ab33542e2ee70ee5c99aad5cd2f4594a06c07ea9eaa521.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant02c339df70a8cd6435ab33542e2ee70ee5c99aad5cd2f4594a06c07ea9eaa521.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30158fa53d40ec14bdd9eea6368777899c2d5605` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
