# monicVector_inner_multiplication

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:142cbf2b-f15c-c1cb-9486-e6c95e3867a2",
  "kind": "theorem",
  "lexical_name": "monicVector_inner_multiplication",
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
  "slug": "monicvector-inner-multiplication--d4ba09ab1fa1cdf359bebf72",
  "source": {
    "blob": "aa61d530af43b55638a986e9524f5812aece71c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 198,
    "path": "GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4ba09ab1fa1cdf359bebf727277427ad1ae637330b9f371ce9e073c7d881d73",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:142cbf2b-f15c-c1cb-9486-e6c95e3867a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monicVector_inner_multiplication {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    ⟪monicVector t ht (n + 1),
      multiplicationMap t (monicDomainVector t ht n)⟫_ℂ =
        (‖monicVector t ht (n + 1)‖ : ℂ) ^ 2 := by
  have h := congrArg (fun f : coordinateDomain (momentMeasure t) =>
    ⟪monicVector t ht (n + 1), multiplicationMap t f⟫_ℂ)
      (powerDomain_monic_decomposition ht n)
  simp only [map_add, map_sum, map_smul, inner_add_right, inner_sum, inner_smul_right] at h
  have hs : (∑ i ∈ Finset.Iio n,
      (⟪monicVector t ht i, powerVector t ht n⟫_ℂ / (‖monicVector t ht i‖ : ℂ) ^ 2) *
      ⟪monicVector t ht (n + 1),
        multiplicationMap t (monicDomainVector t ht i)⟫_ℂ) = 0 := by
    apply Finset.sum_eq_zero
    intro i hi
    have hn : i + 1 < n + 1 := by have := Finset.mem_Iio.mp hi; omega
    rw [monicVector_inner_flag_eq_zero ht hn _
      (multiplication_flag ht i _ (monicVector_mem_flag ht i)), mul_zero]
  rw [hs, add_zero] at h
  rw [multiplicationMap_powerVector ht n, monicVector_inner_power ht (n + 1)] at h
  exact h.symm

/-- Positive actual hopping coefficient, the ratio of successive remainder norms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa61d530af43b55638a986e9524f5812aece71c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
