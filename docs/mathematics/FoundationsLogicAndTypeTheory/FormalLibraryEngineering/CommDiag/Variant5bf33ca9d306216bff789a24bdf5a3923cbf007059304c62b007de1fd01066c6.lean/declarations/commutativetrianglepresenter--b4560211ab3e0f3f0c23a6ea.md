# commutativeTrianglePresenter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1aa4990c527be9022a3d391e365ec178558c4d85a312e53f00b5b760888309d4",
  "kind": "def",
  "lexical_name": "commutativeTrianglePresenter",
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
  "slug": "commutativetrianglepresenter--b4560211ab3e0f3f0c23a6ea",
  "source": {
    "blob": "abd2ed23e564526ffd971d06f1164962d4411fb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4560211ab3e0f3f0c23a6ea97cc5d019e580974308c3138b5ff1ef01b665213",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1aa4990c527be9022a3d391e365ec178558c4d85a312e53f00b5b760888309d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def commutativeTrianglePresenter : ExprPresenter where
  userName := "Commutative triangle"
  layoutKind := .block
  present type := do
    if let some d ← commTriangleM? type then
      return d
    throwError "Couldn't find a commutative triangle."

/-! ## Commutative squares -/

/--
Square with `homs = [f,g,h,i]` and `objs = [A,B,C,D]`
```
A f B
i   g
D h C
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant5bf33ca9d306216bff789a24bdf5a3923cbf007059304c62b007de1fd01066c6.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abd2ed23e564526ffd971d06f1164962d4411fb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
