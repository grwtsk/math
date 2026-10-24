# natDegree_coeff_preΨ'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8bab895-740d-fae5-af93-0073046fc17e",
  "kind": "lemma",
  "lexical_name": "natDegree_coeff_preΨ'",
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
  "slug": "natdegree-coeff-pre--e2eb62d6beb7a66f7825d69c",
  "source": {
    "blob": "ef6f80b8b8727984ae25288b9ad91c40d5c13950",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 204,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Degree/Variantff64b080da1a828c0dd520b00f0d703133531d2f34fee709a12728f12d2f0de9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2eb62d6beb7a66f7825d69c7669c27951b91257c1c63fca50eab572d96c3187",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Degree/Variantff64b080da1a828c0dd520b00f0d703133531d2f34fee709a12728f12d2f0de9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8bab895-740d-fae5-af93-0073046fc17e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma natDegree_coeff_preΨ' (n : ℕ) :
    (W.preΨ' n).natDegree ≤ expDegree n ∧ (W.preΨ' n).coeff (expDegree n) = expCoeff n := by
  let dm {m n p q} : _ → _ → (p * q : R[X]).natDegree ≤ m + n := natDegree_mul_le_of_le
  let dp {m n p} : _ → (p ^ n : R[X]).natDegree ≤ n * m := natDegree_pow_le_of_le n
  let cm {m n p q} : _ → _ → (p * q : R[X]).coeff (m + n) = _ := coeff_mul_of_natDegree_le
  let cp {m n p} : _ → (p ^ m : R[X]).coeff (m * n) = _ := coeff_pow_of_natDegree_le
  induction n using normEDSRec with
  | zero => simpa only [preΨ'_zero] using ⟨natDegree_zero.le, Int.cast_zero.symm⟩
  | one => simpa only [preΨ'_one] using ⟨natDegree_one.le, coeff_one_zero.trans Int.cast_one.symm⟩
  | two => simpa only [preΨ'_two] using ⟨natDegree_one.le, coeff_one_zero.trans Int.cast_one.symm⟩
  | three => simpa only [preΨ'_three] using ⟨W.natDegree_Ψ₃_le, W.coeff_Ψ₃ ▸ Int.cast_three.symm⟩
  | four => simpa only [preΨ'_four] using ⟨W.natDegree_preΨ₄_le, W.coeff_preΨ₄ ▸ Int.cast_two.symm⟩
  | even m h₁ h₂ h₃ h₄ h₅ =>
    constructor
    · nth_rw 1 [preΨ'_even, ← max_self <| expDegree _, (expDegree_rec m).1.1, (expDegree_rec m).1.2]
      exact natDegree_sub_le_of_le (dm (dm (dp h₂.1) h₃.1) h₅.1) (dm (dm h₁.1 h₃.1) (dp h₄.1))
    · nth_rw 1 [preΨ'_even, coeff_sub, (expDegree_rec m).1.1, cm (dm (dp h₂.1) h₃.1) h₅.1,
        cm (dp h₂.1) h₃.1, cp h₂.1, h₂.2, h₃.2, h₅.2, (expDegree_rec m).1.2,
        cm (dm h₁.1 h₃.1) (dp h₄.1), cm h₁.1 h₃.1, h₁.2, cp h₄.1, h₃.2, h₄.2, (expCoeff_rec m).1]
      norm_cast
  | odd m h₁ h₂ h₃ h₄ =>
    rw [preΨ'_odd]
    constructor
    · nth_rw 1 [← max_self <| expDegree _, (expDegree_rec m).2.1, (expDegree_rec m).2.2]
      refine natDegree_sub_le_of_le (dm (dm h₄.1 (dp h₂.1)) ?_) (dm (dm h₁.1 (dp h₃.1)) ?_) <;>
        split_ifs <;> simp only [apply_ite, natDegree_one.le, dp W.natDegree_Ψ₂Sq_le]
    · nth_rw 1 [coeff_sub, (expDegree_rec m).2.1, cm (dm h₄.1 (dp h₂.1)), cm h₄.1 (dp h₂.1),
        h₄.2, cp h₂.1, h₂.2, apply_ite₂ coeff, cp W.natDegree_Ψ₂Sq_le, coeff_Ψ₂Sq, coeff_one_zero,
        (expDegree_rec m).2.2, cm (dm h₁.1 (dp h₃.1)), cm h₁.1 (dp h₃.1), h₁.2, cp h₃.1, h₃.2,
        apply_ite₂ coeff, cp W.natDegree_Ψ₂Sq_le, coeff_one_zero, coeff_Ψ₂Sq, (expCoeff_rec m).2]
      · norm_cast
      all_goals split_ifs <;> simp only [apply_ite, natDegree_one.le, dp W.natDegree_Ψ₂Sq_le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Degree/Variantff64b080da1a828c0dd520b00f0d703133531d2f34fee709a12728f12d2f0de9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Degree/Variantff64b080da1a828c0dd520b00f0d703133531d2f34fee709a12728f12d2f0de9.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef6f80b8b8727984ae25288b9ad91c40d5c13950` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
