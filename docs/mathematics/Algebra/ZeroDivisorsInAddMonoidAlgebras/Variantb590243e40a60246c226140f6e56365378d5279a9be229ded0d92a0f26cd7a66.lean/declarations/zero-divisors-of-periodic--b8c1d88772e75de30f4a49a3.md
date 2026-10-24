# zero_divisors_of_periodic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29505190-db3f-fe2d-efc5-c5f776f9bc71",
  "kind": "theorem",
  "lexical_name": "zero_divisors_of_periodic",
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
  "slug": "zero-divisors-of-periodic--b8c1d88772e75de30f4a49a3",
  "source": {
    "blob": "1a63ad49b59892eb9b3e9748d953b96e76029ef3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 66,
    "path": "GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8c1d88772e75de30f4a49a3fdf9e1104bb2585c5c0ed9e38a4b385ab8545bfd",
  "verification": {
    "reference": "docs/verification/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29505190-db3f-fe2d-efc5-c5f776f9bc71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_divisors_of_periodic {R A} [Nontrivial R] [Ring R] [AddMonoid A] {n : ℕ} (a : A)
    (n2 : 2 ≤ n) (na : n • a = a) (na1 : (n - 1) • a ≠ 0) :
    ∃ f g : R[A], f ≠ 0 ∧ g ≠ 0 ∧ f * g = 0 := by
  refine ⟨single a 1, single ((n - 1) • a) 1 - single 0 1, by simp, ?_, ?_⟩
  · exact sub_ne_zero.mpr (by simpa [single, AddMonoidAlgebra, single_eq_single_iff])
  · rw [mul_sub, AddMonoidAlgebra.single_mul_single, AddMonoidAlgebra.single_mul_single,
      sub_eq_zero, add_zero, ← succ_nsmul', Nat.sub_add_cancel (one_le_two.trans n2), na]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a63ad49b59892eb9b3e9748d953b96e76029ef3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
