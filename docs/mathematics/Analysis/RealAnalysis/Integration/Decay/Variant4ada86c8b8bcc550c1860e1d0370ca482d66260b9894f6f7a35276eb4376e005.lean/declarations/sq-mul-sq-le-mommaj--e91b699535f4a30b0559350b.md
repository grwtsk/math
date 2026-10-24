# sq_mul_sq_le_momMaj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:611f8055-95a8-ba1a-292d-c6a9c1d11a40",
  "kind": "theorem",
  "lexical_name": "sq_mul_sq_le_momMaj",
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
  "slug": "sq-mul-sq-le-mommaj--e91b699535f4a30b0559350b",
  "source": {
    "blob": "6ad9e2eb80d44633b4c0b8c20c5fe56e727a55f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 944,
    "line": 906,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e91b699535f4a30b0559350b1ff20e7ec5a647ed82252f94c0b876cfd7a7ce6b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:611f8055-95a8-ba1a-292d-c6a9c1d11a40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 906–944.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sq_mul_sq_le_momMaj {F : ℝ → ℝ} {C : ℝ} (_hC : 0 ≤ C)
    (h1 : ∀ r, |F r| * |r| ≤ 2) (h2 : ∀ r, |F r| * r ^ 2 ≤ C) (r : ℝ) :
    F r ^ 2 * r ^ 2 ≤ momMaj C r := by
  have hind : ∀ s : ℝ, 0 ≤ (Ioi (1:ℝ)).indicator (fun x : ℝ => x ^ (-2:ℝ)) s := fun s =>
    Set.indicator_nonneg (fun x hx => Real.rpow_nonneg (le_trans zero_le_one (le_of_lt hx)) _) _
  have hsq : ∀ s : ℝ, 1 < s → F r ^ 2 * s ^ 2 * s ^ 2 ≤ C ^ 2 → F r ^ 2 * s ^ 2 ≤ C ^ 2 * s ^ (-2:ℝ) := by
    intro s hs h
    have hs0 : 0 < s := by linarith
    rw [Real.rpow_neg hs0.le, show (2:ℝ) = ((2:ℕ):ℝ) by norm_num, Real.rpow_natCast,
      ← div_eq_mul_inv, le_div_iff₀ (by positivity)]
    exact h
  unfold momMaj plateauMaj
  by_cases h : r ∈ Icc (-1:ℝ) 1
  · rw [Set.indicator_of_mem h]
    have hb : F r ^ 2 * r ^ 2 ≤ 4 := by
      have := h1 r
      have h0 : 0 ≤ |F r| * |r| := by positivity
      calc F r ^ 2 * r ^ 2 = (|F r| * |r|) ^ 2 := by rw [mul_pow, sq_abs, sq_abs]
        _ ≤ 2 ^ 2 := pow_le_pow_left₀ h0 this 2
        _ = 4 := by norm_num
    nlinarith [hind r, hind (-r), sq_nonneg C]
  · rw [Set.indicator_of_notMem h, zero_add]
    rw [mem_Icc, not_and_or, not_le, not_le] at h
    have hFsq : F r ^ 2 * r ^ 2 * r ^ 2 ≤ C ^ 2 := by
      have := h2 r
      have h0 : 0 ≤ |F r| * r ^ 2 := by positivity
      calc F r ^ 2 * r ^ 2 * r ^ 2 = (|F r| * r ^ 2) ^ 2 := by rw [mul_pow, sq_abs]; ring
        _ ≤ C ^ 2 := pow_le_pow_left₀ h0 this 2
    rcases h with h | h
    · -- r < -1
      rw [Set.indicator_of_notMem (show r ∉ Ioi (1:ℝ) by simp; linarith),
        Set.indicator_of_mem (show -r ∈ Ioi (1:ℝ) by simp; linarith), zero_add]
      have := hsq (-r) (by linarith) (by simpa using hFsq)
      simpa using this
    · -- 1 < r
      rw [Set.indicator_of_mem (show r ∈ Ioi (1:ℝ) from h),
        Set.indicator_of_notMem (show -r ∉ Ioi (1:ℝ) by simp; linarith), add_zero]
      exact hsq r h hFsq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean#L906).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ad9e2eb80d44633b4c0b8c20c5fe56e727a55f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
