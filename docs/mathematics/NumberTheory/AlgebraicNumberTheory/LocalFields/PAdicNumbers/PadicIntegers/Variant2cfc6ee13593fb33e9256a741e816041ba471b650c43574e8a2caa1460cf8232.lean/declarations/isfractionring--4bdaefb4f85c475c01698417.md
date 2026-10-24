# isFractionRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:418b8b163ede5e7beda5c006bdb8a8dc3191ffe5a259d1f29b2e7f9748e9c785",
  "kind": "instance",
  "lexical_name": "isFractionRing",
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
  "slug": "isfractionring--4bdaefb4f85c475c01698417",
  "source": {
    "blob": "af48ea25e33cf9aadc3b9b67e0b64cf3c2002733",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 580,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant2cfc6ee13593fb33e9256a741e816041ba471b650c43574e8a2caa1460cf8232.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4bdaefb4f85c475c016984175f4f2279fd5eef1da23b426d3b0d922207096724",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant2cfc6ee13593fb33e9256a741e816041ba471b650c43574e8a2caa1460cf8232.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:418b8b163ede5e7beda5c006bdb8a8dc3191ffe5a259d1f29b2e7f9748e9c785`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isFractionRing : IsFractionRing ℤ_[p] ℚ_[p] where
  map_units := fun ⟨x, hx⟩ => by
    rwa [algebraMap_apply, isUnit_iff_ne_zero, PadicInt.coe_ne_zero, ←
      mem_nonZeroDivisors_iff_ne_zero]
  surj x := by
    by_cases hx : ‖x‖ ≤ 1
    · use (⟨x, hx⟩, 1)
      rw [Submonoid.coe_one, map_one, mul_one, PadicInt.algebraMap_apply, Subtype.coe_mk]
    · set n := Int.toNat (-x.valuation) with hn
      have hn_coe : (n : ℤ) = -x.valuation := by
        rw [hn, Int.toNat_of_nonneg]
        rw [Right.nonneg_neg_iff]
        rw [Padic.norm_le_one_iff_val_nonneg, not_le] at hx
        exact hx.le
      set a := x * (p : ℚ_[p]) ^ n with ha
      have ha_norm : ‖a‖ = 1 := by
        have hx : x ≠ 0 := by
          intro h0
          rw [h0, norm_zero] at hx
          exact hx zero_le_one
        rw [ha, padicNormE.mul, Padic.norm_p_pow, Padic.norm_eq_zpow_neg_valuation hx,
          ← zpow_add', hn_coe, neg_neg, neg_add_cancel, zpow_zero]
        exact Or.inl (Nat.cast_ne_zero.mpr (NeZero.ne p))
      use
        (⟨a, le_of_eq ha_norm⟩,
          ⟨(p ^ n : ℤ_[p]), mem_nonZeroDivisors_iff_ne_zero.mpr (NeZero.ne _)⟩)
      simp only [a, map_pow, map_natCast, algebraMap_apply]
  exists_of_eq := by
    simp_rw [algebraMap_apply, Subtype.coe_inj]
    exact fun h => ⟨1, by rw [h]⟩

end FractionRing

end PadicInt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant2cfc6ee13593fb33e9256a741e816041ba471b650c43574e8a2caa1460cf8232.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant2cfc6ee13593fb33e9256a741e816041ba471b650c43574e8a2caa1460cf8232.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af48ea25e33cf9aadc3b9b67e0b64cf3c2002733` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
