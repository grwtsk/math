# multiplication_basis_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:359f0c43-d068-1cad-1877-c8e7b2ea3874",
  "kind": "theorem",
  "lexical_name": "multiplication_basis_succ",
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
  "slug": "multiplication-basis-succ--4c668cedba1cb1f8aa9e3f5b",
  "source": {
    "blob": "aa61d530af43b55638a986e9524f5812aece71c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 302,
    "path": "GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c668cedba1cb1f8aa9e3f5b050285bcc29b962b9d09f38e00c2597f29e100a6",
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

Occurrence: `result:359f0c43-d068-1cad-1877-c8e7b2ea3874`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplication_basis_succ {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    multiplicationMap t (basisDomainVector t ht (n + 1)) =
      (hopping t ht n : ℂ) • orthogonalPolynomial t ht n +
        (diagonal t ht (n + 1) : ℂ) • orthogonalPolynomial t ht (n + 1) +
          (hopping t ht (n + 1) : ℂ) • orthogonalPolynomial t ht (n + 2) := by
  apply (polynomialHilbertBasis t ht).repr.injective
  apply lp.ext
  funext i
  simp only [HilbertBasis.repr_apply_apply, polynomialHilbertBasis_apply,
    inner_add_right, inner_smul_right,
    orthonormal_iff_ite.mp (orthogonalPolynomial_orthonormal ht)]
  by_cases hi0 : i = n
  · subst i
    rw [lower_hopping_coefficient ht n]
    simp
  by_cases hi1 : i = n + 1
  · subst i
    rw [diagonal_coefficient ht (n + 1)]
    simp
  by_cases hi2 : i = n + 2
  · subst i
    rw [upper_hopping_coefficient ht (n + 1)]
    simp
  rcases lt_or_ge i (n + 1) with hlt | hge
  · rw [lower_band_zero ht (by omega)]
    simp [hi0, hi1, hi2]
  · rw [upper_band_zero ht (by omega)]
    simp [hi0, hi1, hi2]

/-- Each standard Jacobi vector is admitted by the transported maximal domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa61d530af43b55638a986e9524f5812aece71c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
