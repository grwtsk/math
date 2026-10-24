# rayleighQuotient_le_of_mem_resolventSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28878ee9dc0cbb64cc9074fa33beebf04aac60dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0643ee8e-54c7-3cdb-c824-426f7de81036",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6485ec26-2c7e-41b7-60d5-a1d9a9965742",
  "kind": "theorem",
  "lexical_name": "rayleighQuotient_le_of_mem_resolventSet",
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
  "slug": "rayleighquotient-le-of-mem-resolventset--0d1cf455e1e20cfc8358c05a",
  "source": {
    "blob": "28878ee9dc0cbb64cc9074fa33beebf04aac60dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 138,
    "path": "GRWTSK/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d1cf455e1e20cfc8358c05a0ebbbe95c98ad289097dad5e2de0757c180f7d37",
  "verification": {
    "reference": "docs/verification/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6485ec26-2c7e-41b7-60d5-a1d9a9965742`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem rayleighQuotient_le_of_mem_resolventSet
    (t : ℝ) (ht : 0 < t) (hT' : (algebraMap ℝ 𝕜) t ∈ resolventSet 𝕜 T) :
    ∃ c > 0, ∀ x, T.rayleighQuotient x ≤ (t ^ 2 + ‖T‖ ^ 2) / (2 * t) - c := by
  by_cases hT0 : T = 0
  · exact ⟨t ^ 2 / (2 * t), by positivity, by simp [hT0]⟩
  obtain ⟨c, hc0, hc⟩ := antilipschitzWith_iff_exists_mul_le_norm.mp
    (antilipschitz_of_isEmbedding _ (isHomeomorph_of_isUnit hT').isEmbedding)
  refine ⟨min (c ^ 2 / (2 * t)) ((t ^ 2 + ‖T‖ ^ 2) / (2 * t)), by positivity, fun x ↦ ?_⟩
  by_cases hx : x = 0
  · simp [hx]
  suffices T.rayleighQuotient x ≤ (t ^ 2 + ‖T‖ ^ 2) / (2 * t) - c ^ 2 / (2 * t) by
    grw [this, min_le_left]
  rw [rayleighQuotient, reApplyInnerSelf_apply]
  specialize hc x
  rw [← sq_le_sq₀ (by positivity) (by positivity), sub_apply, algebraMap_apply,
    norm_sub_sq (𝕜 := 𝕜), inner_re_symm] at hc
  grw [le_opNorm] at hc
  simp [inner_smul_right, norm_smul, abs_of_pos ht] at hc
  field_simp
  grind

/-- If `‖T‖` is not in the spectrum, then `T.rayleighQuotient x` don't reach `‖T‖`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28878ee9dc0cbb64cc9074fa33beebf04aac60dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
