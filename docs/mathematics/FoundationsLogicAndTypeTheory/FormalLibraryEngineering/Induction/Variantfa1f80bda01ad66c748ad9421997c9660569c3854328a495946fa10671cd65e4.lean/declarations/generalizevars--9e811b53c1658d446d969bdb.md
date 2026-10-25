# generalizeVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6498435c7760a2921c9812a846d79785125c0deb4990c8f605b881c76e804607",
  "kind": "def",
  "lexical_name": "generalizeVars",
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
  "slug": "generalizevars--9e811b53c1658d446d969bdb",
  "source": {
    "blob": "e1ac382d587c03dd137dad0d3b17273cb7572b72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 637,
    "line": 613,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e811b53c1658d446d969bdb8a7db571a7e1eb324634e054024a97f7dd02965d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6498435c7760a2921c9812a846d79785125c0deb4990c8f605b881c76e804607`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–637.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def generalizeVars (mvarId : MVarId) (stx : Syntax) (targets : Array Expr) (elimExpr : Expr) : TacticM (Array FVarId × MVarId) :=
  mvarId.withContext do
    let userFVarIds ← getUserGeneralizingFVarIds stx
    let forbidden1 ← mkGeneralizationForbiddenSet targets
    let forbidden2 ← mkGeneralizationForbiddenSet #[elimExpr]
    let mut s ← getFVarSetToGeneralize targets (forbidden1.union forbidden2)
    for userFVarId in userFVarIds do
      if forbidden1.contains userFVarId then
        throwError "Variable `{mkFVar userFVarId}` cannot be generalized because the induction target depends on it"
      if forbidden2.contains userFVarId then
        throwError "Variable `{mkFVar userFVarId}` cannot be generalized because the induction principle depends on it"
      if s.contains userFVarId then
        throwOrLogError m!"Unnecessary `generalizing` argument: Variable `{mkFVar userFVarId}` is generalized automatically"
      s := s.insert userFVarId
    let fvarIds ← sortFVarIds s.toArray
    let (fvarIds, mvarId') ← mvarId.revert fvarIds
    return (fvarIds, mvarId')

/--
Given `inductionAlts` of the form
```
syntax inductionAlts := "with " (tactic)? withPosition( (colGe inductionAlt)*)
```
Return an array containing its alternatives.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1ac382d587c03dd137dad0d3b17273cb7572b72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
