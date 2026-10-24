# energy_eq_zero_iff_constant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8443dddddc00f3c8e5c79c110381c7fa2d58ad6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/Geometry/Hodge/FiniteGraphCellular.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23c2b8ca-104c-7c1c-ef03-796391725ae9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:594d03d0-ce97-3ac0-801d-5271447d5350",
  "kind": "theorem",
  "lexical_name": "energy_eq_zero_iff_constant",
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
  "slug": "energy-eq-zero-iff-constant--87e8c88717f3fedbbf47ac35",
  "source": {
    "blob": "8443dddddc00f3c8e5c79c110381c7fa2d58ad6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 185,
    "path": "GRWTSK/Geometry/Hodge/FiniteGraphCellular.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87e8c88717f3fedbbf47ac35de3c6ed92f6aaa97b176ec7e532605b184775447",
  "verification": {
    "reference": "docs/verification/Geometry/Hodge/FiniteGraphCellular.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:594d03d0-ce97-3ac0-801d-5271447d5350`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energy_eq_zero_iff_constant (x : Fin 7 → ℝ) :
    energy x = 0 ↔ ∃ c : ℝ, x = fun _ => c := by
  constructor
  · intro hx
    have hedge := (energy_eq_zero_iff x).mp hx
    refine ⟨x 0, ?_⟩
    funext i
    exact eq_vertex_zero_of_edge_eq x hedge i
  · rintro ⟨c, rfl⟩
    apply (energy_eq_zero_iff _).2
    intro e
    rfl

/-- Rational Moser cellular cocycles extend to real cellular cocycles. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Hodge/FiniteGraphCellular.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Hodge/FiniteGraphCellular.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8443dddddc00f3c8e5c79c110381c7fa2d58ad6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
