# Basis.mem_center_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f92cb9899921aba27ce8ec68a53a1b9b0f43997",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e168d5a-cb0d-ca38-d1cf-472c95bc9182",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:720016f6-8655-ccc8-7de1-cf6a7ac51abd",
  "kind": "lemma",
  "lexical_name": "Basis.mem_center_iff",
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
  "slug": "basis-mem-center-iff--4a7b83c2df4c5136663dc6c3",
  "source": {
    "blob": "6f92cb9899921aba27ce8ec68a53a1b9b0f43997",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 119,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a7b83c2df4c5136663dc6c349e50ffcd8502cb31d50e572a6ad25d4a97394f0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:720016f6-8655-ccc8-7de1-cf6a7ac51abd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Basis.mem_center_iff {A}
    [Semiring R] [NonUnitalNonAssocSemiring A]
    [Module R A] [SMulCommClass R A A] [SMulCommClass R R A] [IsScalarTower R A A]
    (b : Basis ι R A) {z : A} :
    z ∈ Set.center A ↔
      (∀ i, Commute (b i) z) ∧ ∀ i j,
        z * (b i * b j) = (z * b i) * b j
          ∧ (b i * z) * b j = b i * (z * b j)
          ∧ (b i * b j) * z = b i * (b j * z) := by
  constructor
  · intro h
    constructor
    · intro i
      apply (h.1 (b i)).symm
    · intros
      exact ⟨h.2 _ _, ⟨h.3 _ _, h.4 _ _⟩⟩
  · intro h
    rw [center, mem_setOf_eq]
    constructor
    case comm =>
      intro y
      rw [← b.linearCombination_repr y, linearCombination_apply, sum, Finset.sum_mul,
          Finset.mul_sum]
      simp_rw [mul_smul_comm, smul_mul_assoc, (h.1 _).eq]
    case left_assoc =>
      intro c d
      rw [← b.linearCombination_repr c, ← b.linearCombination_repr d, linearCombination_apply,
          linearCombination_apply, sum, sum, Finset.sum_mul, Finset.mul_sum, Finset.mul_sum,
          Finset.mul_sum]
      simp_rw [smul_mul_assoc, Finset.mul_sum, Finset.sum_mul, mul_smul_comm, Finset.mul_sum,
        Finset.smul_sum, smul_mul_assoc, mul_smul_comm, (h.2 _ _).1,
        (@SMulCommClass.smul_comm R R A)]
      rw [Finset.sum_comm]
    case mid_assoc =>
      intro c d
      rw [← b.linearCombination_repr c, ← b.linearCombination_repr d, linearCombination_apply,
          linearCombination_apply, sum, sum, Finset.sum_mul, Finset.mul_sum, Finset.mul_sum,
          Finset.mul_sum]
      simp_rw [smul_mul_assoc, Finset.sum_mul, mul_smul_comm, smul_mul_assoc, (h.2 _ _).2.1]
    case right_assoc =>
      intro c d
      rw [← b.linearCombination_repr c, ← b.linearCombination_repr d, linearCombination_apply,
          linearCombination_apply, sum, Finsupp.sum, Finset.sum_mul]
      simp_rw [smul_mul_assoc, Finset.mul_sum, Finset.sum_mul, mul_smul_comm, Finset.mul_sum,
               Finset.smul_sum, smul_mul_assoc, mul_smul_comm, Finset.sum_mul, smul_mul_assoc,
               (h.2 _ _).2.2]

section RestrictScalars

variable {S : Type*} [CommRing R] [Ring S] [Nontrivial S] [AddCommGroup M]
variable [Algebra R S] [Module S M] [Module R M]
variable [IsScalarTower R S M] [NoZeroSMulDivisors R S] (b : Basis ι S M)
variable (R)

open Submodule

/-- Let `b` be an `S`-basis of `M`. Let `R` be a CommRing such that `Algebra R S` has no zero smul
divisors, then the submodule of `M` spanned by `b` over `R` admits `b` as an `R`-basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f92cb9899921aba27ce8ec68a53a1b9b0f43997` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
