# correctedRemainder_drift_abs_le_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a215fa68-4c6d-7d3b-63a6-0806123626cc",
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
  "slug": "correctedremainder-drift-abs-le-sqrt--adba9130051001a85fa5321f",
  "source": {
    "blob": "d6c0c2ee5ab6cecd91f23ee10205cff42df31310",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant889ad3899b5cf39d454590822258f98fe8f8a85d8ec85f380ce2d253a256d9f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adba9130051001a85fa5321f6061fa3154e216a3c26c4923a28b7341ca6091bc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant889ad3899b5cf39d454590822258f98fe8f8a85d8ec85f380ce2d253a256d9f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a215fa68-4c6d-7d3b-63a6-0806123626cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–129.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant889ad3899b5cf39d454590822258f98fe8f8a85d8ec85f380ce2d253a256d9f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant889ad3899b5cf39d454590822258f98fe8f8a85d8ec85f380ce2d253a256d9f4.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6c0c2ee5ab6cecd91f23ee10205cff42df31310` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
