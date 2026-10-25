# pibaseIdFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ef7e79162adf871d6e2d47b25b05d400e34078094e6d0edf0de5a09202df0f8",
  "kind": "def",
  "lexical_name": "pibaseIdFn",
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
  "slug": "pibaseidfn--2099ba15f4cef8c516925b2b",
  "source": {
    "blob": "836bc24d67f0df6324347a8596ddd5209b531de4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 263,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variantf84dfc933ee96efb466d4ef86dce2bb3389da1a387ded290229420b1be83cd56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2099ba15f4cef8c516925b2b8f05a17dd6d82578ffb251cc758c4f01bbbe4cc1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variantf84dfc933ee96efb466d4ef86dce2bb3389da1a387ded290229420b1be83cd56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ef7e79162adf871d6e2d47b25b05d400e34078094e6d0edf0de5a09202df0f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pibaseIdFn : ParserFn := fun c s =>
  let i := s.pos
  let s := takeWhileFn (fun c => c.isAlphanum) c s
  if s.hasError then
    s
  else if s.pos == i then
    ParserState.mkError s "π-Base id"
  else
    let id := c.extract i s.pos
    match id.toList with
    | kind :: rest =>
      if kind != 'P' && kind != 'S' && kind != 'T' then
        ParserState.mkUnexpectedError s
          "π-Base ids must start with P, S, or T."
      else if rest.length != 6 then
        ParserState.mkUnexpectedError s "π-Base ids must have exactly six digits after P/S/T."
      else if !rest.all Char.isDigit then
        ParserState.mkUnexpectedError s
          "π-Base ids must consist of P, S, or T followed by six digits."
      else
        mkNodeToken pibaseIdKind i true c s
    | _ =>
      ParserState.mkUnexpectedError s
        "π-Base ids must consist of P, S, or T followed by six digits."

@[inherit_doc pibaseIdFn]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variantf84dfc933ee96efb466d4ef86dce2bb3389da1a387ded290229420b1be83cd56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variantf84dfc933ee96efb466d4ef86dce2bb3389da1a387ded290229420b1be83cd56.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `836bc24d67f0df6324347a8596ddd5209b531de4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
