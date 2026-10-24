# static_not_grey

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "57c1be65952837b79ac88396b074ef1d5381a6db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 334,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/279fd62eda6d66dee59f5ae0ec9ce33e95f6a6793163754db9cd8df906814463.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f15ab685-12aa-a5fd-f71a-f01865267380",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d6f0888-df4b-f5cd-8317-e6d846f07f46",
  "kind": "theorem",
  "lexical_name": "static_not_grey",
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
  "slug": "static-not-grey--e47984167a86de0fd5340087",
  "source": {
    "blob": "57c1be65952837b79ac88396b074ef1d5381a6db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 334,
    "path": "GRWTSK/Topology/GeneralTopology/Core/Variant279fd62eda6d66dee59f5ae0ec9ce33e95f6a6793163754db9cd8df906814463.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e47984167a86de0fd534008702d8a3086f0e33e84a98f7f96926fa67cf70b5c9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Core/Variant279fd62eda6d66dee59f5ae0ec9ce33e95f6a6793163754db9cd8df906814463.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d6f0888-df4b-f5cd-8317-e6d846f07f46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem static_not_grey (transition : Transition) :
    transition = Transition.ZeroToZero ∨ transition = Transition.OneToOne ->
      contributes_to_grey transition = false := by
  intro h
  cases h with
  | inl h0 =>
      cases h0
      rfl
  | inr h1 =>
      cases h1
      rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Core/Variant279fd62eda6d66dee59f5ae0ec9ce33e95f6a6793163754db9cd8df906814463.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Core/Variant279fd62eda6d66dee59f5ae0ec9ce33e95f6a6793163754db9cd8df906814463.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57c1be65952837b79ac88396b074ef1d5381a6db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
