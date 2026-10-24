# existsUnique_continuousMap_lifts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69caae4abbcaab0a74b29815e6fe28549d12295d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 355,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88cfe1a0-3d8a-1d1e-893a-42593c2e51ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3da05c74-7f98-cb9d-dfec-cefa74839efc",
  "kind": "theorem",
  "lexical_name": "existsUnique_continuousMap_lifts",
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
  "slug": "existsunique-continuousmap-lifts--01f026b51ead6b0c4d839afc",
  "source": {
    "blob": "69caae4abbcaab0a74b29815e6fe28549d12295d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 355,
    "path": "GRWTSK/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01f026b51ead6b0c4d839afc8253d52a7ae6217a0709abaa4146dae23546baef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3da05c74-7f98-cb9d-dfec-cefa74839efc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_continuousMap_lifts [SimplyConnectedSpace A] [LocPathConnectedSpace A]
    (f : C(A, X)) (a₀ : A) (e₀ : E) (he : p e₀ = f a₀) :
    ∃! F : C(A, E), F a₀ = e₀ ∧ p ∘ F = f := by
  refine cov.isLocalHomeomorph.existsUnique_continuousMap_lifts f a₀ e₀ he (fun γ γ_0 ↦ ?_)
    fun γ γ' Γ Γ' γ_0 γ'_0 Γ_0 Γ'_0 Γ_lifts Γ'_lifts γγ'1 ↦ ?_
  · simpa [and_comm] using cov.exists_path_lifts (f.comp γ) e₀ (by simp [γ_0, he])
  let pγ : Path a₀ (γ 1) := ⟨γ, γ_0, rfl⟩
  let pγ' : Path a₀ (γ 1) := ⟨γ', γ'_0, γγ'1.symm⟩
  convert cov.liftPath_apply_one_eq_of_homotopicRel (ContinuousMap.HomotopicRel.comp_continuousMap
    (SimplyConnectedSpace.paths_homotopic pγ pγ') f) e₀ (by simp [he]) (by simp [he]) <;>
    rw [eq_liftPath_iff']
  exacts [⟨Γ_lifts, Γ_0⟩, ⟨Γ'_lifts, Γ'_0⟩]

end homotopy_lifting

end IsCoveringMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69caae4abbcaab0a74b29815e6fe28549d12295d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
