# unit_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08fb80d2-8c11-d578-fc40-da358cb7fc52",
  "kind": "theorem",
  "lexical_name": "unit_aux",
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
  "slug": "unit-aux--c674a4b3bebbc821eb3c4175",
  "source": {
    "blob": "850ccd987861169c5918b42f459bb318355f8f58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1850,
    "line": 1831,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/HahnSeries/Variant3b7b1440ef9cf13d18bdc0927c19a908f76f618c1670b87b463d31939713c7bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c674a4b3bebbc821eb3c4175c14a746c72019157c2d405329d25eed3bd3ff83a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/HahnSeries/Variant3b7b1440ef9cf13d18bdc0927c19a908f76f618c1670b87b463d31939713c7bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08fb80d2-8c11-d578-fc40-da358cb7fc52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1831–1850.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unit_aux (x : HahnSeries Γ R) {r : R} (hr : r * x.coeff x.order = 1) :
    0 < addVal Γ R (1 - C r * single (-x.order) 1 * x) := by
  have h10 : (1 : R) ≠ 0 := one_ne_zero
  have x0 : x ≠ 0 := ne_zero_of_coeff_ne_zero (right_ne_zero_of_mul_eq_one hr)
  refine' lt_of_le_of_ne ((addVal Γ R).map_le_sub (ge_of_eq (addVal Γ R).map_one) _) _
  · simp only [AddValuation.map_mul]
    rw [addVal_apply_of_ne x0, addVal_apply_of_ne (single_ne_zero h10), addVal_apply_of_ne _,
      order_C, order_single h10, WithTop.coe_zero, zero_add, ← WithTop.coe_add, neg_add_self,
      WithTop.coe_zero]
    · exact C_ne_zero (left_ne_zero_of_mul_eq_one hr)
  · rw [addVal_apply, ← WithTop.coe_zero]
    split_ifs with h
    · apply WithTop.coe_ne_top
    rw [Ne.def, WithTop.coe_eq_coe]
    intro con
    apply coeff_order_ne_zero h
    rw [← con, mul_assoc, sub_coeff, one_coeff, if_pos rfl, C_mul_eq_smul, smul_coeff, smul_eq_mul,
      ← add_neg_self x.order, single_mul_coeff_add, one_mul, hr, sub_self]
#align hahn_series.unit_aux HahnSeries.unit_aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/HahnSeries/Variant3b7b1440ef9cf13d18bdc0927c19a908f76f618c1670b87b463d31939713c7bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/HahnSeries/Variant3b7b1440ef9cf13d18bdc0927c19a908f76f618c1670b87b463d31939713c7bf.lean#L1831).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `850ccd987861169c5918b42f459bb318355f8f58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
