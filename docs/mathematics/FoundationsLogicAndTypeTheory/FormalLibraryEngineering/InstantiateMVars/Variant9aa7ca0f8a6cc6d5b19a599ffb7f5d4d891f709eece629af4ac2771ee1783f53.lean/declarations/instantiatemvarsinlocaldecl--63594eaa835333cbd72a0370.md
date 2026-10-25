# instantiateMVarsInLocalDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b45bd47dc55cc9c8999f7c52f26b3d71ba3f5c533456c32ab02a334e41ec39e",
  "kind": "def",
  "lexical_name": "instantiateMVarsInLocalDecl",
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
  "slug": "instantiatemvarsinlocaldecl--63594eaa835333cbd72a0370",
  "source": {
    "blob": "e72d52961a7e8fb94b81034084f2161cbc2489cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Variant9aa7ca0f8a6cc6d5b19a599ffb7f5d4d891f709eece629af4ac2771ee1783f53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63594eaa835333cbd72a037013158859f1205bd39432af51ae7ce90fc52432b9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Variant9aa7ca0f8a6cc6d5b19a599ffb7f5d4d891f709eece629af4ac2771ee1783f53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b45bd47dc55cc9c8999f7c52f26b3d71ba3f5c533456c32ab02a334e41ec39e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def instantiateMVarsInLocalDecl [Monad m] [MonadMCtx m] [MonadError m]
    (mvarId : MVarId) (fvarId : FVarId) : m LocalDecl := do
  let mdecl ← (← getMCtx).getExprMVarDecl mvarId
  let (some ldecl) := mdecl.lctx.find? fvarId | throwError
    "unknown fvar '{fvarId.name}' (in local context of mvar '?{mvarId.name}')"
  let ldecl ← Lean.instantiateLocalDeclMVars ldecl
  let mdecl :=
    { mdecl with lctx := mdecl.lctx.modifyLocalDecl fvarId λ _ => ldecl }
  modifyMCtx (·.declareExprMVar mvarId mdecl)
  return ldecl

/--
Instantiate metavariables in the local context of the given metavariable, update
the metavariable's declaration and return the new local context.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Variant9aa7ca0f8a6cc6d5b19a599ffb7f5d4d891f709eece629af4ac2771ee1783f53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Variant9aa7ca0f8a6cc6d5b19a599ffb7f5d4d891f709eece629af4ac2771ee1783f53.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e72d52961a7e8fb94b81034084f2161cbc2489cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
