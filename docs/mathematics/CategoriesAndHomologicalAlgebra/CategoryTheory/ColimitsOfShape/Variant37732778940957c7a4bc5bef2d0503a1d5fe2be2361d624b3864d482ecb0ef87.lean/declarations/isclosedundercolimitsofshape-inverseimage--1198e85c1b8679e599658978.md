# IsClosedUnderColimitsOfShape.inverseImage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e9bc7438a24dc3357d32674565095ab37e1d7a8c1257cfe3edd37bfa4fd4465",
  "kind": "instance",
  "lexical_name": "IsClosedUnderColimitsOfShape.inverseImage",
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
  "slug": "isclosedundercolimitsofshape-inverseimage--1198e85c1b8679e599658978",
  "source": {
    "blob": "60ee480d07d614985e149102413d5c2be057a4e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 264,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOfShape/Variant37732778940957c7a4bc5bef2d0503a1d5fe2be2361d624b3864d482ecb0ef87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1198e85c1b8679e599658978f501563296dd76910a86caf5d976f9fc97174c4b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOfShape/Variant37732778940957c7a4bc5bef2d0503a1d5fe2be2361d624b3864d482ecb0ef87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e9bc7438a24dc3357d32674565095ab37e1d7a8c1257cfe3edd37bfa4fd4465`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsClosedUnderColimitsOfShape.inverseImage
    (P : ObjectProperty D) (F : C ⥤ D) [P.IsClosedUnderColimitsOfShape J]
    [PreservesColimitsOfShape J F] : (P.inverseImage F).IsClosedUnderColimitsOfShape J :=
  ⟨fun _ ⟨c, H⟩ ↦ ColimitOfShape.prop (P := P) ⟨c.map F, H⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOfShape/Variant37732778940957c7a4bc5bef2d0503a1d5fe2be2361d624b3864d482ecb0ef87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOfShape/Variant37732778940957c7a4bc5bef2d0503a1d5fe2be2361d624b3864d482ecb0ef87.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60ee480d07d614985e149102413d5c2be057a4e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
