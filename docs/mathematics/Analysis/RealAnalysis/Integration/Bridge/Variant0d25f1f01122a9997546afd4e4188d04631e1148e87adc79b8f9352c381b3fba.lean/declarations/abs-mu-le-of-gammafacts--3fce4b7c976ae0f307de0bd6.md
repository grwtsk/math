# abs_mu_le_of_gammaFacts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "faa550820f77d9a30084b43fcb1b073ae5550001",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20c44a10-39fd-c5a2-4126-c69c89c27a0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f0c2689-a901-e18f-67d6-6c807b1d014f",
  "kind": "theorem",
  "lexical_name": "abs_mu_le_of_gammaFacts",
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
  "slug": "abs-mu-le-of-gammafacts--3fce4b7c976ae0f307de0bd6",
  "source": {
    "blob": "faa550820f77d9a30084b43fcb1b073ae5550001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fce4b7c976ae0f307de0bd6ae4c42f15131473c89bec4319aff4fe0127e20ae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f0c2689-a901-e18f-67d6-6c807b1d014f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_mu_le_of_gammaFacts (hΓ : GammaFacts) :
    ∃ K₂ : ℝ, 0 ≤ K₂ ∧ ∀ τ : ℝ, |mu τ| ≤ K₂ * (1 + |τ|) ^ (1 / 2 : ℝ) := by
  obtain ⟨C, hC⟩ := hΓ.stirling
  obtain ⟨M, hM⟩ := isCompact_Icc.exists_bound_of_continuousOn
    (hΓ.smooth.continuous.continuousOn (s := Icc (-1 : ℝ) 1))
  have hπ : 0 < 1 / (2 * π) := by positivity
  have hL0 : 0 ≤ (1 / (2 * π)) * |Real.log (2 * π)| := mul_nonneg hπ.le (abs_nonneg _)
  set K₂ : ℝ := max M 0 + |C| + (1 / (2 * π)) * |Real.log (2 * π)| + 1 / π with hK₂
  have hK₂nn : 0 ≤ K₂ := by
    have : 0 ≤ max M 0 := le_max_right _ _
    have : 0 ≤ 1 / π := by positivity
    positivity
  refine ⟨K₂, hK₂nn, fun τ => ?_⟩
  have hb1 : 1 ≤ (1 + |τ|) ^ (1 / 2 : ℝ) :=
    Real.one_le_rpow (by linarith [abs_nonneg τ]) (by norm_num)
  rcases le_or_gt |τ| 1 with hτ | hτ
  · -- |τ| ≤ 1: continuity bound
    have := hM τ (abs_le.mp hτ)
    rw [Real.norm_eq_abs] at this
    calc |mu τ| ≤ max M 0 := this.trans (le_max_left _ _)
      _ ≤ K₂ * 1 := by
        rw [mul_one, hK₂]
        have : 0 ≤ 1 / π := by positivity
        linarith [abs_nonneg C]
      _ ≤ K₂ * (1 + |τ|) ^ (1 / 2 : ℝ) := by gcongr
  · -- |τ| ≥ 1: Stirling
    have hτ1 : 1 ≤ |τ| := hτ.le
    have hst := hC τ hτ1
    have hsq : 1 ≤ τ ^ 2 := by rw [← sq_abs]; nlinarith
    have hCτ : C / τ ^ 2 ≤ |C| := by
      calc C / τ ^ 2 ≤ |C| / τ ^ 2 := by gcongr; exact le_abs_self C
        _ ≤ |C| := div_le_self (abs_nonneg C) hsq
    have hlog : |Real.log (|τ| / (2 * π))| ≤ Real.log |τ| + |Real.log (2 * π)| := by
      rw [Real.log_div (by positivity) (by positivity)]
      calc abs (Real.log |τ| - Real.log (2 * π))
          ≤ abs (Real.log |τ|) + |Real.log (2 * π)| := abs_sub _ _
        _ = Real.log |τ| + |Real.log (2 * π)| := by rw [abs_of_nonneg (Real.log_nonneg hτ1)]
    have hlog2 : Real.log |τ| ≤ 2 * (1 + |τ|) ^ (1 / 2 : ℝ) := by
      have := Real.log_le_rpow_div (abs_nonneg τ) (by norm_num : (0 : ℝ) < 1 / 2)
      have hmono : |τ| ^ (1 / 2 : ℝ) ≤ (1 + |τ|) ^ (1 / 2 : ℝ) :=
        Real.rpow_le_rpow (abs_nonneg τ) (by linarith) (by norm_num)
      calc Real.log |τ| ≤ |τ| ^ (1 / 2 : ℝ) / (1 / 2) := this
        _ = 2 * |τ| ^ (1 / 2 : ℝ) := by ring
        _ ≤ 2 * (1 + |τ|) ^ (1 / 2 : ℝ) := by gcongr
    have hmu : |mu τ| ≤ |C| + (1 / (2 * π)) * (Real.log |τ| + |Real.log (2 * π)|) := by
      have htri : |mu τ| ≤ |mu τ - 1 / (2 * π) * Real.log (|τ| / (2 * π))|
          + |1 / (2 * π) * Real.log (|τ| / (2 * π))| := by
        have := abs_add_le (mu τ - 1 / (2 * π) * Real.log (|τ| / (2 * π)))
          (1 / (2 * π) * Real.log (|τ| / (2 * π)))
        rwa [sub_add_cancel] at this
      calc |mu τ| ≤ C / τ ^ 2 + |1 / (2 * π) * Real.log (|τ| / (2 * π))| := by linarith
        _ ≤ |C| + (1 / (2 * π)) * (Real.log |τ| + |Real.log (2 * π)|) := by
          rw [abs_mul, abs_of_pos hπ]
          gcongr
    set b := (1 + |τ|) ^ (1 / 2 : ℝ) with hb
    calc |mu τ| ≤ |C| + (1 / (2 * π)) * (Real.log |τ| + |Real.log (2 * π)|) := hmu
      _ ≤ |C| + (1 / (2 * π)) * (2 * b + |Real.log (2 * π)|) := by gcongr
      _ = (|C| + (1 / (2 * π)) * |Real.log (2 * π)|) * 1 + (1 / π) * b := by ring
      _ ≤ (|C| + (1 / (2 * π)) * |Real.log (2 * π)|) * b + (1 / π) * b := by gcongr
      _ = (|C| + (1 / (2 * π)) * |Real.log (2 * π)| + 1 / π) * b := by ring
      _ ≤ K₂ * b := by
        gcongr; rw [hK₂]; linarith [le_max_right M 0]

/-- `k ∈ C_c²(ℝ)` and H-Γ ⇒ `h_k · μ` integrable on ℝ (dominated by `K (1+|τ|)^{−3/2}`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faa550820f77d9a30084b43fcb1b073ae5550001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
