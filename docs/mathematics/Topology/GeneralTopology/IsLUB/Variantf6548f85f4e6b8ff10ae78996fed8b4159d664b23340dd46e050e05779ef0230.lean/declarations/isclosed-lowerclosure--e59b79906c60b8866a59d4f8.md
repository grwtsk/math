# IsClosed.lowerClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b38f0860ef0fc467c0c7e0a81ebcea53fd9fb251",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6548f85f4e6b8ff10ae78996fed8b4159d664b23340dd46e050e05779ef0230.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e583cc40-d218-d0cf-9e78-b83d19759a87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b73e1b8-63d0-fcae-f239-a401a61e4d6b",
  "kind": "lemma",
  "lexical_name": "IsClosed.lowerClosure",
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
  "slug": "isclosed-lowerclosure--e59b79906c60b8866a59d4f8",
  "source": {
    "blob": "b38f0860ef0fc467c0c7e0a81ebcea53fd9fb251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 281,
    "path": "GRWTSK/Topology/GeneralTopology/IsLUB/Variantf6548f85f4e6b8ff10ae78996fed8b4159d664b23340dd46e050e05779ef0230.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e59b79906c60b8866a59d4f80d52752a01e6195d61e6a062f384ea05b02922c8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsLUB/Variantf6548f85f4e6b8ff10ae78996fed8b4159d664b23340dd46e050e05779ef0230.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b73e1b8-63d0-fcae-f239-a401a61e4d6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma IsClosed.lowerClosure {s : Set α} (hs : IsClosed s) :
    IsClosed (lowerClosure s).1 :=
  IsClosed.upperClosure (α := αᵒᵈ) hs

end ConditionallyCompleteLinearOrder

/-!
### Existence of sequences tending to `sInf` or `sSup` of a given set
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsLUB/Variantf6548f85f4e6b8ff10ae78996fed8b4159d664b23340dd46e050e05779ef0230.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsLUB/Variantf6548f85f4e6b8ff10ae78996fed8b4159d664b23340dd46e050e05779ef0230.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b38f0860ef0fc467c0c7e0a81ebcea53fd9fb251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
