# fromGlued_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7111257d225ca68393d544fd7efd7619715b4793",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 369,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d84e7fe9-63f8-18ce-d923-5ff313a1899d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c7963ad-432a-d97a-4e34-a05fda6e5778",
  "kind": "theorem",
  "lexical_name": "fromGlued_injective",
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
  "slug": "fromglued-injective--1be8d40202fe28b77bb51d5c",
  "source": {
    "blob": "7111257d225ca68393d544fd7efd7619715b4793",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 369,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1be8d40202fe28b77bb51d5c643b2402acdb7a132d90d1c5e196c6a6e822b281",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c7963ad-432a-d97a-4e34-a05fda6e5778`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fromGlued_injective : Function.Injective 𝒰.fromGlued.1.base := by
  intro x y h
  obtain ⟨i, x, rfl⟩ := 𝒰.gluedCover.ι_jointly_surjective x
  obtain ⟨j, y, rfl⟩ := 𝒰.gluedCover.ι_jointly_surjective y
  simp_rw [← comp_apply, ← SheafedSpace.comp_base, ← LocallyRingedSpace.comp_val] at h
  erw [ι_fromGlued, ι_fromGlued] at h
  let e :=
    (TopCat.pullbackConeIsLimit _ _).conePointUniqueUpToIso
      (isLimitOfHasPullbackOfPreservesLimit Scheme.forgetToTop (𝒰.map i) (𝒰.map j))
  rw [𝒰.gluedCover.ι_eq_iff]
  right
  use e.hom ⟨⟨x, y⟩, h⟩
  constructor
  -- Porting note: in the two subproofs below, added the `change` lines
  · change (e.hom ≫ _) ⟨(x, y), h⟩ = x
    erw [IsLimit.conePointUniqueUpToIso_hom_comp _ _ WalkingCospan.left]; rfl
  · change (e.hom ≫ ((gluedCover 𝒰).toGlueData.t i j ≫
      (gluedCover 𝒰).toGlueData.f j i).val.base) ⟨(x, y), h⟩ = y
    erw [pullbackSymmetry_hom_comp_fst,
      IsLimit.conePointUniqueUpToIso_hom_comp _ _ WalkingCospan.right]
    rfl
#align algebraic_geometry.Scheme.open_cover.from_glued_injective AlgebraicGeometry.Scheme.OpenCover.fromGlued_injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7111257d225ca68393d544fd7efd7619715b4793` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
