# preimage_basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2bfe029-762b-5899-3719-fb49a6770830",
  "kind": "theorem",
  "lexical_name": "preimage_basicOpen",
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
  "slug": "preimage-basicopen--7cd6ee8dfb4c22ed272a0eb7",
  "source": {
    "blob": "3b4bf8db2ddb209bbf78fee590785afe19fbe5dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 430,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf408cc3a00e7db9bef7cb699711052ca527a8e1d6f9dd94910fbe02e8240859f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cd6ee8dfb4c22ed272a0eb7e74e1620359987acf93b645779a45d09a8d2a533",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf408cc3a00e7db9bef7cb699711052ca527a8e1d6f9dd94910fbe02e8240859f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2bfe029-762b-5899-3719-fb49a6770830`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_basicOpen {X Y : LocallyRingedSpace.{u}} (f : X ⟶ Y) {U : Opens Y}
    (s : Y.presheaf.obj (op U)) :
    (Opens.map f.base).obj (Y.toRingedSpace.basicOpen s) =
      @RingedSpace.basicOpen X.toRingedSpace ((Opens.map f.base).obj U) (f.c.app _ s) := by
  ext x
  constructor
  · rintro ⟨hxU, hx⟩
    rw [SetLike.mem_coe, X.toRingedSpace.mem_basicOpen _ _ hxU]
    delta toRingedSpace
    rw [← stalkMap_germ_apply]
    exact (f.stalkMap _).hom.isUnit_map hx
  · rintro ⟨hxU, hx⟩
    simp only [Opens.map_coe, Set.mem_preimage, SetLike.mem_coe, toRingedSpace] at hx ⊢
    rw [RingedSpace.mem_basicOpen _ s (f.base x) hxU]
    rw [← stalkMap_germ_apply] at hx
    exact (isUnit_map_iff (f.toShHom.stalkMap _).hom _).mp hx

variable {U : TopCat} (X : LocallyRingedSpace.{u}) {f : U ⟶ X.toTopCat} (h : IsOpenEmbedding f)
  (V : Opens U) (x : U) (hx : x ∈ V)

/-- For an open embedding `f : U ⟶ X` and a point `x : U`, we get an isomorphism between the stalk
of `X` at `f x` and the stalk of the restriction of `X` along `f` at t `x`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf408cc3a00e7db9bef7cb699711052ca527a8e1d6f9dd94910fbe02e8240859f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf408cc3a00e7db9bef7cb699711052ca527a8e1d6f9dd94910fbe02e8240859f.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b4bf8db2ddb209bbf78fee590785afe19fbe5dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
