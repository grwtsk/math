# realizeExtTheorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:278b7daef12c9caa96cf4e1b22d29c3fc21529012c7ae5a50e3a46599bc7b8f0",
  "kind": "def",
  "lexical_name": "realizeExtTheorem",
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
  "slug": "realizeexttheorem--851454ca28d6bd0a9a4ba1b3",
  "source": {
    "blob": "9696f8a49876b9f79f9b348db541de0167786ccf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:851454ca28d6bd0a9a4ba1b38ae2f8fbd063eaa351def272d6fa853e17c8c60b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:278b7daef12c9caa96cf4e1b22d29c3fc21529012c7ae5a50e3a46599bc7b8f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def realizeExtTheorem (structName : Name) (flat : Bool) : TermElabM Name := do
  unless isStructure (← getEnv) structName do
    throwError "Internal error when realizing `ext` theorem: `{structName}` is not a structure"
  let extName := structName.mkStr "ext"
  unless (← getEnv).contains extName do
    try
      withLCtx {} {} <| withoutErrToSorry <| withDeclName extName do
        let type ← mkExtType structName flat
        let pf ← withoutExporting <| withSynthesize do
          let indVal ← getConstInfoInduct structName
          let params := Array.replicate indVal.numParams (← `(_))
          Term.elabTermEnsuringType (expectedType? := type) (implicitLambda := false)
            -- introduce the params, do cases on 'x' and 'y', and then substitute each equation
            (← `(by intro $params* {..} {..}; intros; subst_eqs; rfl))
        let pf ← instantiateMVars pf
        if pf.hasMVar then throwError "Internal error: Synthesized `ext` proof contains metavariables{indentD pf}"
        let info ← getConstInfo structName
        addDecl <| Declaration.thmDecl {
          name := extName
          type
          value := pf
          levelParams := info.levelParams
        }
        modifyEnv fun env => addProtected env extName
        addDeclarationRangesFromSyntax extName (← getRef)
    catch e =>
      throwError m!"\
        Failed to generate an `ext` theorem for `{.ofConstName structName}`: {e.toMessageData}"
  return extName

/--
Given an 'ext' theorem, ensures that there is an iff version of the theorem (if possible),
without validating any pre-existing theorems.
Returns the name of the 'ext_iff' theorem.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9696f8a49876b9f79f9b348db541de0167786ccf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
