# pairingDual_apply_apply_eq_one_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01e885e7-fe68-e4ba-edb5-b4c93eb8176a",
  "kind": "lemma",
  "lexical_name": "pairingDual_apply_apply_eq_one_zero",
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
  "slug": "pairingdual-apply-apply-eq-one-zero--6c2e59d4b3f327f7a7c1ad56",
  "source": {
    "blob": "35bf48decb1c4dc028f1cc2b5a32ae2670e544c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 117,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c2e59d4b3f327f7a7c1ad56b6ee628529f02e0445fc67d61a858a3f1b6d3f62",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01e885e7-fe68-e4ba-edb5-b4c93eb8176a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pairingDual_apply_apply_eq_one_zero (a b : Fin n ↪o ι) (h : a ≠ b) :
    pairingDual R M n (ιMulti _ _ (f ∘ a)) (ιMulti _ _ (x ∘ b)) = 0 := by
  simp only [pairingDual_ιMulti_ιMulti, Function.comp_apply, Matrix.det_apply]
  refine Finset.sum_eq_zero (fun σ _ ↦ ?_)
  simp only [Matrix.of_apply, smul_eq_iff_eq_inv_smul, smul_zero]
  by_contra h'
  apply h
  have : a = b ∘ σ := by
    ext i
    by_contra hi
    exact h' (Finset.prod_eq_zero (i := i) (by simp) (h₀ hi))
  have hσ : Monotone σ := fun i j hij ↦ by
    have h'' := congr_fun this
    dsimp at h''
    rw [← a.map_rel_iff] at hij
    simpa only [← b.map_rel_iff, ← h'']
  have hσ' : Monotone σ.symm := fun i j hij ↦ by
    obtain ⟨i, rfl⟩ := σ.surjective i
    obtain ⟨j, rfl⟩ := σ.surjective j
    simp only [Equiv.symm_apply_apply]
    by_contra! h
    obtain rfl : i = j := σ.injective (le_antisymm hij (hσ h.le))
    simp only [lt_self_iff_false] at h
  obtain rfl : σ = 1 := by
    ext i : 1
    exact DFunLike.congr_fun (Subsingleton.elim (σ.toOrderIso hσ hσ') (OrderIso.refl _)) i
  ext
  apply congr_fun this

end Deprecated

end exteriorPower
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35bf48decb1c4dc028f1cc2b5a32ae2670e544c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
