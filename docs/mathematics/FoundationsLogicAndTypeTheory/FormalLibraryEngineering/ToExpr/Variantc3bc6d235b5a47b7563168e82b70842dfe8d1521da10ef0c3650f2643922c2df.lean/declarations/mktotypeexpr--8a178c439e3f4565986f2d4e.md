# mkToTypeExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:320c7f5ddeb33671b12da0ce8910b7acbb5f95e5ff3d81ade6cd855f21f19ebc",
  "kind": "def",
  "lexical_name": "mkToTypeExpr",
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
  "slug": "mktotypeexpr--8a178c439e3f4565986f2d4e",
  "source": {
    "blob": "0d73d5cc2ef8bf693ed8883a0f765bef7c10b609",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a178c439e3f4565986f2d4e3917b130da25810ca2be107f48c83a981cc4fdc9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:320c7f5ddeb33671b12da0ce8910b7acbb5f95e5ff3d81ade6cd855f21f19ebc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkToTypeExpr (indVal : InductiveVal) (argNames : Array Name) : TermElabM Term := do
  let levels ← indVal.levelParams.toArray.mapM (fun u => `(Lean.toLevel.{$(mkIdent u)}))
  forallTelescopeReducing indVal.type fun xs _ => do
    let mut args : Array Term := #[]
    for argName in argNames, x in xs do
      let a := mkIdent argName
      if ← Meta.isType x then
        args := args.push <| ← ``(toTypeExpr $a)
      else
        args := args.push <| ← ``(toExpr $a)
    mkAppNTerm (← ``(Expr.const $(quote indVal.name) [$levels,*])) args

/--
Creates the body of the `toExpr` function for the `ToExpr` instance, which is a `match` expression
that calls `toExpr` and `toTypeExpr` to assemble an expression for a given term.
For recursive inductive types, `auxFunName` refers to the `ToExpr` instance for the current type.
For mutually recursive types, we rely on the local instances set up by `mkLocalInstanceLetDecls`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d73d5cc2ef8bf693ed8883a0f765bef7c10b609` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
