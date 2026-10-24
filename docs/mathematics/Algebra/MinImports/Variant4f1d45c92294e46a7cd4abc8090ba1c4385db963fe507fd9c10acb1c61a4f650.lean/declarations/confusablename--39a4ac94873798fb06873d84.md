# confusableName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99fa9a0b4fcf66368430c8c4d94bc26cfb45422a5e8c755fa333362de5f9087b",
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
  "slug": "confusablename--39a4ac94873798fb06873d84",
  "source": {
    "blob": "9d6658f77b19fd7ecc0fb3f65e72178bc771d08e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 110,
    "path": "GRWTSK/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39a4ac94873798fb06873d84aa29d391224e2d17c1ef1cada6f90ee7b6091d10",
  "verification": {
    "reference": "docs/verification/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99fa9a0b4fcf66368430c8c4d94bc26cfb45422a5e8c755fa333362de5f9087b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–191.

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

[Verification target and public status](../../../../../verification/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d6658f77b19fd7ecc0fb3f65e72178bc771d08e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
