# theta_err

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d891df81-987c-7280-0a9f-6c52c8494cfe",
  "kind": "lemma",
  "lexical_name": "theta_err",
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
  "slug": "theta-err--b334f4b4a8d27d84d8a012ca",
  "source": {
    "blob": "04dd9185ccbc06b581c8737da51066f96c86705c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 358,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b334f4b4a8d27d84d8a012ca5b588b1eeb5a53d600183e47414108454f4eef8d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d891df81-987c-7280-0a9f-6c52c8494cfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma theta_err {x : ℝ} (hx : x ≥ exp 22) :
    |θ x - x| ≤ 4.2065e-1 * x / (log x) ^ 3 := by
  -- BKLNW Table_15 row (log 1e9, M₁e9), k=⟨2,_⟩ → Eθ x ≤ 4.2065e-1 / (log x)^3
  set M₁e9 : Fin 5 → ℝ := ![9.5913e-4, 2.0087e-2, 4.2065e-1, 5.7184e1, 1.3441e5]
  have htab : ((log 1e9 : ℝ), M₁e9) ∈ BKLNW.Table_15 := by simp [BKLNW.Table_15, M₁e9]
  have hM : M₁e9 ⟨2, by norm_num⟩ = 4.2065e-1 := rfl
  have hfin_val : (⟨2, by norm_num⟩ : Fin 5).val + 1 = 3 := rfl
  have hxpos : 0 < x := lt_of_lt_of_le (exp_pos _) hx
  have hlog_pos : 0 < log x := by linarith [log_ge_22 hx]
  have hpow_pos : 0 < (log x) ^ 3 := pow_pos hlog_pos 3
  have hx_ge_exp_log_1e9 : x ≥ exp (log 1e9) := by
    have h_exp_le : exp (log 1e9 : ℝ) ≤ exp (22 : ℝ) := by
      rw [exp_log (by norm_num : (0 : ℝ) < 1e9)]
      exact LogTables.one_e9_le_exp_22
    linarith
  obtain ⟨hlb, hub⟩ :=
    BKLNW.thm_1b_table (by positivity) htab ⟨2, by norm_num⟩ hx_ge_exp_log_1e9
  rw [hM, hfin_val] at hlb hub
  have h1 : θ x - x ≤ 4.2065e-1 / (log x) ^ 3 * x := by nlinarith
  have h2 : x - θ x ≤ 4.2065e-1 / (log x) ^ 3 * x := by nlinarith
  calc |θ x - x| ≤ 4.2065e-1 / (log x) ^ 3 * x := abs_le.mpr ⟨by linarith, h1⟩
    _ = 4.2065e-1 * x / (log x) ^ 3 := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04dd9185ccbc06b581c8737da51066f96c86705c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
