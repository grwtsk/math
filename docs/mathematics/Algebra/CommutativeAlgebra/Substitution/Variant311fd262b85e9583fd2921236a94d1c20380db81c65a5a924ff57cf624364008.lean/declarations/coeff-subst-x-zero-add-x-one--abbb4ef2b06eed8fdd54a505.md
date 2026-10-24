# coeff_subst_X_zero_add_X_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e208ab9b-6234-2fc1-4dcf-3c2ab77c5081",
  "kind": "lemma",
  "lexical_name": "coeff_subst_X_zero_add_X_one",
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
  "slug": "coeff-subst-x-zero-add-x-one--abbb4ef2b06eed8fdd54a505",
  "source": {
    "blob": "45f721163f2ad90e817abbd9b70c3b08de0f53bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 662,
    "line": 650,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variant311fd262b85e9583fd2921236a94d1c20380db81c65a5a924ff57cf624364008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abbb4ef2b06eed8fdd54a505cc871417a29f111c19fbda585025e873aaada422",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Substitution/Variant311fd262b85e9583fd2921236a94d1c20380db81c65a5a924ff57cf624364008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e208ab9b-6234-2fc1-4dcf-3c2ab77c5081`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 650–662.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeff_subst_X_zero_add_X_one (f : R⟦X⟧) (e : Fin 2 →₀ ℕ) :
    MvPowerSeries.coeff e (subst (X₀ + X₁) f) =
      (e 0 + e 1).choose (e 0) * coeff (e 0 + e 1) f := by
  rw [PowerSeries.subst, MvPowerSeries.coeff_subst
    (MvPowerSeries.hasSubst_of_constantCoeff_zero (fun _ ↦ by simp))]
  simp_rw [Finsupp.prod_pow, univ_unique, PUnit.default_eq_unit, prod_singleton,
    smul_eq_mul, ← MvPolynomial.coe_X, ← MvPolynomial.coe_add, ← MvPolynomial.coe_pow,
    MvPolynomial.coeff_coe]
  rw [finsum_eq_single _ (single () (e 0 + e 1)), mul_comm]
  · simp [MvPolynomial.coeff_add_pow, coeff]
  · simp only [MvPolynomial.coeff_add_pow, mem_antidiagonal, cast_ite]
    grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Substitution/Variant311fd262b85e9583fd2921236a94d1c20380db81c65a5a924ff57cf624364008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variant311fd262b85e9583fd2921236a94d1c20380db81c65a5a924ff57cf624364008.lean#L650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45f721163f2ad90e817abbd9b70c3b08de0f53bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
