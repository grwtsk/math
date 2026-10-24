# _root_.GRWTSK.Geometry.AlgebraicGeometry.IsOpenImmersion.Variantc2bd8a3c7be0f58f6f25b9f7d25f42aaaf2278e9e7332512d39f30d157a6ef5a.AlgebraicGeometry.IsOpenImmersion.of_isLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb45a424-7c85-a88f-ac56-1fec9969be01",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Geometry.AlgebraicGeometry.IsOpenImmersion.Variantc2bd8a3c7be0f58f6f25b9f7d25f42aaaf2278e9e7332512d39f30d157a6ef5a.AlgebraicGeometry.IsOpenImmersion.of_isLocalization",
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
  "slug": "root-grwtsk-geometry-algebraicgeometry-isopenimmersion-variantc2bd8a3c7b--f0c57c8571eb26c48d3dad8e",
  "source": {
    "blob": "25da3eae687214175bd493508f21566d84438e33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 250,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant5ecf6231074e47c9942f01c041dd6217e2708709aca58a4e8f18d11a21c37643.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0c57c8571eb26c48d3dad8e66a1a049ca134f64166572e7e368984fe26e901d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant5ecf6231074e47c9942f01c041dd6217e2708709aca58a4e8f18d11a21c37643.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb45a424-7c85-a88f-ac56-1fec9969be01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Geometry.AlgebraicGeometry.IsOpenImmersion.Variantc2bd8a3c7be0f58f6f25b9f7d25f42aaaf2278e9e7332512d39f30d157a6ef5a.AlgebraicGeometry.IsOpenImmersion.of_isLocalization {R S} [CommRing R] [CommRing S]
    [Algebra R S] (f : R) [IsLocalization.Away f S] :
    IsOpenImmersion (Spec.map (CommRingCat.ofHom (algebraMap R S))) := by
  have e := (IsLocalization.algEquiv (.powers f) S
    (Localization.Away f)).symm.toAlgHom.comp_algebraMap
  rw [← e, CommRingCat.ofHom_comp, Spec.map_comp]
  have H : IsIso (CommRingCat.ofHom (IsLocalization.algEquiv
    (Submonoid.powers f) S (Localization.Away f)).symm.toAlgHom.toRingHom) := by
    exact inferInstanceAs (IsIso <| (IsLocalization.algEquiv
      (Submonoid.powers f) S (Localization.Away f)).toRingEquiv.toCommRingCatIso.inv)
  simp only [AlgEquiv.toAlgHom_eq_coe, AlgHom.toRingHom_eq_coe, AlgEquiv.toAlgHom_toRingHom] at H ⊢
  infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant5ecf6231074e47c9942f01c041dd6217e2708709aca58a4e8f18d11a21c37643.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant5ecf6231074e47c9942f01c041dd6217e2708709aca58a4e8f18d11a21c37643.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25da3eae687214175bd493508f21566d84438e33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
