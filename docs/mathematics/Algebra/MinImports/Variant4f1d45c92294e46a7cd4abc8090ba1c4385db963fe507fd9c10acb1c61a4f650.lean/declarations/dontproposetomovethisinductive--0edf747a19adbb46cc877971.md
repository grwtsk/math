# DontProposeToMoveThisInductive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:171adc9049fdf6eb6d31235beacdc62e0cf79e24744fbcebe203bf2c83107af9",
  "kind": "inductive",
  "lexical_name": "DontProposeToMoveThisInductive",
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
  "slug": "dontproposetomovethisinductive--0edf747a19adbb46cc877971",
  "source": {
    "blob": "9d6658f77b19fd7ecc0fb3f65e72178bc771d08e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 248,
    "path": "GRWTSK/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0edf747a19adbb46cc8779718b32877c114a3c3fe59af2eb3fbbc46584a752de",
  "verification": {
    "reference": "docs/verification/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:171adc9049fdf6eb6d31235beacdc62e0cf79e24744fbcebe203bf2c83107af9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive DontProposeToMoveThisInductive where
| foo : ℕ → DontProposeToMoveThisInductive
| bar : ℕ → DontProposeToMoveThisInductive → DontProposeToMoveThisInductive

set_option linter.upstreamableDecl.defs true

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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d6658f77b19fd7ecc0fb3f65e72178bc771d08e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
