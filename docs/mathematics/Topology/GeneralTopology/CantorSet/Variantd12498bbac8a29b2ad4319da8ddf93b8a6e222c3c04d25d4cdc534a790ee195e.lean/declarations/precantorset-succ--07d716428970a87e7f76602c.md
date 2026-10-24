# preCantorSet_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f3ef7dd-ea5b-179b-70bc-239d94b2a882",
  "kind": "lemma",
  "lexical_name": "preCantorSet_succ",
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
  "slug": "precantorset-succ--07d716428970a87e7f76602c",
  "source": {
    "blob": "3a536d0c4898ad8280ca18602a4b5949fd2b9de4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07d716428970a87e7f76602ccc2911279daa83d6cfbc13cd96cf2305d7e9c87e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f3ef7dd-ea5b-179b-70bc-239d94b2a882`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma preCantorSet_succ (n : ℕ) :
    preCantorSet (n + 1) = (· / 3) '' preCantorSet n ∪ (fun x ↦ (2 + x) / 3) '' preCantorSet n :=
  rfl

/-- The Cantor set is the subset of the unit interval obtained as the intersection of all
    pre-Cantor sets. This means that the Cantor set is obtained by iteratively removing the
    open middle third of each subinterval, starting from the unit interval `[0, 1]`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a536d0c4898ad8280ca18602a4b5949fd2b9de4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
