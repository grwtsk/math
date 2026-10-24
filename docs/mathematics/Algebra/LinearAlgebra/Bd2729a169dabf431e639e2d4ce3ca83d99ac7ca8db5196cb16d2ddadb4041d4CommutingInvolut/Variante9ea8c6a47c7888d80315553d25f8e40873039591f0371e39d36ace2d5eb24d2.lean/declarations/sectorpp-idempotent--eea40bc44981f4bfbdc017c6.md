# sectorPP_idempotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:389f7791-33e1-44f0-848c-299c81970531",
  "kind": "theorem",
  "lexical_name": "sectorPP_idempotent",
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
  "slug": "sectorpp-idempotent--eea40bc44981f4bfbdc017c6",
  "source": {
    "blob": "f7683a72613499879aa83bf90c7f067e00ec48e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 207,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4CommutingInvolut/Variante9ea8c6a47c7888d80315553d25f8e40873039591f0371e39d36ace2d5eb24d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eea40bc44981f4bfbdc017c60dd0942ca3880f9979b62f4dbddadda96a7ab7da",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4CommutingInvolut/Variante9ea8c6a47c7888d80315553d25f8e40873039591f0371e39d36ace2d5eb24d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:389f7791-33e1-44f0-848c-299c81970531`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sectorPP_idempotent :
    ∀ x, C.sectorPP (C.sectorPP x) = C.sectorPP x :=
  idempotent_comp_of_commute
    (involutionPlus C.first) (involutionPlus C.second)
    (involutionPlus_idempotent C.first C.first_sq)
    (involutionPlus_idempotent C.second C.second_sq)
    C.plusPlus_commute

/-- The +- sector projector is idempotent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4CommutingInvolut/Variante9ea8c6a47c7888d80315553d25f8e40873039591f0371e39d36ace2d5eb24d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4CommutingInvolut/Variante9ea8c6a47c7888d80315553d25f8e40873039591f0371e39d36ace2d5eb24d2.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7683a72613499879aa83bf90c7f067e00ec48e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
