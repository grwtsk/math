# smeval_neg_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "483bd1a95e7535a79dd90eb4333ee4f0c7575482",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd4b0ad6e8fd7bb34383117029f2f9ace4d6f8525fb59cdce2846d9dcb911fa1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6baa4b1f-3fc0-5050-3541-eb72f3d18c37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8382c659-91c8-12f0-6e24-7ec0d1660cac",
  "kind": "theorem",
  "lexical_name": "smeval_neg_nat",
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
  "slug": "smeval-neg-nat--7350d06e6ce8f82dd879d7f5",
  "source": {
    "blob": "483bd1a95e7535a79dd90eb4333ee4f0c7575482",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 159,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Smeval/Variantbd4b0ad6e8fd7bb34383117029f2f9ace4d6f8525fb59cdce2846d9dcb911fa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7350d06e6ce8f82dd879d7f5809f71a30d03f09b7d5fbd0ec8033a6753763f58",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Smeval/Variantbd4b0ad6e8fd7bb34383117029f2f9ace4d6f8525fb59cdce2846d9dcb911fa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8382c659-91c8-12f0-6e24-7ec0d1660cac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smeval_neg_nat (S : Type*) [NonAssocRing S] [Pow S ℕ] [NatPowAssoc S] (q : ℕ[X])
    (n : ℕ) : q.smeval (-(n : S)) = q.smeval (-n : ℤ) := by
  rw [smeval_eq_sum, smeval_eq_sum]
  simp only [Polynomial.smul_pow, sum_def, Int.cast_sum, Int.cast_mul, Int.cast_npow]
  refine Finset.sum_congr rfl ?_
  intro k _
  rw [show -(n : S) = (-n : ℤ) by simp only [Int.cast_neg, Int.cast_natCast], nsmul_eq_mul,
    ← AddGroupWithOne.intCast_ofNat, ← Int.cast_npow, ← Int.cast_mul, ← nsmul_eq_mul]

end Neg

section NatPowAssoc

/-!
In the module docstring for algebras at `Mathlib/Algebra/Algebra/Basic.lean`, we see that
`[CommSemiring R] [Semiring S] [Module R S] [IsScalarTower R S S] [SMulCommClass R S S]` is an
equivalent way to express `[CommSemiring R] [Semiring S] [Algebra R S]` that allows one to relax
the defining structures independently.  For non-associative power-associative algebras (e.g.,
octonions), we replace the `[Semiring S]` with `[NonAssocSemiring S] [Pow S ℕ] [NatPowAssoc S]`.
-/

variable (R : Type*) [Semiring R] (r : R) (p q : R[X]) {S : Type*}
  [NonAssocSemiring S] [Module R S] [Pow S ℕ] (x : S)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Smeval/Variantbd4b0ad6e8fd7bb34383117029f2f9ace4d6f8525fb59cdce2846d9dcb911fa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Smeval/Variantbd4b0ad6e8fd7bb34383117029f2f9ace4d6f8525fb59cdce2846d9dcb911fa1.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `483bd1a95e7535a79dd90eb4333ee4f0c7575482` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
