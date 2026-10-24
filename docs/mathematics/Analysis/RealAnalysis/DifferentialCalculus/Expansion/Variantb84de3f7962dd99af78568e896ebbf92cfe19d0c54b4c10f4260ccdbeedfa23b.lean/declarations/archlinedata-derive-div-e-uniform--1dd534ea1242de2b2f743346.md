# ArchLineData.derivE_div_E_uniform

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
      "line": 821,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80836d95-94c1-d6e6-a3bf-da05914e5600",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:323e4421-afb7-89f2-01a2-989e63c0e37b",
  "kind": "theorem",
  "lexical_name": "ArchLineData.derivE_div_E_uniform",
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
  "slug": "archlinedata-derive-div-e-uniform--1dd534ea1242de2b2f743346",
  "source": {
    "blob": "73d287e15c2b4042e99aa14e63e405cf8c577743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 873,
    "line": 821,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dd534ea1242de2b2f743346411011ad479edd92ecb4638138a4725d10cd4ffd",
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

Occurrence: `result:323e4421-afb7-89f2-01a2-989e63c0e37b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 821–873.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ArchLineData.derivE_div_E_uniform (h : ArchLineData c Λf Lpar)
    (hE : ∀ t : ℝ, EofL Λf ((c:ℂ) + t * I) ≠ 0) :
    ∃ CE : ℝ, 0 ≤ CE ∧ ∀ t : ℝ, ‖deriv (EofL Λf) ((c:ℂ) + t * I) / EofL Λf ((c:ℂ) + t * I)‖ ≤ CE := by
  obtain ⟨A₀, hA0, hA⟩ := norm_Afn_le_at h.one_lt
  obtain ⟨B₀, hB0, hB⟩ := norm_Bfn_le_at h.one_lt
  obtain ⟨C₁, hlow⟩ := h.lower
  obtain ⟨C₂, hder⟩ := h.deriv_le
  -- large t
  set t₀ : ℝ := max 2 (Real.exp (2 * (A₀ + |C₁| + 1))) with ht₀
  have ht₀2 : 2 ≤ t₀ := le_max_left _ _
  have hC₂' : ∀ t : ℝ, 2 ≤ t → ‖deriv Λf ((c:ℂ) + t * I)‖ ≤ |C₂| / 2 := fun t ht =>
    (hder t ht).trans ((div_le_div_of_nonneg_right (le_abs_self C₂) (by linarith)).trans
      (div_le_div_of_nonneg_left (abs_nonneg _) (by norm_num) ht))
  have hlarge : ∀ t : ℝ, t₀ ≤ t →
      ‖deriv (EofL Λf) ((c:ℂ) + t * I) / EofL Λf ((c:ℂ) + t * I)‖ ≤ |C₂| / 2 + B₀ := by
    intro t ht
    have ht2 : 2 ≤ t := le_trans ht₀2 ht
    have ht0 : 0 < t := by linarith
    have hlog : 2 * (A₀ + |C₁| + 1) ≤ Real.log t := by
      have := Real.log_le_log (Real.exp_pos _) (le_trans (le_max_right _ _) ht)
      rwa [Real.log_exp] at this
    have hL : A₀ + 1 ≤ ‖Λf ((c:ℂ) + t * I)‖ := by
      have := hlow t ht2; have := le_abs_self C₁; linarith
    rw [h.derivE_div_E_eq, norm_div]
    have hden : 1 ≤ ‖Λf ((c:ℂ) + ↑t * I) - Afn ((c:ℂ) + ↑t * I)‖ := by
      have := norm_sub_ge_of_le (L := Λf ((c:ℂ) + ↑t * I)) (hA t); linarith
    have hnum : ‖deriv Λf ((c:ℂ) + ↑t * I) + Bfn ((c:ℂ) + ↑t * I)‖ ≤ |C₂| / 2 + B₀ :=
      (norm_add_le _ _).trans (add_le_add (hC₂' t ht2) (hB t))
    calc _ ≤ ‖deriv Λf ((c:ℂ) + ↑t * I) + Bfn ((c:ℂ) + ↑t * I)‖ / 1 :=
          div_le_div_of_nonneg_left (norm_nonneg _) one_pos hden
      _ ≤ |C₂| / 2 + B₀ := by rw [div_one]; exact hnum
  -- large negative t by conjugation
  have hneg : ∀ t : ℝ, t₀ ≤ -t →
      ‖deriv (EofL Λf) ((c:ℂ) + t * I) / EofL Λf ((c:ℂ) + t * I)‖ ≤ |C₂| / 2 + B₀ := by
    intro t ht
    have hh := hlarge (-t) ht
    have htne : -t ≠ 0 := by intro h0; rw [h0] at ht; linarith
    have := h.derivE_div_E_conj (t := -t) htne
    simp only [neg_neg] at this
    rw [show ((c:ℂ) + t * I) = ((c:ℂ) + ((t:ℝ):ℂ) * I) from rfl, this, Complex.norm_conj]
    exact hh
  -- compact middle
  have hcont := h.continuous_derivE_div_E_line hE
  obtain ⟨M, hM⟩ := (isCompact_Icc (a := -t₀) (b := t₀)).exists_bound_of_continuousOn hcont.continuousOn
  refine ⟨max M (|C₂| / 2 + B₀), le_max_of_le_right (by positivity), fun t => ?_⟩
  rcases le_or_gt t₀ t with h1 | h1
  · exact (hlarge t h1).trans (le_max_right _ _)
  rcases le_or_gt t₀ (-t) with h2 | h2
  · exact (hneg t h2).trans (le_max_right _ _)
  · exact (hM t ⟨by linarith, h1.le⟩).trans (le_max_left _ _)

/-- **the freezing estimate on the line**: for T ≥ T₀, τ ≥ T, t ≥ T/4,
‖E′/E(c+it) − B(c+it)/(Λ⋆(τ) − A(c+it))‖ ≤ C (|t − τ| + 1)/(T log T). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean#L821).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73d287e15c2b4042e99aa14e63e405cf8c577743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
