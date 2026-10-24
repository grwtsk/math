# createsLimitOfIsoDiagram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cd4a2984c1c5619764fd44de517b44c210dc3734c805caae09424dca60680f2",
  "kind": "def",
  "lexical_name": "createsLimitOfIsoDiagram",
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
  "slug": "createslimitofisodiagram--500dd1c98e89c81b5c95c9c4",
  "source": {
    "blob": "a61005dca92999758e9193d2b8f9f0c19fedb467",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 516,
    "line": 501,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant723add0c91a95e160784ebebc11b21dd7a26913b0e76ba61c35569d7e1870dc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:500dd1c98e89c81b5c95c9c4459b36820211bead40f2259de6c949c5bc06c6d2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant723add0c91a95e160784ebebc11b21dd7a26913b0e76ba61c35569d7e1870dc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cd4a2984c1c5619764fd44de517b44c210dc3734c805caae09424dca60680f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–516.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def createsLimitOfIsoDiagram {K₁ K₂ : J ⥤ C} (F : C ⥤ D) (h : K₁ ≅ K₂) [CreatesLimit K₁ F] :
    CreatesLimit K₂ F :=
  { reflectsLimit_of_iso_diagram F h with
    lifts := fun c t =>
      let t' := (IsLimit.postcomposeInvEquiv (isoWhiskerRight h F :) c).symm t
      { liftedCone := (Cone.postcompose h.hom).obj (liftLimit t')
        validLift :=
          Functor.mapConePostcompose F ≪≫
            (Cone.postcompose (isoWhiskerRight h F).hom).mapIso (liftedLimitMapsToOriginal t') ≪≫
              Cone.ext (Iso.refl _) fun j => by
                dsimp
                rw [Category.assoc, ← F.map_comp]
                simp } }

/-- If `F` creates the limit of `K` and `F ≅ G`, then `G` creates the limit of `K`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant723add0c91a95e160784ebebc11b21dd7a26913b0e76ba61c35569d7e1870dc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant723add0c91a95e160784ebebc11b21dd7a26913b0e76ba61c35569d7e1870dc4.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a61005dca92999758e9193d2b8f9f0c19fedb467` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
