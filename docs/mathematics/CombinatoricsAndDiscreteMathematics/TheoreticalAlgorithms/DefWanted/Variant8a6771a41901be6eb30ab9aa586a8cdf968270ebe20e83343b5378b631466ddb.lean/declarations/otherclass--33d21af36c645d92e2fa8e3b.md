# OtherClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f83f9d97e98a2a053fc119b32ada486da1a85915029eb5a6b4f56f1924a4250",
  "kind": "class",
  "lexical_name": "OtherClass",
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
  "slug": "otherclass--33d21af36c645d92e2fa8e3b",
  "source": {
    "blob": "40d4c5639c836e2f5d0964a684cd070e2d75d52a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 326,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefWanted/Variant8a6771a41901be6eb30ab9aa586a8cdf968270ebe20e83343b5378b631466ddb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33d21af36c645d92e2fa8e3b823d6710a4c9c4048ac853e5a84b24332aafce69",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefWanted/Variant8a6771a41901be6eb30ab9aa586a8cdf968270ebe20e83343b5378b631466ddb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f83f9d97e98a2a053fc119b32ada486da1a85915029eb5a6b4f56f1924a4250`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private class OtherClass (α : Type) where val : α
instance_wanted : OtherClass Nat
instance_wanted : OtherClass Bool

/--
info: instOtherClass : DefWanted (OtherClass Nat)
-/
#guard_msgs in #check @instOtherClass

/--
info: instOtherClass_1 : DefWanted (OtherClass Bool)
-/
#guard_msgs in #check @instOtherClass_1

/-! A non-class payload is rejected. -/
/--
error: `instance_wanted` requires a typeclass payload; use `def_wanted` for non-class data
-/
#guard_msgs in instance_wanted bad : 5 = 7

/-! Chained `instance_wanted`s that depend on earlier ones must still be findable by typeclass
synth after a later wanted auto-includes them (#1910). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefWanted/Variant8a6771a41901be6eb30ab9aa586a8cdf968270ebe20e83343b5378b631466ddb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefWanted/Variant8a6771a41901be6eb30ab9aa586a8cdf968270ebe20e83343b5378b631466ddb.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40d4c5639c836e2f5d0964a684cd070e2d75d52a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
