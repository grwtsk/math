# truncFinset_coe_eq_self_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a3db69d-c9b1-3bfd-b5a0-9800356881c7",
  "kind": "lemma",
  "lexical_name": "truncFinset_coe_eq_self_iff",
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
  "slug": "truncfinset-coe-eq-self-iff--a0ed21fdbddb5bab1a606671",
  "source": {
    "blob": "94512808d746f70940e6aacd4d993c1e2674c09f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 176,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0ed21fdbddb5bab1a606671d8824729223cf69e789f15329c0d78c7948138f3",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a3db69d-c9b1-3bfd-b5a0-9800356881c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma truncFinset_coe_eq_self_iff (p : MvPolynomial σ R) :
    truncFinset R s p = p ↔ p.support ⊆ s := by
  refine ⟨fun h ↦ ?_, fun h ↦ MvPolynomial.ext _ _ fun x ↦ ?_⟩
  · rw [← h]
    exact support_truncFinset_subset ..
  by_cases x ∈ s <;> grind [MvPolynomial.coeff_coe]

end TruncFinset

section TruncLT

variable [DecidableEq σ] [CommSemiring R]

/-- The `n`th truncation of a multivariate formal power series to a multivariate polynomial

If `f : MvPowerSeries σ R` and `n : σ →₀ ℕ` is a (finitely-supported) function from `σ`
to the naturals, then `trunc R n f` is the multivariable polynomial obtained from `f`
by keeping only the monomials $c\prod_i X_i^{a_i}$ where `a i ≤ n i` for all `i`
and `a i < n i` for some `i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94512808d746f70940e6aacd4d993c1e2674c09f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
