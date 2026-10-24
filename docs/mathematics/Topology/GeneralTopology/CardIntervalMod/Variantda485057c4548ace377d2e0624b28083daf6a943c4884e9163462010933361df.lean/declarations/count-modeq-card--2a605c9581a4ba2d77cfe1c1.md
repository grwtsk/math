# count_modEq_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce3c56a7bda0fd21745cff98e788241851d242d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc0853bd-09e3-bc2c-246c-47b8760dd324",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d70b540-e3ba-3952-66a0-a078450df878",
  "kind": "theorem",
  "lexical_name": "count_modEq_card",
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
  "slug": "count-modeq-card--2a605c9581a4ba2d77cfe1c1",
  "source": {
    "blob": "ce3c56a7bda0fd21745cff98e788241851d242d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 139,
    "path": "GRWTSK/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a605c9581a4ba2d77cfe1c13a202b2434f40de8c10a8266e2df3b9e6f774910",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d70b540-e3ba-3952-66a0-a078450df878`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_modEq_card (v : ℕ) :
    b.count (· ≡ v [MOD r]) = b / r + if v % r < b % r then 1 else 0 := by
  have hr' : 0 < (r : ℚ) := by positivity
  rw [← ofNat_inj, count_modEq_card_eq_ceil _ hr, cast_add]
  conv_lhs => rw [← div_add_mod b r, cast_add, cast_mul, ← add_sub, _root_.add_div,
    mul_div_cancel_left₀ _ hr'.ne', add_comm, Int.ceil_add_natCast, add_comm]
  rw [add_right_inj]
  split_ifs with h
  · rw [← cast_sub h.le, Int.ceil_eq_iff, div_le_iff₀ hr', lt_div_iff₀ hr', cast_one, Int.cast_one,
      sub_self, zero_mul, cast_pos, tsub_pos_iff_lt, one_mul, cast_le, tsub_le_iff_right]
    exact ⟨h, ((mod_lt _ hr).trans_le (by simp)).le⟩
  · rw [cast_zero, ceil_eq_zero_iff, Set.mem_Ioc, div_le_iff₀ hr', lt_div_iff₀ hr', zero_mul,
      tsub_nonpos, ← neg_eq_neg_one_mul, neg_lt_sub_iff_lt_add, ← cast_add, cast_lt, cast_le]
    exact ⟨(mod_lt _ hr).trans_le (by simp), not_lt.mp h⟩

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CardIntervalMod/Variantda485057c4548ace377d2e0624b28083daf6a943c4884e9163462010933361df.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce3c56a7bda0fd21745cff98e788241851d242d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
