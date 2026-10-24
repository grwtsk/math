# norm_logDeriv_horizontal_ray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3ccfdf4-1c35-dc6c-c8b6-1f384018c31d",
  "kind": "theorem",
  "lexical_name": "norm_logDeriv_horizontal_ray",
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
  "slug": "norm-logderiv-horizontal-ray--0f2e0586ebff927030b121b2",
  "source": {
    "blob": "1cb28ea8264f8e9ad9dedd1be77c9b6b68e5b1f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 134,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f2e0586ebff927030b121b203cc48ce62ada0a781e79be49dfb1b0f5b52a230",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3ccfdf4-1c35-dc6c-c8b6-1f384018c31d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_logDeriv_horizontal_ray (N : ℕ) (hN : 2 ≤ N) (σ y : ℝ)
    (hσ : σ ≤ 2) (hy : |y| = separatedHeight N) :
    ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤
      stripBudget N + 2 * mangoldtLineMass + (2 - σ) / 2 := by
  have hy0 : y ≠ 0 := by
    intro he
    rw [he, abs_zero] at hy
    linarith [separatedHeight_pos N]
  exact norm_horizontal_le_of_strip_bound y (stripBudget N) hy0
    (fun u hu => by simpa only [norm_neg] using norm_logDeriv_fixedStrip N hN u y hu hy) σ hσ

/-- Exact dependence on height; this algebra is not the normalized limit theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cb28ea8264f8e9ad9dedd1be77c9b6b68e5b1f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
