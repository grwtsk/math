# evalPoly_mem_polyBoundInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7f9c83c-db0a-59d8-7228-6f0942c9553c",
  "kind": "theorem",
  "lexical_name": "evalPoly_mem_polyBoundInterval",
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
  "slug": "evalpoly-mem-polyboundinterval--3f9327e58aae3c488c62a1f1",
  "source": {
    "blob": "6a776bf727e8916d67b87be3734405fd02bcef17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1060,
    "line": 1025,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f9327e58aae3c488c62a1f11c2d188d2921e22283d43b2b95e5fd730ef5d447",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7f9c83c-db0a-59d8-7228-6f0942c9553c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1025–1060.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalPoly_mem_polyBoundInterval
    (tm : TaylorModel) (x : ℝ) (hx : x ∈ tm.domain) :
    tm.evalPoly x ∈ tm.polyBoundInterval := by
  simp only [TaylorModel.evalPoly, TaylorModel.polyBoundInterval, IntervalRat.mem_def]
  set B := boundPolyAbs tm.poly tm.domain tm.center with hB_def
  suffices h : |Polynomial.aeval (x - tm.center) tm.poly| ≤ B by
    constructor
    · simp only [Rat.cast_neg]
      have := neg_abs_le (Polynomial.aeval (x - ↑tm.center) tm.poly)
      linarith
    · exact le_trans (le_abs_self _) h
  unfold boundPolyAbs at hB_def
  simp only at hB_def
  set r : ℚ := max (|tm.domain.hi - tm.center|) (|tm.domain.lo - tm.center|) with hr_def
  have hr_real : (r : ℝ) = max (|(tm.domain.hi : ℝ) - tm.center|) (|(tm.domain.lo : ℝ) - tm.center|) := by
    simp only [hr_def, Rat.cast_max, Rat.cast_abs, Rat.cast_sub]
  have habs_le_r : |x - tm.center| ≤ r := by
    rw [hr_real]
    exact abs_sub_le_radius x tm.center tm.domain hx
  have hr_nn : 0 ≤ (r : ℝ) := by
    rw [hr_real]
    exact le_max_of_le_left (abs_nonneg _)
  have h := aeval_abs_le_sum tm.poly (x - tm.center) r habs_le_r
  have hcoeff_abs : ∀ i, (|tm.poly.coeff i| : ℝ) = |(tm.poly.coeff i : ℝ)| := fun i => rfl
  calc |Polynomial.aeval (x - ↑tm.center) tm.poly|
      ≤ ∑ i ∈ Finset.range (tm.poly.natDegree + 1), |(tm.poly.coeff i : ℝ)| * (r : ℝ) ^ i := h
    _ = ∑ i ∈ Finset.range (tm.poly.natDegree + 1), (|tm.poly.coeff i| : ℝ) * (r : ℝ) ^ i := by
        apply Finset.sum_congr rfl
        intro i _
        rw [← hcoeff_abs]
    _ = (∑ i ∈ Finset.range (tm.poly.natDegree + 1), |tm.poly.coeff i| * r ^ i : ℚ) := by
        simp only [Rat.cast_sum, Rat.cast_mul, Rat.cast_abs, Rat.cast_pow]
    _ = (B : ℝ) := by rw [hB_def]

/-- Taylor model bounds are correct: if f(x) ∈ evalSet for all x in domain,
    then f(x) ∈ bound for all x in domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean#L1025).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a776bf727e8916d67b87be3734405fd02bcef17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
