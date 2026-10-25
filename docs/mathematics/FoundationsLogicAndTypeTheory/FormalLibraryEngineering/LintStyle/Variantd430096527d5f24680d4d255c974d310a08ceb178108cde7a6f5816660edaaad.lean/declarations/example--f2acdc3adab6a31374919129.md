# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ecda60ec327800fbea83a12c2c613ab97108c4a0ddbe024aef56c3cf075ac850",
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
  "slug": "example--f2acdc3adab6a31374919129",
  "source": {
    "blob": "c26c86c1bd8752cf64b7b7ab86297417a902eb36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 340,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintStyle/Variantd430096527d5f24680d4d255c974d310a08ceb178108cde7a6f5816660edaaad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2acdc3adab6a31374919129fe855e9bc5f1ef6ed0705b60e0e28e528418f6e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintStyle/Variantd430096527d5f24680d4d255c974d310a08ceb178108cde7a6f5816660edaaad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ecda60ec327800fbea83a12c2c613ab97108c4a0ddbe024aef56c3cf075ac850`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : ℕ → ℕ := λ _ ↦ 0

end lambdaSyntaxLinter

set_option linter.style.longLine true
/--
warning: This line exceeds the 100 character limit, please shorten it!
note: this linter can be disabled with `set_option linter.style.longLine false`
-/
#guard_msgs in
/-!                                                                                                -/

#guard_msgs in
-- Lines with more than 100 characters containing URLs are allowed.
/-!  http                                                                                          -/

set_option linter.style.longLine true
-- The *argument* of `#guard_msgs` is *not* exempt from the linter.
/--
warning: This line exceeds the 100 character limit, please shorten it!
note: this linter can be disabled with `set_option linter.style.longLine false`
-/
#guard_msgs in                                                                            #guard true

-- However, the *doc-string* of #guard_msgs is exempt from the linter:
-- these are automatically generated, hence linting them is not helpful.
/--
info: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26]
-/
#guard_msgs in
#eval List.range 27

-- TODO: this used to error about the 100 character limit (mentioning string gaps),
-- restore this test!
/-- info: "                              \"                " : String -/
#guard_msgs in
#check "                              \"                \
                                                                  "

/- Tests for the `openClassical` linter -/
section openClassical

set_option linter.style.openClassical true

/--
warning: please avoid 'open (scoped) Classical' statements: this can hide theorem statements
which would be better stated with explicit decidability statements.
Instead, use `open Classical in` for definitions or instances, the `classical` tactic for proofs.
For theorem statements, either add missing decidability assumptions or use `open Classical in`.
note: this linter can be disabled with `set_option linter.style.openClassical false`
-/
#guard_msgs in
open Classical

/--
warning: please avoid 'open (scoped) Classical' statements: this can hide theorem statements
which would be better stated with explicit decidability statements.
Instead, use `open Classical in` for definitions or instances, the `classical` tactic for proofs.
For theorem statements, either add missing decidability assumptions or use `open Classical in`.
note: this linter can be disabled with `set_option linter.style.openClassical false`
-/
#guard_msgs in
open Nat Classical Nat

/--
warning: please avoid 'open (scoped) Classical' statements: this can hide theorem statements
which would be better stated with explicit decidability statements.
Instead, use `open Classical in` for definitions or instances, the `classical` tactic for proofs.
For theorem statements, either add missing decidability assumptions or use `open Classical in`.
note: this linter can be disabled with `set_option linter.style.openClassical false`
-/
#guard_msgs in
open Classical hiding choose

/--
warning: please avoid 'open (scoped) Classical' statements: this can hide theorem statements
which would be better stated with explicit decidability statements.
Instead, use `open Classical in` for definitions or instances, the `classical` tactic for proofs.
For theorem statements, either add missing decidability assumptions or use `open Classical in`.
note: this linter can be disabled with `set_option linter.style.openClassical false`
-/
#guard_msgs in
open Classical hiding choose axiomOfChoice

/--
warning: please avoid 'open (scoped) Classical' statements: this can hide theorem statements
which would be better stated with explicit decidability statements.
Instead, use `open Classical in` for definitions or instances, the `classical` tactic for proofs.
For theorem statements, either add missing decidability assumptions or use `open Classical in`.
note: this linter can be disabled with `set_option linter.style.openClassical false`
-/
#guard_msgs in
open Classical renaming choose -> foo, byCases -> bar

-- Only opening specific items.
/--
warning: please avoid 'open (scoped) Classical' statements: this can hide theorem statements
which would be better stated with explicit decidability statements.
Instead, use `open Classical in` for definitions or instances, the `classical` tactic for proofs.
For theorem statements, either add missing decidability assumptions or use `open Classical in`.
note: this linter can be disabled with `set_option linter.style.openClassical false`
-/
#guard_msgs in
open Classical (choose)

-- `open scoped Classical` is also linted

/--
warning: please avoid 'open (scoped) Classical' statements: this can hide theorem statements
which would be better stated with explicit decidability statements.
Instead, use `open Classical in` for definitions or instances, the `classical` tactic for proofs.
For theorem statements, either add missing decidability assumptions or use `open Classical in`.
note: this linter can be disabled with `set_option linter.style.openClassical false`
-/
#guard_msgs in
open scoped Classical

/--
warning: please avoid 'open (scoped) Classical' statements: this can hide theorem statements which would be better stated with explicit decidability statements.
Instead, use `open Classical in` for definitions or instances, the `classical` tactic for proofs.
For theorem statements, either add missing decidability assumptions or use `open Classical in`.
note: this linter can be disabled with `set_option linter.style.openClassical false`
---
warning: please avoid 'open (scoped) Classical' statements: this can hide theorem statements which would be better stated with explicit decidability statements.
Instead, use `open Classical in` for definitions or instances, the `classical` tactic for proofs.
For theorem statements, either add missing decidability assumptions or use `open Classical in`.
note: this linter can be disabled with `set_option linter.style.openClassical false`
-/
#guard_msgs in
open scoped Int Classical Nat Classical

-- `open ... in` is *not* linted.
#guard_msgs in
open Classical (choose) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintStyle/Variantd430096527d5f24680d4d255c974d310a08ceb178108cde7a6f5816660edaaad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintStyle/Variantd430096527d5f24680d4d255c974d310a08ceb178108cde7a6f5816660edaaad.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c26c86c1bd8752cf64b7b7ab86297417a902eb36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
