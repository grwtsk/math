# parseInvariantMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8cbdea77d932d6be7c943b77b1e7c8377de00273db9c3865551198a8376842d",
  "kind": "def",
  "lexical_name": "parseInvariantMap",
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
  "slug": "parseinvariantmap--c57e54b40f2183e856ba8481",
  "source": {
    "blob": "494f36ec6c9300d22a88632a31ac279aa14715a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 234,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc4e0fe30f55c3d3d1e68f6e0c376f8b0d10ecad17c9c26a0cb68cb1adcca8933.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c57e54b40f2183e856ba8481ccc57d6260d4f7e7338b3c154fe337ddde3f5558",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc4e0fe30f55c3d3d1e68f6e0c376f8b0d10ecad17c9c26a0cb68cb1adcca8933.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8cbdea77d932d6be7c943b77b1e7c8377de00273db9c3865551198a8376842d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def parseInvariantMap (stx : Syntax) :
    TermElabM (Option (Std.HashMap Nat Syntax)) := do
  let some altsStx := stx.getOptional? | return none
  -- The `invariants?` (suggest) form is handled separately by upstream's `elabInvariants`.
  match altsStx with
  | `(invariantAlts| invariants? $_*) => return none
  | _ => pure ()
  let stx' : TSyntax ``invariantAlts := ⟨altsStx⟩
  match stx' with
  | `(invariantAlts| $_invariantsKW $alts*) =>
    if alts.isEmpty then return some {}
    let mut map : Std.HashMap Nat Syntax := {}
    let mut dotOrCase := LBool.undef
    for h : i in 0...alts.size do
      let alt := alts[i]
      match alt with
      | `(invariantDotAlt| · $_rhs) =>
        if dotOrCase matches .false then
          throwErrorAt alt "Alternation between labelled and bulleted invariants is not supported."
        dotOrCase := .true
        map := map.insert (i + 1) alt
      | `(invariantCaseAlt| | $tag $_args* => $_rhs) =>
        if dotOrCase matches .true then
          throwErrorAt alt "Alternation between labelled and bulleted invariants is not supported."
        dotOrCase := .false
        let n? : Option Nat := do
          let `(binderIdent| $tag:ident) := tag | some (i + 1) -- positional fallback
          let .str .anonymous s := tag.getId | none
          s.dropPrefix? "inv" >>= String.Slice.toNat?
        let some n := n? | throwErrorAt tag s!"Could not parse invariant label; expected `inv<n>`."
        if map.contains n then
          throwErrorAt tag s!"Duplicate invariant alternative for `inv{n}`."
        map := map.insert n alt
      | _ => throwErrorAt alt "Expected `invariantDotAlt` or `invariantCaseAlt`."
    return some map
  | _ => return none

/--
Run after VC generation: iterate the (unfiltered) `invariants` array returned by
`VCGen.run`, look up each entry in the pre-parsed `alts` map by its 1-based
position (which equals the `inv<n>` tag the entry carries — `VCGen.run` assigns
tags consecutively), and elaborate the matching alt. Invariants that were already
elaborated inline by `Driver.emitVC` (tracked in `inlineHandled`) are skipped, so
we don't warn about alts that were already consumed there. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc4e0fe30f55c3d3d1e68f6e0c376f8b0d10ecad17c9c26a0cb68cb1adcca8933.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc4e0fe30f55c3d3d1e68f6e0c376f8b0d10ecad17c9c26a0cb68cb1adcca8933.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `494f36ec6c9300d22a88632a31ac279aa14715a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
