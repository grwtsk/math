# ArchLineData.frozen_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73d287e15c2b4042e99aa14e63e405cf8c577743",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 954,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec85c03b-d077-4c2d-145d-32dc2db1838f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc077deb-e8c1-5486-f33a-43fadf99b4ab",
  "kind": "theorem",
  "lexical_name": "ArchLineData.frozen_uniform",
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
  "slug": "archlinedata-frozen-uniform--33826c67e71c74c1aeef9fb1",
  "source": {
    "blob": "73d287e15c2b4042e99aa14e63e405cf8c577743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 980,
    "line": 954,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33826c67e71c74c1aeef9fb128abcad967ee45f15d0ef11849e173467854a783",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc077deb-e8c1-5486-f33a-43fadf99b4ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 954–980.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ArchLineData.frozen_uniform (h : ArchLineData c Λf Lpar) :
    ∃ C T₀ : ℝ, 0 ≤ C ∧ 8 ≤ T₀ ∧ ∀ T : ℝ, T₀ ≤ T → ∀ τ t : ℝ, T ≤ τ →
      ‖Bfn ((c:ℂ) + t * I) / (Lpar τ - Afn ((c:ℂ) + t * I))‖ ≤ C / Real.log T := by
  obtain ⟨A₀, hA0, hA⟩ := norm_Afn_le_at h.one_lt
  obtain ⟨B₀, hB0, hB⟩ := norm_Bfn_le_at h.one_lt
  obtain ⟨C₄, hlowp⟩ := h.lower_par
  set K : ℝ := A₀ + |C₄| + 2 with hK
  refine ⟨4 * B₀, max 8 (Real.exp (4 * K)), by positivity, le_max_left _ _, ?_⟩
  intro T hT τ t hτ
  have hT8 : 8 ≤ T := le_trans (le_max_left _ _) hT
  have hT0 : 0 < T := by linarith
  have hτ2 : 2 ≤ τ := by linarith
  have hlogT : 4 * K ≤ Real.log T := by
    have := Real.log_le_log (Real.exp_pos _) (le_trans (le_max_right _ _) hT)
    rwa [Real.log_exp] at this
  have hlogτ : Real.log T ≤ Real.log τ := Real.log_le_log hT0 hτ
  have hKpos : 2 ≤ K := by rw [hK]; have := abs_nonneg C₄; linarith
  have hΛ : Real.log T / 4 ≤ ‖Lpar τ‖ - A₀ := by
    have := hlowp τ hτ2; have := le_abs_self C₄; nlinarith
  have hq : 0 < Real.log T / 4 := by nlinarith
  have hden : Real.log T / 4 ≤ ‖Lpar τ - Afn ((c:ℂ) + t * I)‖ := hΛ.trans (norm_sub_ge_of_le (hA t))
  rw [norm_div]
  calc ‖Bfn ((c:ℂ) + ↑t * I)‖ / ‖Lpar τ - Afn ((c:ℂ) + ↑t * I)‖
      ≤ B₀ / (Real.log T / 4) := div_le_div₀ hB0 (hB t) hq hden
    _ = 4 * B₀ / Real.log T := by field_simp

/-- ‖E(c+it)‖ ≤ M log(2+|t|). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean#L954).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73d287e15c2b4042e99aa14e63e405cf8c577743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
