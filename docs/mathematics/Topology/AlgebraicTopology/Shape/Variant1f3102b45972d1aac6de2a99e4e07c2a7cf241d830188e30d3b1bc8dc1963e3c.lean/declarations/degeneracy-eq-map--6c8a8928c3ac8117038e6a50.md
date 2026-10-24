# degeneracy_eq_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "50d79d0810c3536b4358065fab002a9331e9c3ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de65d30c-4e3f-61bb-0098-9d5d93a615ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b500a31d-2e32-f76e-0f7f-730040891fcd",
  "kind": "theorem",
  "lexical_name": "degeneracy_eq_map",
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
  "slug": "degeneracy-eq-map--6c8a8928c3ac8117038e6a50",
  "source": {
    "blob": "50d79d0810c3536b4358065fab002a9331e9c3ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 92,
    "path": "GRWTSK/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c8a8928c3ac8117038e6a50550983944c9908199dc34716dd27ecae12a5a5ff",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b500a31d-2e32-f76e-0f7f-730040891fcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degeneracy_eq_map (S : Shape) {n : Nat}
    (i : Fin (n + 1)) (x : S.Cell n) :
    S.degeneracy i x = S.map (SimplexCategory.σ i).op x :=
  rfl

end Shape

/-- A shape together with finite cell types in every degree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50d79d0810c3536b4358065fab002a9331e9c3ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
