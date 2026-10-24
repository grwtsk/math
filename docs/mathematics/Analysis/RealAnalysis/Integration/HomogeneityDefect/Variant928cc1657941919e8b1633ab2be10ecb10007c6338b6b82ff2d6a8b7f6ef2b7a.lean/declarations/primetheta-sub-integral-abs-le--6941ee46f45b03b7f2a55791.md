# primeTheta_sub_integral_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c284352f45f41ba600621b4c0b7e8948b3997da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 399,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/928cc1657941919e8b1633ab2be10ecb10007c6338b6b82ff2d6a8b7f6ef2b7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e32d2321-5910-6303-1909-88b83d3d60a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94332284-539d-c896-4ba8-355f13b66ffd",
  "kind": "theorem",
  "lexical_name": "primeTheta_sub_integral_abs_le",
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
  "slug": "primetheta-sub-integral-abs-le--6941ee46f45b03b7f2a55791",
  "source": {
    "blob": "0c284352f45f41ba600621b4c0b7e8948b3997da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 399,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variant928cc1657941919e8b1633ab2be10ecb10007c6338b6b82ff2d6a8b7f6ef2b7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6941ee46f45b03b7f2a55791d13a80212d38213212a0f626b9ec592a54eed02d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variant928cc1657941919e8b1633ab2be10ecb10007c6338b6b82ff2d6a8b7f6ef2b7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94332284-539d-c896-4ba8-355f13b66ffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeTheta_sub_integral_abs_le (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |correlationPrimeTheta A q -
      (∫ t in Set.Ioi (1 : ℝ), correlationPrimeSample A (q * t))| ≤
      2 * (4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q := by
  have hq0 : 0 < q := by linarith
  let N := ⌊Real.exp (2 * A)⌋₊ + 1
  have hN : 1 ≤ N := by dsimp [N]; omega
  have he := SamplingError.abs_sum_sub_integral_Ioi_le
    (fun t : ℝ ↦ correlationPrimeSample A (q * t)) N hN
    (fun t ht ↦ (scaledPrimeSample_hasDerivAt A q t hA hq0
      (zero_lt_one.trans_le ht.1)).differentiableAt)
    (primeSample_rescaled_integrable A q hA hq)
    (scaledPrimeSample_derivative_integrable A q hA hq0) (fun t ht ↦ by
      have hNr : (1 : ℝ) ≤ N := by exact_mod_cast hN
      have ht0 : 0 < t := zero_lt_one.trans_le (hNr.trans ht)
      apply primeSample_zero_of_exp_le A _ (mul_pos hq0 ht0)
      have hf : Real.exp (2 * A) < (N : ℝ) := by
        simpa only [N, Nat.cast_add, Nat.cast_one] using Nat.lt_floor_add_one (Real.exp (2 * A))
      nlinarith)
  rw [primeTheta_eq_padded_sum A q hq]
  exact he.trans (scaledPrimeSample_variation_le A q hA hq0)

/-- Both complete quadratures bound the signed half-beta remainder with no O(1) coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variant928cc1657941919e8b1633ab2be10ecb10007c6338b6b82ff2d6a8b7f6ef2b7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variant928cc1657941919e8b1633ab2be10ecb10007c6338b6b82ff2d6a8b7f6ef2b7a.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c284352f45f41ba600621b4c0b7e8948b3997da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
