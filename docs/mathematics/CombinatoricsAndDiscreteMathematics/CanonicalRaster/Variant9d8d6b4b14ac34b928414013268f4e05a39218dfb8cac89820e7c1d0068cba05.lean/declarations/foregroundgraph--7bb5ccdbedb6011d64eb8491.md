# foregroundGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:780ac58d6119cb678b265be1f682c7c2b053942c1ce8131db04cbdd2acaef9c3",
  "kind": "def",
  "lexical_name": "foregroundGraph",
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
  "slug": "foregroundgraph--7bb5ccdbedb6011d64eb8491",
  "source": {
    "blob": "7c9f0e195c4ff103a9fd0e84e7fcdb7e0c8982d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant9d8d6b4b14ac34b928414013268f4e05a39218dfb8cac89820e7c1d0068cba05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bb5ccdbedb6011d64eb849124f9cd22f4590042a5711d83282e28e7e80d93c3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant9d8d6b4b14ac34b928414013268f4e05a39218dfb8cac89820e7c1d0068cba05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:780ac58d6119cb678b265be1f682c7c2b053942c1ce8131db04cbdd2acaef9c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def foregroundGraph {rows columns : Nat} (policy : AdjacencyPolicy)
    (state : RasterState rows columns) : SimpleGraph (ForegroundCell state) where
  Adj := fun left right => policy.Adjacent left.1 right.1
  symm := ⟨fun _left _right adjacent =>
    policy.adjacent_symmetric.mp adjacent⟩
  loopless := ⟨fun cell adjacent =>
    policy.not_adjacent_self cell.1 adjacent⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant9d8d6b4b14ac34b928414013268f4e05a39218dfb8cac89820e7c1d0068cba05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant9d8d6b4b14ac34b928414013268f4e05a39218dfb8cac89820e7c1d0068cba05.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c9f0e195c4ff103a9fd0e84e7fcdb7e0c8982d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
