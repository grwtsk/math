# throwUnknownNameWithSuggestions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9dd60d4d6fbe9502815bb174bb8917badd069456792212eda007916cc6cfe5d4",
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
  "slug": "throwunknownnamewithsuggestions--32e9384edc49a5a44f973957",
  "source": {
    "blob": "b19bba8a8c5de10ed0966326ff6034ed82083235",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant3940d06fed696425ac547dbd60be87c6948dd901dce8d12a298faf956ee46f71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32e9384edc49a5a44f973957b2ba50b8b47c1f7d0aac4a641056c6bab25e27ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant3940d06fed696425ac547dbd60be87c6948dd901dce8d12a298faf956ee46f71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9dd60d4d6fbe9502815bb174bb8917badd069456792212eda007916cc6cfe5d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–152.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant3940d06fed696425ac547dbd60be87c6948dd901dce8d12a298faf956ee46f71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant3940d06fed696425ac547dbd60be87c6948dd901dce8d12a298faf956ee46f71.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b19bba8a8c5de10ed0966326ff6034ed82083235` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
