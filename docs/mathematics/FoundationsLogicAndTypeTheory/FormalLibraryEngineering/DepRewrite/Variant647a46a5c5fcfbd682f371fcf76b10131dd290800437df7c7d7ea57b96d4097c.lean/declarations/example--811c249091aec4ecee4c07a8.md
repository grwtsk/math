# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5046e62b11a14c9867782b736dcd47d9ee13c054de7001ef1f73d13b74009f5f",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--811c249091aec4ecee4c07a8",
  "source": {
    "blob": "67a9f9879b2a6b215ab26708336d7b0c875e7508",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 389,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variant647a46a5c5fcfbd682f371fcf76b10131dd290800437df7c7d7ea57b96d4097c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:811c249091aec4ecee4c07a82b0ad1521d41ba37b6181d76922c3bea9ae7b7c4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variant647a46a5c5fcfbd682f371fcf76b10131dd290800437df7c7d7ea57b96d4097c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5046e62b11a14c9867782b736dcd47d9ee13c054de7001ef1f73d13b74009f5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (f : ∀ k, Fin k → Nat) (x : Fin m) : P (f m x) := by
  conv =>
    enter [1]; fun
    rewrite! (castMode := .all) [← eq]
    guard_target =ₐ cast% eq.symm.symm ▸ f n
  -- `conv` isn't preserving the metadata :(
  guard_target =ₐ P ((eq.symm.symm ▸ f n) x)
  change P ((cast% eq.symm.symm ▸ f n) x)
  generalize f n = g
  rw! (castMode := .all) [eq]
  guard_target =ₐ P ((cast% eq ▸ g) x)
  exact test_sorry

-- test tracing for `cleanupCasts`
/--
trace: [Tactic.depRewrite.cleanupCasts] ✅️ P (eq ▸ x) => continue P (eq ▸ x)
[Tactic.depRewrite.cleanupCasts] ✅️ Fin m => continue Fin m
[Tactic.depRewrite.cleanupCasts] ✅️ m => continue m
[Tactic.depRewrite.cleanupCasts] ✅️ eq ▸ x => continue eq ▸ x
  [Tactic.depRewrite.cleanupCasts] found potential cast
        eq ▸ x
  [Tactic.depRewrite.cleanupCasts] lhs
        n
      is not definitionally equal to rhs
        m
[Tactic.depRewrite.cleanupCasts] ✅️ eq ▸ x => continue eq ▸ x
[Tactic.depRewrite.cleanupCasts] ✅️ Nat => continue Nat
[Tactic.depRewrite.cleanupCasts] ✅️ n => continue n
[Tactic.depRewrite.cleanupCasts] ✅️ fun x' h' => Fin x' => continue fun x' h' => Fin x'
[Tactic.depRewrite.cleanupCasts] ✅️ n = x' => continue n = x'
[Tactic.depRewrite.cleanupCasts] ✅️ x' => continue x'
[Tactic.depRewrite.cleanupCasts] ✅️ Fin x' => continue Fin x'
[Tactic.depRewrite.cleanupCasts] ✅️ x => continue x
[Tactic.depRewrite.cleanupCasts] ✅️ eq => continue eq
---
trace: [Tactic.depRewrite.cleanupCasts] ✅️ Q (⋯ ▸ eq ▸ x) => continue Q (⋯ ▸ eq ▸ x)
[Tactic.depRewrite.cleanupCasts] ✅️ Q => continue Q
[Tactic.depRewrite.cleanupCasts] ✅️ ⋯ ▸ eq ▸ x => visit eq ▸ x
  [Tactic.depRewrite.cleanupCasts] found potential cast
        ⋯ ▸ eq ▸ x
[Tactic.depRewrite.cleanupCasts] ✅️ eq ▸ x => continue eq ▸ x
  [Tactic.depRewrite.cleanupCasts] found potential cast
        eq ▸ x
  [Tactic.depRewrite.cleanupCasts] lhs
        n
      is not definitionally equal to rhs
        m
[Tactic.depRewrite.cleanupCasts] ✅️ eq ▸ x => continue eq ▸ x
[Tactic.depRewrite.cleanupCasts] ✅️ Nat => continue Nat
[Tactic.depRewrite.cleanupCasts] ✅️ n => continue n
[Tactic.depRewrite.cleanupCasts] ✅️ fun x' h' => Fin x' => continue fun x' h' => Fin x'
[Tactic.depRewrite.cleanupCasts] ✅️ n = x' => continue n = x'
[Tactic.depRewrite.cleanupCasts] ✅️ x' => continue x'
[Tactic.depRewrite.cleanupCasts] ✅️ Fin x' => continue Fin x'
[Tactic.depRewrite.cleanupCasts] ✅️ x => continue x
[Tactic.depRewrite.cleanupCasts] ✅️ m => continue m
[Tactic.depRewrite.cleanupCasts] ✅️ eq => continue eq
-/
#guard_msgs in
set_option trace.Tactic.depRewrite.cleanupCasts true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variant647a46a5c5fcfbd682f371fcf76b10131dd290800437df7c7d7ea57b96d4097c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variant647a46a5c5fcfbd682f371fcf76b10131dd290800437df7c7d7ea57b96d4097c.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67a9f9879b2a6b215ab26708336d7b0c875e7508` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
