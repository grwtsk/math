# push_pull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d5b34caefe431e206605ec88e4fb950a56f7dd6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 772,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a509759894d88e7f3c8bd8d84f28fadeb740560441cbd1ceb17303ccde119aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61661e15-b5d1-271f-eb9d-fe2a2362dd46",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3338c8c1-8fe6-e571-fcfd-6e742788e8b8",
  "kind": "theorem",
  "lexical_name": "push_pull",
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
  "slug": "push-pull--92b5f005e8c8c843730dc8bd",
  "source": {
    "blob": "1d5b34caefe431e206605ec88e4fb950a56f7dd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 785,
    "line": 772,
    "path": "GRWTSK/Topology/GeneralTopology/Map/Variant2a509759894d88e7f3c8bd8d84f28fadeb740560441cbd1ceb17303ccde119aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92b5f005e8c8c843730dc8bd40700b545c4ebf16cc520e954ff41cd0254473b7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Map/Variant2a509759894d88e7f3c8bd8d84f28fadeb740560441cbd1ceb17303ccde119aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3338c8c1-8fe6-e571-fcfd-6e742788e8b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 772–785.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem push_pull (f : α → β) (F : Filter α) (G : Filter β) :
    map f (F ⊓ comap f G) = map f F ⊓ G := by
  apply le_antisymm
  · calc
      map f (F ⊓ comap f G) ≤ map f F ⊓ (map f <| comap f G) := map_inf_le
      _ ≤ map f F ⊓ G := inf_le_inf_left (map f F) map_comap_le
  · rintro U ⟨V, V_in, W, ⟨Z, Z_in, hZ⟩, h⟩
    apply mem_inf_of_inter (image_mem_map V_in) Z_in
    calc
      f '' V ∩ Z = f '' (V ∩ f ⁻¹' Z) := by rw [image_inter_preimage]
      _ ⊆ f '' (V ∩ W) := by gcongr
      _ = f '' f ⁻¹' U := by rw [h]
      _ ⊆ U := image_preimage_subset f U

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Map/Variant2a509759894d88e7f3c8bd8d84f28fadeb740560441cbd1ceb17303ccde119aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Map/Variant2a509759894d88e7f3c8bd8d84f28fadeb740560441cbd1ceb17303ccde119aa.lean#L772).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d5b34caefe431e206605ec88e4fb950a56f7dd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
