# riemannZeta_neg_nat_eq_bernoulli'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:768b087c-4444-7827-f4a4-387573a18415",
  "kind": "theorem",
  "lexical_name": "riemannZeta_neg_nat_eq_bernoulli'",
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
  "slug": "riemannzeta-neg-nat-eq-bernoulli--24f48d6655080bdabb3fa76b",
  "source": {
    "blob": "3202a1b71118103de05b67901cdac2dd1dc460bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 233,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24f48d6655080bdabb3fa76b786bd6a15f3e3198938d36b7e08d74e1dc7a29ad",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:768b087c-4444-7827-f4a4-387573a18415`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannZeta_neg_nat_eq_bernoulli' (k : ℕ) :
    riemannZeta (-k) = -bernoulli' (k + 1) / (k + 1) := by
  rcases eq_or_ne k 0 with rfl | hk
  · rw [Nat.cast_zero, neg_zero, riemannZeta_zero, zero_add, zero_add, div_one,
      bernoulli'_one, Rat.cast_div, Rat.cast_one, Rat.cast_ofNat, neg_div]
  · rw [← hurwitzZeta_zero, ← QuotientAddGroup.mk_zero, hurwitzZeta_neg_nat hk
      (left_mem_Icc.mpr zero_le_one), ofReal_zero, Polynomial.eval_zero_map,
      Polynomial.bernoulli_eval_zero, Algebra.algebraMap_eq_smul_one, Rat.smul_one_eq_cast,
      div_mul_eq_mul_div, neg_one_mul, bernoulli_eq_bernoulli'_of_ne_one (by simp [hk])]

/-- Value of Riemann zeta at `-ℕ` in terms of `bernoulli`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3202a1b71118103de05b67901cdac2dd1dc460bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
