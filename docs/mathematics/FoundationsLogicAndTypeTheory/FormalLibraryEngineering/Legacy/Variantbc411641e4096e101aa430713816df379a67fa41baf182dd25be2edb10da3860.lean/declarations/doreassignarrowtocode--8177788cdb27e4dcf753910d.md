# doReassignArrowToCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:591f1531cf8e9eb956f92f95f8412e2d7da5140ead4dcdf8354b3110dbf677da",
  "kind": "def",
  "lexical_name": "doReassignArrowToCode",
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
  "slug": "doreassignarrowtocode--8177788cdb27e4dcf753910d",
  "source": {
    "blob": "9d7b9f53f68fc579718fff78079ef78950d29a7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1542,
    "line": 1512,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8177788cdb27e4dcf753910d48279549bac9a39ace132cffbfc47ba02c1ed99f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:591f1531cf8e9eb956f92f95f8412e2d7da5140ead4dcdf8354b3110dbf677da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1512–1542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
  partial def doReassignArrowToCode (doReassignArrow : Syntax) (doElems : List Syntax) : M CodeBlock := do
    let decl := doReassignArrow[0]
    if decl.getKind == ``Parser.Term.doIdDecl then
      let doElem := decl[3]
      let y      := decl[0]
      let auxDo ← `(do let r ← $doElem; $y:ident := r)
      doSeqToCode <| getDoSeqElems (getDoSeq auxDo) ++ doElems
    else if decl.getKind == ``Parser.Term.doPatDecl then
      let pattern := decl[0]
      let optType := decl[1]
      let doElem  := decl[3]
      let optElse := decl[4]
      if optElse.isNone then withFreshMacroScope do
        let auxDo ← if optType.isNone then
          `(do let __discr ← $doElem; $pattern:term := __discr)
        else
          let ty := optType[0][1]
          `(do let __discr : $ty ← $doElem; $pattern:term := __discr)
        doSeqToCode <| getDoSeqElems (getDoSeq auxDo) ++ doElems
      else
        throwError "reassignment with `|` (i.e., \"else clause\") is not currently supported"
    else
      throwError "unexpected kind of `do` reassignment"

  /-- Generate `CodeBlock` for `doIf; doElems`
     `doIf` is of the form
     ```
     "if " >> optIdent >> termParser >> " then " >> doSeq
      >> many (group (try (group (" else " >> " if ")) >> optIdent >> termParser >> " then " >> doSeq))
      >> optional (" else " >> doSeq)
     ```  -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean#L1512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d7b9f53f68fc579718fff78079ef78950d29a7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
