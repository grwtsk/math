# lie_e_f_ne_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5ea4d473ec13a2527e4f22859dcf346113b634b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8aca2aca67e347da117ac7eec4fb4782385b10d8a6a33a295b7e67b98359924.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa2d924c-3ff0-b9fc-6119-f6f1e8f810df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a4ca984-87a7-4786-4967-4d9e2a98f34f",
  "kind": "lemma",
  "lexical_name": "lie_e_f_ne_aux₁",
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
  "slug": "lie-e-f-ne-aux--a13b795cfc47e6f69cd7f1e1",
  "source": {
    "blob": "c5ea4d473ec13a2527e4f22859dcf346113b634b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 221,
    "path": "GRWTSK/Algebra/LinearAlgebra/Relations/Variantf8aca2aca67e347da117ac7eec4fb4782385b10d8a6a33a295b7e67b98359924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a13b795cfc47e6f69cd7f1e18cf7887625c2fbc4ea37830d34cb1086fd5e825c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Relations/Variantf8aca2aca67e347da117ac7eec4fb4782385b10d8a6a33a295b7e67b98359924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a4ca984-87a7-4786-4967-4d9e2a98f34f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma lie_e_f_ne_aux₁ :
    ⁅e i, f j⁆ᵀ (Sum.inr j) = 0 := by
  have hij' : (i : ι) ≠ (j : ι) := hij ∘ SetLike.coe_eq_coe.mp
  let := P.indexNeg
  classical
  ext (k | k)
  · rw [Matrix.transpose_apply, lie_e_f_ne_aux₀, Pi.zero_apply]
  · suffices ((if k = i then ↑|b.cartanMatrix i j| else (0 : R)) -
        ∑ x, if P.root x = P.root i + P.root j ∧ P.root k = P.root x - P.root j then
          (P.chainTopCoeff j x : R) + 1 else 0) = 0 by
      have hij : (j : ι) ≠ -i := by simpa using b.root_ne_neg_of_ne j.property i.property hij'.symm
      have aux : ∀ x ∈ Finset.univ,
        x ≠ j → (if x = j ∧ k = i then ↑|b.cartanMatrix i x| else 0) = (0 : R) := by aesop
      simpa [e, f, P.ne_zero, hij, -indexNeg_neg, -Finset.univ_eq_attach, ← ite_and,
        Finset.sum_eq_single_of_mem j (Finset.mem_univ _) aux]
    rcases eq_or_ne k i with rfl | hk; swap
    · rw [ite_eq_right (by tauto), Finset.sum_ite_of_false (by aesop)]; simp
    by_cases hij_mem : P.root i + P.root j ∈ range P.root
    · obtain ⟨m, hm⟩ := hij_mem
      rw [Finset.sum_eq_single_of_mem m (Finset.mem_univ _) (by rintro x - hx; simp [← hm, hx]),
        b.abs_cartanMatrix_apply, Base.cartanMatrix, Base.cartanMatrixIn_def]
      have aux₁ := b.chainTopCoeff_eq_of_ne hij.symm
      have aux₂ := chainTopCoeff_of_add (b.linearIndependent_pair_of_ne hij.symm) hm
      norm_cast
      aesop
    · have aux : ∀ x ∈ Finset.univ,
          ¬ (P.root x = P.root i + P.root j ∧ P.root i = P.root x - P.root j) := by
        rintro x - ⟨hx, -⟩; exact hij_mem ⟨x, hx⟩
      simp [Finset.sum_ite_of_false aux, b.cartanMatrix_apply_eq_zero_iff hij, hij_mem]

/-- An auxiliary lemma en route to `RootPairing.Base.lie_e_f_ne`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Relations/Variantf8aca2aca67e347da117ac7eec4fb4782385b10d8a6a33a295b7e67b98359924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Relations/Variantf8aca2aca67e347da117ac7eec4fb4782385b10d8a6a33a295b7e67b98359924.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5ea4d473ec13a2527e4f22859dcf346113b634b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
