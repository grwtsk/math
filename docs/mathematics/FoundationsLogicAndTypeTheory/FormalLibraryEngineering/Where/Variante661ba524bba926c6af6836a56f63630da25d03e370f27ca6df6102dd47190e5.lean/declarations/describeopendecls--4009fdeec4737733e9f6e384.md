# describeOpenDecls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79abd53903ad52ee05bfb1cef6a97db169ea94d3d607610710e0c13d2fd85055",
  "kind": "def",
  "lexical_name": "describeOpenDecls",
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
  "slug": "describeopendecls--4009fdeec4737733e9f6e384",
  "source": {
    "blob": "09c9fb7d7a81997278aff518758ec7a37fcb852f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Where/Variante661ba524bba926c6af6836a56f63630da25d03e370f27ca6df6102dd47190e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4009fdeec4737733e9f6e384f97730a5a189f86f783664f38008c15602b9f886",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Where/Variante661ba524bba926c6af6836a56f63630da25d03e370f27ca6df6102dd47190e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79abd53903ad52ee05bfb1cef6a97db169ea94d3d607610710e0c13d2fd85055`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def describeOpenDecls (ds : List OpenDecl) : MessageData := Id.run do
  let mut lines := #[]
  let mut simple := #[]
  let flush (lines simple : Array MessageData) : Array MessageData × Array MessageData :=
    if simple.isEmpty then
      (lines, simple)
    else
      (lines.push ("open " ++ MessageData.joinSep simple.toList " "), #[])
  for d in ds do
    match d with
    | .explicit id decl =>
      (lines, simple) := flush lines simple
      lines := lines.push m!"open {id} → {decl}"
    | .simple ns ex =>
      if ex == [] then
        simple := simple.push ns
      else
        (lines, simple) := flush lines simple
        let ex' := ex.map toMessageData
        lines := lines.push m!"open {ns} hiding {MessageData.joinSep ex' ", "}"
  (lines, simple) := flush lines simple
  return MessageData.joinSep lines.toList "\n"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Where/Variante661ba524bba926c6af6836a56f63630da25d03e370f27ca6df6102dd47190e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Where/Variante661ba524bba926c6af6836a56f63630da25d03e370f27ca6df6102dd47190e5.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09c9fb7d7a81997278aff518758ec7a37fcb852f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
