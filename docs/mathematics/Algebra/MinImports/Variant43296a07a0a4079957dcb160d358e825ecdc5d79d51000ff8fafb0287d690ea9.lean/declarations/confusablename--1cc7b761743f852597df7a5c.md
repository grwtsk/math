# confusableName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:188117e11147d3974435088cfd0c825ba85e89e025ab98e08a0b90068c83b542",
  "kind": "def",
  "lexical_name": "confusableName",
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
  "slug": "confusablename--1cc7b761743f852597df7a5c",
  "source": {
    "blob": "5c45e8d193cc103cda79cb23eae812b8e92a8a75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 118,
    "path": "GRWTSK/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1cc7b761743f852597df7a5c6cdc5b74bc7f21fc3782af003713719fbd143cda",
  "verification": {
    "reference": "docs/verification/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:188117e11147d3974435088cfd0c825ba85e89e025ab98e08a0b90068c83b542`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def confusableName : (1 : R) = 1 := rfl

end Namespace

end Variables

section Linter.MinImports

set_option linter.minImports.increases false

set_option linter.minImports false
/-- info: Counting imports from here. -/
#guard_msgs in
#import_bumps

/--
warning: Imports increased to
[Init.Guard, Mathlib.Data.Int.Notation]

New imports: [Init.Guard, Mathlib.Data.Int.Notation]

note: this linter can be disabled with `set_option linter.minImports false`
-/
#guard_msgs in
#guard (0 : ℤ) = 0

#guard_msgs in
-- no new imports needed here, so no message
#guard (0 : ℤ) = 0

set_option linter.minImports false in
#reset_min_imports

/--
warning: Imports increased to
[Init.Guard, Mathlib.Data.Int.Notation]

New imports: [Init.Guard, Mathlib.Data.Int.Notation]

note: this linter can be disabled with `set_option linter.minImports false`
-/
#guard_msgs in
-- again, the imports pick-up, after the reset
#guard (0 : ℤ) = 0

/--
warning: Imports increased to
[Mathlib.Tactic.Linter.MinImports]

New imports: [Mathlib.Tactic.Linter.MinImports]

note: this linter can be disabled with `set_option linter.minImports false`
-/
#guard_msgs in
#reset_min_imports

/--
warning: Imports increased to
[Mathlib.Tactic.FunProp.Attr, Mathlib.Tactic.NormNum.Basic]

New imports: [Mathlib.Tactic.FunProp.Attr, Mathlib.Tactic.NormNum.Basic]

Now redundant: [Mathlib.Tactic.Linter.MinImports]

note: this linter can be disabled with `set_option linter.minImports false`
-/
#guard_msgs in
run_cmd
  let _ ← `(declModifiers|@[fun_prop])
  let _ ← `(tactic|apply @Mathlib.Meta.NormNum.evalNatDvd <;> extract_goal)

end Linter.MinImports

section Linter.UpstreamableDecl

set_option linter.upstreamableDecl true

/--
warning: Consider moving this declaration to the module Mathlib.Data.Nat.Notation.
note: this linter can be disabled with `set_option linter.upstreamableDecl false`
-/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MinImports/Variant43296a07a0a4079957dcb160d358e825ecdc5d79d51000ff8fafb0287d690ea9.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c45e8d193cc103cda79cb23eae812b8e92a8a75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
