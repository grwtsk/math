# mkFromJsonAuxFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0305dbfe6d380a7b232d14af84220fbcf16994d241b21d443c89bc4514ce6df1",
  "kind": "def",
  "lexical_name": "mkFromJsonAuxFunction",
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
  "slug": "mkfromjsonauxfunction--9da87d0fb9b535d7b4238af0",
  "source": {
    "blob": "9e1f6e6d0ddddc9e050cd6d5c7f28b75c5881d74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 189,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9da87d0fb9b535d7b4238af0e880cb7d8d50af433c4bbe36f5c3ed30c0267b25",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0305dbfe6d380a7b232d14af84220fbcf16994d241b21d443c89bc4514ce6df1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkFromJsonAuxFunction (ctx : Context) (i : Nat) : TermElabM Command := do
  let auxFunName := ctx.auxFunNames[i]!
  let indval     := ctx.typeInfos[i]!
  let header     ←  mkFromJsonHeader indval --TODO fix header info
  let binders    := header.binders
  Term.elabBinders binders fun _ => do
  let type ← Term.elabTerm header.targetType none
  let mut body ← mkFromJsonBody ctx type
  if ctx.usePartial || indval.isRec then
    let letDecls ← mkLocalInstanceLetDecls ctx ``FromJson header.argNames
    body ← mkLet letDecls body
    `(partial def $(mkIdent auxFunName):ident $binders:bracketedBinder* : Except String $(← mkInductiveApp ctx.typeInfos[i]! header.argNames) := $body:term)
  else
    `(def $(mkIdent auxFunName):ident $binders:bracketedBinder* : Except String $(← mkInductiveApp ctx.typeInfos[i]! header.argNames) := $body:term)


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variantf77b755cef1930a76ac51a631467de28e23e6c183a8657d349cbb13a9206a0ca.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e1f6e6d0ddddc9e050cd6d5c7f28b75c5881d74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
