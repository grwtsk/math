# exists_hasDerivWithinAt_eq_of_gt_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a439370033e454429967ca213bef25c993f7df57",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ab9281b-d659-d9a0-f9aa-c995a7bce7b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2499b342-3da5-0563-eef3-22a86aeb1acf",
  "kind": "theorem",
  "lexical_name": "exists_hasDerivWithinAt_eq_of_gt_of_lt",
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
  "slug": "exists-hasderivwithinat-eq-of-gt-of-lt--46f866aff3c1d04090c06487",
  "source": {
    "blob": "a439370033e454429967ca213bef25c993f7df57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46f866aff3c1d04090c064879d3a9a2c832b777c3bb60b06351cff67dde67291",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2499b342-3da5-0563-eef3-22a86aeb1acf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_hasDerivWithinAt_eq_of_gt_of_lt (hab : a ≤ b)
    (hf : ∀ x ∈ Icc a b, HasDerivWithinAt f (f' x) (Icc a b) x) {m : ℝ} (hma : f' a < m)
    (hmb : m < f' b) : m ∈ f' '' Ioo a b := by
  rcases hab.eq_or_lt with (rfl | hab')
  · exact (lt_asymm hma hmb).elim
  set g : ℝ → ℝ := fun x => f x - m * x
  have hg : ∀ x ∈ Icc a b, HasDerivWithinAt g (f' x - m) (Icc a b) x := by
    intro x hx
    simpa using (hf x hx).sub ((hasDerivWithinAt_id x _).const_mul m)
  obtain ⟨c, cmem, hc⟩ : ∃ c ∈ Icc a b, IsMinOn g (Icc a b) c :=
    isCompact_Icc.exists_isMinOn (nonempty_Icc.2 <| hab) fun x hx => (hg x hx).continuousWithinAt
  have cmem' : c ∈ Ioo a b := by
    rcases cmem.1.eq_or_lt with (rfl | hac)
    -- Show that `c` can't be equal to `a`
    · refine absurd (sub_nonneg.1 <| nonneg_of_mul_nonneg_right ?_ (sub_pos.2 hab'))
        (not_le_of_lt hma)
      have : b - a ∈ posTangentConeAt (Icc a b) a :=
        sub_mem_posTangentConeAt_of_segment_subset (segment_eq_Icc hab ▸ Subset.rfl)
      simpa only [ContinuousLinearMap.smulRight_apply, ContinuousLinearMap.one_apply]
        using hc.localize.hasFDerivWithinAt_nonneg (hg a (left_mem_Icc.2 hab)) this
    rcases cmem.2.eq_or_gt with (rfl | hcb)
    -- Show that `c` can't be equal to `b`
    · refine absurd (sub_nonpos.1 <| nonpos_of_mul_nonneg_right ?_ (sub_lt_zero.2 hab'))
        (not_le_of_lt hmb)
      have : a - b ∈ posTangentConeAt (Icc a b) b :=
        sub_mem_posTangentConeAt_of_segment_subset (by rw [segment_symm, segment_eq_Icc hab])
      simpa only [ContinuousLinearMap.smulRight_apply, ContinuousLinearMap.one_apply]
        using hc.localize.hasFDerivWithinAt_nonneg (hg b (right_mem_Icc.2 hab)) this
    exact ⟨hac, hcb⟩
  use c, cmem'
  rw [← sub_eq_zero]
  have : Icc a b ∈ 𝓝 c := by rwa [← mem_interior_iff_mem_nhds, interior_Icc]
  exact (hc.isLocalMin this).hasDerivAt_eq_zero ((hg c cmem).hasDerivAt this)

/-- **Darboux's theorem**: if `a ≤ b` and `f' b < m < f' a`, then `f' c = m` for some `c ∈ (a, b)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant652c6d3faaad4b23c9a4b9b4a71f41b0113e570b63844d17f3d2bc85ed48d3ed.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a439370033e454429967ca213bef25c993f7df57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
