# twoLegalNeighbors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b49188654a67eeb7f932f2b8fc23b52f496843b66a273b9bf982844cd4d12452",
  "kind": "def",
  "lexical_name": "twoLegalNeighbors",
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
  "slug": "twolegalneighbors--dd1e33ce503c12bb336ba871",
  "source": {
    "blob": "0c1c718d7a263e9bd3d5ffb86c20dde760e7923b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurvatureDiffusionTests/Variant10d7d472c3b3b738f2943efe097f582f51dc9437961a7409f85c2bdf73d09bfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd1e33ce503c12bb336ba871143f96b80402b382a12cd1e3c4c8cad1c15238c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurvatureDiffusionTests/Variant10d7d472c3b3b738f2943efe097f582f51dc9437961a7409f85c2bdf73d09bfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b49188654a67eeb7f932f2b8fc23b52f496843b66a273b9bf982844cd4d12452`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def twoLegalNeighbors : LegalNeighborSystem twoTerrain twoBoundary where
  admitted := twoTerrain.Adjacent
  legalNeighbors := twoTerrain.neighbors
  mem_legalNeighbors_iff := by intros; rfl
  admitted_adjacent := id
  admitted_symmetric := by
    intro x y hxy
    exact (twoTerrain.adjacent_comm).1 hxy
  obstacle_excluded := by simp [twoBoundary]

/-- Identity signal evolution, used to expose the linear/threshold boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurvatureDiffusionTests/Variant10d7d472c3b3b738f2943efe097f582f51dc9437961a7409f85c2bdf73d09bfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurvatureDiffusionTests/Variant10d7d472c3b3b738f2943efe097f582f51dc9437961a7409f85c2bdf73d09bfd.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c1c718d7a263e9bd3d5ffb86c20dde760e7923b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
