# natDegree_coeff_ΨSq_ofNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49467188-85d1-0488-4a92-5ef313845ddc",
  "kind": "lemma",
  "lexical_name": "natDegree_coeff_ΨSq_ofNat",
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
  "slug": "natdegree-coeff-sq-ofnat--03318716801400717c118db8",
  "source": {
    "blob": "ef6f80b8b8727984ae25288b9ad91c40d5c13950",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 328,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Degree/Variantff64b080da1a828c0dd520b00f0d703133531d2f34fee709a12728f12d2f0de9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03318716801400717c118db82fce703e907b3f4083fb0b00d0dd0c728748b644",
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

Occurrence: `result:49467188-85d1-0488-4a92-5ef313845ddc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma natDegree_coeff_ΨSq_ofNat (n : ℕ) :
    (W.ΨSq n).natDegree ≤ n ^ 2 - 1 ∧ (W.ΨSq n).coeff (n ^ 2 - 1) = (n ^ 2 : ℤ) := by
  let dp {m n p} : _ → (p ^ n : R[X]).natDegree ≤ n * m := natDegree_pow_le_of_le n
  let h {n} := W.natDegree_coeff_preΨ' n
  rcases n with _ | n
  · simp
  have hd : (n + 1) ^ 2 - 1 = 2 * expDegree (n + 1) + if Even (n + 1) then 3 else 0 := by
    push_cast [← @Nat.cast_inj ℤ, add_sq, expDegree_cast n.succ_ne_zero]
    split_ifs <;> ring1
  have hc : (n + 1 : ℕ) ^ 2 = expCoeff (n + 1) ^ 2 * if Even (n + 1) then 4 else 1 := by
    push_cast [← @Int.cast_inj ℚ, expCoeff_cast]
    split_ifs <;> ring1
  rw [ΨSq_ofNat, hd]
  constructor
  · refine natDegree_mul_le_of_le (dp h.1) ?_
    split_ifs <;> simp only [apply_ite, natDegree_one.le, W.natDegree_Ψ₂Sq_le]
  · rw [coeff_mul_of_natDegree_le (dp h.1), coeff_pow_of_natDegree_le h.1, h.2, apply_ite₂ coeff,
      coeff_Ψ₂Sq, coeff_one_zero, hc]
    · norm_cast
    split_ifs <;> simp only [apply_ite, natDegree_one.le, W.natDegree_Ψ₂Sq_le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Degree/Variantff64b080da1a828c0dd520b00f0d703133531d2f34fee709a12728f12d2f0de9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Degree/Variantff64b080da1a828c0dd520b00f0d703133531d2f34fee709a12728f12d2f0de9.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef6f80b8b8727984ae25288b9ad91c40d5c13950` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
