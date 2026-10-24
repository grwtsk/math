# fract_inv_num_lt_num_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc01215e-528f-d452-2aed-898a3221a4a7",
  "kind": "theorem",
  "lexical_name": "fract_inv_num_lt_num_of_pos",
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
  "slug": "fract-inv-num-lt-num-of-pos--48aa310cb3e509328bf905e6",
  "source": {
    "blob": "dc45e636c37af014f8d36964ef49eeff4aeac2db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 238,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48aa310cb3e509328bf905e6b9c0a40475a3ba5c0cf1103f794ecca19212e88b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc01215e-528f-d452-2aed-898a3221a4a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fract_inv_num_lt_num_of_pos {q : ℚ} (q_pos : 0 < q) : (fract q⁻¹).num < q.num := by
  -- we know that the numerator must be positive
  have q_num_pos : 0 < q.num := Rat.num_pos.mpr q_pos
  -- we will work with the absolute value of the numerator, which is equal to the numerator
  have q_num_abs_eq_q_num : (q.num.natAbs : ℤ) = q.num := Int.natAbs_of_nonneg q_num_pos.le
  set q_inv : ℚ := q.den / q.num with q_inv_def
  have q_inv_eq : q⁻¹ = q_inv := by rw [q_inv_def, inv_def', divInt_eq_div, Int.cast_natCast]
  suffices (q_inv - ⌊q_inv⌋).num < q.num by rwa [q_inv_eq]
  suffices ((q.den - q.num * ⌊q_inv⌋ : ℚ) / q.num).num < q.num by
    field_simp [q_inv, this, ne_of_gt q_num_pos]
  suffices (q.den : ℤ) - q.num * ⌊q_inv⌋ < q.num by
    -- use that `q.num` and `q.den` are coprime to show that the numerator stays unreduced
    have : ((q.den - q.num * ⌊q_inv⌋ : ℚ) / q.num).num = q.den - q.num * ⌊q_inv⌋ := by
      suffices ((q.den : ℤ) - q.num * ⌊q_inv⌋).natAbs.Coprime q.num.natAbs from
        mod_cast Rat.num_div_eq_of_coprime q_num_pos this
      have tmp := Nat.coprime_sub_mul_floor_rat_div_of_coprime q.reduced.symm
      simpa only [Nat.cast_natAbs, abs_of_nonneg q_num_pos.le] using tmp
    rwa [this]
  -- to show the claim, start with the following inequality
  have q_inv_num_denom_ineq : q⁻¹.num - ⌊q⁻¹⌋ * q⁻¹.den < q⁻¹.den := by
    have : q⁻¹.num < (⌊q⁻¹⌋ + 1) * q⁻¹.den := Rat.num_lt_succ_floor_mul_den q⁻¹
    have : q⁻¹.num < ⌊q⁻¹⌋ * q⁻¹.den + q⁻¹.den := by rwa [right_distrib, one_mul] at this
    rwa [← sub_lt_iff_lt_add'] at this
  -- use that `q.num` and `q.den` are coprime to show that q_inv is the unreduced reciprocal
  -- of `q`
  have : q_inv.num = q.den ∧ q_inv.den = q.num.natAbs := by
    have coprime_q_denom_q_num : q.den.Coprime q.num.natAbs := q.reduced.symm
    have : Int.natAbs q.den = q.den := by simp
    rw [← this] at coprime_q_denom_q_num
    rw [q_inv_def]
    constructor
    · exact mod_cast Rat.num_div_eq_of_coprime q_num_pos coprime_q_denom_q_num
    · suffices (((q.den : ℚ) / q.num).den : ℤ) = q.num.natAbs by exact mod_cast this
      rw [q_num_abs_eq_q_num]
      exact mod_cast Rat.den_div_eq_of_coprime q_num_pos coprime_q_denom_q_num
  rwa [q_inv_eq, this.left, this.right, q_num_abs_eq_q_num, mul_comm] at q_inv_num_denom_ineq

end Rat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Floor/Variant118a64ef4a483064918e57d8448fdff5e74c78811bd9cf1664e81eae800f44bf.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc45e636c37af014f8d36964ef49eeff4aeac2db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
