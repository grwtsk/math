# dualAnnihilator_dualCoannihilator_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fed0ed3fe2854565134bcbc28e9037c1c1c32d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 993,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/febd0d050a5ce255f62be0f5410c46125409e4718a259f99033e360ab87e97aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2f276f1-6762-b318-75b0-155367d03fdf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfea605b-35ff-ae65-c8a6-860c0b468ae1",
  "kind": "theorem",
  "lexical_name": "dualAnnihilator_dualCoannihilator_eq",
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
  "slug": "dualannihilator-dualcoannihilator-eq--7a983938d6534457c63accb7",
  "source": {
    "blob": "5fed0ed3fe2854565134bcbc28e9037c1c1c32d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1019,
    "line": 993,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dual/Variantfebd0d050a5ce255f62be0f5410c46125409e4718a259f99033e360ab87e97aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a983938d6534457c63accb72e09e77bb3aec056079823175eb6037949e5fe6c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dual/Variantfebd0d050a5ce255f62be0f5410c46125409e4718a259f99033e360ab87e97aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfea605b-35ff-ae65-c8a6-860c0b468ae1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 993–1019.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dualAnnihilator_dualCoannihilator_eq {W : Subspace K V} :
    W.dualAnnihilator.dualCoannihilator = W := by
  refine' le_antisymm _ (le_dualAnnihilator_dualCoannihilator _)
  intro v
  simp only [mem_dualAnnihilator, mem_dualCoannihilator]
  contrapose!
  intro hv
  obtain ⟨W', hW⟩ := Submodule.exists_isCompl W
  obtain ⟨⟨w, w'⟩, rfl, -⟩ := existsUnique_add_of_isCompl_prod hW v
  have hw'n : (w' : V) ∉ W := by
    contrapose! hv
    exact Submodule.add_mem W w.2 hv
  have hw'nz : w' ≠ 0 := by
    rintro rfl
    exact hw'n (Submodule.zero_mem W)
  rw [Ne.def, ← Module.forall_dual_apply_eq_zero_iff K w'] at hw'nz
  push_neg at hw'nz
  obtain ⟨φ, hφ⟩ := hw'nz
  exists ((LinearMap.ofIsComplProd hW).comp (LinearMap.inr _ _ _)) φ
  simp only [coe_comp, coe_inr, Function.comp_apply, ofIsComplProd_apply, map_add,
    ofIsCompl_left_apply, zero_apply, ofIsCompl_right_apply, zero_add, Ne.def]
  refine' ⟨_, hφ⟩
  intro v hv
  apply LinearMap.ofIsCompl_left_apply hW ⟨v, hv⟩
#align subspace.dual_annihilator_dual_coannihilator_eq Subspace.dualAnnihilator_dualCoannihilator_eq

-- exact elaborates slowly
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dual/Variantfebd0d050a5ce255f62be0f5410c46125409e4718a259f99033e360ab87e97aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dual/Variantfebd0d050a5ce255f62be0f5410c46125409e4718a259f99033e360ab87e97aa.lean#L993).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fed0ed3fe2854565134bcbc28e9037c1c1c32d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
