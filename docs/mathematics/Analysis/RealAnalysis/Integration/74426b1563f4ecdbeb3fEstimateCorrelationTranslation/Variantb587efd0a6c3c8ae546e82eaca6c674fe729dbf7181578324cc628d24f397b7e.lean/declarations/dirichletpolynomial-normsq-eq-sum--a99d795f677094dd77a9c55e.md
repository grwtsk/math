# dirichletPolynomial_normSq_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e81338cf-9c01-99bc-f231-37c427fad318",
  "kind": "theorem",
  "lexical_name": "dirichletPolynomial_normSq_eq_sum",
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
  "slug": "dirichletpolynomial-normsq-eq-sum--a99d795f677094dd77a9c55e",
  "source": {
    "blob": "225d3a34d6f678c5f74cad27f8b40b76fcdcabd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 286,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variantb587efd0a6c3c8ae546e82eaca6c674fe729dbf7181578324cc628d24f397b7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a99d795f677094dd77a9c55e34bb490da66fc835f05ea84d350e5199952425fb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variantb587efd0a6c3c8ae546e82eaca6c674fe729dbf7181578324cc628d24f397b7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e81338cf-9c01-99bc-f231-37c427fad318`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichletPolynomial_normSq_eq_sum (S : Finset ℕ) (a : ℕ → ℝ) (ξ : ℝ) :
    (Complex.normSq (dirichletPolynomial S a ξ) : ℂ) =
      ∑ i ∈ S, ∑ j ∈ S, ((a i * a j : ℝ) : ℂ) *
        Complex.exp (((2 * Real.pi *
          (Real.log (i : ℝ) - Real.log (j : ℝ)) * ξ : ℝ) : ℂ) * Complex.I) := by
  rw [← Complex.mul_conj]
  unfold dirichletPolynomial
  simp only [map_sum, map_mul, Complex.conj_ofReal]
  simp only [Finset.sum_mul]
  simp only [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  have heq : Complex.exp (((2 * Real.pi * Real.log (i : ℝ) * ξ : ℝ) : ℂ) * Complex.I) *
      conj (Complex.exp (((2 * Real.pi * Real.log (j : ℝ) * ξ : ℝ) : ℂ) * Complex.I)) =
      Complex.exp (((2 * Real.pi * (Real.log (i : ℝ) - Real.log (j : ℝ)) * ξ : ℝ) : ℂ) *
        Complex.I) := by
    rw [← Complex.exp_conj]
    simp only [map_mul, Complex.conj_ofReal, Complex.conj_I]
    rw [← Complex.exp_add]
    congr 1
    push_cast
    ring
  calc
    _ = ((a i * a j : ℝ) : ℂ) *
        (Complex.exp (((2 * Real.pi * Real.log (i : ℝ) * ξ : ℝ) : ℂ) * Complex.I) *
          conj (Complex.exp (((2 * Real.pi * Real.log (j : ℝ) * ξ : ℝ) : ℂ) * Complex.I))) := by
      conv_rhs => rw [Complex.ofReal_mul]
      ring
    _ = _ := by rw [heq]

/-- Actual weighted second moments are integrable; finite sums are not used as a default value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variantb587efd0a6c3c8ae546e82eaca6c674fe729dbf7181578324cc628d24f397b7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variantb587efd0a6c3c8ae546e82eaca6c674fe729dbf7181578324cc628d24f397b7e.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `225d3a34d6f678c5f74cad27f8b40b76fcdcabd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
