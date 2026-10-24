# d4_coordinate_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bace14ec-3b54-8f9a-2cdf-37b71ec2c47b",
  "kind": "theorem",
  "lexical_name": "d4_coordinate_bounds",
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
  "slug": "d4-coordinate-bounds--732954500959ee8935fa1cfb",
  "source": {
    "blob": "65ebbdbd30a6de7cf4c2f43a6461241fa52ff25b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 166,
    "path": "GRWTSK/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:732954500959ee8935fa1cfb30a61e09d6e7c65e2c90b7d9396947d4b8817667",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bace14ec-3b54-8f9a-2cdf-37b71ec2c47b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem d4_coordinate_bounds (x : Population 4) (hx : Reachable d4.adjacency x)
    (i : Fin 4) : -d4Highest i ≤ x i ∧ x i ≤ d4Highest i := by
  obtain ⟨s, rfl⟩ := (d4_orbit_exact x).mp hx
  exact d4_coordinate_bounds_checked s i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65ebbdbd30a6de7cf4c2f43a6461241fa52ff25b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
