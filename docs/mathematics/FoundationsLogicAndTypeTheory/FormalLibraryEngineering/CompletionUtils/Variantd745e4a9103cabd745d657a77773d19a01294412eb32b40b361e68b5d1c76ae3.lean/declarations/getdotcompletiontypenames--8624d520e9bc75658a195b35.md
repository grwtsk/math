# getDotCompletionTypeNames

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:908fe47899ae0bf7f2cf1802b3305f244b49abcb71037693e97931499525bc49",
  "kind": "def",
  "lexical_name": "getDotCompletionTypeNames",
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
  "slug": "getdotcompletiontypenames--8624d520e9bc75658a195b35",
  "source": {
    "blob": "035b1c50590651b65ed7a94b1e0c8e62596f5ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionUtils/Variantd745e4a9103cabd745d657a77773d19a01294412eb32b40b361e68b5d1c76ae3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8624d520e9bc75658a195b3529c65ef3ab4300e8040480ae90bbd2028bc846d9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionUtils/Variantd745e4a9103cabd745d657a77773d19a01294412eb32b40b361e68b5d1c76ae3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:908fe47899ae0bf7f2cf1802b3305f244b49abcb71037693e97931499525bc49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getDotCompletionTypeNames (type : Expr) : MetaM (Array Name) :=
  return (← visit type |>.run #[]).2
where
  visit (type : Expr) : StateRefT (Array Name) MetaM Unit := do
    let .const typeName _ := type.getAppFn | return ()
    modify fun s => s.push typeName
    if isStructure (← getEnv) typeName then
      for parentName in (← getAllParentStructures typeName) do
        modify fun s => s.push parentName
    let some type ← unfoldDefinitionGuarded? type | return ()
    visit type

/--
Gets type names for resolving `id` in `.id x₁ ... xₙ` notation.
The process mimics the dotted identifier notation elaboration procedure at `Lean.Elab.App`.
Catches and ignores all errors, so no need to run this within `try`/`catch`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionUtils/Variantd745e4a9103cabd745d657a77773d19a01294412eb32b40b361e68b5d1c76ae3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionUtils/Variantd745e4a9103cabd745d657a77773d19a01294412eb32b40b361e68b5d1c76ae3.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `035b1c50590651b65ed7a94b1e0c8e62596f5ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
