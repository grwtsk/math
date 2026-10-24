# targetAffineLocally_affineAnd_iff_affineLocally

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca12c0c3-028f-9ff1-5413-6d5658690b1b",
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
  "slug": "targetaffinelocally-affineand-iff-affinelocally--d57fe778e5b0cbab845b9b40",
  "source": {
    "blob": "5250e2e2a0289c97882a8956b7d5606cce0aa99f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 144,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d57fe778e5b0cbab845b9b40a8fa2309ae7c590bd128c3de4ff01bd7fcac98c3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca12c0c3-028f-9ff1-5413-6d5658690b1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma targetAffineLocally_affineAnd_iff_affineLocally (hQ : RingHom.PropertyIsLocal Q)
    {X Y : Scheme.{u}} (f : X ⟶ Y) :
    targetAffineLocally (affineAnd Q) f ↔ IsAffineHom f ∧ affineLocally Q f := by
  haveI : HasRingHomProperty (affineLocally Q) Q := ⟨hQ, rfl⟩
  rw [targetAffineLocally_affineAnd_iff' hQ.respectsIso]
  simp only [and_congr_right_iff]
  intro hf
  constructor
  · wlog hY : IsAffine Y
    · intro h
      rw [IsLocalAtTarget.iff_of_iSup_eq_top (P := affineLocally Q)
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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5250e2e2a0289c97882a8956b7d5606cce0aa99f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
