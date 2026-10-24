# valuation_isEquiv_valuationIdeal_adic_of_valuation_X_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c96ad746f4e844474d3d9e6518e4d7f7c7e98f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a544534f-a309-145b-63e2-8e4f2934f982",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9ff47a8-34bc-d742-245f-b4395bca9c81",
  "kind": "lemma",
  "lexical_name": "valuation_isEquiv_valuationIdeal_adic_of_valuation_X_le_one",
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
  "slug": "valuation-isequiv-valuationideal-adic-of-valuation-x-le-one--1ac392f143203233f2ca1708",
  "source": {
    "blob": "6c96ad746f4e844474d3d9e6518e4d7f7c7e98f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 212,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Ostrowski/Variantc1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ac392f143203233f2ca17082ba6a9e19d8e29b03fd69ebc6d98be7dadb73192",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Ostrowski/Variantc1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9ff47a8-34bc-d742-245f-b4395bca9c81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma valuation_isEquiv_valuationIdeal_adic_of_valuation_X_le_one :
    v.IsEquiv ((Pᵥ).valuation (RatFunc K)) := by
  rw [isEquiv_iff_val_le_one]
  intro f
  rcases eq_or_ne f 0 with rfl | hf0
  · simp
  · induction f using RatFunc.induction_on with
    | f p q hq0 =>
      have hp0 : p ≠ 0 := by simp_all
      have h0lt : 0 < v (algebraMap K[X] (RatFunc K) πᵥ) := by
        simp [pos_of_ne_zero, ne_zero_iff v, uniformizingPolynomial_ne_zero hle]
      simp only [map_div₀, valuation_of_algebraMap, intValuation_def, exp_neg, ite_eq_right hp0,
        ite_eq_right hq0, div_inv_eq_mul,
        valuation_eq_valuation_uniformizingPolynomial_pow_of_valuation_X_le_one hle hp0,
        valuation_eq_valuation_uniformizingPolynomial_pow_of_valuation_X_le_one hle hq0]
      simp_all [div_le_one₀, ← exp_add, (pow_le_pow_iff_right_of_lt_one₀ h0lt
        (valuation_uniformizingPolynomial_lt_one hle))]

end Associates

end valuation_X_le_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Ostrowski/Variantc1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Ostrowski/Variantc1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c96ad746f4e844474d3d9e6518e4d7f7c7e98f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
