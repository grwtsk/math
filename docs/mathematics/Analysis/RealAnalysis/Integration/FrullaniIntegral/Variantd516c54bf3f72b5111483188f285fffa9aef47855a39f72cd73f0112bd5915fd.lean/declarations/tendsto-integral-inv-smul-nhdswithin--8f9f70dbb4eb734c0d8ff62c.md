# tendsto_integral_inv_smul_nhdsWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4468427c6f5cfe1029c51f5f9f7b111ae5b5c4c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c59b8c8-20de-cf93-30d7-b0032d13b38a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88f0bac1-9493-b4d1-7676-b8025e43c739",
  "kind": "lemma",
  "lexical_name": "tendsto_integral_inv_smul_nhdsWithin",
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
  "slug": "tendsto-integral-inv-smul-nhdswithin--8f9f70dbb4eb734c0d8ff62c",
  "source": {
    "blob": "4468427c6f5cfe1029c51f5f9f7b111ae5b5c4c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f9f70dbb4eb734c0d8ff62c0b1c31dbd497fe2dde6de074d1b7275153d42228",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88f0bac1-9493-b4d1-7676-b8025e43c739`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_integral_inv_smul_nhdsWithin (hf : LocallyIntegrableOn f (Ioi 0)) (ha : 0 < a)
    (hb : 0 < b) (hL : Tendsto f (𝓝[>] 0) (𝓝 L)) :
    Tendsto (fun ε ↦ ∫ x in (a * ε)..(b * ε), x⁻¹ • f x) (𝓝[>] 0) (𝓝 (log (b / a) • L)) := by
  apply tendsto_integral_inv_smul_of_tendsto_uniform hf ha hb self_mem_nhdsWithin
  intro δ hδ
  have hev : ∀ᶠ x in 𝓝[>] (0 : ℝ), dist (f x) L < δ :=
    hL.eventually (ball_mem_nhds L hδ)
  rw [Filter.Eventually, mem_nhdsWithin_iff] at hev
  obtain ⟨η, hη, hη_sub⟩ := hev
  set M := max a b with hM_def
  have hM : 0 < M := lt_max_of_lt_left ha
  filter_upwards [self_mem_nhdsWithin,
    nhdsWithin_le_nhds (Iio_mem_nhds (div_pos hη hM))] with t ht_pos ht_bound
  intro x hx
  have hx_pos : 0 < x := (lt_min (by positivity) (by positivity)).trans_le (uIoc_subset_uIcc hx).1
  have hx_lt_η : dist x 0 < η := by
    rw [Real.dist_eq, sub_zero, abs_of_pos hx_pos]
    calc x
      _ ≤ max (a * t) (b * t) := (uIoc_subset_uIcc hx).2
      _ = M * t := by rw [hM_def, max_mul_of_nonneg _ _ ht_pos.le]
      _ < M * (η / M) := mul_lt_mul_of_pos_left ht_bound hM
      _ = η := mul_div_cancel₀ η (ne_of_gt hM)
  have := hη_sub ⟨mem_ball.2 hx_lt_η, hx_pos⟩
  rw [mem_ofPred_eq, dist_eq_norm] at this
  exact le_of_lt this

/-- If `f → R` as `x → +∞` and `f` is locally integrable on `(0, ∞)`, then the weighted integral
`∫ x in a*r..b*r, x⁻¹ • f x` converges to `log(b/a) • R` as `r → +∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4468427c6f5cfe1029c51f5f9f7b111ae5b5c4c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
