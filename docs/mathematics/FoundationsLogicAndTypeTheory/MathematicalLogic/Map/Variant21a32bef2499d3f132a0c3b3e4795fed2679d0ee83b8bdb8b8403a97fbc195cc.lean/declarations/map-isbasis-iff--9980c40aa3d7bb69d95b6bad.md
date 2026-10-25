# map_isBasis_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "349ef7d3b73d86fdb671f842296a4c3f7fb9135e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 433,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/21a32bef2499d3f132a0c3b3e4795fed2679d0ee83b8bdb8b8403a97fbc195cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d0113a5-b026-cc04-d997-70522f10baa6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c75eedf9-6af2-38e8-af64-5334cbdf2909",
  "kind": "lemma",
  "lexical_name": "map_isBasis_iff'",
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
  "slug": "map-isbasis-iff--9980c40aa3d7bb69d95b6bad",
  "source": {
    "blob": "349ef7d3b73d86fdb671f842296a4c3f7fb9135e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 433,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Map/Variant21a32bef2499d3f132a0c3b3e4795fed2679d0ee83b8bdb8b8403a97fbc195cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9980c40aa3d7bb69d95b6baddf95934901534ca077f356e0f2723a5cc894f9b2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Map/Variant21a32bef2499d3f132a0c3b3e4795fed2679d0ee83b8bdb8b8403a97fbc195cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c75eedf9-6af2-38e8-af64-5334cbdf2909`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_isBasis_iff' {I X : Set β} {hf} :
    (M.map f hf).IsBasis I X ↔ ∃ I₀ X₀, M.IsBasis I₀ X₀ ∧ I = f '' I₀ ∧ X = f '' X₀ := by
  refine ⟨fun h ↦ ?_, ?_⟩
  · obtain ⟨I, hI, rfl⟩ := subset_image_iff.1 h.indep.subset_ground
    obtain ⟨X, hX, rfl⟩ := subset_image_iff.1 h.subset_ground
    rw [map_isBasis_iff _ _ hI hX] at h
    exact ⟨I, X, h, rfl, rfl⟩
  rintro ⟨I, X, hIX, rfl, rfl⟩
  exact hIX.map hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Map/Variant21a32bef2499d3f132a0c3b3e4795fed2679d0ee83b8bdb8b8403a97fbc195cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Map/Variant21a32bef2499d3f132a0c3b3e4795fed2679d0ee83b8bdb8b8403a97fbc195cc.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `349ef7d3b73d86fdb671f842296a4c3f7fb9135e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
