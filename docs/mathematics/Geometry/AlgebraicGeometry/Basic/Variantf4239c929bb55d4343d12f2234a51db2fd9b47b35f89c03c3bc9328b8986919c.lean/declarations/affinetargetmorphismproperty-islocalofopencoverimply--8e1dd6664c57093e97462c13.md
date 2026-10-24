# AffineTargetMorphismProperty.isLocalOfOpenCoverImply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1c7a80ec5bb2f1f9a9a2a0900875b58687087a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53113273-4819-f867-1767-bc2a9c6f8b9c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5304fb8e-d0b7-fe80-018f-c68f4fcdcdd3",
  "kind": "theorem",
  "lexical_name": "AffineTargetMorphismProperty.isLocalOfOpenCoverImply",
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
  "slug": "affinetargetmorphismproperty-islocalofopencoverimply--8e1dd6664c57093e97462c13",
  "source": {
    "blob": "a1c7a80ec5bb2f1f9a9a2a0900875b58687087a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 281,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e1dd6664c57093e97462c134b2d300a31a08bd5b9a346420bd584c74b2c22cc",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5304fb8e-d0b7-fe80-018f-c68f4fcdcdd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineTargetMorphismProperty.isLocalOfOpenCoverImply (P : AffineTargetMorphismProperty)
    (hP : P.toProperty.RespectsIso)
    (H : ∀ {X Y : Scheme.{u}} (f : X ⟶ Y),
      (∃ (𝒰 : Scheme.OpenCover.{u} Y) (_ : ∀ i, IsAffine (𝒰.obj i)),
        ∀ i : 𝒰.J, P (pullback.snd : (𝒰.pullbackCover f).obj i ⟶ 𝒰.obj i)) →
        ∀ {U : Scheme} (g : U ⟶ Y) [IsAffine U] [IsOpenImmersion g],
          P (pullback.snd : pullback f g ⟶ U)) :
    P.IsLocal := by
  refine' ⟨hP, _, _⟩
  · introv h
    haveI : IsAffine _ := (topIsAffineOpen Y).basicOpenIsAffine r
    delta morphismRestrict
    rw [affine_cancel_left_isIso hP]
    refine' @H _ _ f ⟨Scheme.openCoverOfIsIso (𝟙 Y), _, _⟩ _ (Y.ofRestrict _) _ _
    · intro i; dsimp; infer_instance
    · intro i; dsimp
      rwa [← Category.comp_id pullback.snd, ← pullback.condition, affine_cancel_left_isIso hP]
  · introv hs hs'
    replace hs := ((topIsAffineOpen Y).basicOpen_union_eq_self_iff _).mpr hs
    have := H f ⟨Y.openCoverOfSuprEqTop _ hs, ?_, ?_⟩ (𝟙 _)
    rwa [← Category.comp_id pullback.snd, ← pullback.condition, affine_cancel_left_isIso hP]
      at this
    · intro i; exact (topIsAffineOpen Y).basicOpenIsAffine _
    · rintro (i : s)
      specialize hs' i
      haveI : IsAffine _ := (topIsAffineOpen Y).basicOpenIsAffine i.1
      delta morphismRestrict at hs'
      rwa [affine_cancel_left_isIso hP] at hs'
#align algebraic_geometry.affine_target_morphism_property.is_local_of_open_cover_imply AlgebraicGeometry.AffineTargetMorphismProperty.isLocalOfOpenCoverImply

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c7a80ec5bb2f1f9a9a2a0900875b58687087a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
