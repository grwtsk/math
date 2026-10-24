# nhds_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f723340f-99ce-07d5-cdc8-e53e790231b9",
  "kind": "theorem",
  "lexical_name": "nhds_mul",
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
  "slug": "nhds-mul--a7ae9d0a1bc93365f29abe2a",
  "source": {
    "blob": "c699590b3ab696baf28c44478bafdf2d8a450bad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 300,
    "path": "GRWTSK/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7ae9d0a1bc93365f29abe2af3c3f2326542fdbb2025efe1ca21ef24c67e617f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f723340f-99ce-07d5-cdc8-e53e790231b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_mul (x y : G) : 𝓝 (x * y) = 𝓝 x * 𝓝 y :=
  calc
    𝓝 (x * y) = map (x * ·) (map (· * y) (𝓝 1 * 𝓝 1)) := by simp
    _ = map₂ (fun a b => x * (a * b * y)) (𝓝 1) (𝓝 1) := by rw [← map₂_mul, map_map₂, map_map₂]
    _ = map₂ (fun a b => x * a * (b * y)) (𝓝 1) (𝓝 1) := by simp only [mul_assoc]
    _ = 𝓝 x * 𝓝 y := by
      rw [← map_mul_left_nhds_one x, ← map_mul_right_nhds_one y, ← map₂_mul, map₂_map_left,
        map₂_map_right]

/-- On a topological group, `𝓝 : G → Filter G` can be promoted to a `MulHom`. -/
@[to_additive (attr := simps)
  /-- On an additive topological group, `𝓝 : G → Filter G` can be promoted to an `AddHom`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c699590b3ab696baf28c44478bafdf2d8a450bad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
