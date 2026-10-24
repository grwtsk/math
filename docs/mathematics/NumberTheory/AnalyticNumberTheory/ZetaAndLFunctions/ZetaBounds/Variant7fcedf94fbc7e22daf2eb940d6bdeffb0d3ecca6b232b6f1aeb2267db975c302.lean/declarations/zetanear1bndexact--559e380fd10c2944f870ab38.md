# ZetaNear1BndExact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b07356663a07cf33aa9714bf40ab2b64eac6997",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1873,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7fcedf94fbc7e22daf2eb940d6bdeffb0d3ecca6b232b6f1aeb2267db975c302.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1cecae0b-d895-11d8-4354-345d366f23aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:432b9639-1e9a-0aba-8272-ac525d89d525",
  "kind": "lemma",
  "lexical_name": "ZetaNear1BndExact",
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
  "slug": "zetanear1bndexact--559e380fd10c2944f870ab38",
  "source": {
    "blob": "2b07356663a07cf33aa9714bf40ab2b64eac6997",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1920,
    "line": 1873,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant7fcedf94fbc7e22daf2eb940d6bdeffb0d3ecca6b232b6f1aeb2267db975c302.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:559e380fd10c2944f870ab38b59dde364813a7f9283082681be7b34a815ef48f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant7fcedf94fbc7e22daf2eb940d6bdeffb0d3ecca6b232b6f1aeb2267db975c302.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:432b9639-1e9a-0aba-8272-ac525d89d525`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1873–1920.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ZetaNear1BndExact :
    ∃ (c : ℝ) (_ : 0 < c), ∀ (σ : ℝ) (_ : σ ∈ Ioc 1 2), ‖ζ σ‖ ≤ c / (σ - 1) := by
  have := ZetaNear1BndFilter
  rw [Asymptotics.isBigO_iff] at this
  obtain ⟨c, U, hU, V, hV, h⟩ := this
  obtain ⟨T, hT, T_open, h1T⟩ := mem_nhds_iff.mp hU
  obtain ⟨ε, εpos, hε⟩ := Metric.isOpen_iff.mp T_open 1 h1T
  simp only [Metric.ball] at hε
  replace hε : Ico 1 (1 + ε) ⊆ U := by
    refine subset_trans (subset_trans ?_ hε) hT
    intro x hx
    simp only [mem_Ico] at hx
    simp only [dist, abs_lt]
    exact ⟨by linarith, by linarith⟩
  let W := Icc (1 + ε) 2
  have W_compact : IsCompact {ofReal z | z ∈ W} :=
    IsCompact.image isCompact_Icc continuous_ofReal
  have cont : ContinuousOn ζ {ofReal z | z ∈ W} := by
    apply HasDerivAt.continuousOn (f' := ζ')
    intro σ hσ
    exact (differentiableAt_riemannZeta (by contrapose! hσ; simp [W, hσ, εpos])).hasDerivAt
  obtain ⟨C, hC⟩ := IsCompact.exists_bound_of_continuousOn W_compact cont
  let C' := max (C + 1) 1
  replace hC : ∀ (σ : ℝ), σ ∈ W → ‖ζ σ‖ < C' := by
    intro σ hσ
    simp only [lt_max_iff, C']
    have := hC σ
    simp only [mem_ofPred_eq, ofReal_inj, exists_eq_right] at this
    exact Or.inl <| lt_of_le_of_lt (this hσ) (by norm_num)
  have Cpos : 0 < C' := by simp [C']
  use max (2 * C') c, (by simp [Cpos])
  intro σ ⟨σ_ge, σ_le⟩
  by_cases hσ : σ ∈ U ∩ V
  · simp only [← h, mem_ofPred_eq] at hσ
    apply le_trans hσ ?_
    norm_cast
    have : 0 ≤ 1 / (σ - 1) := by apply one_div_nonneg.mpr; linarith
    simp only [Real.norm_eq_abs, abs_eq_self.mpr this, mul_div, mul_one]
    exact div_le_div₀ (by simp [Cpos.le]) (by simp) (by linarith) (by rfl)
  · replace hσ : σ ∈ W := by
      simp only [mem_inter_iff, hV σ_ge, and_true] at hσ
      simp only [mem_Icc, σ_le, and_true, W]
      contrapose! hσ; exact hε ⟨σ_ge.le, hσ⟩
    apply le_trans (hC σ hσ).le ((le_div_iff₀ (by linarith)).mpr ?_)
    rw [le_max_iff, mul_comm 2]; exact Or.inl <| mul_le_mul_of_nonneg_left (by linarith) Cpos.le

/-- For positive `x` and nonzero `y` we have that
$|\zeta(x)^3 \cdot \zeta(x+iy)^4 \cdot \zeta(x+2iy)| \ge 1$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant7fcedf94fbc7e22daf2eb940d6bdeffb0d3ecca6b232b6f1aeb2267db975c302.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant7fcedf94fbc7e22daf2eb940d6bdeffb0d3ecca6b232b6f1aeb2267db975c302.lean#L1873).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b07356663a07cf33aa9714bf40ab2b64eac6997` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
