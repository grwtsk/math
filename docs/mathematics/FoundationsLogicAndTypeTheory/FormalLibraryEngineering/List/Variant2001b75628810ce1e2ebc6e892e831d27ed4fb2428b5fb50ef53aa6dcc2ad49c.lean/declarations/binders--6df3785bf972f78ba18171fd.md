# binders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88a9c4ee2e9e20a61e7cfcc8fbdf8264c85a72c0f2b874d2f10d11f38ffe95ef",
  "kind": "def",
  "lexical_name": "binders",
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
  "slug": "binders--6df3785bf972f78ba18171fd",
  "source": {
    "blob": "98b8fb81787fe68eb4d7bb21a8fcf373cc58053a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 218,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/List/Variant2001b75628810ce1e2ebc6e892e831d27ed4fb2428b5fb50ef53aa6dcc2ad49c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6df3785bf972f78ba18171fd77c15d95e54d2377dab713cd25cc09af6b6c77d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/List/Variant2001b75628810ce1e2ebc6e892e831d27ed4fb2428b5fb50ef53aa6dcc2ad49c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88a9c4ee2e9e20a61e7cfcc8fbdf8264c85a72c0f2b874d2f10d11f38ffe95ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def binders (t : InfoTree) (p : Expr → Bool := fun _ => true) : IO (List (Syntax × Name × Expr)) :=
  t.collectTermInfoM fun ctx ti => do
    if ti.isBinder then do
      -- Something is wrong here: sometimes `inferType` fails with an unknown fvar error,
      -- despite passing the local context here.
      -- We fail quietly by returning a `Unit` type.
      let ty ← ctx.runMetaM ti.lctx do instantiateMVars (← (Meta.inferType ti.expr) <|> pure (.const `Unit []))
      if p ty.cleanupAnnotations then
        if let .fvar i := ti.expr then
          match ti.lctx.find? i with
          | some ldecl => return some (ti.stx, ldecl.userName, ty)
          | none => return none
        else
          return none
      else
        return none
    else
      return none

/--
A linter which validates that all `List`/`Array`/`Vector` variables use allowed names.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/List/Variant2001b75628810ce1e2ebc6e892e831d27ed4fb2428b5fb50ef53aa6dcc2ad49c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/List/Variant2001b75628810ce1e2ebc6e892e831d27ed4fb2428b5fb50ef53aa6dcc2ad49c.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98b8fb81787fe68eb4d7bb21a8fcf373cc58053a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
