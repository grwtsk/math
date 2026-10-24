# sOppSide_affineSpan_faceOpposite_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52811f6c-c59a-95dd-e876-b3451c53770d",
  "kind": "lemma",
  "lexical_name": "sOppSide_affineSpan_faceOpposite_iff",
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
  "slug": "soppside-affinespan-faceopposite-iff--8a4098ae3e20a7a958f17a96",
  "source": {
    "blob": "57630cbda5d143c6bb8150def59664c519757323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1018,
    "line": 997,
    "path": "GRWTSK/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a4098ae3e20a7a958f17a9637eb997ff2abb0d61169d3a7d116971ce06aedf4",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52811f6c-c59a-95dd-e876-b3451c53770d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 997–1018.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sOppSide_affineSpan_faceOpposite_iff {w₁ w₂ : Fin (n + 1) → R} (hw₁ : ∑ j, w₁ j = 1)
    (hw₂ : ∑ j, w₂ j = 1) {i : Fin (n + 1)} :
    (affineSpan R (Set.range (s.faceOpposite i).points)).SOppSide
      (Finset.univ.affineCombination R s.points w₁)
      (Finset.univ.affineCombination R s.points w₂) ↔
        SignType.sign (w₁ i) = -SignType.sign (w₂ i) ∧ w₁ i ≠ 0 := by
  refine ⟨fun h ↦ ?_, fun ⟨hs, h0⟩ ↦ ?_⟩
  · have h0 : w₁ i ≠ 0 :=
      (s.affineCombination_mem_affineSpan_faceOpposite_iff hw₁).not.1 h.left_notMem
    refine ⟨?_, h0⟩
    have h0' : w₂ i ≠ 0 :=
      (s.affineCombination_mem_affineSpan_faceOpposite_iff hw₂).not.1 h.right_notMem
    rcases sign_eq_sign_or_eq_neg h0 h0' with hs | hs
    · exfalso
      exact (s.sSameSide_affineSpan_faceOpposite_of_sign_eq hw₁ hw₂ hs h0).wSameSide.not_sOppSide h
    · exact hs
  · rcases h0.lt_or_gt with h' | h'
    · rw [sign_neg h', neg_inj, eq_comm, sign_eq_one_iff] at hs
      exact (s.sOppSide_affineSpan_faceOpposite_of_pos_of_neg hw₂ hw₁ hs h').symm
    · rw [sign_pos h', eq_comm, neg_eq_iff_eq_neg, sign_eq_neg_one_iff] at hs
      exact s.sOppSide_affineSpan_faceOpposite_of_pos_of_neg hw₁ hw₂ h' hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean#L997).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57630cbda5d143c6bb8150def59664c519757323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
