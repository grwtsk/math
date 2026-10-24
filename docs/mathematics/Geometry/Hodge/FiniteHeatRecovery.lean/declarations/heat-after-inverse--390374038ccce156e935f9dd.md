# heat_after_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61ab73e8-95f0-897f-1da7-e4d6b3376e61",
  "kind": "theorem",
  "lexical_name": "heat_after_inverse",
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
  "slug": "heat-after-inverse--390374038ccce156e935f9dd",
  "source": {
    "blob": "002b7d5c2f5530ff61cd5cfaf18f6d5463cf19fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 78,
    "path": "GRWTSK/Geometry/Hodge/FiniteHeatRecovery.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:390374038ccce156e935f9ddd6c1733f6b452585ceceec4a3126e58562acbd45",
  "verification": {
    "reference": "docs/verification/Geometry/Hodge/FiniteHeatRecovery.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61ab73e8-95f0-897f-1da7-e4d6b3376e61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heat_after_inverse {ι : Type*} (eigenvalue : ι → ℝ) (t : ℝ)
    (signal : ι → ℝ) :
    diagonalHeat eigenvalue t (inverseDiagonalHeat eigenvalue t signal) =
      signal := by
  funext i
  change Real.exp (-(t * eigenvalue i)) *
    (Real.exp (t * eigenvalue i) * signal i) = signal i
  calc
    Real.exp (-(t * eigenvalue i)) *
        (Real.exp (t * eigenvalue i) * signal i) =
      (Real.exp (-(t * eigenvalue i)) *
        Real.exp (t * eigenvalue i)) * signal i := by ring
    _ = Real.exp (-(t * eigenvalue i) + t * eigenvalue i) *
        signal i := by rw [Real.exp_add]
    _ = signal i := by simp

/-- Finite-time exact heat cannot identify distinct input signals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Hodge/FiniteHeatRecovery.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Hodge/FiniteHeatRecovery.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `002b7d5c2f5530ff61cd5cfaf18f6d5463cf19fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
