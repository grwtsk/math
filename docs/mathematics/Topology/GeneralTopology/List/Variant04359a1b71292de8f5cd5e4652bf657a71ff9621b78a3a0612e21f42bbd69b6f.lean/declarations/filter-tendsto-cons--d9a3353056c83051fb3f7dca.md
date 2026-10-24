# Filter.Tendsto.cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e734d9d3ec954e8fcb3d2e2b43775abeb5ce791",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85dc409f-1fb8-f0a7-9751-50ebc627af64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d58990d-8570-076d-e4fe-0c58b44fb64e",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.cons",
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
  "slug": "filter-tendsto-cons--d9a3353056c83051fb3f7dca",
  "source": {
    "blob": "1e734d9d3ec954e8fcb3d2e2b43775abeb5ce791",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9a3353056c83051fb3f7dca79d05634fd9a0252dcf7cd47b966f253f15a41f7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d58990d-8570-076d-e4fe-0c58b44fb64e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.cons {α : Type*} {f : α → β} {g : α → List β} {a : Filter α} {b : β}
    {l : List β} (hf : Tendsto f a (𝓝 b)) (hg : Tendsto g a (𝓝 l)) :
    Tendsto (fun a => List.cons (f a) (g a)) a (𝓝 (b::l)) :=
  List.tendsto_cons.comp (Tendsto.prod_mk hf hg)
#align filter.tendsto.cons Filter.Tendsto.cons

namespace List

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e734d9d3ec954e8fcb3d2e2b43775abeb5ce791` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
