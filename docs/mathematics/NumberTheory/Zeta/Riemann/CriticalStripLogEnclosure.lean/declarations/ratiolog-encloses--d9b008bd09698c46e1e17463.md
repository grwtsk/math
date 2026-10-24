# ratioLog_encloses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:279be5bb-1a0b-1b36-d5f0-440fd1a8630f",
  "kind": "theorem",
  "lexical_name": "ratioLog_encloses",
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
  "slug": "ratiolog-encloses--d9b008bd09698c46e1e17463",
  "source": {
    "blob": "73aac60196c2d9ca34352aef6fcf2a57024c7e1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 104,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9b008bd09698c46e1e17463b565a172dc62bb028832103d7365c16a15e737e1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:279be5bb-1a0b-1b36-d5f0-440fd1a8630f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ratioLog_encloses {q : ℝ} (hq : 0 ≤ q) (hq1 : q < 1) (n : ℕ) :
    |Real.log ((1 + q) / (1 - q)) - ratioLogCenter q n| ≤ ratioLogRadius q n := by
  have hqc : ‖(q : ℂ)‖ = q := by
    rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hq]
  have hqnc : ‖-(q : ℂ)‖ = q := by rw [norm_neg, hqc]
  have hp := Complex.norm_log_sub_logTaylor_le n (z := (q : ℂ)) (by rwa [hqc])
  have hm := Complex.norm_log_sub_logTaylor_le n (z := -(q : ℂ)) (by rwa [hqnc])
  simp only [hqc, hqnc, Nat.cast_add, Nat.cast_one] at hp hm
  have hlogp : Complex.log (1 + (q : ℂ)) = (Real.log (1 + q) : ℂ) := by
    simpa only [Complex.ofReal_add, Complex.ofReal_one] using
      (Complex.ofReal_log (by linarith : 0 ≤ 1 + q)).symm
  have hlogm : Complex.log (1 + -(q : ℂ)) = (Real.log (1 - q) : ℂ) := by
    simpa only [Complex.ofReal_sub, Complex.ofReal_one, sub_eq_add_neg] using
      (Complex.ofReal_log (by linarith : 0 ≤ 1 - q)).symm
  let d : ℂ := (Complex.log (1 + (q : ℂ)) - Complex.log (1 + -(q : ℂ))) -
    (Complex.logTaylor (n + 1) (q : ℂ) - Complex.logTaylor (n + 1) (-(q : ℂ)))
  have hd : ‖d‖ ≤ ratioLogRadius q n := by
    have heq : d =
        (Complex.log (1 + (q : ℂ)) - Complex.logTaylor (n + 1) (q : ℂ)) -
        (Complex.log (1 + -(q : ℂ)) - Complex.logTaylor (n + 1) (-(q : ℂ))) := by
      unfold d; ring
    rw [heq]
    exact (norm_sub_le _ _).trans (by unfold ratioLogRadius; linarith [hp, hm])
  have hre := (Complex.abs_re_le_norm d).trans hd
  simpa only [d, hlogp, hlogm, Complex.sub_re, Complex.ofReal_re, ratioLogCenter,
    Real.log_div (by linarith : (1 + q : ℝ) ≠ 0)
      (by linarith : (1 - q : ℝ) ≠ 0)] using hre

/-- An explicit construction for every real arithmetic base x>=1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73aac60196c2d9ca34352aef6fcf2a57024c7e1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
