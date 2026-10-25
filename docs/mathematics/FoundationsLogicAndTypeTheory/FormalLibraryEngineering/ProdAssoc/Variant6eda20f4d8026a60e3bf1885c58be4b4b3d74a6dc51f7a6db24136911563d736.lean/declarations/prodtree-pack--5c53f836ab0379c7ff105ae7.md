# ProdTree.pack

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98cc9583d43912d67b7b1bb9ea87800fd842bc5d3cefbde7ca699cb6b79fc907",
  "kind": "def",
  "lexical_name": "ProdTree.pack",
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
  "slug": "prodtree-pack--5c53f836ab0379c7ff105ae7",
  "source": {
    "blob": "fc622839ec29279f219f39a0da8601d00844e023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c53f836ab0379c7ff105ae7199f824d3870c20ab34c96b5fec8210ffc5eb849",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98cc9583d43912d67b7b1bb9ea87800fd842bc5d3cefbde7ca699cb6b79fc907`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ProdTree.pack (ts : List Expr) : ProdTree → MetaM Expr
  | type _ _ => do
    match ts with
      | [] => throwError "Can't pack the empty list."
      | [a] => return a
      | _ => throwError "Failed due to size mismatch."
  | prod fst snd u v => do
    let fstSize := fst.size
    let sndSize := snd.size
    unless ts.length == fstSize + sndSize do throwError "Failed due to size mismatch."
    let tsfst := ts.toArray[:fstSize] |>.toArray.toList
    let tssnd := ts.toArray[fstSize:] |>.toArray.toList
    let mk : Expr := mkAppN (.const ``Prod.mk [u,v]) #[fst.getType, snd.getType]
    return .app (.app mk (← fst.pack tsfst)) (← snd.pack tssnd)

/-- Converts a term `e` in an iterated product `P1` into a term of an iterated product `P2`.
Here `e` is an `Expr` representing the term, and the iterated products are represented
by terms of `ProdTree`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc622839ec29279f219f39a0da8601d00844e023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
