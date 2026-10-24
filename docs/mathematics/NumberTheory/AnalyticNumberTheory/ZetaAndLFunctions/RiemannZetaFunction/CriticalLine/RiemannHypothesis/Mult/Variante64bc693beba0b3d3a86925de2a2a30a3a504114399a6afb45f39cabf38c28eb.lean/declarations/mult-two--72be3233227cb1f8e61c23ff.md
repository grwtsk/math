# mult_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c565ed9-6c99-8f57-b27d-e99012085118",
  "kind": "theorem",
  "lexical_name": "mult_two",
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
  "slug": "mult-two--72be3233227cb1f8e61c23ff",
  "source": {
    "blob": "06be572db5b993591f746dac6e56ab695e53142a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 136,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72be3233227cb1f8e61c23ff303b36eac124d2f76bcaffc4f2c714134a009f33",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c565ed9-6c99-8f57-b27d-e99012085118`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mult_two (Pr : D.PairReps) {c : ℝ} (hc : 0 < c) (hPois : ∀ z ∈ D.onLine, ∑ k, ‖D.v z k‖ ^ 2 ≤ c) :
    4 * rtrace (D.blockP c + D.blockQ c) - frobSq (D.blockP c + D.blockQ c) - 2 * (D.Ncount : ℝ) ≤ (D.s₁ : ℝ) := by
  classical
  have hR := rank_trace_mult_k_le (𝕜 := ℂ) (fun z => D.mhat_nonneg z) (D.vhat c) (D.xsq_vhat_le hc hPois)
    (D.blockQ_isHermitian c) (D.posIndex_blockQ_le Pr hc) (c := 2) (by norm_num)
  rw [← D.blockP_eq_Pmat hc] at hR
  have hk : ∑ z : D.onLine, kc 2 (D.mhat z) = 3 * (D.s₁ : ℝ) + 4 * (D.s₂ : ℝ) := by
    have := sum_kc_two_nat (fun z : D.onLine => D.m z) (fun z => D.one_le_m z)
    simp only [mhat] at this ⊢
    rw [this, D.card_sub_filter (fun n => n = 1), D.card_sub_filter (fun n => 2 ≤ n), D.card_onLine_m_eq_one]
    have h2 : (D.onLine.filter (fun z => 2 ≤ D.m z)).card = D.s₂ := by
      unfold s₂ S₂ onLine; rw [Finset.filter_filter]
    rw [h2]
  have hN := D.s₁_add_two_s₂_add_two_p_le_Ncount Pr
  have hN' : (D.s₁ : ℝ) + 2 * D.s₂ + 2 * Pr.p ≤ D.Ncount := by exact_mod_cast hN
  rw [hk] at hR
  norm_num at hR
  linarith

/-- **c = 3 at the block level**:  6·tr Â − ‖Â‖² − 3N(I′) ≤ 2·#𝒵(I′). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06be572db5b993591f746dac6e56ab695e53142a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
