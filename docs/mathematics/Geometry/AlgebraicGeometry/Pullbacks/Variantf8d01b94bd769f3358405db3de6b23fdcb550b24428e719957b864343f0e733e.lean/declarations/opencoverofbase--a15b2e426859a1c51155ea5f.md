# openCoverOfBase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35d73103690f1a23ffec7dfdf5be2e48d1218b801b65d69ba2a4bdd9df6ffb42",
  "kind": "def",
  "lexical_name": "openCoverOfBase",
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
  "slug": "opencoverofbase--a15b2e426859a1c51155ea5f",
  "source": {
    "blob": "3d24fc40b93b703044deb4ca4f8c3b2615a593e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 526,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variantf8d01b94bd769f3358405db3de6b23fdcb550b24428e719957b864343f0e733e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a15b2e426859a1c51155ea5f36f62ed21e8930cbb3e5eafd264ac970db514207",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Pullbacks/Variantf8d01b94bd769f3358405db3de6b23fdcb550b24428e719957b864343f0e733e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35d73103690f1a23ffec7dfdf5be2e48d1218b801b65d69ba2a4bdd9df6ffb42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def openCoverOfBase (𝒰 : OpenCover Z) (f : X ⟶ Z) (g : Y ⟶ Z) : OpenCover (pullback f g) := by
  apply
    (openCoverOfBase'.{u, u} 𝒰 f g).copy 𝒰.J
      (fun i =>
        pullback (pullback.snd _ _ : pullback f (𝒰.map i) ⟶ _)
          (pullback.snd _ _ : pullback g (𝒰.map i) ⟶ _))
      (fun i =>
        pullback.map _ _ _ _ (pullback.fst _ _) (pullback.fst _ _) (𝒰.map i)
          pullback.condition.symm pullback.condition.symm)
      ((Equiv.prodPUnit 𝒰.J).symm.trans (Equiv.sigmaEquivProd 𝒰.J PUnit).symm) fun _ => Iso.refl _
  intro i
  rw [Iso.refl_hom, Category.id_comp, openCoverOfBase'_map]
  ext : 1 <;>
  · simp only [limit.lift_π, PullbackCone.mk_pt, PullbackCone.mk_π_app, Equiv.trans_apply,
      Equiv.prodPUnit_symm_apply, Category.assoc, limit.lift_π_assoc, cospan_left, Category.comp_id,
      limit.isoLimitCone_inv_π_assoc, PullbackCone.π_app_left, IsPullback.cone_fst,
      pullbackSymmetry_hom_comp_snd_assoc, limit.isoLimitCone_inv_π,
      PullbackCone.π_app_right, IsPullback.cone_snd, pullbackSymmetry_hom_comp_fst_assoc]
    rfl

variable (f : X ⟶ Y) (𝒰 : Y.OpenCover) (𝒱 : ∀ i, ((𝒰.pullbackCover f).obj i).OpenCover)

/--
Given `𝒰 i` covering `Y` and `𝒱 i j` covering `𝒰 i`, this is the open cover
`𝒱 i j₁ ×[𝒰 i] 𝒱 i j₂` ranging over all `i`, `j₁`, `j₂`.
-/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Pullbacks/Variantf8d01b94bd769f3358405db3de6b23fdcb550b24428e719957b864343f0e733e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variantf8d01b94bd769f3358405db3de6b23fdcb550b24428e719957b864343f0e733e.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d24fc40b93b703044deb4ca4f8c3b2615a593e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
