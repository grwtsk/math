# collectWithWhitespaceFromSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba0a8d880cdf484c93de4ad3c78e3e91a1de9413b0ca0f861d6a4228fe4f3a3c",
  "kind": "def",
  "lexical_name": "collectWithWhitespaceFromSource",
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
  "slug": "collectwithwhitespacefromsource--c80f8c03d576a1e8a33b0756",
  "source": {
    "blob": "df54fdcc122f7e059adaf9cbb095a25050d3da6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 283,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c80f8c03d576a1e8a33b0756f59d451d0272721f486b14b9633b2f696b5c491e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba0a8d880cdf484c93de4ad3c78e3e91a1de9413b0ca0f861d6a4228fe4f3a3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def collectWithWhitespaceFromSource (newImps : Array Import)
    (sourceImps : Array (ImportRef × Whitespace)) :
    Array (Import × Whitespace) × Import.FormatErrors := Id.run do
  let newModNames := NameSet.ofArray <| newImps.map (·.module)

  let mut sourcesByName : NameMap (Array (ImportRef × Whitespace)) := {}
  let mut unusedWithComments : Array (ImportRef × Whitespace) := #[]
  -- let mut impsWithRefs : Array (Import × Array (ImportRef × Whitespace)) := #[]
  for sourceImpWithWs@(imp, ws) in sourceImps do
    -- TODO: just linear scan fine instead of `NameSet`?
    if newModNames.contains imp.module then
      sourcesByName := sourcesByName.alter imp.module fun rs =>
        rs.getD #[] |>.push sourceImpWithWs
    else unless ws.isEmpty do
      unusedWithComments := unusedWithComments.push sourceImpWithWs

  let mut usedSources : Std.TreeSet (ImportRef × Whitespace) fun a b =>
    compare a.1 b.1 |>.then <| compare a.2 b.2 := {}
  let mut impsWithWs : Array (Import × Whitespace) := #[] -- The final array
  let mut multipleTrailing : Array (Import × (Array (ImportRef × String))) := #[]
  for newImp in newImps do
    -- Aggregate leading if there are multiple comments
    -- TODO: consider turning this into an error
    let mut totalLeading := ""
    -- Expect one trailing, but collect multiple for error reporting
    let mut trailings := #[]
    let some existing := sourcesByName.get? newImp.module
      | impsWithWs := impsWithWs.push (newImp, .empty); continue
    for source@(ref, { leading, trailing }) in existing do
      if newImp == ref.toImport then
        usedSources := usedSources.insert source
        unless leading.isEmpty do
          totalLeading := totalLeading ++ leading
        unless trailing.isEmpty do
          trailings := trailings.push (ref, trailing)
    if trailings.size > 1 then
      multipleTrailing := multipleTrailing.push (newImp, trailings)
    let trailing := if let #[(_, trailing)] := trailings then trailing else ""
    impsWithWs := impsWithWs.push (newImp, { leading := totalLeading, trailing })

  let mut reviewWhitespace := #[]
  -- All `sources` only mention modules that are imported in one way or another.
  for (module, sources) in sourcesByName do
    let differentlyImported := sources.filter fun source@(_, ws) =>
      !ws.isEmpty && !usedSources.contains source
    unless differentlyImported.isEmpty do
      let actualImps := impsWithWs.filterMap fun (imp, _) =>
        if imp.module == module then some imp else none
      /- TODO: if `actualImps.size = 1`, should we accumulate all the leading whitespace and attach
      it? Current position: no, since it may describe the reason for the modifiers in natural
      language in a manner that may be outdated now. -/
      reviewWhitespace := reviewWhitespace.push (module, actualImps, differentlyImported)

  return (impsWithWs, { unusedWithComments, multipleTrailing, reviewWhitespace : FormatErrors })

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df54fdcc122f7e059adaf9cbb095a25050d3da6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
