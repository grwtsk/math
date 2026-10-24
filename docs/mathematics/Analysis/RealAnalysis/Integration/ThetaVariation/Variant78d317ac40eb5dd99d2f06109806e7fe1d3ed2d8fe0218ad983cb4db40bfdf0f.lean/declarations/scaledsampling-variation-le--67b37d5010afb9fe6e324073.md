# scaledSampling_variation_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b0b0b12c77217651778c3401cc41f4b168af144",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/78d317ac40eb5dd99d2f06109806e7fe1d3ed2d8fe0218ad983cb4db40bfdf0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:267243fa-0647-06a3-0a96-d06743e2d596",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e8be445-77c9-4025-301a-9eb0046439be",
  "kind": "theorem",
  "lexical_name": "scaledSampling_variation_le",
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
  "slug": "scaledsampling-variation-le--67b37d5010afb9fe6e324073",
  "source": {
    "blob": "3b0b0b12c77217651778c3401cc41f4b168af144",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaVariation/Variant78d317ac40eb5dd99d2f06109806e7fe1d3ed2d8fe0218ad983cb4db40bfdf0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67b37d5010afb9fe6e324073b89393a55b197ce82f108e17b1374a79cbc92a6a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaVariation/Variant78d317ac40eb5dd99d2f06109806e7fe1d3ed2d8fe0218ad983cb4db40bfdf0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e8be445-77c9-4025-301a-9eb0046439be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledSampling_variation_le (A q : ℝ) (N : ℕ)
    (hA : 1 ≤ A) (hq : 0 < q) (hN : 1 ≤ N) :
    (∫ t in (1 : ℝ)..(N : ℝ),
      |deriv (fun t : ℝ ↦ sourceSamplingKernel A (q * t)) t|) ≤
      2 * (4 + 10 * Real.sqrt (65 / 3) / A + 4 * (65 / (3 * A ^ 2))) / Real.sqrt q := by
  let C : ℝ := 4 + 10 * Real.sqrt (65 / 3) / A + 4 * (65 / (3 * A ^ 2))
  have hA0 : 0 < A := by linarith
  have hC : 0 ≤ C := by dsimp [C]; positivity
  have hNr : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hd := (intervalIntegrable_iff_integrableOn_Icc_of_le hNr).mpr
    (scaledSampling_derivative_integrableOn A q N hA hq)
  have hm := (intervalIntegrable_iff_integrableOn_Icc_of_le hNr).mpr
    (majorant_integrableOn q C N hq)
  calc
    _ ≤ ∫ t in (1 : ℝ)..(N : ℝ), q * (C / (q * t * Real.sqrt (q * t))) := by
      apply intervalIntegral.integral_mono_on hNr hd.abs hm
      intro t ht
      have ht0 : 0 < t := lt_of_lt_of_le zero_lt_one ht.1
      rw [(scaledSampling_hasDerivAt A q t hA hq ht0).deriv, abs_mul, abs_of_pos hq]
      exact mul_le_mul_of_nonneg_left
        (sourceSamplingKernel_derivative_abs_le A (q * t) hA (mul_pos hq ht0)) hq.le
    _ ≤ _ := majorant_integral_le q C N hq hC hN

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaVariation/Variant78d317ac40eb5dd99d2f06109806e7fe1d3ed2d8fe0218ad983cb4db40bfdf0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaVariation/Variant78d317ac40eb5dd99d2f06109806e7fe1d3ed2d8fe0218ad983cb4db40bfdf0f.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b0b0b12c77217651778c3401cc41f4b168af144` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
