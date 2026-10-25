# projIdx!

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5df34f1ac7e27b8d713131f49957fbf9b888c7ba3e62a08e964b782c512be553",
  "kind": "def",
  "lexical_name": "projIdx!",
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
  "slug": "projidx--7f62aaf9d90d1bc571d3b82e",
  "source": {
    "blob": "6aeb819ba60e92ed5f325b2f594f3ed610845e38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1096,
    "line": 1088,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantb9a91d9d170201c2a3622b9c55d694466f54e0e1b8f6068a2d296ff98650169c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f62aaf9d90d1bc571d3b82efed8c73efcd8a4a267faaab8445e2cfdeb78ee26",
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

Occurrence: `declaration:5df34f1ac7e27b8d713131f49957fbf9b888c7ba3e62a08e964b782c512be553`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1088–1096.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def projIdx! : Expr → Nat
  | proj _ i _ => i
  | _          => panic! "proj expression expected"

/--
Return the "body" of a forall expression.
Example: let `e` be the representation for `forall (p : Prop) (q : Prop), p ∧ q`, then
`getForallBody e` returns ``.app (.app (.const `And []) (.bvar 1)) (.bvar 0)``
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantb9a91d9d170201c2a3622b9c55d694466f54e0e1b8f6068a2d296ff98650169c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantb9a91d9d170201c2a3622b9c55d694466f54e0e1b8f6068a2d296ff98650169c.lean#L1088).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aeb819ba60e92ed5f325b2f594f3ed610845e38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
