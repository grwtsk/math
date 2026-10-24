# negative_first_abs_le_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2cb3645-d453-e297-9e3b-fcca7cf718c6",
  "kind": "theorem",
  "lexical_name": "negative_first_abs_le_four",
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
  "slug": "negative-first-abs-le-four--fe9157e9f18742a4f7172c2c",
  "source": {
    "blob": "21feac81000a252f8a090686e20364a5898204f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 244,
    "path": "GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variant2b746a2e4c0270352cdef60a0fa1ea4fa248a3057ab0463eb1481b365c04cf5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe9157e9f18742a4f7172c2c93693f0fb0ba9c0de5d19dc44003bfb9ac99eece",
  "verification": {
    "reference": "docs/verification/Analysis/SourceActualRelativeKernelMoments/Variant2b746a2e4c0270352cdef60a0fa1ea4fa248a3057ab0463eb1481b365c04cf5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2cb3645-d453-e297-9e3b-fcca7cf718c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem negative_first_abs_le_four {A : ℝ} (hA : 1 ≤ A) :
    |∫ t in 0..2*A, t * Real.exp (-t/2) *
      sourceCorrelation explicitSecondDerivative A t| ≤ 4 := by
  have hab : (0:ℝ) ≤ 2*A := by linarith
  have hc : Continuous (fun t : ℝ => t * Real.exp (-t/2)) := by fun_prop
  have hg := hc.intervalIntegrable (μ:=volume) 0 (2*A)
  have hb := intervalIntegral.norm_integral_le_of_norm_le (μ:=volume)
    (f:=fun t => t * Real.exp (-t/2) * sourceCorrelation explicitSecondDerivative A t)
    (g:=fun t => t * Real.exp (-t/2)) hab (ae_of_all _ (fun t ht => by
      simp only [norm_mul, Real.norm_eq_abs, Real.abs_exp,
        abs_of_nonneg ht.1.le]
      simpa only [mul_one] using mul_le_mul_of_nonneg_left
        (actual_correlation_abs_le_one A t hA)
        (mul_nonneg ht.1.le (Real.exp_pos _).le))) hg
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => -(2*t+4)*Real.exp (-t/2))
      (t * Real.exp (-t/2)) t := by
    convert! (((((hasDerivAt_id t).const_mul 2).add_const 4).neg).mul
      (((hasDerivAt_id t).neg.div_const 2).exp)) using 1
    · funext u
      congr 1
      ring
    · simp only [id_eq]
      ring
  have he : (∫ t in 0..2*A, t * Real.exp (-t/2)) =
      4 - (4*A+4)*Real.exp (-A) := by
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t) hg]
    simp only [mul_zero, zero_add, neg_zero, zero_div, Real.exp_zero, mul_one]
    rw [show -(2*A)/2 = -A by ring]
    ring
  rw [Real.norm_eq_abs, he] at hb
  exact hb.trans (by have := Real.exp_pos (-A); nlinarith)

/-- The full first relative kernel moment is uniformly bounded by six. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SourceActualRelativeKernelMoments/Variant2b746a2e4c0270352cdef60a0fa1ea4fa248a3057ab0463eb1481b365c04cf5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variant2b746a2e4c0270352cdef60a0fa1ea4fa248a3057ab0463eb1481b365c04cf5b.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21feac81000a252f8a090686e20364a5898204f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
