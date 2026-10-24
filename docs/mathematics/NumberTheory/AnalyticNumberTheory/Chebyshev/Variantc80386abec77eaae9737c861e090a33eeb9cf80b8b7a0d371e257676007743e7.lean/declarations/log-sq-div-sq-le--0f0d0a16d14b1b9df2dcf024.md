# log_sq_div_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67471c06-53d7-71eb-d267-2b65c71e5306",
  "kind": "lemma",
  "lexical_name": "log_sq_div_sq_le",
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
  "slug": "log-sq-div-sq-le--0f0d0a16d14b1b9df2dcf024",
  "source": {
    "blob": "8d0d154c5fb6a7cec2352a0772b4b1a09c38ce3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 793,
    "line": 772,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f0d0a16d14b1b9df2dcf024f441d8afe96f787113f8b5c170fd5ea48b6a3a2a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67471c06-53d7-71eb-d267-2b65c71e5306`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 772–793.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma log_sq_div_sq_le {m : ℕ} (hm : 2 ≤ m) :
    Real.log m ^ 2 / (m : ℝ) ^ 2 ≤ 64 * ((m : ℝ) ^ ((7 : ℝ) / 4))⁻¹ := by
  have hm0 : (0 : ℝ) < (m : ℝ) := by exact_mod_cast (by omega : 0 < m)
  have hm1 : (1 : ℝ) ≤ (m : ℝ) := by exact_mod_cast (by omega : 1 ≤ m)
  have hlog : Real.log m ≤ 8 * (m : ℝ) ^ ((8 : ℝ)⁻¹) := by
    have h8 := Real.log_le_rpow_div hm0.le (by norm_num : (0 : ℝ) < 8⁻¹)
    rw [div_eq_mul_inv, inv_inv] at h8
    linarith
  have h18nn : (0 : ℝ) ≤ (m : ℝ) ^ ((8 : ℝ)⁻¹) := Real.rpow_nonneg hm0.le _
  have hq8 : (m : ℝ) ^ ((8 : ℝ)⁻¹) * (m : ℝ) ^ ((8 : ℝ)⁻¹) = (m : ℝ) ^ ((4 : ℝ)⁻¹) := by
    rw [← Real.rpow_add hm0]; norm_num
  have hsq : Real.log m ^ 2 ≤ 64 * (m : ℝ) ^ ((4 : ℝ)⁻¹) := by
    nlinarith [hlog, Real.log_nonneg hm1, hq8, h18nn]
  have e : (m : ℝ) ^ ((4 : ℝ)⁻¹) / (m : ℝ) ^ 2 = ((m : ℝ) ^ ((7 : ℝ) / 4))⁻¹ := by
    rw [← Real.rpow_natCast (m : ℝ) 2, ← Real.rpow_sub hm0, ← Real.rpow_neg hm0.le]
    norm_num
  calc Real.log m ^ 2 / (m : ℝ) ^ 2
      ≤ 64 * (m : ℝ) ^ ((4 : ℝ)⁻¹) / (m : ℝ) ^ 2 := by gcongr
    _ = 64 * ((m : ℝ) ^ ((4 : ℝ)⁻¹) / (m : ℝ) ^ 2) := by ring
    _ = 64 * ((m : ℝ) ^ ((7 : ℝ) / 4))⁻¹ := by rw [e]

/-- Per-term bound for the defect: (k−1)·log²p/pᵏ ≤ 256·k·2⁻ᵏ·(p^{7/4})⁻¹. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean#L772).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d0d154c5fb6a7cec2352a0772b4b1a09c38ce3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
