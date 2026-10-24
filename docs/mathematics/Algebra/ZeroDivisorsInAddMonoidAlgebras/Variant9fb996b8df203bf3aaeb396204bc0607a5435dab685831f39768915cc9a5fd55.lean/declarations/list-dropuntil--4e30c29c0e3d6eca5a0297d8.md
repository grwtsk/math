# List.dropUntil

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7bd55839ba20d6eb65267a8497fc49d1b72ee5d58e2934a134ce70ddd23adf8e",
  "kind": "def",
  "lexical_name": "List.dropUntil",
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
  "slug": "list-dropuntil--4e30c29c0e3d6eca5a0297d8",
  "source": {
    "blob": "a354e7ca431a6ee372411fd93d0c9e9e70501db8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 137,
    "path": "GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e30c29c0e3d6eca5a0297d8735d1bb1c925a94fd69fc50152480276f0c5065a",
  "verification": {
    "reference": "docs/verification/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7bd55839ba20d6eb65267a8497fc49d1b72ee5d58e2934a134ce70ddd23adf8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def List.dropUntil {α} [DecidableEq α] : List α → List α → List α
  | _, [] => []
  | l, a :: as => ((a::as).getRest l).getD (dropUntil l as)
#align counterexample.list.drop_until Counterexample.List.dropUntil

open Lean Elab in
/-- `guard_decl na mod` makes sure that the declaration with name `na` is in the module `mod`.
```lean
guard_decl Nat.nontrivial Mathlib.Data.Nat.Basic -- does nothing

guard_decl Nat.nontrivial Not.In.Here
-- the module Not.In.Here is not imported!
```

This test makes sure that the comment referring to this example is in the file claimed in the
doc-module to this counterexample. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9fb996b8df203bf3aaeb396204bc0607a5435dab685831f39768915cc9a5fd55.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a354e7ca431a6ee372411fd93d0c9e9e70501db8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
