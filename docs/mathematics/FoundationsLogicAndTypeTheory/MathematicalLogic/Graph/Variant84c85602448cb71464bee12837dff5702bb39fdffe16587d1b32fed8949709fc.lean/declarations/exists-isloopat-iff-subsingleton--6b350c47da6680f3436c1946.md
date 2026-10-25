# exists_isLoopAt_iff_subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4538fa4b120fe03e6d2eec2e3b957d0224ce208a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/84c85602448cb71464bee12837dff5702bb39fdffe16587d1b32fed8949709fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9424b07-9b5a-108e-3427-8a6a82f0b668",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7ce5282-59bf-e5de-ae41-eb5614c53bf8",
  "kind": "lemma",
  "lexical_name": "exists_isLoopAt_iff_subsingleton",
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
  "slug": "exists-isloopat-iff-subsingleton--6b350c47da6680f3436c1946",
  "source": {
    "blob": "4538fa4b120fe03e6d2eec2e3b957d0224ce208a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Graph/Variant84c85602448cb71464bee12837dff5702bb39fdffe16587d1b32fed8949709fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b350c47da6680f3436c19461f035e20c7b3fe6a4159c6da738838a14c6618c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Graph/Variant84c85602448cb71464bee12837dff5702bb39fdffe16587d1b32fed8949709fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7ce5282-59bf-e5de-ae41-eb5614c53bf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isLoopAt_iff_subsingleton (e : cell C 1) :
    (∃ x : cell C 0, (OneSkeletonGraph C).IsLoopAt e x) ↔ (cellFrontier 1 e).Subsingleton := by
  rw [exists_isLoopAt_iff]
  refine ⟨fun ⟨x, hx⟩ => by simp [closedCell_zero_eq_singleton, hx], fun h => ?_⟩
  obtain ⟨x, y, hxy⟩ := exists_cellFrontier_one_eq e
  simp only [closedCell_zero_eq_singleton, union_singleton] at hxy
  obtain rfl : x = y := RelCWComplex.injective_map_zero C <| (hxy ▸ h) (by simp) (by simp)
  exact ⟨x, by simp [hxy, closedCell_zero_eq_singleton]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Graph/Variant84c85602448cb71464bee12837dff5702bb39fdffe16587d1b32fed8949709fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Graph/Variant84c85602448cb71464bee12837dff5702bb39fdffe16587d1b32fed8949709fc.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4538fa4b120fe03e6d2eec2e3b957d0224ce208a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
