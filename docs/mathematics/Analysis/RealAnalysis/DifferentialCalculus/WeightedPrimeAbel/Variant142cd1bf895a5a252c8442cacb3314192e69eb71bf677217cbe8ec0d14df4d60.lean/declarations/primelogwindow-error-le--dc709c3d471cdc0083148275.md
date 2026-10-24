# primeLogWindow_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9df2fcebf3c1d38770af421c135d107684afbc26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/142cd1bf895a5a252c8442cacb3314192e69eb71bf677217cbe8ec0d14df4d60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cafd9932-e773-313b-ea0e-ce43717770f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dafa27e9-cdfe-8c72-3a4f-57d36c626e1f",
  "kind": "theorem",
  "lexical_name": "primeLogWindow_error_le",
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
  "slug": "primelogwindow-error-le--dc709c3d471cdc0083148275",
  "source": {
    "blob": "9df2fcebf3c1d38770af421c135d107684afbc26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 205,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant142cd1bf895a5a252c8442cacb3314192e69eb71bf677217cbe8ec0d14df4d60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc709c3d471cdc0083148275008019ba61d4e5987fecbaae7fb9c7bfc156ce9d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant142cd1bf895a5a252c8442cacb3314192e69eb71bf677217cbe8ec0d14df4d60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dafa27e9-cdfe-8c72-3a4f-57d36c626e1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeLogWindow_error_le (a b : ℝ) (ha : 0 ≤ a) (hab : a ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) (C : ℝ)
    (hC : ∀ t : ℝ, 0 ≤ t → |primeLogError t| ≤ C) :
    |primeLogWindow a b F - (∫ t in a..b, F t)| ≤
      C * (|F a| + |F b| + ∫ t in a..b, |deriv F t|) := by
  have hi := primeLogError_mul_deriv_intervalIntegrable a b hab F hF
  have hia : IntervalIntegrable (fun t => |primeLogError t * deriv F t|) volume a b := hi.abs
  have higm : IntervalIntegrable (fun t => C * |deriv F t|) volume a b :=
    (hF.continuous_deriv_one.abs.intervalIntegrable a b).const_mul C
  have him : (∫ t in a..b, |primeLogError t * deriv F t|) ≤
      ∫ t in a..b, C * |deriv F t| := by
    apply intervalIntegral.integral_mono_on hab hia higm
    intro t ht
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_right (hC t (ha.trans ht.1)) (abs_nonneg _)
  have hib : |∫ t in a..b, primeLogError t * deriv F t| ≤
      C * (∫ t in a..b, |deriv F t|) := by
    exact ((intervalIntegral.abs_integral_le_integral_abs hab).trans him).trans_eq
      (intervalIntegral.integral_const_mul C _)
  have hba : |F a * primeLogError a| ≤ C * |F a| := by
    rw [abs_mul, mul_comm C]
    exact mul_le_mul_of_nonneg_left (hC a ha) (abs_nonneg _)
  have hbb : |F b * primeLogError b| ≤ C * |F b| := by
    rw [abs_mul, mul_comm C]
    exact mul_le_mul_of_nonneg_left (hC b (ha.trans hab)) (abs_nonneg _)
  rw [primeLogWindow_sub_integral a b ha hab F hF]
  have htri := abs_add_le (F b * primeLogError b) (-(F a * primeLogError a))
  have htri2 := abs_add_le (F b * primeLogError b - F a * primeLogError a)
    (-(∫ t in a..b, primeLogError t * deriv F t))
  simp only [abs_neg] at htri htri2
  rw [← sub_eq_add_neg] at htri htri2
  nlinarith

/-- One fixed elementary arithmetic constant works for every logarithmic window and C1 test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant142cd1bf895a5a252c8442cacb3314192e69eb71bf677217cbe8ec0d14df4d60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant142cd1bf895a5a252c8442cacb3314192e69eb71bf677217cbe8ec0d14df4d60.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9df2fcebf3c1d38770af421c135d107684afbc26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
