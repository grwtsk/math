# moduleIdent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c664486c691b299ecdf66a44276ba4ff8a891ff47e4cd185135027128f2e74d",
  "kind": "def",
  "lexical_name": "moduleIdent",
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
  "slug": "moduleident--b2f6f123d130d8531cbeef9c",
  "source": {
    "blob": "0d3209370b98042e145daeaa0ca8887c2b6b344e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variante337c6887e3f89495acfbec4c07f221cf536360b8e2b48c3e38cd6aa7bd277d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2f6f123d130d8531cbeef9cf3755b7bf9a776835a93351fcc4a0960b8a6f382",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variante337c6887e3f89495acfbec4c07f221cf536360b8e2b48c3e38cd6aa7bd277d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c664486c691b299ecdf66a44276ba4ff8a891ff47e4cd185135027128f2e74d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def moduleIdent : Parser := fun input s =>
  let finalize (module : Name) : Parser := fun input s =>
    let imp := { module, isMeta := s.isMeta, importAll := s.importAll, isExported := s.isExported }
    let s := whitespace input (s.pushImport imp)
    {s with isMeta := false, importAll := false, isExported := !s.isModule}
  let rec parse (module : Name) (s : State) :=
    let i := s.pos
    if h : i.atEnd input then
      s.mkEOIError
    else
      let curr := i.get' input h
      if isIdBeginEscape curr then
        let startPart := i.next' input h
        let s         := takeUntil isIdEndEscape input (s.setPos startPart)
        if h : s.pos.atEnd input then
          s.mkError "unterminated identifier escape"
        else
          let stopPart  := s.pos
          let s         := s.next' input s.pos h
          let module    := .str module (String.Pos.Raw.extract input startPart stopPart)
          if isIdCont input s then
            let s := s.next input s.pos
            parse module s
          else
            finalize module input s
      else if isIdFirst curr then
        let startPart := i
        let s         := takeWhile isIdRestFast input (s.next' input i h)
        let stopPart  := s.pos
        let module    := .str module (String.Pos.Raw.extract input startPart stopPart)
        if isIdCont input s then
          let s := s.next input s.pos
          parse module s
        else
          finalize module input s
      else
        s.mkError "expected identifier"
  parse .anonymous s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variante337c6887e3f89495acfbec4c07f221cf536360b8e2b48c3e38cd6aa7bd277d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variante337c6887e3f89495acfbec4c07f221cf536360b8e2b48c3e38cd6aa7bd277d0.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d3209370b98042e145daeaa0ca8887c2b6b344e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
