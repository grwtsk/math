# isClosedImmersion_diagonal_restrict_diagonalCoverDiagonalRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "461406237cc752198497cd5e4b9b02ea38659dae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/78ccf6739ca2f5a54267ee7f5620037db85b513e2f208d9f9ae863a60e8f0cd6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e335c6d9-e2b9-ce45-c60b-d6be07bbcca9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dcf1c855-a270-ded3-a0d3-41881627e8e7",
  "kind": "lemma",
  "lexical_name": "isClosedImmersion_diagonal_restrict_diagonalCoverDiagonalRange",
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
  "slug": "isclosedimmersion-diagonal-restrict-diagonalcoverdiagonalrange--388f936c62108313a7a73c24",
  "source": {
    "blob": "461406237cc752198497cd5e4b9b02ea38659dae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 164,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant78ccf6739ca2f5a54267ee7f5620037db85b513e2f208d9f9ae863a60e8f0cd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:388f936c62108313a7a73c24116c7a2f4ffc9c871986f05224c90e4e3ae0ec18",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Separated/Variant78ccf6739ca2f5a54267ee7f5620037db85b513e2f208d9f9ae863a60e8f0cd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcf1c855-a270-ded3-a0d3-41881627e8e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosedImmersion_diagonal_restrict_diagonalCoverDiagonalRange
    [∀ i, IsAffine (𝒰.obj i)] [∀ i j, IsAffine ((𝒱 i).obj j)] :
    IsClosedImmersion (pullback.diagonal f ∣_ diagonalCoverDiagonalRange f 𝒰 𝒱) := by
  let U : (Σ i, (𝒱 i).J) → (diagonalCoverDiagonalRange f 𝒰 𝒱).toScheme.Opens := fun i ↦
    (diagonalCoverDiagonalRange f 𝒰 𝒱).ι ⁻¹ᵁ ((diagonalCover f 𝒰 𝒱).map ⟨i.1, i.2, i.2⟩).opensRange
  have hU (i) : (diagonalCoverDiagonalRange f 𝒰 𝒱).ι ''ᵁ U i =
      ((diagonalCover f 𝒰 𝒱).map ⟨i.1, i.2, i.2⟩).opensRange := by
    rw [TopologicalSpace.Opens.functor_obj_map_obj, inf_eq_right, Hom.image_top_eq_opensRange,
      Opens.opensRange_ι]
    exact le_iSup (fun i : Σ i, (𝒱 i).J ↦ ((diagonalCover f 𝒰 𝒱).map ⟨i.1, i.2, i.2⟩).opensRange) i
  have hf : iSup U = ⊤ := (TopologicalSpace.Opens.map_iSup _ _).symm.trans
    (diagonalCoverDiagonalRange f 𝒰 𝒱).ι_preimage_self
  rw [IsLocalAtTarget.iff_of_iSup_eq_top (P := @IsClosedImmersion) _ hf]
  intro i
  rw [MorphismProperty.arrow_mk_iso_iff (P := @IsClosedImmersion) (morphismRestrictRestrict _ _ _),
    MorphismProperty.arrow_mk_iso_iff (P := @IsClosedImmersion) (morphismRestrictEq _ (hU i)),
    MorphismProperty.arrow_mk_iso_iff (P := @IsClosedImmersion) (diagonalRestrictIsoDiagonal ..)]
  infer_instance

@[stacks 0DVA]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Separated/Variant78ccf6739ca2f5a54267ee7f5620037db85b513e2f208d9f9ae863a60e8f0cd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant78ccf6739ca2f5a54267ee7f5620037db85b513e2f208d9f9ae863a60e8f0cd6.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `461406237cc752198497cd5e4b9b02ea38659dae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
