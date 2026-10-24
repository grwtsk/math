# targetAffineLocally_affineAnd_iff_affineLocally

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ae0f593f51dc0954b5bce2b10aa3d37ecc288f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9dd7f68-094a-657d-9b69-57ace81cce1b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:daba153a-1f9b-64b0-54e5-b540e1934a75",
  "kind": "lemma",
  "lexical_name": "targetAffineLocally_affineAnd_iff_affineLocally",
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
  "slug": "targetaffinelocally-affineand-iff-affinelocally--27bb942f6cf98aba8a8b2c54",
  "source": {
    "blob": "0ae0f593f51dc0954b5bce2b10aa3d37ecc288f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 143,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27bb942f6cf98aba8a8b2c545304ae4d2afabde95fb345e2659a79a971262e0b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daba153a-1f9b-64b0-54e5-b540e1934a75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma targetAffineLocally_affineAnd_iff_affineLocally (hQ : RingHom.PropertyIsLocal Q)
    {X Y : Scheme.{u}} (f : X ⟶ Y) :
    targetAffineLocally (affineAnd Q) f ↔ IsAffineHom f ∧ affineLocally Q f := by
  have : HasRingHomProperty (affineLocally Q) Q := ⟨hQ, rfl⟩
  rw [targetAffineLocally_affineAnd_iff' hQ.respectsIso]
  simp only [and_congr_right_iff]
  intro hf
  constructor
  · wlog hY : IsAffine Y
    · intro h
      rw [IsZariskiLocalAtTarget.iff_of_iSup_eq_top (P := affineLocally Q)
        _ (iSup_affineOpens_eq_top _)]
      intro U
      have : IsAffine (f ⁻¹ᵁ U) := hf.isAffine_preimage U U.2
      rw [HasRingHomProperty.iff_of_isAffine (P := affineLocally Q),
        morphismRestrict_appTop, CommRingCat.hom_comp, hQ.respectsIso.cancel_right_isIso]
      apply h
      rw [Scheme.Opens.ι_image_top]
      exact U.2
    intro h
    have : IsAffine X := isAffine_of_isAffineHom f
    rw [HasRingHomProperty.iff_of_isAffine (P := affineLocally Q)]
    exact h ⊤ (isAffineOpen_top Y)
  · intro h U hU
    rw [affineLocally_iff_affineOpens_le] at h
    rw [f.app_eq_appLE]
    exact h ⟨U, hU⟩ ⟨f ⁻¹ᵁ U, hf.isAffine_preimage U hU⟩ (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ae0f593f51dc0954b5bce2b10aa3d37ecc288f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
