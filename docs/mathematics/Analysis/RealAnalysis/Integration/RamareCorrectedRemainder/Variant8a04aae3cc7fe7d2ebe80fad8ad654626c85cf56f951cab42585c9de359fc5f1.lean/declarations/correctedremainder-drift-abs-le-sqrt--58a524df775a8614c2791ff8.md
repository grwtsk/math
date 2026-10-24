# correctedRemainder_drift_abs_le_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81a45e50e6ee9d4a0d9f59f46f0665f8c4a9b7a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5c0b3dc-80c8-a415-6f55-c3e015bbbabf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77b192e6-da10-1f6a-5fe0-880ea04d7fd3",
  "kind": "theorem",
  "lexical_name": "correctedRemainder_drift_abs_le_sqrt",
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
  "slug": "correctedremainder-drift-abs-le-sqrt--58a524df775a8614c2791ff8",
  "source": {
    "blob": "81a45e50e6ee9d4a0d9f59f46f0665f8c4a9b7a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 67,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58a524df775a8614c2791ff82ed9ce99e61f9038c9d64bdbf4db3c42109f8bf1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77b192e6-da10-1f6a-5fe0-880ea04d7fd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedRemainder_drift_abs_le_sqrt
    {A : Nat} {x c : Real} (hA : 1 <= A) (hAx : (A : Real) <= x)
    (hc : 0 <= c)
    (henv : ∀ t, (A : Real) <= t -> t <= x ->
      |chebyshevRemainder t| <= c * Real.sqrt t) :
    |correctedRemainder x - correctedRemainder A| <=
      2 * c / Real.sqrt A := by
  have hApos : (0 : Real) < A := by positivity
  have herr := MathExtras.MertensFirstSharp.intervalIntegrable_psiError_div_sq
    hA hAx
  have hmaj : IntervalIntegrable
      (fun t : Real => c / (Real.sqrt t * t)) volume A x := by
    refine ContinuousOn.intervalIntegrable ?_
    intro t ht
    rw [Set.uIcc_of_le hAx] at ht
    have htpos : 0 < t := lt_of_lt_of_le hApos ht.1
    have hs0 : Real.sqrt t ≠ 0 := (Real.sqrt_pos.mpr htpos).ne'
    have ht0 : t ≠ 0 := htpos.ne'
    have hden : Real.sqrt t * t ≠ 0 := mul_ne_zero hs0 ht0
    exact ContinuousAt.continuousWithinAt (by fun_prop)
  have hpoint : ∀ t ∈ Set.Icc (A : Real) x,
      |chebyshevRemainder t / t ^ 2| <=
        c / (Real.sqrt t * t) := by
    intro t ht
    have htpos : 0 < t := lt_of_lt_of_le hApos ht.1
    have hspos : 0 < Real.sqrt t := Real.sqrt_pos.mpr htpos
    have hs2 : Real.sqrt t * Real.sqrt t = t :=
      Real.mul_self_sqrt htpos.le
    have he := henv t ht.1 ht.2
    calc
      |chebyshevRemainder t / t ^ 2| =
          |chebyshevRemainder t| / t ^ 2 := by
            rw [abs_div, abs_of_pos (sq_pos_of_pos htpos)]
      _ <= (c * Real.sqrt t) / t ^ 2 :=
        div_le_div_of_nonneg_right he (sq_pos_of_pos htpos).le
      _ = c / (Real.sqrt t * t) := by
        field_simp [hspos.ne', htpos.ne']
        nlinarith
  apply correctedRemainder_drift_abs_le_of_integral hA hAx
  calc
    (∫ t in (A : Real)..x, |chebyshevRemainder t / t ^ 2|) <=
        ∫ t in (A : Real)..x, c / (Real.sqrt t * t) :=
      intervalIntegral.integral_mono_on hAx herr.abs hmaj hpoint
    _ = c * (∫ t in (A : Real)..x, 1 / (Real.sqrt t * t)) := by
      rw [← intervalIntegral.integral_const_mul]
      apply intervalIntegral.integral_congr
      intro t _
      ring
    _ <= c * (2 / Real.sqrt A) :=
      mul_le_mul_of_nonneg_left
        (MathExtras.MertensFirstSharp.integral_inv_sqrt_mul_le hApos hAx) hc
    _ = 2 * c / Real.sqrt A := by ring

/-- If `|R(t)| <= a*t + b*sqrt(t)`, Abel transport of the corrected
remainder costs only the integral terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81a45e50e6ee9d4a0d9f59f46f0665f8c4a9b7a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
