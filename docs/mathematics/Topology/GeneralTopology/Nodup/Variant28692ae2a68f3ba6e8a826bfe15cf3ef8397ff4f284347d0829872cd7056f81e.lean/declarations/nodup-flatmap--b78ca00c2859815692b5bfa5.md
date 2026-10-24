# nodup_flatMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5bf4c8c039f1f3a888a8360ebc3bb3f1a7d551fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 300,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28692ae2a68f3ba6e8a826bfe15cf3ef8397ff4f284347d0829872cd7056f81e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a6d2943-c7b8-01ba-eea9-580654700125",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36f57924-fefe-86ec-57f5-03121c78dfa6",
  "kind": "theorem",
  "lexical_name": "nodup_flatMap",
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
  "slug": "nodup-flatmap--b78ca00c2859815692b5bfa5",
  "source": {
    "blob": "5bf4c8c039f1f3a888a8360ebc3bb3f1a7d551fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 300,
    "path": "GRWTSK/Topology/GeneralTopology/Nodup/Variant28692ae2a68f3ba6e8a826bfe15cf3ef8397ff4f284347d0829872cd7056f81e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b78ca00c2859815692b5bfa5259bfe7fff726476a2bdce8001ffb35a3e1eb9cb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nodup/Variant28692ae2a68f3ba6e8a826bfe15cf3ef8397ff4f284347d0829872cd7056f81e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36f57924-fefe-86ec-57f5-03121c78dfa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nodup_flatMap {l₁ : List α} {f : α → List β} :
    Nodup (l₁.flatMap f) ↔
      (∀ x ∈ l₁, Nodup (f x)) ∧ Pairwise (Disjoint on f) l₁ := by
  simp only [List.flatMap, nodup_flatten, pairwise_map, and_comm, mem_map,
    exists_imp, and_imp]
  rw [show (∀ (l : List β) (x : α), f x = l → x ∈ l₁ → Nodup l) ↔ ∀ x : α, x ∈ l₁ → Nodup (f x)
      from forall_comm.trans <| forall_congr' fun _ => forall_eq']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nodup/Variant28692ae2a68f3ba6e8a826bfe15cf3ef8397ff4f284347d0829872cd7056f81e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nodup/Variant28692ae2a68f3ba6e8a826bfe15cf3ef8397ff4f284347d0829872cd7056f81e.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bf4c8c039f1f3a888a8360ebc3bb3f1a7d551fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
