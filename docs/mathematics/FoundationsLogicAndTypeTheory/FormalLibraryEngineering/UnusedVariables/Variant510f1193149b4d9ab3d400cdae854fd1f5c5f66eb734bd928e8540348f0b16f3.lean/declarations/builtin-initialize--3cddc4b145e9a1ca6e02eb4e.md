# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:782b7d81f3ca2766aeb581a2569b88403d2c6024f81057bc7f3a382930173015",
  "kind": "builtin_initialize",
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
  "slug": "builtin-initialize--3cddc4b145e9a1ca6e02eb4e",
  "source": {
    "blob": "c244760024c3f87637f2872ec3c4af895274db3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 211,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variant510f1193149b4d9ab3d400cdae854fd1f5c5f66eb734bd928e8540348f0b16f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cddc4b145e9a1ca6e02eb4ecaae7258c502d9ebf1bb05bf168b957444cb0a1d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variant510f1193149b4d9ab3d400cdae854fd1f5c5f66eb734bd928e8540348f0b16f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:782b7d81f3ca2766aeb581a2569b88403d2c6024f81057bc7f3a382930173015`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize addBuiltinUnusedVariablesIgnoreFn (fun _ stack _ =>
  stack.matches [`null, none, `null, ``Lean.Parser.Command.optDeclSig, none] &&
  (stack[4]? |>.any fun (stx, _) =>
    [``Lean.Parser.Command.structure, ``Lean.Parser.Command.inductive].any (stx.isOfKind ·)))

/--
* `structure Foo where foo (unused : Nat) : Nat`
* `inductive Foo where | mk (unused : Nat) : Foo`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variant510f1193149b4d9ab3d400cdae854fd1f5c5f66eb734bd928e8540348f0b16f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variant510f1193149b4d9ab3d400cdae854fd1f5c5f66eb734bd928e8540348f0b16f3.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c244760024c3f87637f2872ec3c4af895274db3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
