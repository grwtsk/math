# selfZPow_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50a27766-a368-67f4-3ad1-2de17c04fc96",
  "kind": "theorem",
  "lexical_name": "selfZPow_add",
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
  "slug": "selfzpow-add--25774852769dbf194babc4eb",
  "source": {
    "blob": "8ac0114b1e03d40f266eb5373f388d9ba55d7559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 701,
    "line": 683,
    "path": "GRWTSK/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25774852769dbf194babc4eb843617f401a99d659b4c065f4ddf0c207fd28730",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50a27766-a368-67f4-3ad1-2de17c04fc96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 683–701.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selfZPow_add {n m : ℤ} : selfZPow x B (n + m) = selfZPow x B n * selfZPow x B m := by
  rcases le_or_gt 0 n with hn | hn <;> rcases le_or_gt 0 m with hm | hm
  · rw [selfZPow_of_nonneg _ _ hn, selfZPow_of_nonneg _ _ hm,
      selfZPow_of_nonneg _ _ (add_nonneg hn hm), Int.natAbs_add_of_nonneg hn hm, pow_add]
  · have : n + m = n.natAbs - m.natAbs := by
      rw [Int.natAbs_of_nonneg hn, Int.ofNat_natAbs_of_nonpos hm.le, sub_neg_eq_add]
    rw [selfZPow_of_nonneg _ _ hn, selfZPow_of_neg _ _ hm, this, selfZPow_sub_natCast,
      IsLocalization.mk'_eq_mul_mk'_one, map_pow]
  · have : n + m = m.natAbs - n.natAbs := by
      rw [Int.natAbs_of_nonneg hm, Int.ofNat_natAbs_of_nonpos hn.le, sub_neg_eq_add, add_comm]
    rw [selfZPow_of_nonneg _ _ hm, selfZPow_of_neg _ _ hn, this, selfZPow_sub_natCast,
      IsLocalization.mk'_eq_mul_mk'_one, map_pow, mul_comm]
  · rw [selfZPow_of_neg _ _ hn, selfZPow_of_neg _ _ hm, selfZPow_of_neg _ _ (add_neg hn hm),
      Int.natAbs_add_of_nonpos hn.le hm.le, ← mk'_mul, one_mul]
    congr
    ext
    simp [pow_add]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc77273ec2d9d4fc2b5ca657cdcbac740674f670c27600d0045dc26e6a494cc7a.lean#L683).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ac0114b1e03d40f266eb5373f388d9ba55d7559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
