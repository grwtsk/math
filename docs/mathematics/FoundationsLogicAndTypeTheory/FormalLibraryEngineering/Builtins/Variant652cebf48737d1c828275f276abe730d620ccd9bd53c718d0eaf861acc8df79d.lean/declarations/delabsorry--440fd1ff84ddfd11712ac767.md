# delabSorry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fdba3e941fcd07f93222d0f7515c2ba76fc6d49f2653ea40ffba07516818bf26",
  "kind": "def",
  "lexical_name": "delabSorry",
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
  "slug": "delabsorry--440fd1ff84ddfd11712ac767",
  "source": {
    "blob": "3a43e15944e75cf221e11cb3e1100a21e4476b87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1551,
    "line": 1524,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:440fd1ff84ddfd11712ac7676957eb5e90c865ad43394f53bbcb1943f9165920",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fdba3e941fcd07f93222d0f7515c2ba76fc6d49f2653ea40ffba07516818bf26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1524–1551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def delabSorry : Delab := whenPPOption getPPNotation <| whenNotPPOption getPPExplicit do
  let numArgs := (← getExpr).getAppNumArgs
  guard <| numArgs ≥ 2
  -- Cache the current position's value, since it might be applied to the entire application.
  let sorrySource ← getPPOption getPPSorrySource
  -- If this is constructed by `Lean.Meta.mkLabeledSorry`, then normally we don't print the unique tag.
  -- But, if `pp.explicit` is false and `pp.sorrySource` is true, then print a simplified version of the tag.
  if let some view := isLabeledSorry? (← getExpr) then
    withOverApp 3 do
      if let some loc := view.module? then
        let (stx, explicit) ←
          if ← pure sorrySource <||> getPPOption getPPSorrySource then
            let posAsName := Name.mkSimple s!"{loc.module}:{loc.range.pos.line}:{loc.range.pos.column}"
            let pos := mkNode ``Lean.Parser.Term.quotedName #[Syntax.mkNameLit s!"`{posAsName}"]
            let src ← withAppArg <| annotateTermInfo pos
            pure (← `(sorry $src), true)
          else
            -- Set `explicit` to false so that the first hover sets `pp.sorrySource` to true in `Lean.Widget.ppExprTagged`
            pure (← `(sorry), false)
        let stx ← annotateCurPos stx
        addDelabTermInfo (← getPos) stx (← getExpr) (explicit := explicit) (location? := loc)
          (docString? := "This is a `sorry` term associated to a source position. Use 'Go to definition' to go there.")
        return stx
      else
        `(sorry)
  else
    withOverApp 2 `(sorry)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean#L1524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a43e15944e75cf221e11cb3e1100a21e4476b87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
