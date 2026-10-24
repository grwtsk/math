# IsHadamard.kronecker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2843f676-a33a-fe00-b34e-98713b94aa8e",
  "kind": "theorem",
  "lexical_name": "IsHadamard.kronecker",
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
  "slug": "ishadamard-kronecker--2d5d2ec6e30a13ec7bdb5c36",
  "source": {
    "blob": "96d28597998ad54c95d1f75c4a57946c4cfcfaff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 94,
    "path": "GRWTSK/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d5d2ec6e30a13ec7bdb5c366d9d64620b1c755b6f08ad290be8d7393bbd0834",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2843f676-a33a-fe00-b34e-98713b94aa8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsHadamard.kronecker {A : Matrix m m R} {B : Matrix n n R}
    (hA : A.IsHadamard) (hB : B.IsHadamard) : (A ⊗ₖ B).IsHadamard := by
  refine ⟨fun _ _ ↦ mul_mem (hA.apply_mem _ _) (hB.apply_mem _ _), ?_, ?_⟩ <;> ext ⟨i, i'⟩ ⟨j, j'⟩
  · calc
      _ = ∑ x₁, ∑ x₂, A i x₁ * (B i' x₂ * Bᴴ x₂ j') * Aᴴ x₁ j := by
        simp [conjTranspose_kronecker', mul_apply, mul_assoc, ← Finset.sum_product']
      _ = if i' = j' then ∑ x, A i x * (Fintype.card n • Aᴴ) x j else 0 := by
        simp [← Finset.sum_mul, ← Finset.mul_sum, ← mul_apply, hB.mul_conjTranspose,
          one_apply, mul_assoc _ (Fintype.card n : R), -conjTranspose_apply]
      _ = _ := by
        simp only [← mul_apply, mul_smul_comm, hA.mul_conjTranspose]
        simp [one_apply, ← Nat.cast_mul, mul_comm, ← ite_and, and_comm]
  · calc
      _ = ∑ x₁, ∑ x₂, Bᴴ i' x₂ * (Aᴴ i x₁ * A x₁ j) * B x₂ j' := by
        simp [conjTranspose_kronecker', mul_apply, mul_assoc, ← Finset.sum_product']
      _ = if i = j then ∑ x, Bᴴ i' x * (Fintype.card m • B) x j' else 0 := by
        rw [Finset.sum_comm]
        simp [← Finset.sum_mul, ← Finset.mul_sum, ← mul_apply, hA.conjTranspose_mul,
          one_apply, mul_assoc _ (Fintype.card m : R), -conjTranspose_apply]
      _ = _ := by
        simp only [← mul_apply, mul_smul_comm, hB.conjTranspose_mul]
        simp [one_apply, ← Nat.cast_mul, ← ite_and]

/-- A Hadamard matrix with constant column sum `s` has order `s * star s`, provided the order
is regular in `R`.

The row-sum form is `IsHadamard.card_eq_star_mul_of_const_row_sum`; over a ring with trivial
star the conclusion becomes `(Fintype.card n : R) = s ^ 2`, a slightly stronger form of
[Theorem 2.3.7][deLauneyFlannery2011]: only a constant sum hypothesis on one side is needed
under the two-sided orthogonality condition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96d28597998ad54c95d1f75c4a57946c4cfcfaff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
