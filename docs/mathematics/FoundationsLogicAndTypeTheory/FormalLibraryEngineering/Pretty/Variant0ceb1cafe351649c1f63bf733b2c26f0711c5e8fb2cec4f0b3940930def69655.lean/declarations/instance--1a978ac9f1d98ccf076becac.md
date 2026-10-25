# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:697078286d4ec5451a407286c49afa13de3ce026b25d4cb447b5e86de1c668b7",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--1a978ac9f1d98ccf076becac",
  "source": {
    "blob": "140f205e95cdd514d5146d8eb762221c32590ecb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 346,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a978ac9f1d98ccf076becac63686877ad6aedff75f4652d9837985865441ba1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:697078286d4ec5451a407286c49afa13de3ce026b25d4cb447b5e86de1c668b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
instance : ToFormat FormatErrors where
  format | { multipleTrailing, reviewWhitespace, unusedWithComments } => Id.run do
    let mut msg := #[]
    for (imp, refsWithTrailing) in multipleTrailing do
      let annotations := f!"\n".joinSep (refsWithTrailing.map fun (ref, trailing) =>
        f!"{ref.toImport}{trailing}").toList
      msg := msg.push
        f!"Multiple annotations were given for `{imp}`. Decide which should still be applied:\n\
        ```\n\
        {annotations}\n\
        ```"
    for (module, imps, sources) in reviewWhitespace do
      let mut sourceMsg := #[]
      for (ref, ws) in sources do
        sourceMsg := sourceMsg.push (ws.around ref.toImport)
      -- Like `MessageData.andList`, but for `Format`
      let andList (xs) := match xs with
        | [] => f!"– none –"
        | [x] => x
        | [x₀, x₁] => f!"{x₀} and {x₁}"
        | xs@(_ :: _ :: _) => f!"{f!", ".joinSep xs.dropLast}, and {xs.getLast (by grind)}"
      msg := msg.push f!"Comments were present when importing `{module}`, but this module is \
        now imported differently as {andList (imps.map (f!"`{·}`") |>.toList)}.\n\
        Decide if the following original comments still apply:\n\
        ```\n\
        {f!"\n\n".joinSep sourceMsg.toList}\n\
        ```"
    unless unusedWithComments.isEmpty do
      let mut sourceMsg := #[]
      for (ref, ws) in unusedWithComments do
        sourceMsg := sourceMsg.push (ws.around ref.toImport)
      msg := msg.push f!"The following imports did not appear in the new import list, but had \
        comments around them:\n\
        ```\n\
        {f!"\n\n".joinSep sourceMsg.toList}\n\
        ```\n"
    return f!"\n\n".joinSep msg.toList

/-- Wraps the `Whitespace` associated with each import around it, and formats the array of imports
as an import block according to `formatAs`. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `140f205e95cdd514d5146d8eb762221c32590ecb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
