# pushArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:921b286790a9cf372b4b23322bde0f85f58533faad4df4c5259871a426815345",
  "kind": "def",
  "lexical_name": "pushArgs",
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
  "slug": "pushargs--8b7eea15b33048d45daaaa6b",
  "source": {
    "blob": "b1f6368876af57c5489a489bebf7af79bfd1ba7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Varianta89333dc8e0bb353c253caccae22ee4c8c9b48fbf728ef22661e1f2345cc9590.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b7eea15b33048d45daaaa6b5d7bc4ce277f95511ffe88fdd0a3462a7305db58",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Varianta89333dc8e0bb353c253caccae22ee4c8c9b48fbf728ef22661e1f2345cc9590.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:921b286790a9cf372b4b23322bde0f85f58533faad4df4c5259871a426815345`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pushArgs (root : Bool) (fnInfos : AssocList Name ProofInstInfo) (todo : Array Expr) (e : Expr) : Key × Array Expr :=
  if hasNoindexAnnotation e then
    (.star, todo)
  else
    let fn := e.getAppFn
    match fn with
    | .lit v => (.lit v, todo)
    | .bvar _ => (.star, todo)
    | .forallE _ d b _ => (.arrow, todo.push b |>.push d)
    | .const declName _ =>
      if !root && isOffset' declName e then
        (.star, todo)
      else
        let numArgs := e.getAppNumArgs
        let todo := if let some info := fnInfos.find? declName then
          pushArgsUsingInfo info.argsInfo (numArgs - 1) e todo
        else
          pushAllArgs e todo
        (.const declName numArgs, todo)
    | .fvar fvarId   =>
      let numArgs := e.getAppNumArgs
      let todo := pushAllArgs e todo
      (.fvar fvarId numArgs, todo)
    | _ => (.other, todo)

/-- Work-list based traversal that builds the key sequence for a pattern. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Varianta89333dc8e0bb353c253caccae22ee4c8c9b48fbf728ef22661e1f2345cc9590.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Varianta89333dc8e0bb353c253caccae22ee4c8c9b48fbf728ef22661e1f2345cc9590.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1f6368876af57c5489a489bebf7af79bfd1ba7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
