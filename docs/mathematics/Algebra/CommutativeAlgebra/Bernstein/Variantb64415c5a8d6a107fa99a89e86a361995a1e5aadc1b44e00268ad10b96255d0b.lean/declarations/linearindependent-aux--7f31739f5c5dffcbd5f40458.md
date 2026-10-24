# linearIndependent_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbddcfd110d10c01ba93454f9c9d39361a6c0d43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ca82979-6247-9c8f-7baf-8407a62122c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c19ad01f-9844-7935-73aa-5026b0183a8f",
  "kind": "theorem",
  "lexical_name": "linearIndependent_aux",
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
  "slug": "linearindependent-aux--7f31739f5c5dffcbd5f40458",
  "source": {
    "blob": "dbddcfd110d10c01ba93454f9c9d39361a6c0d43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 224,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f31739f5c5dffcbd5f404585b4a9a9d2346e5c6c5d3e05f8948af42d56fbc2f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c19ad01f-9844-7935-73aa-5026b0183a8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_aux (n k : ℕ) (h : k ≤ n + 1) :
    LinearIndependent ℚ fun ν : Fin k => bernsteinPolynomial ℚ n ν := by
  induction' k with k ih
  · apply linearIndependent_empty_type
  · apply linearIndependent_fin_succ'.mpr
    fconstructor
    · exact ih (le_of_lt h)
    · -- The actual work!
      -- We show that the (n-k)-th derivative at 1 doesn't vanish,
      -- but vanishes for everything in the span.
      clear ih
      simp only [Nat.succ_eq_add_one, add_le_add_iff_right] at h
      simp only [Fin.val_last, Fin.init_def]
      dsimp
      apply notMem_span_of_apply_notMem_span_image (@Polynomial.derivative ℚ _ ^ (n - k))
      -- Note: https://github.com/leanprover-community/mathlib4/pull/8386 had to change `span_image` into `span_image _`
      simp only [not_exists, not_and, Submodule.mem_map, Submodule.span_image _]
      intro p m
      apply_fun Polynomial.eval (1 : ℚ)
      simp only [Module.End.pow_apply]
      -- The right hand side is nonzero,
      -- so it will suffice to show the left hand side is always zero.
      suffices (Polynomial.derivative^[n - k] p).eval 1 = 0 by
        rw [this]
        exact (iterate_derivative_at_1_ne_zero ℚ n k h).symm
      refine span_induction ?_ ?_ ?_ ?_ m
      · simp only [Set.mem_range, forall_exists_index, forall_apply_eq_imp_iff]
        rintro ⟨a, w⟩; simp only [Fin.val_mk]
        rw [iterate_derivative_at_1_eq_zero_of_lt ℚ n ((tsub_lt_tsub_iff_left_of_le h).mpr w)]
      · simp
      · intro x y _ _ hx hy; simp [hx, hy]
      · intro a x _ h; simp [h]

/-- The Bernstein polynomials are linearly independent.

We prove by induction that the collection of `bernsteinPolynomial n ν` for `ν = 0, ..., k`
are linearly independent.
The inductive step relies on the observation that the `(n-k)`-th derivative, evaluated at 1,
annihilates `bernsteinPolynomial n ν` for `ν < k`, but has a nonzero value at `ν = k`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbddcfd110d10c01ba93454f9c9d39361a6c0d43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
