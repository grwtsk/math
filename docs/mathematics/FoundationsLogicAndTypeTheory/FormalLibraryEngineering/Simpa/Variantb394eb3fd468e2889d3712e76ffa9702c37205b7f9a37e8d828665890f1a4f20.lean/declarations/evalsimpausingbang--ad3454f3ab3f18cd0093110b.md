# evalSimpaUsingBang

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4b537331b5161595633111e35181086771edc35957d77f3383569c0c6dd89b1",
  "kind": "def",
  "lexical_name": "evalSimpaUsingBang",
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
  "slug": "evalsimpausingbang--ad3454f3ab3f18cd0093110b",
  "source": {
    "blob": "e22b6faa645be0d357e31d2d2c75f6d4a4515c5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantb394eb3fd468e2889d3712e76ffa9702c37205b7f9a37e8d828665890f1a4f20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad3454f3ab3f18cd0093110b4b858995012cf6e68325b074f71dc66d5c89d0c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantb394eb3fd468e2889d3712e76ffa9702c37205b7f9a37e8d828665890f1a4f20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4b537331b5161595633111e35181086771edc35957d77f3383569c0c6dd89b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_tactic Lean.Parser.Tactic.simpaUsingBang] def evalSimpaUsingBang : Tactic := fun stx => do
  -- The `simpa ... using! e` syntax is identical to `simpa ... using e` except for
  -- the trailing `using!` vs `using`. Rewrite to the `simpa` shape and dispatch
  -- to the shared core, opting into the permissive default-transparency close.
  match stx with
  | `(tactic| simpa%$tk $[?%$squeeze]? $[!%$unfold]? $cfg:optConfig $(disch)? $[only%$only]?
        $[[$args,*]]? using! $usingArg) => do
    let stx' ← `(tactic| simpa%$tk $[?%$squeeze]? $[!%$unfold]? $cfg:optConfig $(disch)? $[only%$only]?
        $[[$args,*]]? using $usingArg)
    evalSimpaCore (useReducible := false) stx'
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic.Simpa
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantb394eb3fd468e2889d3712e76ffa9702c37205b7f9a37e8d828665890f1a4f20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantb394eb3fd468e2889d3712e76ffa9702c37205b7f9a37e8d828665890f1a4f20.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e22b6faa645be0d357e31d2d2c75f6d4a4515c5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
