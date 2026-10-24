# exists_Polynomial_intValuation_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c782bb7017d8b673e57ef41bf349b892c94a13e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 883,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:589b0c90-dde9-c7f6-e389-4f184e1c4199",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7caf9097-9a68-620c-49b2-48db26595426",
  "kind": "theorem",
  "lexical_name": "exists_Polynomial_intValuation_lt",
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
  "slug": "exists-polynomial-intvaluation-lt--d635f79fff2552ea2063fa19",
  "source": {
    "blob": "2c782bb7017d8b673e57ef41bf349b892c94a13e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 909,
    "line": 883,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d635f79fff2552ea2063fa19596ec8f131c02c93b98939e1b01ee575a1eee5a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7caf9097-9a68-620c-49b2-48db26595426`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 883–909.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_Polynomial_intValuation_lt (F : K⟦X⟧) (η : ℤₘ₀ˣ) :
    ∃ P : K[X], (PowerSeries.idealX K).intValuation (F - P) < η := by
  by_cases h_neg : 1 < η
  · use 0
    simpa using (intValuation_le_one (PowerSeries.idealX K) F).trans_lt h_neg
  · rw [not_lt, ← Units.val_le_val, Units.val_one, ← WithZero.coe_one, ← coe_unzero η.ne_zero,
      coe_le_coe, ← Multiplicative.toAdd_le, toAdd_one] at h_neg
    obtain ⟨d, hd⟩ := Int.exists_eq_neg_ofNat h_neg
    use F.trunc (d + 1)
    have : Valued.v ((ofPowerSeries ℤ K) (F - (trunc (d + 1) F))) ≤
      (Multiplicative.ofAdd (-(d + 1 : ℤ))) := by
      apply (intValuation_le_iff_coeff_lt_eq_zero K _).mpr
      simpa only [map_sub, sub_eq_zero, Polynomial.coeff_coe, coeff_trunc] using
        fun _ h ↦ (if_pos h).symm
    rw [ neg_add, ofAdd_add, ← hd, ofAdd_toAdd, WithZero.coe_mul, coe_unzero,
      ← coe_algebraMap] at this
    rw [← valuation_of_algebraMap (K := K⸨X⸩) (PowerSeries.idealX K) (F - F.trunc (d + 1))]
    apply lt_of_le_of_lt this
    rw [← mul_one (η : ℤₘ₀), mul_assoc, one_mul]
    gcongr
    · exact zero_lt_iff.2 η.ne_zero
    rw [← WithZero.coe_one, coe_lt_coe, ofAdd_neg, Right.inv_lt_one_iff, ← ofAdd_zero,
      Multiplicative.ofAdd_lt]
    exact Int.zero_lt_one

/-- For every Laurent series `f` and every `γ : ℤₘ₀` one can find a rational function `Q` such
that the `X`-adic valuation `v` satisfies `v (f - Q) < γ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean#L883).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c782bb7017d8b673e57ef41bf349b892c94a13e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
