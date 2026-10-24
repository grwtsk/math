# maximal_isAcyclic_iff_reachable_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a803b1ac3276ace8b346d0663ff9401e2940094",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 409,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:889eb3a3-2725-0b1e-d749-2ed9c056cbcd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e290716-099f-7288-5187-18816f8091cf",
  "kind": "theorem",
  "lexical_name": "maximal_isAcyclic_iff_reachable_eq",
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
  "slug": "maximal-isacyclic-iff-reachable-eq--0deb8d15367a70cacd48ea5a",
  "source": {
    "blob": "9a803b1ac3276ace8b346d0663ff9401e2940094",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 409,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variant886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0deb8d15367a70cacd48ea5a31d15d154f3292b98031fc1767bc2a0ccb28a31d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variant886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e290716-099f-7288-5187-18816f8091cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem maximal_isAcyclic_iff_reachable_eq {F : SimpleGraph V} (hle : F ≤ G) (hF : F.IsAcyclic) :
    Maximal (fun F ↦ F ≤ G ∧ F.IsAcyclic) F ↔ F.Reachable = G.Reachable := by
  refine ⟨reachable_eq_of_maximal_isAcyclic F, fun h ↦ ?_⟩
  by_contra
  have ⟨H, hFH, hHG, hH⟩ := exists_gt_of_not_maximal ⟨hle, hF⟩ this
  have ⟨e, heH, heF⟩ := Set.exists_of_ssubset <| edgeSet_strict_mono hFH
  have h_bridge : (F ⊔ fromEdgeSet {e}).IsBridge e := by
    refine isAcyclic_iff_forall_isBridge.mp ?_ <| by simp [H.not_isDiag_of_mem_edgeSet heH]
    exact hH.anti <| sup_le_iff.mpr ⟨hFH.le, H.fromEdgeSet_le.mpr <| by grind⟩
  have : (F ⊔ fromEdgeSet {e}).deleteEdges {e} = F := by simpa using heF
  cases e
  rw [isBridge_iff, this, h] at h_bridge
  exact h_bridge <| hHG heH |>.reachable

/-- A subgraph of a connected graph is maximal acyclic iff it is a tree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variant886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variant886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a803b1ac3276ace8b346d0663ff9401e2940094` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
