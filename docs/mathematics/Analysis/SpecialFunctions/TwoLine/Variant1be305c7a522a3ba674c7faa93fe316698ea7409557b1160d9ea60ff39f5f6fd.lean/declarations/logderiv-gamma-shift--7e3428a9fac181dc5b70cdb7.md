# logDeriv_Gammaℝ_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:def47f73-7298-9a64-ddfa-029c1c721185",
  "kind": "theorem",
  "lexical_name": "logDeriv_Gammaℝ_shift",
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
  "slug": "logderiv-gamma-shift--7e3428a9fac181dc5b70cdb7",
  "source": {
    "blob": "b6005991cec012a0a73717175399c62d2a53bded",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 38,
    "path": "GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e3428a9fac181dc5b70cdb7467f6c29e712df05ebd6cc05530f651ef8cba971",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:def47f73-7298-9a64-ddfa-029c1c721185`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_Gammaℝ_shift {u : ℂ} (hu : u.im ≠ 0) :
    logDeriv Gammaℝ u = logDeriv Gammaℝ (u + 2) - 1 / u := by
  have hu0 := ne_zero_of_im_ne_zero hu
  have hu2 : (u + 2).im ≠ 0 := by simpa using hu
  -- Γℝ(z+2) = Γℝ(z)·z/(2π) near u
  have hev : (fun z => Gammaℝ (z + 2)) =ᶠ[𝓝 u] fun z => Gammaℝ z * (z / 2 / (Real.pi : ℂ)) := by
    filter_upwards [isOpen_im_ne_zero.mem_nhds hu] with z hz
    rw [Gammaℝ_add_two (ne_zero_of_im_ne_zero hz)]; ring
  have hd2 : DifferentiableAt ℂ Gammaℝ (u + 2) := differentiableAt_Gammaℝ_of_im_ne_zero hu2
  have hdu : DifferentiableAt ℂ Gammaℝ u := differentiableAt_Gammaℝ_of_im_ne_zero hu
  -- logDeriv of the left side
  have hL : logDeriv (fun z => Gammaℝ (z + 2)) u = logDeriv Gammaℝ (u + 2) := by
    rw [logDeriv_apply, logDeriv_apply, deriv_comp_add_const]
  -- logDeriv of the right side
  have hlin : DifferentiableAt ℂ (fun z : ℂ => z / 2 / (Real.pi : ℂ)) u := by fun_prop
  have hπ : (Real.pi : ℂ) ≠ 0 := by exact_mod_cast Real.pi_ne_zero
  have hR : logDeriv (fun z => Gammaℝ z * (z / 2 / (Real.pi : ℂ))) u = logDeriv Gammaℝ u + 1 / u := by
    rw [logDeriv_mul u (Gammaℝ_ne_zero_of_im_ne_zero hu) (by simp [hu0, hπ]) hdu hlin]
    congr 1
    rw [logDeriv_apply]
    have : deriv (fun z : ℂ => z / 2 / (Real.pi : ℂ)) u = 1 / 2 / (Real.pi : ℂ) := by
      rw [deriv_div_const, deriv_div_const, deriv_id'']
    rw [this]; field_simp
  -- the two functions agree near u, so their logDerivs at u agree
  have heq : logDeriv (fun z => Gammaℝ (z + 2)) u = logDeriv (fun z => Gammaℝ z * (z / 2 / (Real.pi : ℂ))) u := by
    rw [logDeriv_apply, logDeriv_apply, hev.deriv_eq, hev.eq_of_nhds]
  rw [← hL, heq, hR]; ring

/-! ### Re L₂ on the line Re s = 2 -/

/-- Re Γℝ′/Γℝ(s) ≥ −1 + ½(log(|Im s|/2) − 4) for Re s > 0, |Im s| ≥ 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6005991cec012a0a73717175399c62d2a53bded` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
