# integral_gaussian_sq_complex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3038cda35f1c8daaaac127fae8010a711397d216",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6043e428-da08-3f14-a544-b66d69d8d441",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4b43cd5-ea46-c906-1fc5-91490e7bbf68",
  "kind": "theorem",
  "lexical_name": "integral_gaussian_sq_complex",
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
  "slug": "integral-gaussian-sq-complex--4ac1c78ceb8d0b0bf5f8af4b",
  "source": {
    "blob": "3038cda35f1c8daaaac127fae8010a711397d216",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 190,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ac1c78ceb8d0b0bf5f8af4b878f64324faa3509dda7cb31e4abbd42fa41b858",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4b43cd5-ea46-c906-1fc5-91490e7bbf68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_gaussian_sq_complex {b : ℂ} (hb : 0 < b.re) :
    (∫ x : ℝ, cexp (-b * (x : ℂ) ^ 2)) ^ 2 = π / b := by
  /- We compute `(∫ exp (-b x^2))^2` as an integral over `ℝ^2`, and then make a polar change
  of coordinates. We are left with `∫ r * exp (-b r^2)`, which has been computed in
  `integral_mul_cexp_neg_mul_sq` using the fact that this function has an obvious primitive. -/
  calc
    (∫ x : ℝ, cexp (-b * (x : ℂ) ^ 2)) ^ 2 =
        ∫ p : ℝ × ℝ, cexp (-b * (p.1 : ℂ) ^ 2) * cexp (-b * (p.2 : ℂ) ^ 2) := by
      rw [pow_two, ← integral_prod_mul]; rfl
    _ = ∫ p : ℝ × ℝ, cexp (-b * ((p.1 : ℂ)^ 2 + (p.2 : ℂ) ^ 2)) := by
      congr
      ext1 p
      rw [← Complex.exp_add, mul_add]
    _ = ∫ p in polarCoord.target, p.1 •
        cexp (-b * ((p.1 * Complex.cos p.2) ^ 2 + (p.1 * Complex.sin p.2) ^ 2)) := by
      rw [← integral_comp_polarCoord_symm]
      simp only [polarCoord_symm_apply, ofReal_mul, ofReal_cos, ofReal_sin]
    _ = (∫ r in Ioi (0 : ℝ), r * cexp (-b * (r : ℂ) ^ 2)) * ∫ θ in Ioo (-π) π, 1 := by
      rw [← setIntegral_prod_mul]
      congr with p : 1
      rw [mul_one]
      congr
      conv_rhs => rw [← one_mul ((p.1 : ℂ) ^ 2), ← sin_sq_add_cos_sq (p.2 : ℂ)]
      ring
    _ = ↑π / b := by
      simp only [neg_mul, integral_const, MeasurableSet.univ, measureReal_restrict_apply,
        univ_inter, real_smul, mul_one, ← neg_mul, integral_mul_cexp_neg_mul_sq hb]
      rw [volume_real_Ioo_of_le (by linarith [pi_nonneg])]
      field_simp [(by contrapose! hb; rw [hb, zero_re] : b ≠ 0)]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3038cda35f1c8daaaac127fae8010a711397d216` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
