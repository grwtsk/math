# expandMutualNamespace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4a9b1e995b10610456c18d97a4d941d7304c28651b9215728f0fe15135dcd56",
  "kind": "def",
  "lexical_name": "expandMutualNamespace",
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
  "slug": "expandmutualnamespace--fdbe04a3dd8ad6444c7d3503",
  "source": {
    "blob": "ca409f8835376638b29feca5dfa1e4a8d73cf0f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 240,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantf81a137aca9f1c6b35a57010fb8539e78e663752aeff1126b686886a6a1afcb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdbe04a3dd8ad6444c7d3503f7338ec77f76e87955c904056ae8026f83f9933e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantf81a137aca9f1c6b35a57010fb8539e78e663752aeff1126b686886a6a1afcb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4a9b1e995b10610456c18d97a4d941d7304c28651b9215728f0fe15135dcd56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expandMutualNamespace : Macro := fun stx => do
  let mut nss := #[]
  for elem in stx[1].getArgs do
    match (← expandDeclNamespace? elem) with
    | none        => Macro.throwUnsupported
    | some (n, _) => nss := nss.push n
  let common := findCommonPrefix nss.toList
  if common.isAnonymous then Macro.throwUnsupported
  let elemsNew ← stx[1].getArgs.mapM fun elem => do
    let some name := getDeclName? elem | unreachable!
    let view := extractMacroScopes name
    let nameNew := { view with name := view.name.replacePrefix common .anonymous }.review
    return setDeclName elem nameNew
  let ns := mkIdentFrom stx common
  let stxNew := stx.setArg 1 (mkNullNode elemsNew)
  `(namespace $ns $(⟨stxNew⟩) end $ns)

@[builtin_macro Lean.Parser.Command.mutual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantf81a137aca9f1c6b35a57010fb8539e78e663752aeff1126b686886a6a1afcb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantf81a137aca9f1c6b35a57010fb8539e78e663752aeff1126b686886a6a1afcb7.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca409f8835376638b29feca5dfa1e4a8d73cf0f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
