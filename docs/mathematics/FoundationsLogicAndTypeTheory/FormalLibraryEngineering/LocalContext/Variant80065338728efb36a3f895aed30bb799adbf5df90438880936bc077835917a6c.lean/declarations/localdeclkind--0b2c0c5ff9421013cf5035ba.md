# LocalDeclKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96039a99a906292001e7565aff48f28ffbab985dc9aacd8f1af075242dc89611",
  "kind": "inductive",
  "lexical_name": "LocalDeclKind",
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
  "slug": "localdeclkind--0b2c0c5ff9421013cf5035ba",
  "source": {
    "blob": "b70a646cd7bceed2d536a20ce52dc2fffe6b4df5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalContext/Variant80065338728efb36a3f895aed30bb799adbf5df90438880936bc077835917a6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b2c0c5ff9421013cf5035ba53666daaa33fad89a9272a8c446c07da8240a05c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalContext/Variant80065338728efb36a3f895aed30bb799adbf5df90438880936bc077835917a6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96039a99a906292001e7565aff48f28ffbab985dc9aacd8f1af075242dc89611`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive LocalDeclKind
  /--
  Participates fully in type class search, tactics, and is shown even if inaccessible.

  For example: the `x` in `fun x => _` has the default kind.
  -/
  | default
  /--
  Invisible to type class search or tactics, and hidden in the goal display.

  This kind is used for temporary variables in macros.
  For example: `return (← foo) + bar` expands to
  `foo >>= fun __tmp => pure (__tmp + bar)`,
  where `__tmp` has the `implDetail` kind.
  -/
  | implDetail
  /--
  Auxiliary local declaration for recursive calls.
  The behavior is similar to `implDetail`.

  For example: `def foo (n : Nat) : Nat := _` adds the local declaration
  `foo : Nat → Nat` to allow recursive calls.
  This declaration has the `auxDecl` kind.
  -/
  | auxDecl
  deriving Inhabited, Repr, DecidableEq, Hashable

/-- A declaration for a `LocalContext`. This is used to register which free variables are in scope.

See `LocalDecl.index`, `LocalDecl.fvarId`, `LocalDecl.userName`, `LocalDecl.type` for accessors for
arguments common to both constructors.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalContext/Variant80065338728efb36a3f895aed30bb799adbf5df90438880936bc077835917a6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalContext/Variant80065338728efb36a3f895aed30bb799adbf5df90438880936bc077835917a6c.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b70a646cd7bceed2d536a20ce52dc2fffe6b4df5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
