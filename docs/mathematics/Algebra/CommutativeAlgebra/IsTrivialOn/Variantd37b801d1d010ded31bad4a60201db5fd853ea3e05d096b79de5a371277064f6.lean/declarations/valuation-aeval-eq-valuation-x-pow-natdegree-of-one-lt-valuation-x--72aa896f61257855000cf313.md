# valuation_aeval_eq_valuation_X_pow_natDegree_of_one_lt_valuation_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00b70e0b-6bc2-faa9-b75f-dd866dfe9bc8",
  "kind": "theorem",
  "lexical_name": "valuation_aeval_eq_valuation_X_pow_natDegree_of_one_lt_valuation_X",
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
  "slug": "valuation-aeval-eq-valuation-x-pow-natdegree-of-one-lt-valuation-x--72aa896f61257855000cf313",
  "source": {
    "blob": "0a482985eae42389ef74a275e57ab1c1ebad7f37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 53,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsTrivialOn/Variantd37b801d1d010ded31bad4a60201db5fd853ea3e05d096b79de5a371277064f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72aa896f61257855000cf31367d332adbbf8825fed11ce437e80c5f564e44574",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsTrivialOn/Variantd37b801d1d010ded31bad4a60201db5fd853ea3e05d096b79de5a371277064f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00b70e0b-6bc2-faa9-b75f-dd866dfe9bc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valuation_aeval_eq_valuation_X_pow_natDegree_of_one_lt_valuation_X (w : B) (hpos : 1 < v w)
    {p : Polynomial A} (hp : p ≠ 0) : v (p.aeval w) = v w ^ p.natDegree := by
  rw [← valuation_aeval_monomial_eq_valuation_pow _ _ (leadingCoeff_ne_zero.mpr hp)]
  nth_rw 1 [as_sum_range p, map_sum]
  apply Valuation.map_sum_eq_of_lt _ (by simp)
  intro i hi
  simp only [Finset.mem_sdiff, Finset.mem_range, Nat.lt_add_one_iff, Finset.mem_singleton,
    ← lt_iff_le_and_ne] at hi
  simp only [← C_mul_X_pow_eq_monomial, map_mul, aeval_C, map_pow, aeval_X, coeff_natDegree]
  by_cases h0 : (p.coeff i) = 0
  · simp [hv.eq_one p.leadingCoeff (leadingCoeff_ne_zero.mpr hp),
      h0, pow_pos (lt_of_le_of_lt zero_le_one hpos) p.natDegree]
  · simp [hv.eq_one p.leadingCoeff (leadingCoeff_ne_zero.mpr hp),
      hv.eq_one _ h0, pow_lt_pow_right₀ hpos hi]

end Polynomial

end Ring

section Field

variable (A : Type*) [CommRing A]
variable {K : Type*} [Field K] [Algebra A K] {v : Valuation K Γ} [hv : v.IsTrivialOn A]

open Polynomial

/--
For an `A`-algebra `K` and a valuation `v` over `K` which is trivial on `A`.
If `y : K` is such that `y ≠ 0` and `v y ≠ 1`, then it is transcendental over `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsTrivialOn/Variantd37b801d1d010ded31bad4a60201db5fd853ea3e05d096b79de5a371277064f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsTrivialOn/Variantd37b801d1d010ded31bad4a60201db5fd853ea3e05d096b79de5a371277064f6.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a482985eae42389ef74a275e57ab1c1ebad7f37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
