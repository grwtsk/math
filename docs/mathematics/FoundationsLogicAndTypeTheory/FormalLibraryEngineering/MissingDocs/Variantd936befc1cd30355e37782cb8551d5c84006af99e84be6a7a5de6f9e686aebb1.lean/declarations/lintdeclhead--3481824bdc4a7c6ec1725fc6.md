# lintDeclHead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2733e3ce2301fd955f0e2fd324dcffbe367003c7ce408283485c6f88f2103d1",
  "kind": "def",
  "lexical_name": "lintDeclHead",
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
  "slug": "lintdeclhead--3481824bdc4a7c6ec1725fc6",
  "source": {
    "blob": "5569ff1c2f5317fb7e4faa1cc7300c860751f425",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MissingDocs/Variantd936befc1cd30355e37782cb8551d5c84006af99e84be6a7a5de6f9e686aebb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3481824bdc4a7c6ec1725fc6fc1cf9ec2a71891b80f32862089a041449e1dccb",
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

Occurrence: `declaration:f2733e3ce2301fd955f0e2fd324dcffbe367003c7ce408283485c6f88f2103d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lintDeclHead (k : SyntaxNodeKind) (id : Syntax) (isEmpty : Bool := false) :
    CommandElabM Unit := do
  if k == ``«abbrev» then lintDocStatusNamed isEmpty id "public abbrev"
  else if k == ``definition then lintDocStatusNamed isEmpty id "public def"
  else if k == ``«opaque» then lintDocStatusNamed isEmpty id "public opaque"
  else if k == ``«axiom» then lintDocStatusNamed isEmpty id "public axiom"
  else if k == ``«inductive» then lintDocStatusNamed isEmpty id "public inductive"
  else if k == ``classInductive then lintDocStatusNamed isEmpty id "public inductive"
  else if k == ``«structure» then lintDocStatusNamed isEmpty id "public structure"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MissingDocs/Variantd936befc1cd30355e37782cb8551d5c84006af99e84be6a7a5de6f9e686aebb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MissingDocs/Variantd936befc1cd30355e37782cb8551d5c84006af99e84be6a7a5de6f9e686aebb1.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5569ff1c2f5317fb7e4faa1cc7300c860751f425` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
