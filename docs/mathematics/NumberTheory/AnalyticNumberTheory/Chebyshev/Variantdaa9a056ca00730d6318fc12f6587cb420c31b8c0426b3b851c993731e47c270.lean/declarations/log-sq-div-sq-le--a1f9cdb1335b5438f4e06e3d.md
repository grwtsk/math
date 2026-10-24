# log_sq_div_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f527e07a44c44619e45eb142a7aa0d20a239b39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 764,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac22ddb1-235a-eecb-5f6e-f669b1dddb5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4b75c0c-4a68-85b1-ddac-f2fb30fc8027",
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
  "slug": "log-sq-div-sq-le--a1f9cdb1335b5438f4e06e3d",
  "source": {
    "blob": "5f527e07a44c44619e45eb142a7aa0d20a239b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 785,
    "line": 764,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1f9cdb1335b5438f4e06e3d071aefa40e6e3bbd7a4b204e61d57fff3aa3968e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4b75c0c-4a68-85b1-ddac-f2fb30fc8027`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 764–785.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean#L764).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f527e07a44c44619e45eb142a7aa0d20a239b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
