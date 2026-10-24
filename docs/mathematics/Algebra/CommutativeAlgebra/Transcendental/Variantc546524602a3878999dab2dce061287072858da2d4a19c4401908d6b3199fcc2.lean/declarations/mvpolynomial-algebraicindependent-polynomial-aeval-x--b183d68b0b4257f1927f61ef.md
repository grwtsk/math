# MvPolynomial.algebraicIndependent_polynomial_aeval_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fced0ea-7048-b09c-a74f-0482f796d003",
  "kind": "theorem",
  "lexical_name": "MvPolynomial.algebraicIndependent_polynomial_aeval_X",
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
  "slug": "mvpolynomial-algebraicindependent-polynomial-aeval-x--b183d68b0b4257f1927f61ef",
  "source": {
    "blob": "5d31c73c039751c28228898e55dd432fc57789db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 269,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b183d68b0b4257f1927f61efd983015363a2fb0cf93abea623e26158d36b8150",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fced0ea-7048-b09c-a74f-0482f796d003`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MvPolynomial.algebraicIndependent_polynomial_aeval_X
    (f : ι → Polynomial R) (hf : ∀ i, Transcendental R (f i)) :
    AlgebraicIndependent R fun i ↦ Polynomial.aeval (X i : MvPolynomial ι R) (f i) := by
  set x := fun i ↦ Polynomial.aeval (X i : MvPolynomial ι R) (f i)
  refine algebraicIndependent_of_finite_type' (C_injective _ _) fun t _ _ i hi ↦ ?_
  have hle : adjoin R (x '' t) ≤ supported R t := by
    rw [Algebra.adjoin_le_iff, Set.image_subset_iff]
    intro _ h
    rw [Set.mem_preimage]
    refine Algebra.adjoin_mono ?_ (Polynomial.aeval_mem_adjoin_singleton R _)
    simp_rw [singleton_subset_iff, Set.mem_image_of_mem _ h]
  exact (transcendental_supported_polynomial_aeval_X R hi (hf i)).of_tower_top_of_subalgebra_le hle

/-- If `{x_i : A | i : ι}` is algebraically independent over `R`, and for each `i`,
`f_i : R[X]` is transcendental over `R`, then `{f_i(x_i) | i : ι}` is also
algebraically independent over `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d31c73c039751c28228898e55dd432fc57789db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
