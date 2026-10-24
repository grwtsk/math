# isOpenImmersion_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5eb4c7e7be0c7616457533b32df8168fb0f690415edfa4f653192ad551981c84",
  "kind": "instance",
  "lexical_name": "isOpenImmersion_diagonal",
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
  "slug": "isopenimmersion-diagonal--8866f214ab3555444be1e694",
  "source": {
    "blob": "8827ae777da5709621d4d8173cb2d41708314d5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 123,
    "path": "GRWTSK/Algebra/FormallyUnramified/Variantb5178b7fbd5ba6d78e12480d829773ad16b72014c0727d559a0a3b6d24a60ba1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8866f214ab3555444be1e694c22287c576055b6d7a1f357102bd3bd5b1f7e8b6",
  "verification": {
    "reference": "docs/verification/Algebra/FormallyUnramified/Variantb5178b7fbd5ba6d78e12480d829773ad16b72014c0727d559a0a3b6d24a60ba1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5eb4c7e7be0c7616457533b32df8168fb0f690415edfa4f653192ad551981c84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isOpenImmersion_diagonal [FormallyUnramified f] [LocallyOfFiniteType f] :
    IsOpenImmersion (pullback.diagonal f) := by
  wlog hX : (∃ S, X = Spec S) ∧ ∃ R, Y = Spec R
  · let 𝒰Y := Y.affineCover
    let 𝒰X (j : (Y.affineCover.pullback₁ f).I₀) :
        ((Y.affineCover.pullback₁ f).X j).OpenCover := Scheme.affineCover _
    apply IsZariskiLocalAtTarget.of_range_subset_iSup _
      (Scheme.Pullback.range_diagonal_subset_diagonalCoverDiagonalRange f 𝒰Y 𝒰X)
    intro ⟨i, j⟩
    rw [arrow_mk_iso_iff (P := @IsOpenImmersion)
      (Scheme.Pullback.diagonalRestrictIsoDiagonal f 𝒰Y 𝒰X i j)]
    have hu : FormallyUnramified ((𝒰X i).f j ≫ pullback.snd f (𝒰Y.f i)) :=
      comp_mem _ _ _ inferInstance (pullback_snd _ _ inferInstance)
    have hfin : LocallyOfFiniteType ((𝒰X i).f j ≫ pullback.snd f (𝒰Y.f i)) :=
      comp_mem _ _ _ inferInstance (pullback_snd _ _ inferInstance)
    exact this _ ⟨⟨_, rfl⟩, ⟨_, rfl⟩⟩
  obtain ⟨⟨S, rfl⟩, R, rfl⟩ := hX
  obtain ⟨f, rfl⟩ := Spec.map_surjective f
  rw [HasRingHomProperty.Spec_iff (P := @FormallyUnramified),
    HasRingHomProperty.Spec_iff (P := @LocallyOfFiniteType)] at *
  algebraize [f.hom]
  rw [show f = CommRingCat.ofHom (algebraMap R S) from rfl, diagonal_SpecMap R S,
    cancel_right_of_respectsIso (P := @IsOpenImmersion)]
  infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FormallyUnramified/Variantb5178b7fbd5ba6d78e12480d829773ad16b72014c0727d559a0a3b6d24a60ba1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FormallyUnramified/Variantb5178b7fbd5ba6d78e12480d829773ad16b72014c0727d559a0a3b6d24a60ba1.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8827ae777da5709621d4d8173cb2d41708314d5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
