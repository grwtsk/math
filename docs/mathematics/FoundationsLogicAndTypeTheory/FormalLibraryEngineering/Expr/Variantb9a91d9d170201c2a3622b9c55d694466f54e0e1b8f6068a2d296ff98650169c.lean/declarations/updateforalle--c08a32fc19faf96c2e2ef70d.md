# updateForallE!

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6d9ae950470255c44467f649f5e30272c5f0e6c7e51e36e2d1e7dd78e566fcd",
  "kind": "def",
  "lexical_name": "updateForallE!",
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
  "slug": "updateforalle--c08a32fc19faf96c2e2ef70d",
  "source": {
    "blob": "6aeb819ba60e92ed5f325b2f594f3ed610845e38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1923,
    "line": 1919,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantb9a91d9d170201c2a3622b9c55d694466f54e0e1b8f6068a2d296ff98650169c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c08a32fc19faf96c2e2ef70deba36c89314d6c7e174afac14813ca9f8984947b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantb9a91d9d170201c2a3622b9c55d694466f54e0e1b8f6068a2d296ff98650169c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6d9ae950470255c44467f649f5e30272c5f0e6c7e51e36e2d1e7dd78e566fcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1919–1923.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def updateForallE! (e : Expr) (newDomain : Expr) (newBody : Expr) : Expr :=
  match e with
  | forallE n d b bi => updateForall! (forallE n d b bi) bi newDomain newBody
  | _                => panic! "forall expected"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantb9a91d9d170201c2a3622b9c55d694466f54e0e1b8f6068a2d296ff98650169c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantb9a91d9d170201c2a3622b9c55d694466f54e0e1b8f6068a2d296ff98650169c.lean#L1919).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aeb819ba60e92ed5f325b2f594f3ed610845e38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
