# of_leftInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2bac6bbe1e7cf34c5a37ed76034237ac1d64229",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d733a29f652b2bf8ec2b1cad288e33e014f8f764cf40753cf5e9ad500481b68f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48e86259-fe10-f2d4-5c63-dd17c5b20229",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ed1978d-26f0-9468-1043-d9720ce95fe3",
  "kind": "lemma",
  "lexical_name": "of_leftInverse",
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
  "slug": "of-leftinverse--19c3d3e3b513c310def2faa2",
  "source": {
    "blob": "f2bac6bbe1e7cf34c5a37ed76034237ac1d64229",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 222,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd733a29f652b2bf8ec2b1cad288e33e014f8f764cf40753cf5e9ad500481b68f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19c3d3e3b513c310def2faa2520935fbadb2037c55995031b0f01362b2ca3709",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd733a29f652b2bf8ec2b1cad288e33e014f8f764cf40753cf5e9ad500481b68f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ed1978d-26f0-9468-1043-d9720ce95fe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_leftInverse {f : X → Y} {g : Y → X} (h : LeftInverse f g) (hf : Continuous f)
    (hg : Continuous g) : IsEmbedding g := .of_comp hg hf <| h.comp_eq_id.symm ▸ .id

alias _root_.Function.LeftInverse.isEmbedding := of_leftInverse

@[deprecated (since := "2024-10-26")]
alias _root_.Function.LeftInverse.embedding := Function.LeftInverse.isEmbedding

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd733a29f652b2bf8ec2b1cad288e33e014f8f764cf40753cf5e9ad500481b68f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd733a29f652b2bf8ec2b1cad288e33e014f8f764cf40753cf5e9ad500481b68f.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2bac6bbe1e7cf34c5a37ed76034237ac1d64229` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
