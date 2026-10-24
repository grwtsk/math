# noteWindowLaplace_primeFilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5f63ddf-f31d-7d2a-4227-f3fa9d6de603",
  "kind": "theorem",
  "lexical_name": "noteWindowLaplace_primeFilter",
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
  "slug": "notewindowlaplace-primefilter--7b2ed1fe7ee152bc99d1c081",
  "source": {
    "blob": "cd5b5de2ac09e2d2f5f7f6b3b546dd1844545380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 109,
    "path": "GRWTSK/NumberTheory/Moebius/PrimeFilterLaplace.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b2ed1fe7ee152bc99d1c08137d64ac276c12df64d1b167a24ddf49ff4dce232",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PrimeFilterLaplace.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5f63ddf-f31d-7d2a-4227-f3fa9d6de603`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noteWindowLaplace_primeFilter {f : ℝ → ℝ} (hf : Continuous f) (hf0 : f 0 = 0)
    (z : ℂ) {p : ℕ} (hp : p.Prime) {T : ℝ} (hpT : Real.log p ≤ T) :
    noteWindowLaplace (primeNoteFilter p f) z T =
      (1-primeLaplaceWeight p z)*noteWindowLaplace f z T +
        primeLaplaceWeight p z * noteLaplaceTail f z (Real.log p) T := by
  have ha : 0 ≤ Real.log (p:ℝ) := Real.log_nonneg (by exact_mod_cast hp.one_le)
  have hs := window_integrand_continuous (causalShift_continuous hf hf0 (Real.log p)) z
  have hc := window_integrand_continuous hf z
  have he : noteWindowLaplace (primeNoteFilter p f) z T = noteWindowLaplace f z T -
      ((Real.sqrt p)⁻¹ : ℝ) * noteWindowLaplace (causalShift (Real.log p) f) z T := by
    unfold noteWindowLaplace
    calc
      _ = ∫ u in (0:ℝ)..max 0 T, Complex.exp (-z*u) * (f u : ℂ) -
          ((Real.sqrt p)⁻¹ : ℝ) * (Complex.exp (-z*u) * (causalShift (Real.log p) f u : ℂ)) := by
        apply intervalIntegral.integral_congr
        intro u _
        simp only [primeNoteFilter, Complex.ofReal_sub, Complex.ofReal_mul]
        ring
      _ = _ := by
        rw [intervalIntegral.integral_sub (hc.intervalIntegrable _ _)
          ((hs.const_mul _).intervalIntegrable _ _), intervalIntegral.integral_const_mul]
  rw [he, noteWindowLaplace_causalShift hf hf0 z ha hpT]
  have ht := noteWindowLaplace_shorter_add_tail hf z ha hpT
  unfold primeLaplaceWeight
  linear_combination -((Real.sqrt p)⁻¹ : ℝ) * Complex.exp (-z*Real.log p) * ht

/-- Applied to an actual source cascade, with no new growth premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimeFilterLaplace.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimeFilterLaplace.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5b5de2ac09e2d2f5f7f6b3b546dd1844545380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
