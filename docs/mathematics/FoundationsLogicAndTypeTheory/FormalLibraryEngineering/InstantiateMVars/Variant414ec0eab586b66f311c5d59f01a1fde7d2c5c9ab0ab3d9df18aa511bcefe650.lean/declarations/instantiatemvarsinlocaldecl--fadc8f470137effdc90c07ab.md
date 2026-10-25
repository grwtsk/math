# instantiateMVarsInLocalDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:071af6f31994d2cf355b2d132391459232e1a559ca97eadae23bd1bf5d8eb62d",
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
  "slug": "instantiatemvarsinlocaldecl--fadc8f470137effdc90c07ab",
  "source": {
    "blob": "4cb98b1b98a892b1731cb4cbd2b925ae86aee5c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Variant414ec0eab586b66f311c5d59f01a1fde7d2c5c9ab0ab3d9df18aa511bcefe650.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fadc8f470137effdc90c07ab2a312f14f6fce835a4fe74ad0af99ed14d6bc7c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Variant414ec0eab586b66f311c5d59f01a1fde7d2c5c9ab0ab3d9df18aa511bcefe650.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:071af6f31994d2cf355b2d132391459232e1a559ca97eadae23bd1bf5d8eb62d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def instantiateMVarsInLocalDecl [Monad m] [MonadMCtx m] [MonadError m]
    (mvarId : MVarId) (fvarId : FVarId) : m LocalDecl := do
  let mdecl ← (← getMCtx).getExprMVarDecl mvarId
  let (some ldecl) := mdecl.lctx.find? fvarId | throwError
    "unknown fvar '{fvarId.name}' (in local context of mvar '?{mvarId.name}')"
  let ldecl ← Lean.instantiateLocalDeclMVars ldecl
  let mdecl :=
    { mdecl with lctx := mdecl.lctx.modifyLocalDecl fvarId fun _ => ldecl }
  modifyMCtx (·.declareExprMVar mvarId mdecl)
  return ldecl

/--
Instantiate metavariables in the local context of the given metavariable, update
the metavariable's declaration and return the new local context.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Variant414ec0eab586b66f311c5d59f01a1fde7d2c5c9ab0ab3d9df18aa511bcefe650.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Variant414ec0eab586b66f311c5d59f01a1fde7d2c5c9ab0ab3d9df18aa511bcefe650.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cb98b1b98a892b1731cb4cbd2b925ae86aee5c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
