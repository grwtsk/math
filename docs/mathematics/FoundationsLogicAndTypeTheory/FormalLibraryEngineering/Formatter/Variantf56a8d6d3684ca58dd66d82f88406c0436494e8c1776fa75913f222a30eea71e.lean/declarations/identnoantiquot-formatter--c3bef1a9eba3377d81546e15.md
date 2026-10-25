# identNoAntiquot.formatter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bc9c33497a7778fd3fe12d23d2c1c015ac9fa2a0d0f9b28a5ef11c09ef09182",
  "kind": "def",
  "lexical_name": "identNoAntiquot.formatter",
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
  "slug": "identnoantiquot-formatter--c3bef1a9eba3377d81546e15",
  "source": {
    "blob": "685c2855d604854a7eb931aef1f488d51e00e4ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 485,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formatter/Variantf56a8d6d3684ca58dd66d82f88406c0436494e8c1776fa75913f222a30eea71e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3bef1a9eba3377d81546e156e83310f02abb1df0dcd57b11429a6e2bbb9f268",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formatter/Variantf56a8d6d3684ca58dd66d82f88406c0436494e8c1776fa75913f222a30eea71e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bc9c33497a7778fd3fe12d23d2c1c015ac9fa2a0d0f9b28a5ef11c09ef09182`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def identNoAntiquot.formatter : Formatter := do
  checkKind identKind
  let stx@(Syntax.ident info _ id _) ← getCur
    | throwError m!"not an ident: {← getCur}"
  let id := id.simpMacroScopes
  let table := (← read).table
  let isToken (s : String) : Bool := (table.find? s).isSome
  withMaybeTag (getExprPos? stx) (pushToken info (id.toStringWithToken (isToken := isToken)) true)
  goLeft

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formatter/Variantf56a8d6d3684ca58dd66d82f88406c0436494e8c1776fa75913f222a30eea71e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formatter/Variantf56a8d6d3684ca58dd66d82f88406c0436494e8c1776fa75913f222a30eea71e.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `685c2855d604854a7eb931aef1f488d51e00e4ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
