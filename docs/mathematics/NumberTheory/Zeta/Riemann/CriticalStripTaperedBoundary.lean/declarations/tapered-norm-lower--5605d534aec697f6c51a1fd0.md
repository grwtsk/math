# tapered_norm_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d6e8d14-6762-2434-f972-b16926c8d7f9",
  "kind": "theorem",
  "lexical_name": "tapered_norm_lower",
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
  "slug": "tapered-norm-lower--5605d534aec697f6c51a1fd0",
  "source": {
    "blob": "ca8be3674bb665ffd299f7323571742654b42fa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 59,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5605d534aec697f6c51a1fd05381a8708fb9e9f33a522a3f7f43d09a957edc18",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d6e8d14-6762-2434-f972-b16926c8d7f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tapered_norm_lower {u : ℝ} (hu : 0 < u) (hu4 : u ≤ 1 / 4)
    {s : ℂ} (hs : s ∈ rightBand (1 - u) (1 - 2 * u)) :
    3 * u / 4 ≤ ‖poleNormalizedZeta s‖ := by
  have hquad : u ^ 2 ≤ u / 4 := by
    nlinarith [mul_nonneg hu.le (sub_nonneg.mpr hu4)]
  have hbudget : (1 - (1 - u)) ^ 2 + (1 - 2 * u) ^ 2 ≤
      (1 - 7 * u / 4) ^ 2 := by nlinarith
  have h := norm_lower_on_band (a := 1 - u) (T := 1 - 2 * u)
    (r := 1 - 7 * u / 4) (by linarith) (by linarith)
    (by linarith) (by linarith) hbudget (by linarith) hs
  have heq : (1 - u) - (1 - 7 * u / 4) = 3 * u / 4 := by ring
  rwa [heq] at h

/-- Height formulation of the same family, still strictly below natural height 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca8be3674bb665ffd299f7323571742654b42fa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
