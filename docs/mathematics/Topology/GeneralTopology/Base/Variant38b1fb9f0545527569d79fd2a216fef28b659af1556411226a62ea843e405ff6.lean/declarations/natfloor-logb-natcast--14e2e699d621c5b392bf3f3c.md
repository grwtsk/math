# natFloor_logb_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a096b94c-b866-de37-161c-8eb0fc15558b",
  "kind": "theorem",
  "lexical_name": "natFloor_logb_natCast",
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
  "slug": "natfloor-logb-natcast--14e2e699d621c5b392bf3f3c",
  "source": {
    "blob": "82d46af9d1afa92069eb90feba1e9e9dca088fdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 399,
    "path": "GRWTSK/Topology/GeneralTopology/Base/Variant38b1fb9f0545527569d79fd2a216fef28b659af1556411226a62ea843e405ff6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14e2e699d621c5b392bf3f3c14d198e3c682e33aeb5e8cb1f02eea1b0c0fea0a",
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

Occurrence: `result:a096b94c-b866-de37-161c-8eb0fc15558b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natFloor_logb_natCast (b : ℕ) (n : ℕ) : ⌊logb b n⌋₊ = Nat.log b n := by
  obtain _ | _ | b := b
  · simp [Real.logb]
  · simp [Real.logb]
  obtain rfl | hn := eq_or_ne n 0
  · simp
  rw [← Nat.cast_inj (R := ℤ), Int.natCast_floor_eq_floor, floor_logb_natCast (by simp),
    Int.log_natCast]
  exact logb_nonneg (by simp [Nat.cast_add_one_pos]) (Nat.one_le_cast.2 (by omega))

@[norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Base/Variant38b1fb9f0545527569d79fd2a216fef28b659af1556411226a62ea843e405ff6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Base/Variant38b1fb9f0545527569d79fd2a216fef28b659af1556411226a62ea843e405ff6.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82d46af9d1afa92069eb90feba1e9e9dca088fdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
