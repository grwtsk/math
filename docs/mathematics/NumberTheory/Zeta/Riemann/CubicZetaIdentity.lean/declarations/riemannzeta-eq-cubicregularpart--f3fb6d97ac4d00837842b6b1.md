# riemannZeta₀_eq_cubicRegularPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:071ce07b-ad96-d40d-12c7-481e65a7d96e",
  "kind": "theorem",
  "lexical_name": "riemannZeta₀_eq_cubicRegularPart",
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
  "slug": "riemannzeta-eq-cubicregularpart--f3fb6d97ac4d00837842b6b1",
  "source": {
    "blob": "4543990a599ffb9fb6e6cb0f2b32c75a89bc7b5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 152,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3fb6d97ac4d00837842b6b1251c84db9183c0a893c50a86779fb497eb6d1f9e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:071ce07b-ad96-d40d-12c7-481e65a7d96e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannZeta₀_eq_cubicRegularPart (s : ℂ) (hs : -2 < s.re) :
    riemannZeta₀ s = cubicRegularPart s := by
  have hz : AnalyticOnNhd ℂ riemannZeta₀ {w : ℂ | -2 < w.re} :=
    fun w _ => differentiable_riemannZeta₀.analyticAt w
  have he : riemannZeta₀ =ᶠ[𝓝 (2 : ℂ)] cubicRegularPart := by
    apply eventuallyEq_of_mem
      ((isOpen_lt continuous_const Complex.continuous_re).mem_nhds
        (by norm_num : 1 < (2 : ℂ).re))
    intro w hw
    have hwne : w ≠ 1 := by intro hh; simp [hh] at hw
    have h := zeta_eq_cubic_of_one_lt_re w hw
    rw [riemannZeta_eq_inv_sub_add hwne] at h
    unfold cubicRegularPart
    linear_combination h
  exact (hz.eqOn_of_preconnected_of_eventuallyEq analyticOnNhd_cubicRegularPart
    cubic_halfPlane_convex.isPreconnected (by norm_num : (2 : ℂ) ∈ {w : ℂ | -2 < w.re})
    he) hs

/-- Actual zeta identity on the proved half-plane, with its pole explicitly excluded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4543990a599ffb9fb6e6cb0f2b32c75a89bc7b5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
