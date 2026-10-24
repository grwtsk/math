# Cover.copy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91f82bbc77a4dcb1497e40353e6646de65171506cc0f9164283077640b821c14",
  "kind": "def",
  "lexical_name": "Cover.copy",
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
  "slug": "cover-copy--f8da4a5106783889f1d0a3d4",
  "source": {
    "blob": "714c36ff47e5a20cde528e3faa64725d413221d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 149,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8da4a5106783889f1d0a3d4ce648838532f7d4ba6889b37ef8ff43a9d7d762c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91f82bbc77a4dcb1497e40353e6646de65171506cc0f9164283077640b821c14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cover.copy [P.RespectsIso] {X : Scheme.{u}} (𝒰 : X.Cover P)
    (J : Type*) (obj : J → Scheme)
    (map : ∀ i, obj i ⟶ X) (e₁ : J ≃ 𝒰.J) (e₂ : ∀ i, obj i ≅ 𝒰.obj (e₁ i))
    (h : ∀ i, map i = (e₂ i).hom ≫ 𝒰.map (e₁ i)) : X.Cover P :=
  { J, obj, map
    f := fun x ↦ e₁.symm (𝒰.f x)
    covers := fun x ↦ by
      rw [h, Scheme.comp_base, TopCat.coe_comp, Set.range_comp, Set.range_eq_univ.mpr,
        Set.image_univ, e₁.rightInverse_symm]
      · exact 𝒰.covers x
      · rw [← TopCat.epi_iff_surjective]; infer_instance
    map_prop := fun j ↦ by
      rw [h, P.cancel_left_of_respectsIso]
      exact 𝒰.map_prop (e₁ j) }

/-- The pushforward of a cover along an isomorphism. -/
@[simps! J obj map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `714c36ff47e5a20cde528e3faa64725d413221d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
