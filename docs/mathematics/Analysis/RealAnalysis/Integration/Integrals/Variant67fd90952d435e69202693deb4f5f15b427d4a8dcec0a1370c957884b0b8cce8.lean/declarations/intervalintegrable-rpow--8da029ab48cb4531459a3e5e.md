# intervalIntegrable_rpow'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48a6c825f7dc3cee9985320e03b21870e12f21b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67fd90952d435e69202693deb4f5f15b427d4a8dcec0a1370c957884b0b8cce8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:205748d5-4ce1-50f5-de5d-a6e5ba5ff06e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73af49e8-0913-57df-a1e3-cdca2e0cbced",
  "kind": "theorem",
  "lexical_name": "intervalIntegrable_rpow'",
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
  "slug": "intervalintegrable-rpow--8da029ab48cb4531459a3e5e",
  "source": {
    "blob": "48a6c825f7dc3cee9985320e03b21870e12f21b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variant67fd90952d435e69202693deb4f5f15b427d4a8dcec0a1370c957884b0b8cce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8da029ab48cb4531459a3e5e7ba0a8f7973d17acb4cb493a2859e1e4ed859910",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrals/Variant67fd90952d435e69202693deb4f5f15b427d4a8dcec0a1370c957884b0b8cce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73af49e8-0913-57df-a1e3-cdca2e0cbced`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intervalIntegrable_rpow' {r : ℝ} (h : -1 < r) :
    IntervalIntegrable (fun x => x ^ r) volume a b := by
  suffices ∀ c : ℝ, IntervalIntegrable (fun x => x ^ r) volume 0 c by
    exact IntervalIntegrable.trans (this a).symm (this b)
  have : ∀ c : ℝ, 0 ≤ c → IntervalIntegrable (fun x => x ^ r) volume 0 c := by
    intro c hc
    rw [intervalIntegrable_iff, uIoc_of_le hc]
    have hderiv : ∀ x ∈ Ioo 0 c, HasDerivAt (fun x : ℝ => x ^ (r + 1) / (r + 1)) (x ^ r) x := by
      intro x hx
      convert (Real.hasDerivAt_rpow_const (p := r + 1) (Or.inl hx.1.ne')).div_const (r + 1) using 1
      field_simp [(by linarith : r + 1 ≠ 0)]
    apply integrableOn_deriv_of_nonneg _ hderiv
    · intro x hx; apply rpow_nonneg hx.1.le
    · refine (continuousOn_id.rpow_const ?_).div_const _; intro x _; right; linarith
  intro c; rcases le_total 0 c with (hc | hc)
  · exact this c hc
  · rw [IntervalIntegrable.iff_comp_neg, neg_zero]
    have m := (this (-c) (by linarith)).smul (cos (r * π))
    rw [intervalIntegrable_iff] at m ⊢
    refine m.congr_fun ?_ measurableSet_Ioc; intro x hx
    rw [uIoc_of_le (by linarith : 0 ≤ -c)] at hx
    simp only [Pi.smul_apply, Algebra.id.smul_eq_mul, log_neg_eq_log, mul_comm,
      rpow_def_of_pos hx.1, rpow_def_of_neg (by linarith [hx.1] : -x < 0)]

/-- The power function `x ↦ x^s` is integrable on `(0, t)` iff `-1 < s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrals/Variant67fd90952d435e69202693deb4f5f15b427d4a8dcec0a1370c957884b0b8cce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variant67fd90952d435e69202693deb4f5f15b427d4a8dcec0a1370c957884b0b8cce8.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48a6c825f7dc3cee9985320e03b21870e12f21b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
