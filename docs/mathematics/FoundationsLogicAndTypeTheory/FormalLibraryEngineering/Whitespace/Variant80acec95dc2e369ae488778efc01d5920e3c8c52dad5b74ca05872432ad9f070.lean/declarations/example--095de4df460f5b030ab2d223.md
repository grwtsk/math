# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1b839cbf58debaa3d938a8e58f1c8958c35b1da906327b111ed7c0ceb0306ab",
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
  "slug": "example--095de4df460f5b030ab2d223",
  "source": {
    "blob": "be97626f546f03dbec337c9cae4a8729fa939a4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 210,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variant80acec95dc2e369ae488778efc01d5920e3c8c52dad5b74ca05872432ad9f070.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:095de4df460f5b030ab2d22320ecc9f9f56d17319e214da59dcd371c772b417d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variant80acec95dc2e369ae488778efc01d5920e3c8c52dad5b74ca05872432ad9f070.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1b839cbf58debaa3d938a8e58f1c8958c35b1da906327b111ed7c0ceb0306ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {a : α} (_ : a ≼ a) : 0 = 0 := rfl

end List

end noFalsePositives

-- Miscellaneous constructs: variable, include, omit statements; aesop rulesets
section misc

variable [h : Add Nat] [Add Nat]

/--
warning: extra space in the source

This part of the code
  'variable    [ h'
should be written as
  'variable [h :'


Note: This linter can be disabled with `set_option linter.style.whitespace false`
---
warning: extra space in the source

This part of the code
  '[ h  '
should be written as
  '[h : Add'


Note: This linter can be disabled with `set_option linter.style.whitespace false`
---
warning: extra space in the source

This part of the code
  'h    : Add'
should be written as
  '[h : Add'


Note: This linter can be disabled with `set_option linter.style.whitespace false`
---
warning: extra space in the source

This part of the code
  'Nat   ] ['
should be written as
  'Nat] [Add'


Note: This linter can be disabled with `set_option linter.style.whitespace false`
---
warning: extra space in the source

This part of the code
  '[ Add'
should be written as
  '[Add Nat]'


Note: This linter can be disabled with `set_option linter.style.whitespace false`
-/
#guard_msgs in
variable    [ h    : Add Nat   ] [ Add Nat]

/--
warning: extra space in the source

This part of the code
  'omit  [h :'
should be written as
  'omit [h :'


Note: This linter can be disabled with `set_option linter.style.whitespace false`
---
warning: extra space in the source

This part of the code
  'Nat]  [Add'
should be written as
  ' [Add'


Note: This linter can be disabled with `set_option linter.style.whitespace false`
-/
#guard_msgs in
omit  [h : Add Nat]  [Add Nat]

-- Include statements are not linted.
include     h

set_option linter.overlappingInstances false in
/--
warning: extra space in the source

This part of the code
  '@[aesop  (rule_sets'
should be written as
  '@[aesop (rule_sets'


Note: This linter can be disabled with `set_option linter.style.whitespace false`
-/
#guard_msgs in
@[aesop  (rule_sets := [builtin]) safe apply] example : True := trivial

end misc

/--
warning: 'section' starts on column 1, but all commands should start at the beginning of the line.

Note: This linter can be disabled with `set_option linter.style.whitespace false`
-/
#guard_msgs in
 section

/--
warning: extra space in the source

This part of the code
  'example    : True'
should be written as
  'example : True'


Note: This linter can be disabled with `set_option linter.style.whitespace false`
-/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variant80acec95dc2e369ae488778efc01d5920e3c8c52dad5b74ca05872432ad9f070.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variant80acec95dc2e369ae488778efc01d5920e3c8c52dad5b74ca05872432ad9f070.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be97626f546f03dbec337c9cae4a8729fa939a4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
