# integral_mul_rpow_one_add_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9fe4e130d992e78449de416cb6c39c1b9066620",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 589,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/1372223d3391018e52238b051c695f2eabd8f89f755df61dc9dccebfee5edd0b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:595c115a-dd8f-2753-d1d5-a13708ff4b9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28dd5714-1d4d-8e96-b0f0-fc6d3eebd0f2",
  "kind": "theorem",
  "lexical_name": "integral_mul_rpow_one_add_sq",
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
  "slug": "integral-mul-rpow-one-add-sq--706f446df578e291e90a7999",
  "source": {
    "blob": "e9fe4e130d992e78449de416cb6c39c1b9066620",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 589,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variant1372223d3391018e52238b051c695f2eabd8f89f755df61dc9dccebfee5edd0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:706f446df578e291e90a79991ff1810b4b525915d8df2cde1ad54eca9e19dd94",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrals/Variant1372223d3391018e52238b051c695f2eabd8f89f755df61dc9dccebfee5edd0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28dd5714-1d4d-8e96-b0f0-fc6d3eebd0f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 589–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_mul_rpow_one_add_sq {t : ℝ} (ht : t ≠ -1) :
    (∫ x : ℝ in a..b, x * (↑1 + x ^ 2) ^ t) =
      (↑1 + b ^ 2) ^ (t + 1) / (↑2 * (t + ↑1)) - (↑1 + a ^ 2) ^ (t + 1) / (↑2 * (t + ↑1)) := by
  have : ∀ x s : ℝ, (((↑1 + x ^ 2) ^ s : ℝ) : ℂ) = (1 + (x : ℂ) ^ 2) ^ (s:ℂ) := by
    intro x s
    norm_cast
    rw [ofReal_cpow, ofReal_add, ofReal_pow, ofReal_one]
    exact add_nonneg zero_le_one (sq_nonneg x)
  rw [← ofReal_inj]
  convert integral_mul_cpow_one_add_sq (_ : (t : ℂ) ≠ -1)
  · rw [← intervalIntegral.integral_ofReal]
    congr with x : 1
    rw [ofReal_mul, this x t]
    norm_cast
  · simp_rw [ofReal_sub, ofReal_div, this a (t + 1), this b (t + 1)]
    push_cast; rfl
  · rw [← ofReal_one, ← ofReal_neg, Ne.def, ofReal_inj]
    exact ht
#align integral_mul_rpow_one_add_sq integral_mul_rpow_one_add_sq

end RpowCpow

/-! ### Integral of `sin x ^ n` -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrals/Variant1372223d3391018e52238b051c695f2eabd8f89f755df61dc9dccebfee5edd0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variant1372223d3391018e52238b051c695f2eabd8f89f755df61dc9dccebfee5edd0b.lean#L589).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9fe4e130d992e78449de416cb6c39c1b9066620` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
