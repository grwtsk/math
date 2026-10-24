# isClopen_inter_of_disjoint_cover_clopen'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c8d3a34b987ca4805269f32d7e0112a8c6308ae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5cc05adb-1e81-c8c5-c961-6d0270c49bc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a28bec63-934a-35e3-2648-661276823ab4",
  "kind": "lemma",
  "lexical_name": "isClopen_inter_of_disjoint_cover_clopen'",
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
  "slug": "isclopen-inter-of-disjoint-cover-clopen--618ae791c55079f880649f78",
  "source": {
    "blob": "3c8d3a34b987ca4805269f32d7e0112a8c6308ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:618ae791c55079f880649f78c077e74bf40a36b802b9fdfd868d32d488f9b41c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a28bec63-934a-35e3-2648-661276823ab4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClopen_inter_of_disjoint_cover_clopen' {s a b : Set X} (h : IsClopen s) (cover : s ⊆ a ∪ b)
    (ha : IsOpen a) (hb : IsOpen b) (hab : s ∩ a ∩ b = ∅) : IsClopen (s ∩ a) := by
  rw [show s ∩ a = s ∩ (s ∩ a) by simp]
  refine isClopen_inter_of_disjoint_cover_clopen h ?_ (h.2.inter ha) (h.2.inter hb) ?_
  · rw [← inter_union_distrib_left]
    exact subset_inter .rfl cover
  · rw [disjoint_iff_inter_eq_empty, inter_comm s b, ← inter_assoc, hab, empty_inter]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c8d3a34b987ca4805269f32d7e0112a8c6308ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
