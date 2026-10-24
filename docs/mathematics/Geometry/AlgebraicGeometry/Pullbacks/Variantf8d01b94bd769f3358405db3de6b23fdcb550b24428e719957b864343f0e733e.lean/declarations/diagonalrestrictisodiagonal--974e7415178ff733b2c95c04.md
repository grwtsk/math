# diagonalRestrictIsoDiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d7f9dc1f41547c3f0b884bcf7c08b446648cb870d33ee4754a94d086fe550c2",
  "kind": "def",
  "lexical_name": "diagonalRestrictIsoDiagonal",
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
  "slug": "diagonalrestrictisodiagonal--974e7415178ff733b2c95c04",
  "source": {
    "blob": "3d24fc40b93b703044deb4ca4f8c3b2615a593e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 572,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variantf8d01b94bd769f3358405db3de6b23fdcb550b24428e719957b864343f0e733e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:974e7415178ff733b2c95c043a58b4ed6081f3e131f6ac6d0abf5073862ca8b5",
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

Occurrence: `declaration:2d7f9dc1f41547c3f0b884bcf7c08b446648cb870d33ee4754a94d086fe550c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def diagonalRestrictIsoDiagonal (i j) :
    Arrow.mk (pullback.diagonal f ∣_ ((diagonalCover f 𝒰 𝒱).map ⟨i, j, j⟩).opensRange) ≅
    Arrow.mk (pullback.diagonal ((𝒱 i).map j ≫ pullback.snd _ _)) := by
  refine (morphismRestrictOpensRange _ _).trans ?_
  refine Arrow.isoMk ?_ (Iso.refl _) ?_
  · exact pullback.congrHom rfl (diagonalCover_map _ _ _ _) ≪≫
      pullbackDiagonalMapIso _ _ _ _ ≪≫ (asIso (pullback.diagonal _)).symm
  have H : pullback.snd (pullback.diagonal f) ((diagonalCover f 𝒰 𝒱).map ⟨i, (j, j)⟩) ≫
      pullback.snd _ _ = pullback.snd _ _ ≫ pullback.fst _ _ := by
    rw [← cancel_mono ((𝒱 i).map _)]
    apply pullback.hom_ext
    · trans pullback.snd (pullback.diagonal f) ((diagonalCover f 𝒰 𝒱).map ⟨i, (j, j)⟩) ≫
        (diagonalCover f 𝒰 𝒱).map _ ≫ pullback.snd _ _
      · simp [diagonalCover_map]
      symm
      trans pullback.snd (pullback.diagonal f) ((diagonalCover f 𝒰 𝒱).map ⟨i, (j, j)⟩) ≫
        (diagonalCover f 𝒰 𝒱).map _ ≫ pullback.fst _ _
      · simp [diagonalCover_map]
      · rw [← pullback.condition_assoc, ← pullback.condition_assoc]
        simp
    · simp [pullback.condition, Cover.pullbackHom]
  dsimp [Cover.pullbackHom] at H ⊢
  apply pullback.hom_ext
  · simp only [Category.assoc, pullback.diagonal_fst, Category.comp_id]
    simp only [← Category.assoc, IsIso.comp_inv_eq]
    apply pullback.hom_ext <;> simp [H]
  · simp only [Category.assoc, pullback.diagonal_snd, Category.comp_id]
    simp only [← Category.assoc, IsIso.comp_inv_eq]
    apply pullback.hom_ext <;> simp [H]

end Pullback

end AlgebraicGeometry.Scheme

namespace AlgebraicGeometry

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Pullbacks/Variantf8d01b94bd769f3358405db3de6b23fdcb550b24428e719957b864343f0e733e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variantf8d01b94bd769f3358405db3de6b23fdcb550b24428e719957b864343f0e733e.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d24fc40b93b703044deb4ca4f8c3b2615a593e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
