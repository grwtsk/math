# Closeds.edist_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd9ccc9b-90af-fffb-ad82-0beb490c07ee",
  "kind": "theorem",
  "lexical_name": "Closeds.edist_eq",
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
  "slug": "closeds-edist-eq--87c528ae358983a950ed4420",
  "source": {
    "blob": "7994cce4e7da61c05119b1266e0fd9ed6f629fcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87c528ae358983a950ed442064eb89e34fa45acd05e0e2df224ba8fcb9dd5361",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd9ccc9b-90af-fffb-ad82-0beb490c07ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Closeds.edist_eq {s t : Closeds α} : edist s t = hausdorffEdist (s : Set α) t :=
  rfl
#align emetric.closeds.edist_eq EMetric.Closeds.edist_eq

/-- In a complete space, the type of closed subsets is complete for the
Hausdorff edistance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7994cce4e7da61c05119b1266e0fd9ed6f629fcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
