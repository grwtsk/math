# subst_rescale_of_degree_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a26d952d-ce8d-2c55-3a70-0eebde922cc0",
  "kind": "lemma",
  "lexical_name": "subst_rescale_of_degree_eq_one",
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
  "slug": "subst-rescale-of-degree-eq-one--829d161fece1ee32d039b39e",
  "source": {
    "blob": "45f721163f2ad90e817abbd9b70c3b08de0f53bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 425,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variant311fd262b85e9583fd2921236a94d1c20380db81c65a5a924ff57cf624364008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:829d161fece1ee32d039b39e07facc40e4d6f8cbe678cdb062a561105e25f0fa",
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

Occurrence: `result:a26d952d-ce8d-2c55-3a70-0eebde922cc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subst_rescale_of_degree_eq_one (a : R) {σ : Type*} (p : MvPowerSeries σ R)
    (hp_lin : ∀ d ∈ Function.support p, d.degree = 1) (f : PowerSeries R) :
    subst p (rescale a f) = MvPowerSeries.rescale (Function.const σ a) (subst p f) := by
  have hp : PowerSeries.HasSubst p := by
    apply HasSubst.of_constantCoeff_zero
    rw [← MvPowerSeries.coeff_zero_eq_constantCoeff_apply, MvPowerSeries.coeff_apply]
    have : (p 0 ≠ 0) → (0 : σ →₀ ℕ).degree = 1 := hp_lin 0
    grind
  rw [rescale_eq_subst, MvPowerSeries.rescale_eq_subst,
    subst_comp_subst_apply (HasSubst.smul_X' a) hp]
  nth_rewrite 3 [subst]
  rw [MvPowerSeries.subst_comp_subst_apply hp.const (MvPowerSeries.HasSubst.smul_X _),
    MvPowerSeries.ext_iff]
  intro _
  rw [subst_smul hp, ← Polynomial.coe_X, subst_coe hp, Polynomial.aeval_X,
    ← MvPowerSeries.rescale_eq_subst, MvPowerSeries.rescale_homogeneous_eq_smul hp_lin,
    subst, pow_one]

section substInv

section Invertible

variable (P : R⟦X⟧) (hP : P.constantCoeff = 0) [Invertible (coeff 1 P)]

open PowerSeries

/-- Given a power series `P = u • X + O(X²)` with `u` invertible,
this is the construction of a power series `Q` such that `P(Q(X)) = X`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Substitution/Variant311fd262b85e9583fd2921236a94d1c20380db81c65a5a924ff57cf624364008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variant311fd262b85e9583fd2921236a94d1c20380db81c65a5a924ff57cf624364008.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45f721163f2ad90e817abbd9b70c3b08de0f53bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
