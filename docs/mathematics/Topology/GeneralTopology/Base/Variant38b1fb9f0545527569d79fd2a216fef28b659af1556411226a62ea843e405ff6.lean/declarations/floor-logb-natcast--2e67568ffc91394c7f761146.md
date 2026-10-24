# floor_logb_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2019d334-8671-0449-60ef-c831f4b3ec33",
  "kind": "theorem",
  "lexical_name": "floor_logb_natCast",
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
  "slug": "floor-logb-natcast--2e67568ffc91394c7f761146",
  "source": {
    "blob": "82d46af9d1afa92069eb90feba1e9e9dca088fdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 363,
    "path": "GRWTSK/Topology/GeneralTopology/Base/Variant38b1fb9f0545527569d79fd2a216fef28b659af1556411226a62ea843e405ff6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e67568ffc91394c7f76114630c37d15bcbd6795059e60c980e048c366a38bc8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Base/Variant38b1fb9f0545527569d79fd2a216fef28b659af1556411226a62ea843e405ff6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2019d334-8671-0449-60ef-c831f4b3ec33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem floor_logb_natCast {b : ℕ} {r : ℝ} (hr : 0 ≤ r) :
    ⌊logb b r⌋ = Int.log b r := by
  obtain rfl | hr := hr.eq_or_lt
  · rw [logb_zero, Int.log_zero_right, Int.floor_zero]
  by_cases hb : 1 < b
  · have hb1' : 1 < (b : ℝ) := Nat.one_lt_cast.mpr hb
    apply le_antisymm
    · rw [← Int.zpow_le_iff_le_log hb hr, ← rpow_intCast b]
      refine le_of_le_of_eq ?_ (rpow_logb (zero_lt_one.trans hb1') hb1'.ne' hr)
      exact rpow_le_rpow_of_exponent_le hb1'.le (Int.floor_le _)
    · rw [Int.le_floor, le_logb_iff_rpow_le hb1' hr, rpow_intCast]
      exact Int.zpow_log_le_self hb hr
  · rw [Nat.one_lt_iff_ne_zero_and_ne_one, ← or_iff_not_and_not] at hb
    cases hb
    · simp_all only [CharP.cast_eq_zero, logb_zero_left, Int.floor_zero, Int.log_zero_left]
    · simp_all only [Nat.cast_one, logb_one_left, Int.floor_zero, Int.log_one_left]

@[norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Base/Variant38b1fb9f0545527569d79fd2a216fef28b659af1556411226a62ea843e405ff6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Base/Variant38b1fb9f0545527569d79fd2a216fef28b659af1556411226a62ea843e405ff6.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82d46af9d1afa92069eb90feba1e9e9dca088fdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
