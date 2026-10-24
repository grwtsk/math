# isUnitTrinomial_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3f0676f-c4b0-a3ce-4b68-948bdd9eeaa3",
  "kind": "theorem",
  "lexical_name": "isUnitTrinomial_iff'",
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
  "slug": "isunittrinomial-iff--660be6c72107b9730ede324f",
  "source": {
    "blob": "607a115c9be1d6602e796bd66effb79c3bc7fe73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 186,
    "path": "GRWTSK/Algebra/UnitTrinomial/Variantce085c61789faec185ae92e306385cee2091e430deb9d4a190cecfa9a5063b13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:660be6c72107b9730ede324fc2ffba74994a26113e734b56a0934c55f8641506",
  "verification": {
    "reference": "docs/verification/Algebra/UnitTrinomial/Variantce085c61789faec185ae92e306385cee2091e430deb9d4a190cecfa9a5063b13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3f0676f-c4b0-a3ce-4b68-948bdd9eeaa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnitTrinomial_iff' :
    p.IsUnitTrinomial ↔
      (p * p.mirror).coeff (((p * p.mirror).natDegree + (p * p.mirror).natTrailingDegree) / 2) =
        3 := by
  rw [natDegree_mul_mirror, natTrailingDegree_mul_mirror, ← mul_add,
    Nat.mul_div_right _ zero_lt_two, coeff_mul_mirror]
  refine ⟨?_, fun hp => ?_⟩
  · rintro ⟨k, m, n, hkm, hmn, u, v, w, rfl⟩
    rw [sum_def, trinomial_support hkm hmn u.ne_zero v.ne_zero w.ne_zero,
      sum_insert (mt mem_insert.mp (not_or_intro hkm.ne (mt mem_singleton.mp (hkm.trans hmn).ne))),
      sum_insert (mt mem_singleton.mp hmn.ne), sum_singleton, trinomial_leading_coeff' hkm hmn,
      trinomial_middle_coeff hkm hmn, trinomial_trailing_coeff' hkm hmn]
    simp_rw [← Units.val_pow_eq_pow_val, Int.units_sq, Units.val_one]
    decide
  · have key : ∀ k ∈ p.support, p.coeff k ^ 2 = 1 := fun k hk =>
      Int.sq_eq_one_of_sq_le_three
        ((single_le_sum (fun k _ => sq_nonneg (p.coeff k)) hk).trans hp.le) (mem_support_iff.mp hk)
    refine isUnitTrinomial_iff.mpr ⟨?_, fun k hk => .of_pow_eq_one (key k hk) two_ne_zero⟩
    rw [sum_def, sum_congr rfl key, sum_const, Nat.smul_one_eq_cast] at hp
    exact Nat.cast_injective hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UnitTrinomial/Variantce085c61789faec185ae92e306385cee2091e430deb9d4a190cecfa9a5063b13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UnitTrinomial/Variantce085c61789faec185ae92e306385cee2091e430deb9d4a190cecfa9a5063b13.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `607a115c9be1d6602e796bd66effb79c3bc7fe73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
