# _root_.GRWTSK.Geometry.AlgebraicGeometry.IsOpenImmersion.Variant2da4f0c000d4277ef53b7b2475cf09882ab21005d2c29da65d287b6d14852705.AlgebraicGeometry.IsOpenImmersion.of_isLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71b49492-c7c9-baa8-4322-3eb8cdc1e206",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Geometry.AlgebraicGeometry.IsOpenImmersion.Variant2da4f0c000d4277ef53b7b2475cf09882ab21005d2c29da65d287b6d14852705.AlgebraicGeometry.IsOpenImmersion.of_isLocalization",
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
  "slug": "root-grwtsk-geometry-algebraicgeometry-isopenimmersion-variant2da4f0c000--56209aa3d2d7967edb237a0b",
  "source": {
    "blob": "5fd933ee2673d62911a98a909212ea6deb500237",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 349,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant3b0473b5884fc6813fbeb165612c26931d61b3729cdc024eb00882d7638c9119.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56209aa3d2d7967edb237a0b26f50e50efecec486220906c8bfb2dcb6f5d0282",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant3b0473b5884fc6813fbeb165612c26931d61b3729cdc024eb00882d7638c9119.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71b49492-c7c9-baa8-4322-3eb8cdc1e206`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Geometry.AlgebraicGeometry.IsOpenImmersion.Variant2da4f0c000d4277ef53b7b2475cf09882ab21005d2c29da65d287b6d14852705.AlgebraicGeometry.IsOpenImmersion.of_isLocalization {R S} [CommRing R] [CommRing S]
    [Algebra R S] (f : R) [IsLocalization.Away f S] :
    IsOpenImmersion (Spec.map (CommRingCat.ofHom (algebraMap R S))) := by
  have e := (IsLocalization.algEquiv (.powers f) S
    (Localization.Away f)).symm.toAlgHom.comp_algebraMap
  rw [← e, CommRingCat.ofHom_comp, Spec.map_comp]
  have H : IsIso (CommRingCat.ofHom (IsLocalization.algEquiv
    (Submonoid.powers f) S (Localization.Away f)).symm.toAlgHom.toRingHom) := by
    exact inferInstanceAs (IsIso <| (IsLocalization.algEquiv
      (Submonoid.powers f) S (Localization.Away f)).toRingEquiv.toCommRingCatIso.inv)
  simp only [AlgHom.toRingHom_eq_coe, AlgEquiv.toAlgHom_toRingHom] at H ⊢
  infer_instance

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant3b0473b5884fc6813fbeb165612c26931d61b3729cdc024eb00882d7638c9119.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant3b0473b5884fc6813fbeb165612c26931d61b3729cdc024eb00882d7638c9119.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fd933ee2673d62911a98a909212ea6deb500237` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
