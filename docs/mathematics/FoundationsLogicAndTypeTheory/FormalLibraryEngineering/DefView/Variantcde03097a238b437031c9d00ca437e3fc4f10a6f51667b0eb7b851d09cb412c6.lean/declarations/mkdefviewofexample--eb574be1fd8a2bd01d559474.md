# mkDefViewOfExample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64e3b6313c4f0bfcfa6b338136b15e2185c0219cdc5f5c2958d2065ab98ba3f2",
  "kind": "def",
  "lexical_name": "mkDefViewOfExample",
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
  "slug": "mkdefviewofexample--eb574be1fd8a2bd01d559474",
  "source": {
    "blob": "2257a4e77cfc1dda38427df20acc14147b394210",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefView/Variantcde03097a238b437031c9d00ca437e3fc4f10a6f51667b0eb7b851d09cb412c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb574be1fd8a2bd01d5594748e5d70662eb01e342c80d1b5972eeaffd4bd4fad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefView/Variantcde03097a238b437031c9d00ca437e3fc4f10a6f51667b0eb7b851d09cb412c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64e3b6313c4f0bfcfa6b338136b15e2185c0219cdc5f5c2958d2065ab98ba3f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkDefViewOfExample (modifiers : Modifiers) (stx : Syntax) : DefView :=
  -- leading_parser "example " >> declSig >> declVal
  let (binders, type) := expandOptDeclSig stx[1]
  let id              := mkIdentFrom stx[0] `_example (canonical := true)
  let declId          := mkNode ``Parser.Command.declId #[id, mkNullNode]
  { ref := stx, headerRef := mkNullNode stx.getArgs[*...2], kind := DefKind.example, modifiers := modifiers,
    declId := declId, binders := binders, type? := type, value := stx[2],
     docString? := modifiers.docString? }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefView/Variantcde03097a238b437031c9d00ca437e3fc4f10a6f51667b0eb7b851d09cb412c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefView/Variantcde03097a238b437031c9d00ca437e3fc4f10a6f51667b0eb7b851d09cb412c6.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2257a4e77cfc1dda38427df20acc14147b394210` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
