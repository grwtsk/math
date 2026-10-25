# goToModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f2fd8aa3e2a8c273d2eea88c490d45feb7ef5066de17050d05b5265a4f0e1fb",
  "kind": "def",
  "lexical_name": "goToModule",
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
  "slug": "gotomodule--acde6e29629758d5a30a82d9",
  "source": {
    "blob": "430778863f5c4fb657a7da80d69df9d93783590e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoToModule/Variantf83093ecfccf37c412698563d80f55f96b651a3c9d5b8a5b316dd8e77d2eef47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:acde6e29629758d5a30a82d96fc53d985934b8ef3a4aa01061b2b541e89c5552",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoToModule/Variantf83093ecfccf37c412698563d80f55f96b651a3c9d5b8a5b316dd8e77d2eef47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f2fd8aa3e2a8c273d2eea88c490d45feb7ef5066de17050d05b5265a4f0e1fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def goToModule (modName : Name) (pos : Lsp.Position := ⟨0,0⟩)
    (overrideText : Option String := none) : CoreM MessageData := do
  let p : GoToModuleProps := { modName, pos, overrideText }
  let posMsg := if pos.line ≥ pastEndOfFile.line then m!"end" else
    m!"{pos.line + 1}:{pos.character}"
  return .ofWidget
    (← Widget.WidgetInstance.ofHash GoToModule.javascriptHash <|
      Server.RpcEncodable.rpcEncode p)
    -- Note that `Lsp.Position`s are 0-indexed, hence the `+1`.
    -- (However, Lean uses 0-indexed columns in messages.)
    m!"{overrideText.getD <| toString modName} ({posMsg})"

/-- Gets the latest-ending range among all declarations, or `none` if none could be found.
Assumes all declarations come from the same module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoToModule/Variantf83093ecfccf37c412698563d80f55f96b651a3c9d5b8a5b316dd8e77d2eef47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoToModule/Variantf83093ecfccf37c412698563d80f55f96b651a3c9d5b8a5b316dd8e77d2eef47.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `430778863f5c4fb657a7da80d69df9d93783590e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
