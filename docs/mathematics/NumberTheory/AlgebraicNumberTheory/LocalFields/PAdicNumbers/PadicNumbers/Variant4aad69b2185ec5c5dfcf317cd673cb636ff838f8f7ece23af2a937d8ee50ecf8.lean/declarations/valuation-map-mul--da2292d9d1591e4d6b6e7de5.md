# valuation_map_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd30fe96-95d2-0765-7307-2d2db4ad68d8",
  "kind": "theorem",
  "lexical_name": "valuation_map_mul",
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
  "slug": "valuation-map-mul--da2292d9d1591e4d6b6e7de5",
  "source": {
    "blob": "03992962c56bade9f45eae6542bea6aa3fcdf176",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1111,
    "line": 1097,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da2292d9d1591e4d6b6e7de5e6e842f3bf0399e611151181a4780598112854ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd30fe96-95d2-0765-7307-2d2db4ad68d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1097–1111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valuation_map_mul {x y : ℚ_[p]} (hx : x ≠ 0) (hy : y ≠ 0) :
    valuation (x * y : ℚ_[p]) = valuation x + valuation y := by
  have h_norm : ‖x * y‖ = ‖x‖ * ‖y‖ := norm_mul x y
  have hp_ne_one : (p : ℝ) ≠ 1 := by
    rw [← Nat.cast_one, Ne.def, Nat.cast_inj]
    exact Nat.Prime.ne_one hp.elim
  have hp_pos : (0 : ℝ) < p := by
    rw [← Nat.cast_zero, Nat.cast_lt]
    exact Nat.Prime.pos hp.elim
  rw [norm_eq_pow_val hx, norm_eq_pow_val hy, norm_eq_pow_val (mul_ne_zero hx hy), ←
    zpow_add₀ (ne_of_gt hp_pos), zpow_inj hp_pos hp_ne_one, ← neg_add, neg_inj] at h_norm
  exact h_norm
#align padic.valuation_map_mul Padic.valuation_map_mul

/-- The additive `p`-adic valuation on `ℚ_[p]`, with values in `WithTop ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean#L1097).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03992962c56bade9f45eae6542bea6aa3fcdf176` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
