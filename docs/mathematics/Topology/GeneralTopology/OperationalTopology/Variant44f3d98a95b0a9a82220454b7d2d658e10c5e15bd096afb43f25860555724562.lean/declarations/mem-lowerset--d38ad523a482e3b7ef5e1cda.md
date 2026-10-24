# mem_lowerSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d5fd4c9-b93f-dca0-14e4-77315f2d8aaf",
  "kind": "theorem",
  "lexical_name": "mem_lowerSet",
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
  "slug": "mem-lowerset--d38ad523a482e3b7ef5e1cda",
  "source": {
    "blob": "2dd39b7f68a7453744cea1f8ead9aa8cac162d1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/OperationalTopology/Variant44f3d98a95b0a9a82220454b7d2d658e10c5e15bd096afb43f25860555724562.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d38ad523a482e3b7ef5e1cda0cd66cfb53279169a992a0a3ef684d03f1aedac4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OperationalTopology/Variant44f3d98a95b0a9a82220454b7d2d658e10c5e15bd096afb43f25860555724562.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d5fd4c9-b93f-dca0-14e4-77315f2d8aaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem mem_lowerSet {x y : X} : y ∈ R.lowerSet x ↔ R.rel y x := Iff.rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OperationalTopology/Variant44f3d98a95b0a9a82220454b7d2d658e10c5e15bd096afb43f25860555724562.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OperationalTopology/Variant44f3d98a95b0a9a82220454b7d2d658e10c5e15bd096afb43f25860555724562.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dd39b7f68a7453744cea1f8ead9aa8cac162d1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
