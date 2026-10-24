# centerAndRescale_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe4db7a6-e8fe-42ff-7d87-b4184dbce036",
  "kind": "theorem",
  "lexical_name": "centerAndRescale_radius",
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
  "slug": "centerandrescale-radius--f16be07ebe6cd57040d3b322",
  "source": {
    "blob": "1869385c3d944b59e8aa3a2782b82eae1267759e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 92,
    "path": "GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f16be07ebe6cd57040d3b322b77190ddaf86f3afd155d27641504f4264770220",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe4db7a6-e8fe-42ff-7d87-b4184dbce036`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centerAndRescale_radius {N : ℕ} {τ : ℝ} (a : SatelliteConfig E N τ) :
    a.centerAndRescale.r (last N) = 1 := by
  simp [SatelliteConfig.centerAndRescale, inv_mul_cancel₀ (a.rpos _).ne']

end SatelliteConfig

/-! ### Disjoint balls of radius close to `1` in the radius `2` ball. -/


/-- The maximum cardinality of a `1`-separated set in the ball of radius `2`. This is also the
optimal number of families in the Besicovitch covering theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1869385c3d944b59e8aa3a2782b82eae1267759e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
