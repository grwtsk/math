# inv_invApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f50cf7ff-c07e-afce-62c2-d4b7d3a44cd7",
  "kind": "theorem",
  "lexical_name": "inv_invApp",
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
  "slug": "inv-invapp--66dfdf93434c06ddfc0c79b3",
  "source": {
    "blob": "2f3d4a21a9bac194181fdce6e58e3b87aed37bfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1212,
    "line": 1206,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant4c9fb049b754451529f0129d7262324d3cf7ef6b205a74ac80d2dae417825d29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66dfdf93434c06ddfc0c79b31bfabfb89763408611b9a48a79163ff5f431d5b2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant4c9fb049b754451529f0129d7262324d3cf7ef6b205a74ac80d2dae417825d29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f50cf7ff-c07e-afce-62c2-d4b7d3a44cd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1206–1212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_invApp (U : Opens X) :
    inv (H.invApp _ U) =
      f.c.app (op (opensFunctor f |>.obj U)) ≫ X.presheaf.map
        (eqToHom (by simp [Opens.map, Set.preimage_image_eq _ H.base_open.injective])) :=
  PresheafedSpace.IsOpenImmersion.inv_invApp f.1 U

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant4c9fb049b754451529f0129d7262324d3cf7ef6b205a74ac80d2dae417825d29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant4c9fb049b754451529f0129d7262324d3cf7ef6b205a74ac80d2dae417825d29.lean#L1206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f3d4a21a9bac194181fdce6e58e3b87aed37bfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
