# coeff_one_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b7500658f24915f182d0dfd79bbaf3ae74d66fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 667,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac216e933facc758e7e61e818ac09052b753fd3fea68315deaa133931fe5acce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a096030-473e-1fbb-4cf3-f4bbc1952a34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a021e1c-6f5c-ad5b-189b-1d09e1ee4ce8",
  "kind": "lemma",
  "lexical_name": "coeff_one_pow",
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
  "slug": "coeff-one-pow--e2ff961430a3429ef45ecdab",
  "source": {
    "blob": "4b7500658f24915f182d0dfd79bbaf3ae74d66fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 703,
    "line": 667,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantac216e933facc758e7e61e818ac09052b753fd3fea68315deaa133931fe5acce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2ff961430a3429ef45ecdabc2468d8029462208c2455a049ddada87dd53bad7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantac216e933facc758e7e61e818ac09052b753fd3fea68315deaa133931fe5acce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a021e1c-6f5c-ad5b-189b-1d09e1ee4ce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 667–703.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeff_one_pow (n : ℕ) (φ : R⟦X⟧) :
    coeff R 1 (φ ^ n) = n * coeff R 1 φ * (constantCoeff R φ) ^ (n - 1) := by
  rcases Nat.eq_zero_or_pos n with (rfl | hn)
  · simp
  induction n with
  | zero => omega
  | succ n' ih =>
      have h₁ (m : ℕ) : φ ^ (m + 1) = φ ^ m * φ := by exact rfl
      have h₂ : Finset.antidiagonal 1 = {(0, 1), (1, 0)} := by exact rfl
      rw [h₁, coeff_mul, h₂, Finset.sum_insert, Finset.sum_singleton]
      · simp only [coeff_zero_eq_constantCoeff, map_pow, Nat.cast_add, Nat.cast_one,
          add_tsub_cancel_right]
        have h₀ : n' = 0 ∨ 1 ≤ n' := by omega
        rcases h₀ with h' | h'
        · by_contra h''
          rw [h'] at h''
          simp only [pow_zero, one_mul, coeff_one, one_ne_zero, ↓reduceIte, zero_mul, add_zero,
            CharP.cast_eq_zero, zero_add, mul_one, not_true_eq_false] at h''
          norm_num at h''
        · rw [ih]
          · conv => lhs; arg 2; rw [mul_comm, ← mul_assoc]
            move_mul [← (constantCoeff R) φ ^ (n' - 1)]
            conv => enter [1, 2, 1, 1, 2]; rw [← pow_one (a := constantCoeff R φ)]
            rw [← pow_add (a := constantCoeff R φ)]
            conv => enter [1, 2, 1, 1]; rw [Nat.sub_add_cancel h']
            conv => enter [1, 2, 1]; rw [mul_comm]
            rw [mul_assoc, ← one_add_mul, add_comm, mul_assoc]
            conv => enter [1, 2]; rw [mul_comm]
          exact h'
      · decide

end CommSemiring

section CommRing

variable {A : Type*} [CommRing A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantac216e933facc758e7e61e818ac09052b753fd3fea68315deaa133931fe5acce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantac216e933facc758e7e61e818ac09052b753fd3fea68315deaa133931fe5acce.lean#L667).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b7500658f24915f182d0dfd79bbaf3ae74d66fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
