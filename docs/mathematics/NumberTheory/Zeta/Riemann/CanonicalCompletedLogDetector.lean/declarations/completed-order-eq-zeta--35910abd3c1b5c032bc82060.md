# completed_order_eq_zeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d4c5e3c-3a2c-a0a0-d599-f5d528dbf36e",
  "kind": "theorem",
  "lexical_name": "completed_order_eq_zeta",
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
  "slug": "completed-order-eq-zeta--35910abd3c1b5c032bc82060",
  "source": {
    "blob": "917fc9bcd9355c772137eda91188e172dff28b3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 35,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35910abd3c1b5c032bc820606ec8fe3deb1719d761c3d1ce12eed0858ef6fdff",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d4c5e3c-3a2c-a0a0-d599-f5d528dbf36e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completed_order_eq_zeta (z : ZeroPoint) :
    analyticOrderAt completedRiemannZeta z.1 = analyticOrderAt riemannZeta z.1 := by
  have hgamma : AnalyticAt ℂ (fun s => (Complex.Gammaℝ s)⁻¹) z.1 :=
    Complex.differentiable_Gammaℝ_inv.analyticAt z.1
  have hunit : (Complex.Gammaℝ z.1)⁻¹ ≠ 0 := inv_ne_zero z.2.gamma_real_ne_zero
  have hlocal : riemannZeta =ᶠ[𝓝 z.1]
      (completedRiemannZeta * fun s => (Complex.Gammaℝ s)⁻¹) := by
    filter_upwards [compl_singleton_mem_nhds z.2.ne_zero] with s hs
    simpa only [Pi.mul_apply, div_eq_mul_inv] using
      riemannZeta_def_of_ne_zero (by simpa using hs)
  have heq := analyticOrderAt_congr hlocal
  rw [analyticOrderAt_mul (completed_analytic z) hgamma,
    hgamma.analyticOrderAt_eq_zero.mpr hunit, add_zero] at heq
  exact heq.symm

/-- Completion has finite order, using the actual canonical zeta supplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `917fc9bcd9355c772137eda91188e172dff28b3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
