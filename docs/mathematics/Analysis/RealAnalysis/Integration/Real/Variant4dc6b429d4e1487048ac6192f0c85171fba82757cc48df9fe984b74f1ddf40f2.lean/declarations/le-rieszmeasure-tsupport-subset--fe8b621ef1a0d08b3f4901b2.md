# le_rieszMeasure_tsupport_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bec1a1f1ffb3ef5fcc820b3ff68054d69a624b39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dc6b429d4e1487048ac6192f0c85171fba82757cc48df9fe984b74f1ddf40f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf2c7887-908a-663e-d6e8-6eb772e980ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19d18618-5ea8-0cbb-8325-4b5d8c9508a5",
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
  "slug": "le-rieszmeasure-tsupport-subset--fe8b621ef1a0d08b3f4901b2",
  "source": {
    "blob": "bec1a1f1ffb3ef5fcc820b3ff68054d69a624b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Real/Variant4dc6b429d4e1487048ac6192f0c85171fba82757cc48df9fe984b74f1ddf40f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe8b621ef1a0d08b3f4901b2745dfe3955bc7383894ea104f51c8fbb5b8ca365",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Real/Variant4dc6b429d4e1487048ac6192f0c85171fba82757cc48df9fe984b74f1ddf40f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19d18618-5ea8-0cbb-8325-4b5d8c9508a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–75.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Real/Variant4dc6b429d4e1487048ac6192f0c85171fba82757cc48df9fe984b74f1ddf40f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Real/Variant4dc6b429d4e1487048ac6192f0c85171fba82757cc48df9fe984b74f1ddf40f2.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bec1a1f1ffb3ef5fcc820b3ff68054d69a624b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
