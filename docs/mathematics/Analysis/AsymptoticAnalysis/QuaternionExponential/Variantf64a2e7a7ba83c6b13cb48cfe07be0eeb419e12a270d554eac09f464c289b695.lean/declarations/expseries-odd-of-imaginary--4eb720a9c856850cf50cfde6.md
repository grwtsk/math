# expSeries_odd_of_imaginary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e69d7e78ca170572c9fa5a2db2be462bb6b19451",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f64a2e7a7ba83c6b13cb48cfe07be0eeb419e12a270d554eac09f464c289b695.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c62e6f8-b0b1-2485-2639-d23fd2ace360",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ee4ae55-bc82-61aa-6cee-d3e0b3f64a80",
  "kind": "theorem",
  "lexical_name": "expSeries_odd_of_imaginary",
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
  "slug": "expseries-odd-of-imaginary--4eb720a9c856850cf50cfde6",
  "source": {
    "blob": "e69d7e78ca170572c9fa5a2db2be462bb6b19451",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 60,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/QuaternionExponential/Variantf64a2e7a7ba83c6b13cb48cfe07be0eeb419e12a270d554eac09f464c289b695.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4eb720a9c856850cf50cfde630705520d88542d7b392d9760dc7471763e24bdf",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/QuaternionExponential/Variantf64a2e7a7ba83c6b13cb48cfe07be0eeb419e12a270d554eac09f464c289b695.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ee4ae55-bc82-61aa-6cee-d3e0b3f64a80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expSeries_odd_of_imaginary {q : Quaternion ℝ} (hq : q.re = 0) (n : ℕ) :
    expSeries ℝ (Quaternion ℝ) (2 * n + 1) (fun _ => q) =
      (((-1 : ℝ) ^ n * ‖q‖ ^ (2 * n + 1) / (2 * n + 1)!) / ‖q‖) • q := by
  rw [expSeries_apply_eq]
  obtain rfl | hq0 := eq_or_ne q 0
  · simp
  have hq2 : q ^ 2 = -normSq q := sq_eq_neg_normSq.mpr hq
  have hqn := norm_ne_zero_iff.mpr hq0
  let k : ℝ := ↑(2 * n + 1)!
  calc
    k⁻¹ • q ^ (2 * n + 1) = k⁻¹ • ((-normSq q) ^ n * q) := by rw [pow_succ, pow_mul, hq2]
    _ = k⁻¹ • ((-1 : ℝ) ^ n * ‖q‖ ^ (2 * n)) • q := ?_
    _ = ((-1 : ℝ) ^ n * ‖q‖ ^ (2 * n + 1) / k / ‖q‖) • q := ?_
  · congr 1
    rw [neg_pow, normSq_eq_norm_mul_self, pow_mul, sq, ← coe_mul_eq_smul]
    norm_cast
  · rw [smul_smul]
    congr 1
    simp_rw [pow_succ, mul_div_assoc, div_div_cancel_left' hqn]
    ring

/-- Auxiliary result; if the power series corresponding to `Real.cos` and `Real.sin` evaluated
at `‖q‖` tend to `c` and `s`, then the exponential series tends to `c + (s / ‖q‖)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/QuaternionExponential/Variantf64a2e7a7ba83c6b13cb48cfe07be0eeb419e12a270d554eac09f464c289b695.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/QuaternionExponential/Variantf64a2e7a7ba83c6b13cb48cfe07be0eeb419e12a270d554eac09f464c289b695.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69d7e78ca170572c9fa5a2db2be462bb6b19451` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
