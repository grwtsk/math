# Complex.subfield_eq_of_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9c19f57c4d52398218b79bc6a3a1e4b167def31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58505fd08df1b36850543f25fba57267bbd559732e035d92073dfbd96ddfa8e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:463adbe5-54be-d75b-d5c1-b9abb86d9a88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d0e40eb-9a39-ff2d-4016-18d1e5fbe7b3",
  "kind": "theorem",
  "lexical_name": "Complex.subfield_eq_of_closed",
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
  "slug": "complex-subfield-eq-of-closed--0974f044084b2834550219e3",
  "source": {
    "blob": "c9c19f57c4d52398218b79bc6a3a1e4b167def31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 24,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variant58505fd08df1b36850543f25fba57267bbd559732e035d92073dfbd96ddfa8e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0974f044084b2834550219e3f6ee5f70120c1608dd6ab9a554427f290ce9a32d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variant58505fd08df1b36850543f25fba57267bbd559732e035d92073dfbd96ddfa8e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d0e40eb-9a39-ff2d-4016-18d1e5fbe7b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Complex.subfield_eq_of_closed {K : Subfield ℂ} (hc : IsClosed (K : Set ℂ)) :
    K = ofReal.fieldRange ∨ K = ⊤ := by
  suffices range (ofReal' : ℝ → ℂ) ⊆ K by
    rw [range_subset_iff, ← coe_algebraMap] at this
    have :=
      (Subalgebra.isSimpleOrder_of_finrank finrank_real_complex).eq_bot_or_eq_top
        (Subfield.toIntermediateField K this).toSubalgebra
    simp_rw [← SetLike.coe_set_eq] at this ⊢
    convert this using 2
    simp only [RingHom.coe_fieldRange, Algebra.coe_bot, coe_algebraMap]
    rfl
  suffices range (ofReal' : ℝ → ℂ) ⊆ closure (Set.range ((ofReal' : ℝ → ℂ) ∘ ((↑) : ℚ → ℝ))) by
    refine' subset_trans this _
    rw [← IsClosed.closure_eq hc]
    apply closure_mono
    rintro _ ⟨_, rfl⟩
    simp only [Function.comp_apply, ofReal_rat_cast, SetLike.mem_coe, SubfieldClass.coe_rat_mem]
  nth_rw 1 [range_comp]
  refine' subset_trans _ (image_closure_subset_closure_image continuous_ofReal)
  rw [DenseRange.closure_range Rat.denseEmbedding_coe_real.dense]
  simp only [image_univ]
  rfl
#align complex.subfield_eq_of_closed Complex.subfield_eq_of_closed

/-- Let `K` a subfield of `ℂ` and let `ψ : K →+* ℂ` a ring homomorphism. Assume that `ψ` is uniform
continuous, then `ψ` is either the inclusion map or the composition of the inclusion map with the
complex conjugation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variant58505fd08df1b36850543f25fba57267bbd559732e035d92073dfbd96ddfa8e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variant58505fd08df1b36850543f25fba57267bbd559732e035d92073dfbd96ddfa8e6.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9c19f57c4d52398218b79bc6a3a1e4b167def31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
