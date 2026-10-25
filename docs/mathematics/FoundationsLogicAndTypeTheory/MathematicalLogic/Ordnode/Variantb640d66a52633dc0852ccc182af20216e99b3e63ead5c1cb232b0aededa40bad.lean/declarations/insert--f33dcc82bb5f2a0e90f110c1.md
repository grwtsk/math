# insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57a5c6f35edd484cc49d45247c5dbfbf5ecf4d6418e4bcbb147ab9ca96d9b2b1",
  "kind": "def",
  "lexical_name": "insert",
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
  "slug": "insert--f33dcc82bb5f2a0e90f110c1",
  "source": {
    "blob": "c6e3f915c87687bca4ee51bc70ce0d44f5f09270",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 929,
    "line": 922,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f33dcc82bb5f2a0e90f110c1909ba3d06ea6efb08abc3685658ed6716fd6dc57",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57a5c6f35edd484cc49d45247c5dbfbf5ecf4d6418e4bcbb147ab9ca96d9b2b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 922–929.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def insert (x : α) : Ordnode α → Ordnode α
  | nil => ι x
  | node sz l y r =>
    match cmpLE x y with
    | Ordering.lt => balanceL (Ordnode.insert x l) y r
    | Ordering.eq => node sz l x r
    | Ordering.gt => balanceR l y (Ordnode.insert x r)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean#L922).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6e3f915c87687bca4ee51bc70ce0d44f5f09270` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
