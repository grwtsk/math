# eq_σ_comp_of_not_injective'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b607233fb0ad67c341d8ed799bfe1e25faf6413a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 734,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/618f11ad48cadbf36ad3f0e8f7b234946212d52874dc42874e30138b7372e2eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e17a12b6-7907-4f25-9baa-50024a5c87cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85276b65-d011-c927-7790-f352791f811c",
  "kind": "theorem",
  "lexical_name": "eq_σ_comp_of_not_injective'",
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
  "slug": "eq-comp-of-not-injective--28f6430ed8ca773e6d21f930",
  "source": {
    "blob": "b607233fb0ad67c341d8ed799bfe1e25faf6413a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 764,
    "line": 734,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant618f11ad48cadbf36ad3f0e8f7b234946212d52874dc42874e30138b7372e2eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28f6430ed8ca773e6d21f930c8d7213c38b0d0759c93348c743cdd0aa272a72d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant618f11ad48cadbf36ad3f0e8f7b234946212d52874dc42874e30138b7372e2eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85276b65-d011-c927-7790-f352791f811c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 734–764.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_σ_comp_of_not_injective' {n : ℕ} {Δ' : SimplexCategory} (θ : ⦋n + 1⦌ ⟶ Δ')
    (i : Fin (n + 1)) (hi : θ.toOrderHom (Fin.castSucc i) = θ.toOrderHom i.succ) :
    ∃ θ' : ⦋n⦌ ⟶ Δ', θ = σ i ≫ θ' := by
  use δ i.succ ≫ θ
  ext x : 3
  simp only [len_mk, σ, mkHom, comp_toOrderHom, Hom.toOrderHom_mk, OrderHom.comp_coe,
    Function.comp_apply, Fin.predAboveOrderHom_coe]
  by_cases h' : x ≤ Fin.castSucc i
  · rw [Fin.predAbove_of_le_castSucc i x h']
    dsimp [δ]
    rw [Fin.succAbove_of_castSucc_lt]
    · rw [Fin.castSucc_castPred]
    · exact (Fin.castSucc_lt_succ_iff.mpr h')
  · simp only [not_le] at h'
    let y := x.pred <| by rintro (rfl : x = 0); simp at h'
    have hy : x = y.succ := (Fin.succ_pred x _).symm
    rw [hy] at h' ⊢
    rw [Fin.predAbove_of_castSucc_lt i y.succ h', Fin.pred_succ]
    by_cases h'' : y = i
    · rw [h'']
      refine hi.symm.trans ?_
      congr 1
      dsimp [δ]
      rw [Fin.succAbove_of_castSucc_lt i.succ]
      exact Fin.castSucc_lt_succ
    · dsimp [δ]
      rw [Fin.succAbove_of_le_castSucc i.succ _]
      simp only [Fin.lt_def, Fin.le_iff_val_le_val, Fin.val_succ, Fin.val_castSucc,
        Nat.lt_succ_iff, Fin.ext_iff] at h' h'' ⊢
      lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant618f11ad48cadbf36ad3f0e8f7b234946212d52874dc42874e30138b7372e2eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant618f11ad48cadbf36ad3f0e8f7b234946212d52874dc42874e30138b7372e2eb.lean#L734).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b607233fb0ad67c341d8ed799bfe1e25faf6413a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
