# OptSearchConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0729e7597a2c0ecad8b7779f07a5973ba8f30813b4bda8b6403953b32bd3eb9",
  "kind": "structure",
  "lexical_name": "OptSearchConfig",
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
  "slug": "optsearchconfig--28bd41dadc52e2b0c14d19c5",
  "source": {
    "blob": "c7607ad9e8a41bcb92d7dd997dddf7f9287324f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 169,
    "path": "GRWTSK/Topology/GeneralTopology/SearchAPI/Variantb16891b3c3d1239a0c20b0553f3ce7ce3e901c864b5fe11cfd2e397323e9c913.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28bd41dadc52e2b0c14d19c50507c4142ac97c72d17d68f3b8e1a4e9ad9ca2c1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SearchAPI/Variantb16891b3c3d1239a0c20b0553f3ce7ce3e901c864b5fe11cfd2e397323e9c913.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0729e7597a2c0ecad8b7779f07a5973ba8f30813b4bda8b6403953b32bd3eb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OptSearchConfig where
  /-- Maximum iterations for branch-and-bound -/
  maxIterations : Nat := 1000
  /-- Tolerance for box width -/
  tolerance : ℚ := 1/1000
  /-- Use monotonicity pruning -/
  useMonotonicity : Bool := false
  /-- Taylor depth for interval evaluation -/
  taylorDepth : Nat := 10
  deriving Repr, Inhabited

/-- Result of global minimization with proof.

    Bundles the minimization result with proofs that:
    1. `minValue.lo` is a valid lower bound for all x in B
    2. There exists a point achieving a value ≤ `minValue.hi` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SearchAPI/Variantb16891b3c3d1239a0c20b0553f3ce7ce3e901c864b5fe11cfd2e397323e9c913.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SearchAPI/Variantb16891b3c3d1239a0c20b0553f3ce7ce3e901c864b5fe11cfd2e397323e9c913.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7607ad9e8a41bcb92d7dd997dddf7f9287324f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
