# mkInstanceNameForTypeExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e8d6038d026da87a6e50bad8c9032870459b713e93e813ef5f6a747daf3d7d3",
  "kind": "def",
  "lexical_name": "mkInstanceNameForTypeExpr",
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
  "slug": "mkinstancenamefortypeexpr--c072fa0eea2617ccef345bbb",
  "source": {
    "blob": "95bc102a890ea8258bcc0702b2e62cd947938793",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 195,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c072fa0eea2617ccef345bbb33aff4cf979e2ef1ff74206426ce21fc0bbfe6ee",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e8d6038d026da87a6e50bad8c9032870459b713e93e813ef5f6a747daf3d7d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkInstanceNameForTypeExpr (type : Expr) : TermElabM Name := do
  let result ← do
    let ref ← IO.mkRef ""
    Meta.forEachExpr type fun e => do
      if e.isForall then ref.modify (· ++ "ForAll")
      else if e.isProp then ref.modify (· ++ "Prop")
      else if e.isType then ref.modify (· ++ "Type")
      else if e.isSort then ref.modify (· ++ "Sort")
      else if e.isConst then
        match e.constName!.eraseMacroScopes with
        | .str _ str =>
            if str.front.isLower then
              ref.modify (· ++ str.capitalize)
            else
              ref.modify (· ++ str)
        | _ => pure ()
    ref.get
  liftMacroM <| mkUnusedBaseName <| Name.mkSimple ("inst" ++ result)

/-- Derive the `cls` instance for the inductive type constructor `n` using the `tac` tactic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95bc102a890ea8258bcc0702b2e62cd947938793` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
