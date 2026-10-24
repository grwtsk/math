# uniformContinuous_algebraMap_liesOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0aabb61e-62f6-f5f1-b526-9add6e5564a5",
  "kind": "theorem",
  "lexical_name": "uniformContinuous_algebraMap_liesOver",
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
  "slug": "uniformcontinuous-algebramap-liesover--c06e2e9cf856a3a4a577cbe6",
  "source": {
    "blob": "c34d987e7ff26bb068231ff8e060341182d8c41a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 74,
    "path": "GRWTSK/Algebra/Valuation/Variantb5262d5093612ce8d1ce90516c092160c075e113f2bedf68d270455fe1d6309e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c06e2e9cf856a3a4a577cbe6ed47720a3913e7d20a720b533756c535a2264fd5",
  "verification": {
    "reference": "docs/verification/Algebra/Valuation/Variantb5262d5093612ce8d1ce90516c092160c075e113f2bedf68d270455fe1d6309e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0aabb61e-62f6-f5f1-b526-9add6e5564a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformContinuous_algebraMap_liesOver :
    UniformContinuous (algebraMap (WithVal (v.valuation K)) (WithVal (w.valuation L))) := by
  refine uniformContinuous_of_continuousAt_zero _ ?_
  rw [ContinuousAt, map_zero, (IsValuativeTopology.hasBasis_nhds_zero _).tendsto_iff
    (IsValuativeTopology.hasBasis_nhds_zero _)]
  intro γL _
  /-
  `ValueGroup₀ (w.valuation L)` <-------->  `ℤᵐ⁰` <--------> `ValueGroup₀ (v.valuation K)`
            ^                                                         ^
            |                                                         |
            |                                                         |
            v                                                         v
  `ValueGroup₀ (WithVal.valuation _)`             `ValueGroup₀ (WithVal.valuation _)`
            ^                                                         ^
            |                                                         |
            |                                                         |
            v                                                         v
  `γL : ValuativeRel.ValueGroupWithZero Lʷ`       `γK: ValuativeRel.ValueGroupWithZero Kᵛ`
  -/
  let e := v.asIdeal.ramificationIdx' w.asIdeal
  -- push `γL` to `ℤᵐ⁰`
  let σL := WithVal.valueGroupOrderIso₀ (w.valuation L)
  let σw := valueGroup₀_equiv_withZeroMulInt (w.valuation L)
  let σwV := ValuativeRel.ValueGroupWithZero.orderMonoidIso (WithVal.valuation (w.valuation L))
  let m : ℤᵐ⁰ := σw (σL (σwV γL))
  -- `ℤᵐ⁰` values in `K` exponentiate by `e` in `L` so take the `e`th root and pull back to `γK`
  let σvV := ValuativeRel.ValueGroupWithZero.orderMonoidIso (WithVal.valuation (v.valuation K))
  let σv := valueGroup₀_equiv_withZeroMulInt (v.valuation K)
  let σK := WithVal.valueGroupOrderIso₀ (v.valuation K)
  let γK := σvV.symm (σK.symm (σv.symm (exp (m.log / e))))
  have hγK : γK ≠ 0 := by simp [γK, EmbeddingLike.map_eq_zero_iff (f := σK.symm)]
  use .mk0 _ hγK
  simp only [Units.val_mk0, Set.mem_ofPred_eq, true_and]
  intro x hx
  rcases eq_or_ne x 0 with rfl | hx₀; · simp
  rw [σvV.lt_symm_apply, σK.lt_symm_apply, σv.lt_symm_apply,
    ValuativeRel.ValueGroupWithZero.orderMonoidIso_valuation_eq_restrict₀,
    ← Valuation.restrict_def, WithVal.valueGroupOrderIso₀_restrict,
    valueGroup₀_equiv_withZeroMulInt_restrict_apply_of_surjective (v.valuation_surjective K),
    ← log_lt_log (by simp_all) (by simp)] at hx
  rw [← σwV.strictMono.lt_iff_lt, ← σL.strictMono.lt_iff_lt,
    ValuativeRel.ValueGroupWithZero.orderMonoidIso_valuation_eq_restrict₀, ← Valuation.restrict_def,
    WithVal.valueGroupOrderIso₀_restrict, ← σw.strictMono.lt_iff_lt,
    valueGroup₀_equiv_withZeroMulInt_restrict_apply_of_surjective (w.valuation_surjective L),
    WithVal.algebraMap_left_apply, WithVal.algebraMap_right_apply, ← valuation_liesOver L v,
    ← log_lt_log (by simp_all) (by simp [EmbeddingLike.map_eq_zero_iff (f := σwV)]), log_pow,
    nsmul_eq_mul, mul_comm]
  exact Int.mul_lt_of_lt_ediv
    (mod_cast pos_of_ne_zero (ramificationIdx'_ne_zero_of_liesOver w.asIdeal v.ne_bot)) hx

end AKLB

end IsDedekindDomain.HeightOneSpectrum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Valuation/Variantb5262d5093612ce8d1ce90516c092160c075e113f2bedf68d270455fe1d6309e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Valuation/Variantb5262d5093612ce8d1ce90516c092160c075e113f2bedf68d270455fe1d6309e.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c34d987e7ff26bb068231ff8e060341182d8c41a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
