# finprod_heightOneSpectrum_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88647c45574d4f4a8bd2224cdc49b47cfacbd607",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:876dcc35-8463-a0ca-2fb8-9db2582488c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29d0ff44-1107-f243-5b40-7df6a85c108b",
  "kind": "theorem",
  "lexical_name": "finprod_heightOneSpectrum_factorization",
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
  "slug": "finprod-heightonespectrum-factorization--fa528b138c04eddad9a12d47",
  "source": {
    "blob": "88647c45574d4f4a8bd2224cdc49b47cfacbd607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 250,
    "path": "GRWTSK/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa528b138c04eddad9a12d47a733020c04056498cc932c9526e415450588da3a",
  "verification": {
    "reference": "docs/verification/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29d0ff44-1107-f243-5b40-7df6a85c108b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finprod_heightOneSpectrum_factorization {I : FractionalIdeal R⁰ K} (hI : I ≠ 0) {a : R}
    {J : Ideal R} (haJ : I = spanSingleton R⁰ ((algebraMap R K) a)⁻¹ * ↑J) :
    ∏ᶠ v : HeightOneSpectrum R, (v.asIdeal : FractionalIdeal R⁰ K) ^
      ((Associates.mk v.asIdeal).count (Associates.mk J).factors -
        (Associates.mk v.asIdeal).count (Associates.mk (Ideal.span {a})).factors : ℤ) = I := by
  have hJ_ne_zero : J ≠ 0 := ideal_factor_ne_zero hI haJ
  have hJ := Ideal.finprod_heightOneSpectrum_factorization_coe K hJ_ne_zero
  have ha_ne_zero : Ideal.span {a} ≠ 0 := constant_factor_ne_zero hI haJ
  have ha := Ideal.finprod_heightOneSpectrum_factorization_coe K ha_ne_zero
  rw [haJ, ← div_spanSingleton, div_eq_mul_inv, ← coeIdeal_span_singleton, ← hJ, ← ha,
    ← finprod_inv_distrib]
  simp_rw [← zpow_neg]
  rw [← finprod_mul_distrib (by fun_prop) (by fun_prop)]
  apply finprod_congr
  intro v
  rw [← zpow_add₀ ((@coeIdeal_ne_zero R _ K _ _ _ _).mpr v.ne_bot), sub_eq_add_neg]

/-- For a nonzero `k = r/s ∈ K`, the fractional ideal `(k)` is equal to the product
`∏_v v^(val_v(r) - val_v(s))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88647c45574d4f4a8bd2224cdc49b47cfacbd607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
