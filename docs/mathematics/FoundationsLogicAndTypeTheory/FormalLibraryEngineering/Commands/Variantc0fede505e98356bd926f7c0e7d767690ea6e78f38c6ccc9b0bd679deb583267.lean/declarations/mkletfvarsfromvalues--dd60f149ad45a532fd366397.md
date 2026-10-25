# mkLetFVarsFromValues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99ac397d1edce0ac99dfc3f87b31eb8d498d992ee78255b66fe41a584781d299",
  "kind": "def",
  "lexical_name": "mkLetFVarsFromValues",
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
  "slug": "mkletfvarsfromvalues--dd60f149ad45a532fd366397",
  "source": {
    "blob": "8b80e2413296f18427ff4a3a0d4af5f31b01c2f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc0fede505e98356bd926f7c0e7d767690ea6e78f38c6ccc9b0bd679deb583267.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd60f149ad45a532fd3663979fcde23690384f49f11a02d65f2a98e986e50a3e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc0fede505e98356bd926f7c0e7d767690ea6e78f38c6ccc9b0bd679deb583267.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99ac397d1edce0ac99dfc3f87b31eb8d498d992ee78255b66fe41a584781d299`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private meta def mkLetFVarsFromValues (values : Array Expr) (body : Expr) : MetaM Expr := do
  let ctx ← getLCtx
  let ctxLet := ctx.foldl (init := LocalContext.empty) fun part decl =>
    part.addDecl (.ldecl decl.index decl.fvarId decl.userName
      decl.type values[decl.index]! false decl.kind)
  let fvars : Array Expr := ctx.foldl (init := #[]) fun part decl =>
    part.push (.fvar decl.fvarId)
  withLCtx ctxLet #[] <| mkLetFVars fvars body

/--
`by_elabq` is the Qq analogue to `by_elab` which allows executing arbitrary `TermElabM` code in
place of a term. In contrast to `by_elab`, the local context can be directly accessed as quoted
expressions and the return type is Q-annotated.
Example:
```
def f (x : Prop) [Decidable x] : Int :=
  by_elabq
    Lean.logInfo x
    Lean.logInfo x.ty
    return q(if $x then 2 else 3)
```
See also: `run_tacq`.
-/
scoped
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc0fede505e98356bd926f7c0e7d767690ea6e78f38c6ccc9b0bd679deb583267.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc0fede505e98356bd926f7c0e7d767690ea6e78f38c6ccc9b0bd679deb583267.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b80e2413296f18427ff4a3a0d4af5f31b01c2f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
