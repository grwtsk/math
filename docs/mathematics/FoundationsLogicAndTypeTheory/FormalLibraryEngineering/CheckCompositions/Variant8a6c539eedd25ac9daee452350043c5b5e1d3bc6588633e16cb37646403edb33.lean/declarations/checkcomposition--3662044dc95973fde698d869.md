# checkComposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db226afca42cd77da2bc598344e73d55e4cac01fa44b2a29252fdafeff1445ee",
  "kind": "def",
  "lexical_name": "checkComposition",
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
  "slug": "checkcomposition--3662044dc95973fde698d869",
  "source": {
    "blob": "f16f7a4b9b51fc9eba7180f762fee45614ecf603",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variant8a6c539eedd25ac9daee452350043c5b5e1d3bc6588633e16cb37646403edb33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3662044dc95973fde698d8691ac78e5ed5938d48eb74fe2141e13bae055e6b92",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variant8a6c539eedd25ac9daee452350043c5b5e1d3bc6588633e16cb37646403edb33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db226afca42cd77da2bc598344e73d55e4cac01fa44b2a29252fdafeff1445ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkComposition (e : Expr) : MetaM Unit := do
  match_expr e with
  | CategoryStruct.comp _ _ X Y Z f g =>
    match_expr ← inferType f with
    | Quiver.Hom _ _ X' Y' =>
      withReducibleAndInstances do
        if !(← isDefEq X' X) then
          let (X', X) ← addPPExplicitToExposeDiff X' X
          logInfo m!"In composition{indentD e}\n\
            the source of{indentD f}\nis{indentD X'}\nbut should be{indentD X}"
        if !(← isDefEq Y' Y) then
          let (Y', Y) ← addPPExplicitToExposeDiff Y' Y
          logInfo m!"In composition{indentD e}\n\
            the target of{indentD f}\nis{indentD Y'}\nbut should be{indentD Y}"
    | _ => throwError "In composition{indentD e}\nthe type of{indentD f}\nis not a morphism."
    match_expr ← inferType g with
    | Quiver.Hom _ _ Y' Z' =>
      withReducibleAndInstances do
        if !(← isDefEq Y' Y) then
          let (Y', Y) ← addPPExplicitToExposeDiff Y' Y
          logInfo m!"In composition{indentD e}\n\
            the source of{indentD g}\nis{indentD Y'}\nbut should be{indentD Y}"
        if !(← isDefEq Z' Z) then
          let (Z', Z) ← addPPExplicitToExposeDiff Z' Z
          logInfo m!"In composition{indentD e}\n\
            the target of{indentD g}\nis{indentD Z'}\nbut should be{indentD Z}"
    | _ => throwError "In composition{indentD e}\nthe type of{indentD g}\nis not a morphism."
  | _ => throwError "{e} is not a composition."

/-- Check the typing of categorical compositions in an expression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variant8a6c539eedd25ac9daee452350043c5b5e1d3bc6588633e16cb37646403edb33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variant8a6c539eedd25ac9daee452350043c5b5e1d3bc6588633e16cb37646403edb33.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f16f7a4b9b51fc9eba7180f762fee45614ecf603` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
