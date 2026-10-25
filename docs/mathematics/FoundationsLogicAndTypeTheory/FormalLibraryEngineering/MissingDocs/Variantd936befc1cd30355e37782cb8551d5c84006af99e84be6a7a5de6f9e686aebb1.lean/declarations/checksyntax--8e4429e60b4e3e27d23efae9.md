# checkSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ccded18dfa35aedb8655f79ec202bdc79003a838129111e6965a400967b5304",
  "kind": "def",
  "lexical_name": "checkSyntax",
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
  "slug": "checksyntax--8e4429e60b4e3e27d23efae9",
  "source": {
    "blob": "5569ff1c2f5317fb7e4faa1cc7300c860751f425",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 262,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MissingDocs/Variantd936befc1cd30355e37782cb8551d5c84006af99e84be6a7a5de6f9e686aebb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e4429e60b4e3e27d23efae9618ac5bc13f7044387b61cab57627033af5f7fce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MissingDocs/Variantd936befc1cd30355e37782cb8551d5c84006af99e84be6a7a5de6f9e686aebb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ccded18dfa35aedb8655f79ec202bdc79003a838129111e6965a400967b5304`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkSyntax : SimpleHandler := fun stx => do
  if stx[2][0][0].getKind != ``«local» then
    if let some isEmpty ← docOptStatus stx[0] stx[1] (checkTacticAlt := true) then
      if stx[5].isNone then lintDocStatus isEmpty stx[3] "syntax"
      else lintDocStatusNamed isEmpty stx[5][0][3] "syntax"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MissingDocs/Variantd936befc1cd30355e37782cb8551d5c84006af99e84be6a7a5de6f9e686aebb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MissingDocs/Variantd936befc1cd30355e37782cb8551d5c84006af99e84be6a7a5de6f9e686aebb1.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5569ff1c2f5317fb7e4faa1cc7300c860751f425` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
