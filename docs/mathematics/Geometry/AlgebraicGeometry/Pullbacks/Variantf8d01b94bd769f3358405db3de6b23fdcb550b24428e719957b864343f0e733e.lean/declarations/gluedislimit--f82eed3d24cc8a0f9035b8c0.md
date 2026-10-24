# gluedIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:299974bf3578fc89d1895d9fcac6032c28e06b1d713b2a640fd13c21fba3b5ce",
  "kind": "def",
  "lexical_name": "gluedIsLimit",
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
  "slug": "gluedislimit--f82eed3d24cc8a0f9035b8c0",
  "source": {
    "blob": "3d24fc40b93b703044deb4ca4f8c3b2615a593e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 395,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variantf8d01b94bd769f3358405db3de6b23fdcb550b24428e719957b864343f0e733e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f82eed3d24cc8a0f9035b8c018ce13d731bb917548db15378d80d88dc7efad2d",
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

Occurrence: `declaration:299974bf3578fc89d1895d9fcac6032c28e06b1d713b2a640fd13c21fba3b5ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def gluedIsLimit : IsLimit (PullbackCone.mk _ _ (p_comm 𝒰 f g)) := by
  apply PullbackCone.isLimitAux'
  intro s
  refine ⟨gluedLift 𝒰 f g s, gluedLift_p1 𝒰 f g s, gluedLift_p2 𝒰 f g s, ?_⟩
  intro m h₁ h₂
  simp_rw [PullbackCone.mk_pt, PullbackCone.mk_π_app] at h₁ h₂
  apply (𝒰.pullbackCover s.fst).hom_ext
  intro i
  rw [gluedLift, (𝒰.pullbackCover s.fst).ι_glueMorphisms, 𝒰.pullbackCover_map]
  rw [← cancel_epi
    (pullbackRightPullbackFstIso (p1 𝒰 f g) (𝒰.map i) m ≪≫ pullback.congrHom h₁ rfl).hom,
    Iso.trans_hom, Category.assoc, pullback.congrHom_hom, pullback.lift_fst_assoc,
    Category.comp_id, pullbackRightPullbackFstIso_hom_fst_assoc, pullback.condition]
  conv_lhs => rhs; rw [← pullbackP1Iso_hom_ι]
  simp_rw [← Category.assoc]
  congr 1
  apply pullback.hom_ext
  · simp_rw [Category.assoc, pullbackP1Iso_hom_fst, pullback.lift_fst, Category.comp_id,
      pullbackSymmetry_hom_comp_fst, pullback.lift_snd, Category.comp_id,
      pullbackRightPullbackFstIso_hom_snd]
  · simp_rw [Category.assoc, pullbackP1Iso_hom_snd, pullback.lift_snd,
      pullbackSymmetry_hom_comp_snd_assoc, pullback.lift_fst_assoc, Category.comp_id,
      pullbackRightPullbackFstIso_hom_fst_assoc, ← pullback.condition_assoc, h₂]

include 𝒰 in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Pullbacks/Variantf8d01b94bd769f3358405db3de6b23fdcb550b24428e719957b864343f0e733e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variantf8d01b94bd769f3358405db3de6b23fdcb550b24428e719957b864343f0e733e.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d24fc40b93b703044deb4ca4f8c3b2615a593e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
