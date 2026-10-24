# target_avoids_tapered_bands

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea7cae19-c720-dbf5-4ac8-242a81a5adf1",
  "kind": "theorem",
  "lexical_name": "target_avoids_tapered_bands",
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
  "slug": "target-avoids-tapered-bands--51374ed33b45ef098aff45af",
  "source": {
    "blob": "ca8be3674bb665ffd299f7323571742654b42fa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 106,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51374ed33b45ef098aff45af655da9bfd6de8a0ea3cfdd7a17b8829d5a60bd96",
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

Occurrence: `result:ea7cae19-c720-dbf5-4ac8-242a81a5adf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem target_avoids_tapered_bands {u : ℝ} (hu : 0 < u) (hu4 : u ≤ 1 / 4)
    {z : ℂ} (hz : NontrivialZetaZero z) (hheight : |z.im| ≤ 1 - 2 * u) :
    u < z.re ∧ z.re < 1 - u := by
  have hright : z.re < 1 - u := by
    by_contra hnot
    have h := tapered_norm_lower hu hu4
      (show z ∈ rightBand (1 - u) (1 - 2 * u) from
        ⟨le_of_not_gt hnot, hz.mem_critical_strip.2.le, hheight⟩)
    rw [poleNormalizedZeta_zero_of_target hz, norm_zero] at h
    linarith
  have hleft : u < z.re := by
    by_contra hnot
    have hmirror := hz.critical_reflection
    have hmre : (criticalReflection z).re = 1 - z.re := by simp [criticalReflection]
    have hmheight : |(criticalReflection z).im| ≤ 1 - 2 * u := by
      simpa [criticalReflection] using hheight
    have h := tapered_norm_lower hu hu4
      (show criticalReflection z ∈ rightBand (1 - u) (1 - 2 * u) from
        ⟨by rw [hmre]; linarith [le_of_not_gt hnot],
          hmirror.mem_critical_strip.2.le, hmheight⟩)
    rw [poleNormalizedZeta_zero_of_target hmirror, norm_zero] at h
    linarith
  exact ⟨hleft, hright⟩

/-- The exact unfinished part of the first natural-height window. The equality
case of the parabola and the top height 1 remain in the target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca8be3674bb665ffd299f7323571742654b42fa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
