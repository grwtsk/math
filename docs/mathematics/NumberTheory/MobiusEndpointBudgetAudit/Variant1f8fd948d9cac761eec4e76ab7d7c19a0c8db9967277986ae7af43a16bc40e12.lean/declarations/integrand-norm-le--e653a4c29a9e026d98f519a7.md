# integrand_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c8c568cc31fa40fc095a085eaf1473101424aaca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f68eb29-5448-9f36-42a6-e2b368cdac58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c0134f5-7a58-0c9f-cb55-72efade67020",
  "kind": "theorem",
  "lexical_name": "integrand_norm_le",
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
  "slug": "integrand-norm-le--e653a4c29a9e026d98f519a7",
  "source": {
    "blob": "c8c568cc31fa40fc095a085eaf1473101424aaca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 42,
    "path": "GRWTSK/NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e653a4c29a9e026d98f519a7667f94d1a3b9bd784b7f0b89bef32117cbd0a083",
  "verification": {
    "reference": "docs/verification/NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c0134f5-7a58-0c9f-cb55-72efade67020`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integrand_norm_le (X : ℕ) (ε x : ℝ) (hε : 0 ≤ ε)
    (hx : x ∈ Set.Icc (1 : ℝ) X) :
    ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - (1 / 2 + (ε : ℂ))) * (Real.log x : ℂ)) / (x : ℂ)‖ ≤
      (1 + Real.log (X : ℝ)) / x := by
  have hx0 : 0 < x := lt_of_lt_of_le zero_lt_one hx.1
  have he : ‖Complex.exp ((1 / 2 - (1 / 2 + (ε : ℂ))) * (Real.log x : ℂ))‖ ≤ 1 := by
    rw [show (1 / 2 - (1 / 2 + (ε : ℂ))) * (Real.log x : ℂ) =
      ((-ε * Real.log x : ℝ) : ℂ) by push_cast; ring]
    rw [Complex.norm_exp, Complex.ofReal_re, Real.exp_le_one_iff]
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hε) (Real.log_nonneg hx.1)
  rw [norm_div, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    Complex.norm_real, Real.norm_eq_abs, abs_of_pos hx0]
  apply div_le_div_of_nonneg_right _ hx0.le
  exact (mul_le_mul_of_nonneg_left he (abs_nonneg _)).trans (by
    simpa only [mul_one] using prefix_abs_le X x hx)

/-- The actual corrected numerator near the removed pole has a genuine elementary bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8c568cc31fa40fc095a085eaf1473101424aaca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
