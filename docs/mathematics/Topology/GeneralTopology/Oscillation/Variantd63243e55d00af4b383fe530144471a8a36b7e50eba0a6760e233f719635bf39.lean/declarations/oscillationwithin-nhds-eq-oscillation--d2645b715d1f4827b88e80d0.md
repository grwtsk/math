# oscillationWithin_nhds_eq_oscillation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "440b72bf27f5d4e6bea6b853923902ed2e65dd2d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d63243e55d00af4b383fe530144471a8a36b7e50eba0a6760e233f719635bf39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43a089c6-e91e-74d7-3d41-f66bb4dfdae1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:252f34d8-64f6-25d0-26ca-2f39769980c6",
  "kind": "theorem",
  "lexical_name": "oscillationWithin_nhds_eq_oscillation",
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
  "slug": "oscillationwithin-nhds-eq-oscillation--d2645b715d1f4827b88e80d0",
  "source": {
    "blob": "440b72bf27f5d4e6bea6b853923902ed2e65dd2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 49,
    "path": "GRWTSK/Topology/GeneralTopology/Oscillation/Variantd63243e55d00af4b383fe530144471a8a36b7e50eba0a6760e233f719635bf39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2645b715d1f4827b88e80d0d2b37002d88c6eaa2246738a700d94bced9d617a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Oscillation/Variantd63243e55d00af4b383fe530144471a8a36b7e50eba0a6760e233f719635bf39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:252f34d8-64f6-25d0-26ca-2f39769980c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oscillationWithin_nhds_eq_oscillation [TopologicalSpace E] (f : E → F) (D : Set E) (x : E)
    (hD : D ∈ 𝓝 x) : oscillationWithin f D x = oscillation f x := by
  rw [oscillation, oscillationWithin, nhdsWithin_eq_nhds.2 hD]

/-- The oscillation of `f` at `x` within `univ` is equal to `oscillation f x` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Oscillation/Variantd63243e55d00af4b383fe530144471a8a36b7e50eba0a6760e233f719635bf39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Oscillation/Variantd63243e55d00af4b383fe530144471a8a36b7e50eba0a6760e233f719635bf39.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `440b72bf27f5d4e6bea6b853923902ed2e65dd2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
