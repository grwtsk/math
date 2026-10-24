# quasi_compact_affineProperty_iff_quasiSeparatedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64d2a0a40efa2d762aac283a9612445e6427169d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da0a12cd-7a31-edd6-499b-6e62ccd3077d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35537074-b169-d605-c9f8-afb5ed305aad",
  "kind": "theorem",
  "lexical_name": "quasi_compact_affineProperty_iff_quasiSeparatedSpace",
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
  "slug": "quasi-compact-affineproperty-iff-quasiseparatedspace--dc9787614165546bb5e6a041",
  "source": {
    "blob": "64d2a0a40efa2d762aac283a9612445e6427169d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc9787614165546bb5e6a0415d6300ebbdc607d604bf036cef85d38196fe8686",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35537074-b169-d605-c9f8-afb5ed305aad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quasi_compact_affineProperty_iff_quasiSeparatedSpace {X Y : Scheme} [IsAffine Y]
    (f : X ⟶ Y) : QuasiCompact.affineProperty.diagonal f ↔ QuasiSeparatedSpace X.carrier := by
  delta AffineTargetMorphismProperty.diagonal
  rw [quasiSeparatedSpace_iff_affine]
  constructor
  · intro H U V
    haveI : IsAffine _ := U.2
    haveI : IsAffine _ := V.2
    let g : pullback (X.ofRestrict U.1.openEmbedding) (X.ofRestrict V.1.openEmbedding) ⟶ X :=
      pullback.fst ≫ X.ofRestrict _
    -- Porting note: `inferInstance` does not work here
    have : IsOpenImmersion g := PresheafedSpace.IsOpenImmersion.comp _ _
    have e := Homeomorph.ofEmbedding _ this.base_open.toEmbedding
    rw [IsOpenImmersion.range_pullback_to_base_of_left] at e
    erw [Subtype.range_coe, Subtype.range_coe] at e
    rw [isCompact_iff_compactSpace]
    exact @Homeomorph.compactSpace _ _ _ _ (H _ _) e
  · introv H h₁ h₂
    let g : pullback f₁ f₂ ⟶ X := pullback.fst ≫ f₁
    -- Porting note: `inferInstance` does not work here
    have : IsOpenImmersion g := PresheafedSpace.IsOpenImmersion.comp _ _
    have e := Homeomorph.ofEmbedding _ this.base_open.toEmbedding
    rw [IsOpenImmersion.range_pullback_to_base_of_left] at e
    simp_rw [isCompact_iff_compactSpace] at H
    exact
      @Homeomorph.compactSpace _ _ _ _
        (H ⟨⟨_, h₁.base_open.open_range⟩, rangeIsAffineOpenOfOpenImmersion _⟩
          ⟨⟨_, h₂.base_open.open_range⟩, rangeIsAffineOpenOfOpenImmersion _⟩)
        e.symm
#align algebraic_geometry.quasi_compact_affine_property_iff_quasi_separated_space AlgebraicGeometry.quasi_compact_affineProperty_iff_quasiSeparatedSpace

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64d2a0a40efa2d762aac283a9612445e6427169d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
