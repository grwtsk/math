# rescale_eq_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0aefe5be-6e7b-2974-3b6c-13922448538c",
  "kind": "theorem",
  "lexical_name": "rescale_eq_subst",
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
  "slug": "rescale-eq-subst--4144214f03ff905759b5fe43",
  "source": {
    "blob": "2547b313a495ab2f0b89d403f145dead834e5bb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 516,
    "line": 500,
    "path": "GRWTSK/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4144214f03ff905759b5fe43a56561edb7629cfc92d0bdde9d6b48764b25ecf4",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0aefe5be-6e7b-2974-3b6c-13922448538c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–516.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rescale_eq_subst (a : σ → R) (f : MvPowerSeries σ R) :
    rescale a f = subst (a • X) f := by
  classical
  ext n
  rw [coeff_rescale]
  rw [coeff_subst (HasSubst.smul_X a),
    finsum_eq_sum _ (coeff_subst_finite (HasSubst.smul_X a) f n)]
  simp only [Pi.smul_apply', smul_eq_mul]
  rw [Finset.sum_eq_single n _ _]
  · simp [mul_comm, ← monomial_eq, coeff_monomial]
  · intro b hb hbn
    rw [← monomial_eq, coeff_monomial, if_neg (Ne.symm hbn), mul_zero]
  · intro hn
    simpa using hn

/-- Rescale a multivariate power series, as an `AlgHom` in the scaling parameters,
by multiplying each variable `x` by the value `a x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2547b313a495ab2f0b89d403f145dead834e5bb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
