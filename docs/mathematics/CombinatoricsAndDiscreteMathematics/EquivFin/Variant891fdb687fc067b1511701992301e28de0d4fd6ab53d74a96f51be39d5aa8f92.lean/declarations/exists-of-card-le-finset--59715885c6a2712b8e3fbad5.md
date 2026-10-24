# exists_of_card_le_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80c4fd3f66ca34b754a300f1ac79312e7fcd920f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 374,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/891fdb687fc067b1511701992301e28de0d4fd6ab53d74a96f51be39d5aa8f92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9a35c84-6183-de56-1fb7-96aae1b782ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96473f87-3d6e-a85b-907f-5bf774008fd0",
  "kind": "theorem",
  "lexical_name": "exists_of_card_le_finset",
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
  "slug": "exists-of-card-le-finset--59715885c6a2712b8e3fbad5",
  "source": {
    "blob": "80c4fd3f66ca34b754a300f1ac79312e7fcd920f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 374,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EquivFin/Variant891fdb687fc067b1511701992301e28de0d4fd6ab53d74a96f51be39d5aa8f92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59715885c6a2712b8e3fbad5fff66dfa58f46b5292f57fe98d9d5f8baa67ce4a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EquivFin/Variant891fdb687fc067b1511701992301e28de0d4fd6ab53d74a96f51be39d5aa8f92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96473f87-3d6e-a85b-907f-5bf774008fd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_of_card_le_finset [Fintype α] {s : Finset β} (h : Fintype.card α ≤ #s) :
    ∃ f : α ↪ β, Set.range f ⊆ s := by
  rw [← Fintype.card_coe] at h
  rcases nonempty_of_card_le h with ⟨f⟩
  exact ⟨f.trans (Embedding.subtype _), by simp [Set.range_subset_iff]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EquivFin/Variant891fdb687fc067b1511701992301e28de0d4fd6ab53d74a96f51be39d5aa8f92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EquivFin/Variant891fdb687fc067b1511701992301e28de0d4fd6ab53d74a96f51be39d5aa8f92.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80c4fd3f66ca34b754a300f1ac79312e7fcd920f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
