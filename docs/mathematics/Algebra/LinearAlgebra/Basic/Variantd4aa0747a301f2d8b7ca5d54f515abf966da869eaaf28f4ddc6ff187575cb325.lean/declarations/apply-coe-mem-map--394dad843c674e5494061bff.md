# apply_coe_mem_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:579d52e7-c023-4ddd-c6b2-4e4154e25a29",
  "kind": "theorem",
  "lexical_name": "apply_coe_mem_map",
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
  "slug": "apply-coe-mem-map--394dad843c674e5494061bff",
  "source": {
    "blob": "1ac1172e7365c95125145532db35efd3059e6de4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 719,
    "line": 715,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd4aa0747a301f2d8b7ca5d54f515abf966da869eaaf28f4ddc6ff187575cb325.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:394dad843c674e5494061bff884b5108d20652dcd3cc17cb667e86df2da1bfa3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantd4aa0747a301f2d8b7ca5d54f515abf966da869eaaf28f4ddc6ff187575cb325.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:579d52e7-c023-4ddd-c6b2-4e4154e25a29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 715–719.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_coe_mem_map (f : F) {p : Submodule R M} (r : p) : f r ∈ map f p :=
  mem_map_of_mem r.prop
#align submodule.apply_coe_mem_map Submodule.apply_coe_mem_map

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantd4aa0747a301f2d8b7ca5d54f515abf966da869eaaf28f4ddc6ff187575cb325.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantd4aa0747a301f2d8b7ca5d54f515abf966da869eaaf28f4ddc6ff187575cb325.lean#L715).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ac1172e7365c95125145532db35efd3059e6de4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
