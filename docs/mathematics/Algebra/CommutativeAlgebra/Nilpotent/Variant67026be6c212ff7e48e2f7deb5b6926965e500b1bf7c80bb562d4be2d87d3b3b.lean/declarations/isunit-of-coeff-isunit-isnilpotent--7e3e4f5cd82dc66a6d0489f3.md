# isUnit_of_coeff_isUnit_isNilpotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:391f12c5-8a05-e049-8eac-1bc1be766e65",
  "kind": "theorem",
  "lexical_name": "isUnit_of_coeff_isUnit_isNilpotent",
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
  "slug": "isunit-of-coeff-isunit-isnilpotent--7e3e4f5cd82dc66a6d0489f3",
  "source": {
    "blob": "77b3f1e75e121d841728b7748666e1271a88e951",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 103,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e3e4f5cd82dc66a6d0489f375cb144e1ddf7d2f151d076688513c0c5d2e725c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:391f12c5-8a05-e049-8eac-1bc1be766e65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_of_coeff_isUnit_isNilpotent (hunit : IsUnit (P.coeff 0))
    (hnil : ∀ i, i ≠ 0 → IsNilpotent (P.coeff i)) : IsUnit P := by
  induction' h : P.natDegree using Nat.strong_induction_on with k hind generalizing P
  by_cases hdeg : P.natDegree = 0
  { rw [eq_C_of_natDegree_eq_zero hdeg]
    exact hunit.map C }
  set P₁ := P.eraseLead with hP₁
  suffices IsUnit P₁ by
    rw [← eraseLead_add_monomial_natDegree_leadingCoeff P, ← C_mul_X_pow_eq_monomial]
    obtain ⟨Q, hQ⟩ := this
    rw [← hP₁, ← hQ]
    refine' Commute.IsNilpotent.add_isUnit (isNilpotent_C_mul_pow_X_of_isNilpotent _ (hnil _ hdeg))
      ((Commute.all _ _).mul_left (Commute.all _ _))
  have hdeg₂ := lt_of_le_of_lt P.eraseLead_natDegree_le (Nat.sub_lt
    (Nat.pos_of_ne_zero hdeg) zero_lt_one)
  refine' hind P₁.natDegree _ _ (fun i hi => _) rfl
  · simp_rw [← h, hdeg₂]
  · simp_rw [eraseLead_coeff_of_ne _ (Ne.symm hdeg), hunit]
  · by_cases H : i ≤ P₁.natDegree
    simp_rw [eraseLead_coeff_of_ne _ (ne_of_lt (lt_of_le_of_lt H hdeg₂)), hnil i hi]
    simp_rw [coeff_eq_zero_of_natDegree_lt (lt_of_not_ge H), IsNilpotent.zero]

/-- Let `P` be a polynomial over `R`. If `P` is a unit, then all its coefficients are nilpotent,
except its constant term which is a unit.

See also `Polynomial.isUnit_iff_coeff_isUnit_isNilpotent`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant67026be6c212ff7e48e2f7deb5b6926965e500b1bf7c80bb562d4be2d87d3b3b.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77b3f1e75e121d841728b7748666e1271a88e951` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
