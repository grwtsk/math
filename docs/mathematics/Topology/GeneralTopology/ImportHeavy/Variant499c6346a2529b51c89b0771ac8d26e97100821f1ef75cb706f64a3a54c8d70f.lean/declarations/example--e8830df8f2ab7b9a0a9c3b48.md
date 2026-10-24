# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a4b6a533ada9ec5610428bd04762172a2cacf1a23d19c926d12baf4ead159f1",
  "kind": "example",
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
  "slug": "example--e8830df8f2ab7b9a0a9c3b48",
  "source": {
    "blob": "3987e1ae0b2307f26561830674a0e4cd68861b85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 251,
    "path": "GRWTSK/Topology/GeneralTopology/ImportHeavy/Variant499c6346a2529b51c89b0771ac8d26e97100821f1ef75cb706f64a3a54c8d70f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8830df8f2ab7b9a0a9c3b48df7f86ea23a99ee4028f13d6c412d5df14b1937d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ImportHeavy/Variant499c6346a2529b51c89b0771ac8d26e97100821f1ef75cb706f64a3a54c8d70f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a4b6a533ada9ec5610428bd04762172a2cacf1a23d19c926d12baf4ead159f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {a b : Nat} (h : a + b = 1 + a + b) : a + b = b + a + 0 + 1 := by
  simp
  ring_nf
  assumption

#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ImportHeavy/Variant499c6346a2529b51c89b0771ac8d26e97100821f1ef75cb706f64a3a54c8d70f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ImportHeavy/Variant499c6346a2529b51c89b0771ac8d26e97100821f1ef75cb706f64a3a54c8d70f.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3987e1ae0b2307f26561830674a0e4cd68861b85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
