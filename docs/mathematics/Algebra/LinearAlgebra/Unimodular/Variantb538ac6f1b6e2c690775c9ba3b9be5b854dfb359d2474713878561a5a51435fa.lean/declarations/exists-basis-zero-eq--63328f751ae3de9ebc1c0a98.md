# exists_basis_zero_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49d19f9f5cf468e57cd08601fec23e8288816c1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09a805f3-c10f-dcac-ebb0-27ec2df21687",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95a0413b-0f24-5f40-2c30-202dd584e621",
  "kind": "theorem",
  "lexical_name": "exists_basis_zero_eq",
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
  "slug": "exists-basis-zero-eq--63328f751ae3de9ebc1c0a98",
  "source": {
    "blob": "49d19f9f5cf468e57cd08601fec23e8288816c1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 102,
    "path": "GRWTSK/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63328f751ae3de9ebc1c0a98bca00587b6deaff7ed0a0525a611cf13608f2484",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95a0413b-0f24-5f40-2c30-202dd584e621`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_basis_zero_eq (hM : Module.finrank R M = 2) {v : M} (hv : IsUnimodular R v) :
    ∃ e : Basis (Fin 2) R M, e 0 = v := by
  have : Nontrivial R := not_subsingleton_iff_nontrivial.mp fun _ ↦ by simp at hM
  have : Module.Finite R M := Module.finite_of_finrank_eq_succ hM
  obtain ⟨f, hf⟩ := isUnimodular_iff.mp hv
  let b := (Module.Free.chooseBasis R M).reindex
    (Fintype.equivFinOfCardEq ((Module.finrank_eq_card_chooseBasisIndex R M).symm.trans hM))
  let N : Matrix (Fin 2) (Fin 2) R := !![b.repr v 0, -(f (b 1)); b.repr v 1, f (b 0)]
  have hdet : N.det = 1 := by
    rw [Matrix.det_fin_two_of, neg_mul, sub_neg_eq_add, mul_comm (f (b 1)) (b.repr v 1), ← hf]
    conv_rhs => rw [← b.sum_repr v]
    rw [map_sum, Fin.sum_univ_two, map_smul, map_smul, smul_eq_mul, smul_eq_mul]
  refine ⟨b.map (Matrix.toLinearEquiv b N (hdet ▸ isUnit_one)), ?_⟩
  simpa [N] using (Fin.sum_univ_two fun i ↦ b.repr v i • b i).symm.trans (b.sum_repr v)

end Module.IsUnimodular
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Unimodular/Variantb538ac6f1b6e2c690775c9ba3b9be5b854dfb359d2474713878561a5a51435fa.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49d19f9f5cf468e57cd08601fec23e8288816c1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
