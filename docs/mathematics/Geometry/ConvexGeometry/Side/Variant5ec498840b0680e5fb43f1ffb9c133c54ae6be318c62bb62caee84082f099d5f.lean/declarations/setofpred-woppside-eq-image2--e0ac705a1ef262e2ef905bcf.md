# setOfPred_wOppSide_eq_image2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8c54779-70cb-6408-4c96-8d55472646d9",
  "kind": "theorem",
  "lexical_name": "setOfPred_wOppSide_eq_image2",
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
  "slug": "setofpred-woppside-eq-image2--e0ac705a1ef262e2ef905bcf",
  "source": {
    "blob": "57630cbda5d143c6bb8150def59664c519757323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 763,
    "line": 743,
    "path": "GRWTSK/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0ac705a1ef262e2ef905bcfc98e20b5fab8b4529fb20882220c7fb6703455c2",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8c54779-70cb-6408-4c96-8d55472646d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 743–763.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setOfPred_wOppSide_eq_image2 {s : AffineSubspace R P} {x p : P} (hx : x ∉ s) (hp : p ∈ s) :
    { y | s.WOppSide x y } = Set.image2 (fun (t : R) q => t • (x -ᵥ p) +ᵥ q) (Set.Iic 0) s := by
  ext y
  simp_rw [Set.mem_ofPred, Set.mem_image2, Set.mem_Iic]
  constructor
  · rw [wOppSide_iff_exists_left hp, or_iff_right hx]
    rintro ⟨p₂, hp₂, h | h | ⟨r₁, r₂, hr₁, hr₂, h⟩⟩
    · rw [vsub_eq_zero_iff_eq] at h
      exact False.elim (hx (h.symm ▸ hp))
    · rw [vsub_eq_zero_iff_eq] at h
      refine ⟨0, le_rfl, p₂, hp₂, ?_⟩
      simp [h]
    · refine ⟨-r₁ / r₂, (div_neg_of_neg_of_pos (Left.neg_neg_iff.2 hr₁) hr₂).le, p₂, hp₂, ?_⟩
      rw [div_eq_inv_mul, ← smul_smul, neg_smul, h, smul_neg, smul_smul,
        inv_mul_cancel₀ hr₂.ne.symm, one_smul, neg_vsub_eq_vsub_rev, vsub_vadd]
  · rintro ⟨t, ht, p', hp', rfl⟩
    exact wOppSide_smul_vsub_vadd_right x hp hp' ht

@[deprecated (since := "2026-07-09")]
alias setOf_wOppSide_eq_image2 := setOfPred_wOppSide_eq_image2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean#L743).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57630cbda5d143c6bb8150def59664c519757323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
