# IsUltraUniformity.comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3fc3cc7bc0c3ba546b17d2e41dea494332b80246",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7f93897-4214-9f71-244c-4c6c18ebd934",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18b7c42b-98dd-9ae4-4390-c32cb2f2ba16",
  "kind": "lemma",
  "lexical_name": "IsUltraUniformity.comap",
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
  "slug": "isultrauniformity-comap--aa9ed2e91b7bcb397b37943a",
  "source": {
    "blob": "3fc3cc7bc0c3ba546b17d2e41dea494332b80246",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 34,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Constructions/Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa9ed2e91b7bcb397b37943ae91488d5639fac5f0bf00cc8c7690cd8802c4a5b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Constructions/Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18b7c42b-98dd-9ae4-4390-c32cb2f2ba16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsUltraUniformity.comap {u : UniformSpace Y} (h : IsUltraUniformity Y) (f : X → Y) :
    @IsUltraUniformity _ (u.comap f) := by
  letI := u.comap f
  refine .mk_of_hasBasis (h.hasBasis.comap (Prod.map f f)) ?_ ?_
  · exact fun _ ⟨_, hU, _⟩ ↦ hU.preimage_prodMap f
  · exact fun _ ⟨_, _, hU⟩ ↦ hU.preimage_prodMap f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Constructions/Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Constructions/Variantf74e9ea9f518544d2e6c426632b3d3418edbd10aaa1733079d06e197522a252b.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc3cc7bc0c3ba546b17d2e41dea494332b80246` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
