# of_biUnion_eq_of_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67a8a0a0942dce9c72d5f63c1e238a04dfdfbfea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/0391e0f8faa31a2449dce9ad56da82ab806651093f579686ee230206108a8ba4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2d91117-fe50-6eca-0053-b45e3bc4a729",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a7818b2-e97d-464d-c9bb-45a5c052ada3",
  "kind": "lemma",
  "lexical_name": "of_biUnion_eq_of_isCompact",
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
  "slug": "of-biunion-eq-of-iscompact--90408e8b79af93031754e0f4",
  "source": {
    "blob": "67a8a0a0942dce9c72d5f63c1e238a04dfdfbfea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpenCovered/Variant0391e0f8faa31a2449dce9ad56da82ab806651093f579686ee230206108a8ba4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90408e8b79af93031754e0f43177ec0704520563966a8208e7fe692d282f0684",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpenCovered/Variant0391e0f8faa31a2449dce9ad56da82ab806651093f579686ee230206108a8ba4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a7818b2-e97d-464d-c9bb-45a5c052ada3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_biUnion_eq_of_isCompact [TopologicalSpace S] {U : Set S} (hU : IsCompact U)
    (s : Set (Opens S)) (hs : ⋃ t ∈ s, t = U) (H : ∀ t ∈ s, IsCompactOpenCovered f t) :
    IsCompactOpenCovered f U := by
  classical
  obtain ⟨t, ht⟩ := hU.elim_finite_subcover (fun V : s ↦ V.1) (fun V ↦ V.1.2) (by simp [← hs])
  refine of_biUnion_eq_of_finite (SetLike.coe '' (t.image Subtype.val : Set (Opens S))) ?_ ?_ ?_
  · exact subset_antisymm (fun x h ↦ by aesop) (subset_trans ht <| by simp)
  · exact Set.toFinite _
  · grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpenCovered/Variant0391e0f8faa31a2449dce9ad56da82ab806651093f579686ee230206108a8ba4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpenCovered/Variant0391e0f8faa31a2449dce9ad56da82ab806651093f579686ee230206108a8ba4.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67a8a0a0942dce9c72d5f63c1e238a04dfdfbfea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
