# fractionalLogVector_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "163ec9b745033c6e4da2e86774bf0c6afa2fae5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12364edd-38c2-fb81-5ae9-3bfa9d1401a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2dee11b5-fd8c-7dee-1817-43213c773f75",
  "kind": "theorem",
  "lexical_name": "fractionalLogVector_norm_le",
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
  "slug": "fractionallogvector-norm-le--c72dfda3f991144866e6ac72",
  "source": {
    "blob": "163ec9b745033c6e4da2e86774bf0c6afa2fae5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 79,
    "path": "GRWTSK/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c72dfda3f991144866e6ac72bb068706a29d7bc1e63eaa72b7cce016e892bd12",
  "verification": {
    "reference": "docs/verification/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dee11b5-fd8c-7dee-1817-43213c773f75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fractionalLogVector_norm_le (d : ℕ) :
    ‖fractionalLogVector d‖ ≤ Real.sqrt (2 / (d : ℝ)) := by
  have hm := fractionalLogFunction_memLp d
  have hi := (memLp_two_iff_integrable_sq_norm hm.aestronglyMeasurable).mp hm
  apply (sq_le_sq₀ (norm_nonneg _) (Real.sqrt_nonneg _)).mp
  change ‖hm.toLp (fractionalLogFunction d)‖ ^ 2 ≤ _
  rw [FullLinePlancherel.norm_sq_toLp, Real.sq_sqrt (by positivity)]
  by_cases hd : d = 0
  · simp [fractionalLogFunction, hd]
  have hd0 : 0 < (d : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hd
  have he : (∫ u : ℝ, ‖fractionalLogFunction d u‖ ^ 2) =
      (∫ u : ℝ in Iic (Real.log (d : ℝ)), ‖fractionalLogFunction d u‖ ^ 2) +
        ∫ u : ℝ in Ioi (Real.log (d : ℝ)), ‖fractionalLogFunction d u‖ ^ 2 := by
    simpa only [compl_Iic] using (integral_add_compl measurableSet_Iic hi).symm
  rw [he]
  calc
    _ ≤ (∫ u : ℝ in Iic (Real.log (d : ℝ)), Real.exp u / (d : ℝ) ^ 2) +
        ∫ u : ℝ in Ioi (Real.log (d : ℝ)), Real.exp (-u) := by
      apply add_le_add
      · exact integral_mono_ae hi.integrableOn ((integrableOn_exp_Iic _).div_const _)
          (Filter.Eventually.of_forall (fractionalLogFunction_sq_le_near d))
      · exact integral_mono_ae hi.integrableOn (integrableOn_exp_neg_Ioi _)
          (Filter.Eventually.of_forall (fractionalLogFunction_sq_le_far d))
    _ = _ := by
      rw [integral_div, integral_exp_Iic, integral_exp_neg_Ioi, Real.exp_neg,
        Real.exp_log hd0]
      field_simp
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `163ec9b745033c6e4da2e86774bf0c6afa2fae5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
