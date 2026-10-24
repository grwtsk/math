# ExtremallyDisconnected.disjoint_closure_of_disjoint_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69258a01246f5ca427b121cd6e6a1150248c2ae8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:101ab42c-3f64-b29a-d1d8-b9d8d6ae08e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb07ce83-f8b6-324d-7010-80eb0058fe43",
  "kind": "lemma",
  "lexical_name": "ExtremallyDisconnected.disjoint_closure_of_disjoint_isOpen",
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
  "slug": "extremallydisconnected-disjoint-closure-of-disjoint-isopen--24cae261f214b860ba5c521b",
  "source": {
    "blob": "69258a01246f5ca427b121cd6e6a1150248c2ae8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 204,
    "path": "GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24cae261f214b860ba5c521b929a27cdf509272fec947f01ef7de167266e7d26",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb07ce83-f8b6-324d-7010-80eb0058fe43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ExtremallyDisconnected.disjoint_closure_of_disjoint_isOpen [ExtremallyDisconnected A]
    {U₁ U₂ : Set A} (h : Disjoint U₁ U₂) (hU₁ : IsOpen U₁) (hU₂ : IsOpen U₂) :
    Disjoint (closure U₁) (closure U₂) :=
  (h.closure_right hU₁).closure_left <| open_closure U₂ hU₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69258a01246f5ca427b121cd6e6a1150248c2ae8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
