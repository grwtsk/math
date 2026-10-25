# checkMotive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31edfa3a19a024fc5596686f56b5990e29bd2dee64dc62b0be3be262c76e5c56",
  "kind": "def",
  "lexical_name": "checkMotive",
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
  "slug": "checkmotive--347c522419bb83cc7071b6a5",
  "source": {
    "blob": "d1e4f1e2e8a91b29d9deeeada48dfa00d0362f91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variant15159d9c2a050e3595ae66e46c7b23117b12f649eb0408f423e69c5fa363b2ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:347c522419bb83cc7071b6a5facb2a47c3dadc8f6a2feda34a297a975ab3e200",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variant15159d9c2a050e3595ae66e46c7b23117b12f649eb0408f423e69c5fa363b2ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31edfa3a19a024fc5596686f56b5990e29bd2dee64dc62b0be3be262c76e5c56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def checkMotive (declName : Name) (motive : Expr) (motiveArgs : Array Expr) : MetaM Unit :=
  unless motive.isFVar && motiveArgs.all Expr.isFVar do
    throwError "invalid user defined recursor `{.ofConstName declName}`, result type must be of the form `C t`, where `C` is a bound variable, and t is a (possibly empty) sequence of bound variables"

/-- Compute number of parameters for (user-defined) recursor.
   We assume a parameter is anything that occurs before the motive -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variant15159d9c2a050e3595ae66e46c7b23117b12f649eb0408f423e69c5fa363b2ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variant15159d9c2a050e3595ae66e46c7b23117b12f649eb0408f423e69c5fa363b2ce.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e4f1e2e8a91b29d9deeeada48dfa00d0362f91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
