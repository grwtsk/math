# Spec.mapMulEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef64264024b1b23076329d6f843e480a292598ec06f7e8df4a8fcdafbec401be",
  "kind": "def",
  "lexical_name": "Spec.mapMulEquiv",
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
  "slug": "spec-mapmulequiv--ac1f7bb687bb0fc1ebeca174",
  "source": {
    "blob": "98db2853159f11822039f1a58bba251900d0f540",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 270,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac1f7bb687bb0fc1ebeca174af81aba1766cf4a3f7cc64a9520f2171596df275",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef64264024b1b23076329d6f843e480a292598ec06f7e8df4a8fcdafbec401be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Spec.mapMulEquiv {R S T : Type u} [CommRing R] [CommRing S] [CommRing T] [Bialgebra R S]
    [Algebra R T] :
    WithConv (S →ₐ[R] T) ≃*
      ((Spec ↧T).asOver (Spec ↧R) ⟶ (Spec ↧S).asOver (Spec ↧R)) where
  toFun f := (Spec.map (CommRingCat.ofHom f.ofConv.toRingHom)).asOver _
  invFun f := ⟨(Spec.preimage f.left).hom, by
    suffices CommRingCat.ofHom (algebraMap R S) ≫ Spec.preimage f.left =
      CommRingCat.ofHom (algebraMap R T) from fun r ↦ congr($this r)
    apply Spec.map_injective
    simpa [-comp_over] using! f.w⟩
  left_inv f := by
    apply WithConv.ofConv_injective
    apply AlgHom.coe_ringHom_injective
    simp
  right_inv f := by ext1; simp
  map_mul' f g := by
    ext1
    dsimp [AlgHom.convMul_def, AlgHom.comp_toRingHom, Hom.mul_def]
    simp only [← Category.assoc, Spec.map_comp, mul_spec_asOver_spec_left]
    congr 1
    rw [← Iso.comp_inv_eq]
    ext
    all_goals
    · simp only [specOverSpec_over, ← Spec.map_comp, ← CommRingCat.ofHom_comp,
      ← AlgHom.comp_toRingHom, Category.assoc, pullbackSpecIso_inv_fst, pullbackSpecIso_inv_snd,
      limit.lift_π, PullbackCone.mk_pt, PullbackCone.mk_π_app]
      congr 3
      ext; simp

/-- The adjunction between `Spec` and `Γ` as functors between commutative `R`-algebras and
schemes over `Spec R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98db2853159f11822039f1a58bba251900d0f540` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
