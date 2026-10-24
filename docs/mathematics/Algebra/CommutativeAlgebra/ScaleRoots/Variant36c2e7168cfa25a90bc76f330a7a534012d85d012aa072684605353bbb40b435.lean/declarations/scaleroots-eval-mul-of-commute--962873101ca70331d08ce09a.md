# scaleRoots_eval₂_mul_of_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e88d71b0-17f3-639d-bbe6-77c4c87a7577",
  "kind": "theorem",
  "lexical_name": "scaleRoots_eval₂_mul_of_commute",
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
  "slug": "scaleroots-eval-mul-of-commute--962873101ca70331d08ce09a",
  "source": {
    "blob": "39eea03aa4745efc5bd2f3e803d1c9455d3325da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 137,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:962873101ca70331d08ce09adae3a426fe484287bf046e29f706395527bd9ba0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e88d71b0-17f3-639d-bbe6-77c4c87a7577`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaleRoots_eval₂_mul_of_commute {p : S[X]} (f : S →+* A) (a : A) (s : S)
    (hsa : Commute (f s) a) (hf : ∀ s₁ s₂, Commute (f s₁) (f s₂)) :
    eval₂ f (f s * a) (scaleRoots p s) = f s ^ p.natDegree * eval₂ f a p := by
  calc
    _ = (scaleRoots p s).support.sum fun i =>
          f (coeff p i * s ^ (p.natDegree - i)) * (f s * a) ^ i := by
      simp [eval₂_eq_sum, sum_def]
    _ = p.support.sum fun i => f (coeff p i * s ^ (p.natDegree - i)) * (f s * a) ^ i :=
      (Finset.sum_subset (support_scaleRoots_le p s) fun i _hi hi' => by
        let : coeff p i * s ^ (p.natDegree - i) = 0 := by simpa using hi'
        simp [this])
    _ = p.support.sum fun i : ℕ => f (p.coeff i) * f s ^ (p.natDegree - i + i) * a ^ i :=
      (Finset.sum_congr rfl fun i _hi => by
        simp_rw [f.map_mul, f.map_pow, pow_add, hsa.mul_pow, mul_assoc])
    _ = p.support.sum fun i : ℕ => f s ^ p.natDegree * (f (p.coeff i) * a ^ i) :=
      Finset.sum_congr rfl fun i hi => by
        rw [mul_assoc, ← map_pow, (hf _ _).left_comm, map_pow, tsub_add_cancel_of_le]
        exact le_natDegree_of_ne_zero (Polynomial.mem_support_iff.mp hi)
    _ = f s ^ p.natDegree * eval₂ f a p := by simp [← Finset.mul_sum, eval₂_eq_sum, sum_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39eea03aa4745efc5bd2f3e803d1c9455d3325da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
