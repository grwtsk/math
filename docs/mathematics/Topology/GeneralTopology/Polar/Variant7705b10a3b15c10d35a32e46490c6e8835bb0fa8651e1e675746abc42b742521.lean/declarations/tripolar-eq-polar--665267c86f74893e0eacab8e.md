# tripolar_eq_polar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef362e14-8315-6b70-fea4-53836faf2693",
  "kind": "theorem",
  "lexical_name": "tripolar_eq_polar",
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
  "slug": "tripolar-eq-polar--665267c86f74893e0eacab8e",
  "source": {
    "blob": "f92277a627ac8c4c5649a429f0e9c1dfa9e28fb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 128,
    "path": "GRWTSK/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:665267c86f74893e0eacab8ecf33aeed0b0452e11cc9b0c8c3949d5d1354fc5c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef362e14-8315-6b70-fea4-53836faf2693`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tripolar_eq_polar (s : Set E) : B.polar (B.flip.polar (B.polar s)) = B.polar s :=
  (B.polar_antitone (B.subset_bipolar s)).antisymm (subset_bipolar B.flip (B.polar s))

/-- The polar set is closed in the weak topology induced by `B.flip`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Polar/Variant7705b10a3b15c10d35a32e46490c6e8835bb0fa8651e1e675746abc42b742521.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f92277a627ac8c4c5649a429f0e9c1dfa9e28fb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
