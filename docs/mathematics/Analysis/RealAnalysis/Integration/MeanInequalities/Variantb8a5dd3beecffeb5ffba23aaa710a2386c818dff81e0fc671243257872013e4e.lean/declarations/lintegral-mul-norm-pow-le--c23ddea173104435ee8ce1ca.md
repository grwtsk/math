# lintegral_mul_norm_pow_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "299ef74231950517bf58c7aff960934aa3729c20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b2b3cb0-6116-18e9-a087-a25bb2da9bfe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80c28a7b-b9d4-59b6-dc46-72e4459e7a56",
  "kind": "theorem",
  "lexical_name": "lintegral_mul_norm_pow_le",
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
  "slug": "lintegral-mul-norm-pow-le--c23ddea173104435ee8ce1ca",
  "source": {
    "blob": "299ef74231950517bf58c7aff960934aa3729c20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 222,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c23ddea173104435ee8ce1cacde60cb42620f641059c78c9abdde9cba26dd665",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80c28a7b-b9d4-59b6-dc46-72e4459e7a56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_mul_norm_pow_le {α} [MeasurableSpace α] {μ : Measure α}
    {f g : α → ℝ≥0∞} (hf : AEMeasurable f μ) (hg : AEMeasurable g μ)
    {p q : ℝ} (hp : 0 ≤ p) (hq : 0 ≤ q) (hpq : p + q = 1) :
    ∫⁻ a, f a ^ p * g a ^ q ∂μ ≤ (∫⁻ a, f a ∂μ) ^ p * (∫⁻ a, g a ∂μ) ^ q := by
  rcases hp.eq_or_lt with rfl | hp
  · rw [zero_add] at hpq
    simp [hpq]
  rcases hq.eq_or_lt with rfl | hq
  · rw [add_zero] at hpq
    simp [hpq]
  have h2p : 1 < 1 / p := by
    rw [one_div, one_lt_inv₀ hp]
    linarith
  have h2pq : (1 / p)⁻¹ + (1 / q)⁻¹ = 1 := by simp [hpq]
  have := ENNReal.lintegral_mul_le_Lp_mul_Lq μ (Real.holderConjugate_iff.mpr ⟨h2p, h2pq⟩)
    (hf.pow_const p) (hg.pow_const q)
  simpa [← ENNReal.rpow_mul, hp.ne', hq.ne'] using this

/-- A version of Hölder with multiple arguments -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb8a5dd3beecffeb5ffba23aaa710a2386c818dff81e0fc671243257872013e4e.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `299ef74231950517bf58c7aff960934aa3729c20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
