# centerAndRescale_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0addb87793aa4a4b608addf8c967e86dc8cd00d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a2eec97-907a-b97d-fa3d-64a41565b886",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24232850-2248-3591-0c7d-1014ded27611",
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
  "slug": "centerandrescale-radius--1ab8551290d43e2a571899fb",
  "source": {
    "blob": "c0addb87793aa4a4b608addf8c967e86dc8cd00d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 119,
    "path": "GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ab8551290d43e2a571899fb60bd15a56f5b0820c541b0266a8b2f857350d2fc",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24232850-2248-3591-0c7d-1014ded27611`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centerAndRescale_radius {N : ℕ} {τ : ℝ} (a : SatelliteConfig E N τ) :
    a.centerAndRescale.r (last N) = 1 := by
  simp [SatelliteConfig.centerAndRescale, inv_mul_cancel (a.rpos _).ne']
#align besicovitch.satellite_config.center_and_rescale_radius Besicovitch.SatelliteConfig.centerAndRescale_radius

end SatelliteConfig

/-! ### Disjoint balls of radius close to `1` in the radius `2` ball. -/


/-- The maximum cardinality of a `1`-separated set in the ball of radius `2`. This is also the
optimal number of families in the Besicovitch covering theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0addb87793aa4a4b608addf8c967e86dc8cd00d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
