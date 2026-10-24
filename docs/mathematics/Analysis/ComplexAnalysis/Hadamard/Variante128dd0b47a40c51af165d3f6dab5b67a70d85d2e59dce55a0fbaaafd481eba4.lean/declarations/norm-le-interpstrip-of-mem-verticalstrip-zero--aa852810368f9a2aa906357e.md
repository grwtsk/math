# norm_le_interpStrip_of_mem_verticalStrip_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eefa0b4dfc332b435a80d9b47c06d9189f37353e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 446,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6dc48050-96a1-b0ce-5ac6-3246a1d7d1cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6add066d-ac9f-1bf6-07e5-798962d623da",
  "kind": "lemma",
  "lexical_name": "norm_le_interpStrip_of_mem_verticalStrip_zero",
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
  "slug": "norm-le-interpstrip-of-mem-verticalstrip-zero--aa852810368f9a2aa906357e",
  "source": {
    "blob": "eefa0b4dfc332b435a80d9b47c06d9189f37353e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 488,
    "line": 446,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa852810368f9a2aa906357eebd1e3ce86f856a37d001fb93f64592ef604106f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6add066d-ac9f-1bf6-07e5-798962d623da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–488.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_le_interpStrip_of_mem_verticalStrip_zero (z : ℂ)
    (hd : DiffContOnCl ℂ f (verticalStrip 0 1))
    (hB : BddAbove ((norm ∘ f) '' verticalClosedStrip 0 1)) (hz : z ∈ verticalStrip 0 1) :
    ‖f z‖ ≤ ‖interpStrip f z‖ := by
  apply tendsto_le_of_eventuallyLE _ _ (eventuallyle f z hB hd hz)
  · apply tendsto_inf_left
    simp only [tendsto_const_nhds_iff]
  -- Proof that we can let epsilon tend to zero.
  · rw [interpStrip_eq_of_mem_verticalStrip _ _ hz]
    convert ContinuousWithinAt.tendsto _ using 2
    · simp only [ofReal_zero, zero_add]
    · simp_rw [← ofReal_add]
      have : ∀ x ∈ Ioi 0, (x + sSupNormIm f 0) ^ (1 - z.re) * (x + sSupNormIm f 1) ^ z.re
          = ‖((x + sSupNormIm f 0 : ℝ) ^ (1 - z) * (x + sSupNormIm f 1 : ℝ) ^ z : ℂ)‖ := by
              intro x hx
              simp only [norm_mul]
              repeat rw [norm_cpow_eq_rpow_re_of_nonneg (le_of_lt (sSupNormIm_eps_pos f hx _)) _]
              · simp only [sub_re, one_re]
              · simpa using (ne_comm.mpr (ne_of_lt hz.1))
              · simpa [sub_eq_zero] using (ne_comm.mpr (ne_of_lt hz.2))
      apply tendsto_nhdsWithin_congr this _
      simp only [zero_add]
      rw [norm_mul, norm_cpow_eq_rpow_re_of_nonneg (sSupNormIm_nonneg _ _) _,
        norm_cpow_eq_rpow_re_of_nonneg (sSupNormIm_nonneg _ _) _]
      · apply Tendsto.mul
        · apply Tendsto.rpow_const
          · nth_rw 2 [← zero_add (sSupNormIm f 0)]
            exact Tendsto.add_const (sSupNormIm f 0) (tendsto_nhdsWithin_of_tendsto_nhds
              (Continuous.tendsto continuous_id' _))
          · right; simp only [sub_nonneg, le_of_lt hz.2]
        · apply Tendsto.rpow_const
          · nth_rw 2 [← zero_add (sSupNormIm f 1)]
            exact Tendsto.add_const (sSupNormIm f 1) (tendsto_nhdsWithin_of_tendsto_nhds
              (Continuous.tendsto continuous_id' _))
          · right; simp only [sub_nonneg, le_of_lt hz.1]
      · simpa using (ne_comm.mpr (ne_of_lt hz.1))
      · simpa [sub_eq_zero] using (ne_comm.mpr (ne_of_lt hz.2))

/--
**Hadamard three-line theorem** on `re ⁻¹' [0, 1]`: If `f` is a bounded function, continuous on the
closed strip `re ⁻¹' [0, 1]` and differentiable on open strip `re ⁻¹' (0, 1)`, then for
`M(x) := sup ((norm ∘ f) '' (re ⁻¹' {x}))` we have that for all `z` in the closed strip
`re ⁻¹' [0, 1]` the inequality `‖f(z)‖ ≤ M(0) ^ (1 - z.re) * M(1) ^ z.re` holds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eefa0b4dfc332b435a80d9b47c06d9189f37353e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
