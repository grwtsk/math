# hasSum_expSeries_of_imaginary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3dc379305b4b4f7d724001a61f538ff95bc24015",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14eb9ed7-4887-d116-1d49-639beee2f552",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57b037bd-73a2-f0ae-50de-aba3ee98e456",
  "kind": "theorem",
  "lexical_name": "hasSum_expSeries_of_imaginary",
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
  "slug": "hassum-expseries-of-imaginary--bfb577eeb7fea693360fbfc7",
  "source": {
    "blob": "3dc379305b4b4f7d724001a61f538ff95bc24015",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 41,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfb577eeb7fea693360fbfc7eab157bde765e2eb362146e49f8c2554e6f22f38",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57b037bd-73a2-f0ae-50de-aba3ee98e456`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_expSeries_of_imaginary {q : Quaternion ℝ} (hq : q.re = 0) {c s : ℝ}
    (hc : HasSum (fun n => (-1 : ℝ) ^ n * ‖q‖ ^ (2 * n) / (2 * n)!) c)
    (hs : HasSum (fun n => (-1 : ℝ) ^ n * ‖q‖ ^ (2 * n + 1) / (2 * n + 1)!) s) :
    HasSum (fun n => expSeries ℝ (Quaternion ℝ) n fun _ => q) (↑c + (s / ‖q‖) • q) := by
  replace hc := hasSum_coe.mpr hc
  replace hs := (hs.div_const ‖q‖).smul_const q
  obtain rfl | hq0 := eq_or_ne q 0
  · simp_rw [expSeries_apply_zero, norm_zero, div_zero, zero_smul, add_zero]
    simp_rw [norm_zero] at hc
    convert hc using 1
    ext (_ | n) : 1
    · rw [pow_zero, Nat.zero_eq, mul_zero, pow_zero, Nat.factorial_zero, Nat.cast_one,
        div_one, one_mul, Pi.single_eq_same, coe_one]
    · rw [zero_pow (mul_pos two_pos (Nat.succ_pos _)), mul_zero, zero_div,
        Pi.single_eq_of_ne n.succ_ne_zero, coe_zero]
  simp_rw [expSeries_apply_eq]
  have hq2 : q ^ 2 = -normSq q := sq_eq_neg_normSq.mpr hq
  have hqn := norm_ne_zero_iff.mpr hq0
  refine' HasSum.even_add_odd _ _
  · convert hc using 1
    ext n : 1
    letI k : ℝ := ↑(2 * n)!
    calc
      k⁻¹ • q ^ (2 * n) = k⁻¹ • (-normSq q) ^ n := by rw [pow_mul, hq2]; norm_cast
      _ = k⁻¹ • ↑((-1 : ℝ) ^ n * ‖q‖ ^ (2 * n)) := ?_
      _ = ↑((-1 : ℝ) ^ n * ‖q‖ ^ (2 * n) / k) := ?_
    · congr 1
      rw [neg_pow, normSq_eq_norm_mul_self, pow_mul, sq]
      push_cast
      rfl
    · rw [← coe_mul_eq_smul, div_eq_mul_inv]
      norm_cast
      ring_nf
  · convert hs using 1
    ext n : 1
    let k : ℝ := ↑(2 * n + 1)!
    calc
      k⁻¹ • q ^ (2 * n + 1) = k⁻¹ • ((-normSq q) ^ n * q) := by
        rw [pow_succ', pow_mul, hq2]
        norm_cast
      _ = k⁻¹ • ((-1 : ℝ) ^ n * ‖q‖ ^ (2 * n)) • q := ?_
      _ = ((-1 : ℝ) ^ n * ‖q‖ ^ (2 * n + 1) / k / ‖q‖) • q := ?_
    · congr 1
      rw [neg_pow, normSq_eq_norm_mul_self, pow_mul, sq, ← coe_mul_eq_smul]
    · rw [smul_smul]
      congr 1
      simp_rw [pow_succ', mul_div_assoc, div_div_cancel_left' hqn]
      ring
#align quaternion.has_sum_exp_series_of_imaginary Quaternion.hasSum_expSeries_of_imaginary

/-- The closed form for the quaternion exponential on imaginary quaternions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dc379305b4b4f7d724001a61f538ff95bc24015` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
