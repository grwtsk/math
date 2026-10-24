# AffineTargetMorphismProperty.IsLocal.affine_target_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdc58f30-8864-f5e2-cdab-7f8d3f24a29f",
  "kind": "theorem",
  "lexical_name": "AffineTargetMorphismProperty.IsLocal.affine_target_iff",
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
  "slug": "affinetargetmorphismproperty-islocal-affine-target-iff--cc6479059117765509ceecb2",
  "source": {
    "blob": "e46573ee1ece9b543a3af061d0730edcca8f6617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 329,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc6479059117765509ceecb2799cb5f6f5264dd9e36ecaf5f47299e5adddabcb",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdc58f30-8864-f5e2-cdab-7f8d3f24a29f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineTargetMorphismProperty.IsLocal.affine_target_iff {P : AffineTargetMorphismProperty}
    (hP : P.IsLocal) {X Y : Scheme.{u}} (f : X ⟶ Y) [IsAffine Y] :
    targetAffineLocally P f ↔ P f := by
  haveI : ∀ i, IsAffine (Scheme.OpenCover.obj (Scheme.openCoverOfIsIso (𝟙 Y)) i) := fun i => by
    dsimp; infer_instance
  rw [hP.affine_openCover_iff f (Scheme.openCoverOfIsIso (𝟙 Y))]
  trans P (pullback.snd : pullback f (𝟙 _) ⟶ _)
  · exact ⟨fun H => H PUnit.unit, fun H _ => H⟩
  rw [← Category.comp_id pullback.snd, ← pullback.condition, affine_cancel_left_isIso hP.1]
#align algebraic_geometry.affine_target_morphism_property.is_local.affine_target_iff AlgebraicGeometry.AffineTargetMorphismProperty.IsLocal.affine_target_iff

/-- We say that `P : MorphismProperty Scheme` is local at the target if
1. `P` respects isomorphisms.
2. If `P` holds for `f : X ⟶ Y`, then `P` holds for `f ∣_ U` for any `U`.
3. If `P` holds for `f ∣_ U` for an open cover `U` of `Y`, then `P` holds for `f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46573ee1ece9b543a3af061d0730edcca8f6617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
