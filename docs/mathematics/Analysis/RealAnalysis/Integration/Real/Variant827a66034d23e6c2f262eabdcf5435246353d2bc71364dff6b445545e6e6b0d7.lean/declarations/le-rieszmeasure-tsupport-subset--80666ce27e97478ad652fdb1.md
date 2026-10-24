# le_rieszMeasure_tsupport_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c777f789-abeb-e415-13ec-ba103b2b1099",
  "kind": "lemma",
  "lexical_name": "le_rieszMeasure_tsupport_subset",
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
  "slug": "le-rieszmeasure-tsupport-subset--80666ce27e97478ad652fdb1",
  "source": {
    "blob": "f9230d0e1cf3676bffc7b702877c6614d6fc8e90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80666ce27e97478ad652fdb122317fc4e5bff823b3187599cb4b6cd1f88fbdf9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c777f789-abeb-e415-13ec-ba103b2b1099`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_rieszMeasure_tsupport_subset {f : C_c(X, ℝ)} (hf : ∀ (x : X), 0 ≤ f x ∧ f x ≤ 1)
    {V : Set X} (hV : tsupport f ⊆ V) : ENNReal.ofReal (Λ f) ≤ rieszMeasure hΛ V := by
  apply le_trans _ (measure_mono hV)
  have := Content.measure_eq_content_of_regular (rieszContent (toNNRealLinear Λ hΛ))
    (contentRegular_rieszContent (toNNRealLinear Λ hΛ)) (⟨tsupport f, f.hasCompactSupport⟩)
  rw [← Compacts.coe_mk (tsupport f) f.hasCompactSupport, rieszMeasure, this, rieszContent,
    ENNReal.ofReal_eq_coe_nnreal (hΛ f fun x ↦ (hf x).1), Content.mk_apply, ENNReal.coe_le_coe]
  apply le_iff_forall_pos_le_add.mpr
  intro _ hε
  obtain ⟨g, hg⟩ := exists_lt_rieszContentAux_add_pos (toNNRealLinear Λ hΛ)
    ⟨tsupport f, f.hasCompactSupport⟩ (Real.toNNReal_pos.mpr hε)
  simp_rw [NNReal.val_eq_coe, Real.toNNReal_coe] at hg
  refine (monotone_of_nonneg hΛ ?_).trans hg.2.le
  intro x
  by_cases hx : x ∈ tsupport f
  · simpa using le_trans (hf x).2 (hg.1 x hx)
  · simp [image_eq_zero_of_notMem_tsupport hx]

/-- If `f` assumes the value `1` on a compact set `K` then `rieszMeasure K ≤ Λ f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9230d0e1cf3676bffc7b702877c6614d6fc8e90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
