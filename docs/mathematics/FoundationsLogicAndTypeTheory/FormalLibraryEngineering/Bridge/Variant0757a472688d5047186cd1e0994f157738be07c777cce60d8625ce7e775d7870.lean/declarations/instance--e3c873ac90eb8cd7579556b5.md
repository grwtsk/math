# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5140e641d780ae25ca9e6f9798abab96f3d22743affbc11d9ff130893246e3ac",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e3c873ac90eb8cd7579556b5",
  "source": {
    "blob": "91ef6f30eb5b62bbe5255296e121fb7460609556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 412,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3c873ac90eb8cd7579556b5e81bfb5dfb12fe1a280d44c7892f65d3aa700a7a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5140e641d780ae25ca9e6f9798abab96f3d22743affbc11d9ff130893246e3ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : FromJson FindRootsRequest where
  fromJson? j := do
    let expr ← j.getObjValAs? LExpr "expr"
    let interval ← j.getObjValAs? RawInterval "interval"
    let maxIter := (j.getObjValAs? Nat "maxIter").toOption.getD 1000
    let tolerance := (j.getObjValAs? RawRat "tolerance").toOption.getD { n := 1, d := 1000 }
    let taylorDepth := (j.getObjValAs? Nat "taylorDepth").toOption.getD 10
    return { expr, interval, maxIter, tolerance, taylorDepth }

/-- Request for unique root finding via Newton contraction -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91ef6f30eb5b62bbe5255296e121fb7460609556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
