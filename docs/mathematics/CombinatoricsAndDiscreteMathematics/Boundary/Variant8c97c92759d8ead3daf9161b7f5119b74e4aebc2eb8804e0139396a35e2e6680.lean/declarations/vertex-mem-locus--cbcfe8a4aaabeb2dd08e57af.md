# vertex_mem_locus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:862fc0e5-98d1-0838-887a-2b0d75311d27",
  "kind": "theorem",
  "lexical_name": "vertex_mem_locus",
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
  "slug": "vertex-mem-locus--cbcfe8a4aaabeb2dd08e57af",
  "source": {
    "blob": "8ba4f08dc95f7c1b9c7d139091879d7bba2d0cbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 53,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Boundary/Variant8c97c92759d8ead3daf9161b7f5119b74e4aebc2eb8804e0139396a35e2e6680.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbcfe8a4aaabeb2dd08e57af28c05517f8e4d0495b840de7b1a7d8918ec7316e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Boundary/Variant8c97c92759d8ead3daf9161b7f5119b74e4aebc2eb8804e0139396a35e2e6680.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:862fc0e5-98d1-0838-887a-2b0d75311d27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vertex_mem_locus (T : GlobalTerrain G V) (v : V) :
    T.globalCoordinate v ∈ T.locus.coordinates := by
  letI : DecidableEq G.Coord := G.coordDecEq
  exact (T.locus_exact (T.globalCoordinate v)).2 ⟨v, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Boundary/Variant8c97c92759d8ead3daf9161b7f5119b74e4aebc2eb8804e0139396a35e2e6680.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Boundary/Variant8c97c92759d8ead3daf9161b7f5119b74e4aebc2eb8804e0139396a35e2e6680.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ba4f08dc95f7c1b9c7d139091879d7bba2d0cbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
