# norm_exp_ray_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e7ac331-b990-81c9-2a6f-fc60f66a11fe",
  "kind": "theorem",
  "lexical_name": "norm_exp_ray_sub_le",
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
  "slug": "norm-exp-ray-sub-le--8c680c784dff4d30bf83bfa3",
  "source": {
    "blob": "90f8543fc6a78f2a935e67806f68ecf59b46818f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 32,
    "path": "GRWTSK/Analysis/Complex/IntervalMellinRangeReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c680c784dff4d30bf83bfa375733ae53a65e0b6343065184d018a6914ddf408",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IntervalMellinRangeReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e7ac331-b990-81c9-2a6f-fc60f66a11fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_exp_ray_sub_le {a : ℂ} (ha : a.re ≤ 0) {s t : ℝ}
    (hs : 0 ≤ s) (ht : 0 ≤ t) :
    ‖Complex.exp (a * (s : ℂ)) - Complex.exp (a * (t : ℂ))‖ ≤ ‖a‖ * |s - t| := by
  have hd (u : ℝ) :
      HasDerivAt (fun v : ℝ => Complex.exp (a * (v : ℂ)))
        (Complex.exp (a * (u : ℂ)) * a) u := by
    simpa using (((hasDerivAt_id u).ofReal_comp).const_mul a).cexp
  have hb (u : ℝ) (hu : u ∈ Set.Ici (0 : ℝ)) :
      ‖Complex.exp (a * (u : ℂ)) * a‖ ≤ ‖a‖ := by
    have hre : (a * (u : ℂ)).re ≤ 0 := by
      simpa only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
        mul_zero, sub_zero] using mul_nonpos_of_nonpos_of_nonneg ha hu
    have he : ‖Complex.exp (a * (u : ℂ))‖ ≤ 1 := by
      simpa only [Complex.norm_exp, Real.exp_zero] using Real.exp_le_exp.mpr hre
    calc
      _ = ‖Complex.exp (a * (u : ℂ))‖ * ‖a‖ := norm_mul _ _
      _ ≤ 1 * ‖a‖ := mul_le_mul_of_nonneg_right he (norm_nonneg a)
      _ = _ := one_mul _
  have h := (convex_Ici (0 : ℝ)).norm_image_sub_le_of_norm_hasDerivWithin_le
    (fun u _ => (hd u).hasDerivWithinAt) hb ht hs
  simpa only [Real.norm_eq_abs] using h

/-- Only the polynomial's approximate exponent needs this norm majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IntervalMellinRangeReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IntervalMellinRangeReduction.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90f8543fc6a78f2a935e67806f68ecf59b46818f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
