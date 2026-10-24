# use_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aba2570288c07a253b8a8a67c53225d983d929ab32a0677b02d846507e06874e",
  "kind": "def",
  "lexical_name": "use_val",
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
  "slug": "use-val--6cab622c25afb0b3b260dccb",
  "source": {
    "blob": "42f5849d104dadd3dedb6c34feb27184f8c1495d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 274,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefWanted/Variant9c00c102e390d080799611c40cc0c184551d5bec3d57f0e1a3928ae6cacd20df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cab622c25afb0b3b260dccbcad882ccb32319f2e56421a7b85635a3f9f10d62",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefWanted/Variant9c00c102e390d080799611c40cc0c184551d5bec3d57f0e1a3928ae6cacd20df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aba2570288c07a253b8a8a67c53225d983d929ab32a0677b02d846507e06874e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def use_val {α} [MyClass α] : α := MyClass.val

instance_wanted myInst : MyClass Nat

/-! A declaration that *uses* the instance picks it up automatically: `use_val` needs `[MyClass Nat]`,
discharged by `myInst`, so the binder appears. -/
def_wanted usesInstance : (use_val : Nat) = use_val

/--
info: @usesInstance : [d_myInst : myInst.Val] → DefWanted (use_val = use_val)
-/
#guard_msgs in #check @usesInstance

/-! A declaration that does *not* use it does not carry it (include-on-use): `Nat` needs no
`MyClass`, so no binder appears. -/
def_wanted needsNoInstance : Nat

/--
info: needsNoInstance : DefWanted Nat
-/
#guard_msgs in #check @needsNoInstance

/-! The "body needs a `❰…❱`" rule looks only at *user-written* refs: an ambient
`instance_wanted` registration does not stand in for an explicit bracket. -/
/--
info: Try this:
  [apply] def body_with_only_auto_include : Nat :=
    use_val
---
error: `def_wanted` with a body but no `❰…❱` reference is just a `def`; either replace `def_wanted` with `def`, or reference another `theorem_wanted` / `proof_wanted` / `def_wanted` / `instance_wanted` via `❰…❱` in the statement or body
-/
#guard_msgs in def_wanted body_with_only_auto_include : Nat := use_val

/-! Anonymous instances get a non-hygienic, user-resolvable name from the class head. `MyClass Bool`
does not need the earlier `myInst : MyClass Nat`, so (by include-on-use) it carries no binder. -/
instance_wanted : MyClass Bool

/--
info: instMyClass : DefWanted (MyClass Bool)
-/
#guard_msgs in #check @instMyClass

/-! A second anonymous instance of the same class head gets a `_1` suffix to avoid colliding
with the first. Neither uses the earlier instances, so neither carries their binders. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefWanted/Variant9c00c102e390d080799611c40cc0c184551d5bec3d57f0e1a3928ae6cacd20df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefWanted/Variant9c00c102e390d080799611c40cc0c184551d5bec3d57f0e1a3928ae6cacd20df.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42f5849d104dadd3dedb6c34feb27184f8c1495d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
