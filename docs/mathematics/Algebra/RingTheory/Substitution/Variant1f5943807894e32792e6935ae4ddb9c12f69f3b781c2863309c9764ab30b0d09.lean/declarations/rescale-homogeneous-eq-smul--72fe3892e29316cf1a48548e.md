# rescale_homogeneous_eq_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b9fe2fa-4b72-40f6-ddd1-6f0212212f1f",
  "kind": "lemma",
  "lexical_name": "rescale_homogeneous_eq_smul",
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
  "slug": "rescale-homogeneous-eq-smul--72fe3892e29316cf1a48548e",
  "source": {
    "blob": "2547b313a495ab2f0b89d403f145dead834e5bb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 478,
    "path": "GRWTSK/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72fe3892e29316cf1a48548e92125e56d0b0f7cfcfd9256afa6b3e43f4da9112",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b9fe2fa-4b72-40f6-ddd1-6f0212212f1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rescale_homogeneous_eq_smul {n : ℕ} {r : R} {f : MvPowerSeries σ R}
    (hf : ∀ d ∈ f.support, d.degree = n) :
    MvPowerSeries.rescale (Function.const σ r) f = r ^ n • f := by
  ext e
  simp only [MvPowerSeries.coeff_rescale, map_smul, Finsupp.prod, Function.const_apply,
    Finset.prod_pow_eq_pow_sum, smul_eq_mul]
  by_cases he : e ∈ f.support
  · rw [← hf e he, Finsupp.degree]
  · simp only [Function.mem_support, ne_eq, not_not] at he
    simp [he, mul_zero, coeff_apply]

/-- Rescale a multivariate power series, as a `MonoidHom` in the scaling parameters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2547b313a495ab2f0b89d403f145dead834e5bb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
