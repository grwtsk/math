# throwUnknownNameWithSuggestions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3355703999250700a13ea51e5e1fd6fd10d9998d90616bba90937c15674f5ddb",
  "kind": "def",
  "lexical_name": "throwUnknownNameWithSuggestions",
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
  "slug": "throwunknownnamewithsuggestions--f17c20670f942632bd13d5ae",
  "source": {
    "blob": "0737a9bd4abd2c83c4daa25de8290b22d361fc8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant28bdba0d5a3485733c9d8c577ec25a143ebb73f1d4e70608dcea970791e79e5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f17c20670f942632bd13d5ae6eaeae9595be728bac6fb908f1fbc4ede7f44434",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant28bdba0d5a3485733c9d8c577ec25a143ebb73f1d4e70608dcea970791e79e5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3355703999250700a13ea51e5e1fd6fd10d9998d90616bba90937c15674f5ddb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def throwUnknownNameWithSuggestions (constName : Name) (idOrConst := "identifier") (declHint := constName) (ref? : Option Syntax := .none) (extraMsg : MessageData := .nil) : TermElabM α := do
  let suggestions := (← getSuggestions constName).toArray
  let ref := ref?.getD (← getRef)
  let hint ← if suggestions.size = 0 then
      pure MessageData.nil
    else
      -- Modify suggestions to have the same structure as the user-provided identifier, but only
      -- if that doesn't cause ambiguity.
      let rawId := ref.getId
      let env ← getEnv
      let ns ← getCurrNamespace
      let openDecls ← getOpenDecls
      let modifySuggestion := match constName.eraseSuffix? rawId with
        | .none => id
        | .some prefixName => fun (suggestion : Name) =>
            let candidate := suggestion.replacePrefix prefixName .anonymous
            if (ResolveName.resolveGlobalName env {} ns openDecls candidate |>.length) != 1 then
              suggestion
            else
              candidate

      let alternative := if h : suggestions.size = 1 then m!"`{.ofConstName suggestions[0]}`" else m!"one of these"
      let inPlaceOfThis := if rawId.isAnonymous then .nil else m!" in place of `{.ofName rawId}`"
      m!"Perhaps you meant {alternative}{inPlaceOfThis}:".hint (suggestions.map fun suggestion =>
        let modified := modifySuggestion suggestion
        {
          suggestion := s!"{modified}",
          toCodeActionTitle? := .some (s!"Change to {·}"),
          messageData? := .some m!"`{.ofConstName suggestion}`",
        }) ref
  throwUnknownIdentifierAt (declHint := declHint) ref (m!"Unknown {idOrConst} `{.ofConstName constName}`" ++ extraMsg ++ hint)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant28bdba0d5a3485733c9d8c577ec25a143ebb73f1d4e70608dcea970791e79e5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant28bdba0d5a3485733c9d8c577ec25a143ebb73f1d4e70608dcea970791e79e5c.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0737a9bd4abd2c83c4daa25de8290b22d361fc8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
