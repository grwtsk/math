# CommandStart.endPos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0f3763a454928112d62f75015edd6cd5145177cec3f9839f68df9bee06f3541",
  "kind": "def",
  "lexical_name": "CommandStart.endPos",
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
  "slug": "commandstart-endpos--b2d72ebe9c830e7c7920ac06",
  "source": {
    "blob": "862bf459d4369a75a40c57fd512fb4b8dbf9ea33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variantf6643b8bc0d7a3ef7949255573e87c942ce21549570454e1f7e49c51211f2978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2d72ebe9c830e7c7920ac06bd1a1e870cd9abb7aa997d3eab75af8e8fec1e66",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variantf6643b8bc0d7a3ef7949255573e87c942ce21549570454e1f7e49c51211f2978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0f3763a454928112d62f75015edd6cd5145177cec3f9839f68df9bee06f3541`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CommandStart.endPos (stx : Syntax) : Option String.Pos.Raw :=
  if let some cmd := stx.find? (#[``Parser.Command.declaration, `lemma].contains ·.getKind) then
    if let some ind := cmd.find? (·.isOfKind ``Parser.Command.inductive) then
      match ind.find? (·.isOfKind ``Parser.Command.optDeclSig) with
      | none => dbg_trace "unreachable?"; none
      | some sig => sig.getTailPos?
    else
    match cmd.find? (·.isOfKind ``Parser.Term.typeSpec) with
      | some s => s[0].getTailPos? -- `s[0]` is the `:` separating hypotheses and the type
      | none => match cmd.find? (·.isOfKind ``Parser.Command.declValSimple) with
        | some s => s.getPos?
        | none => none
  else if stx.isOfKind ``Parser.Command.variable || stx.isOfKind ``Parser.Command.omit then
    stx.getTailPos?
  else none

/--
A `FormatError` is the main structure tracking how some surface syntax differs from its
pretty-printed version.

In case of deviations, it contains the deviation's location within an ambient string.
-/
-- Some of the information contained in `FormatError` is redundant, however, it is useful to convert
-- between the `String.pos` and `String` length conveniently.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variantf6643b8bc0d7a3ef7949255573e87c942ce21549570454e1f7e49c51211f2978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variantf6643b8bc0d7a3ef7949255573e87c942ce21549570454e1f7e49c51211f2978.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `862bf459d4369a75a40c57fd512fb4b8dbf9ea33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
