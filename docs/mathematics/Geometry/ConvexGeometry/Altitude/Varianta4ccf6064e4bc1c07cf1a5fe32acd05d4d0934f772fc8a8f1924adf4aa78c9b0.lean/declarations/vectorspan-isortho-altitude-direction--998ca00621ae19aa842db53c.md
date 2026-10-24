# vectorSpan_isOrtho_altitude_direction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:caec1555-212c-239b-8139-31e8337d512f",
  "kind": "theorem",
  "lexical_name": "vectorSpan_isOrtho_altitude_direction",
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
  "slug": "vectorspan-isortho-altitude-direction--998ca00621ae19aa842db53c",
  "source": {
    "blob": "6315697d7006fb2eed028c52fe68cef9b061932e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 75,
    "path": "GRWTSK/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:998ca00621ae19aa842db53cfb76712ab23e52f357fa7bc18969cb6930c18a65",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caec1555-212c-239b-8139-31e8337d512f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vectorSpan_isOrtho_altitude_direction {n : ℕ} (s : Simplex ℝ P n) (i : Fin (n + 1)) :
    vectorSpan ℝ (s.points '' {i}ᶜ) ⟂ (s.altitude i).direction := by
  rw [direction_altitude]
  exact (Submodule.isOrtho_orthogonal_right _).mono_right inf_le_left

open Module

/-- An altitude is finite-dimensional. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6315697d7006fb2eed028c52fe68cef9b061932e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
