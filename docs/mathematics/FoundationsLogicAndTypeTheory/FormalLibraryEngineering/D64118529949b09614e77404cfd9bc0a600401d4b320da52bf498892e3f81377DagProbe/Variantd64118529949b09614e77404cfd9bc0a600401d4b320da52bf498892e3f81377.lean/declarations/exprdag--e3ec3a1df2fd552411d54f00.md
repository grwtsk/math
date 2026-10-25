# ExprDag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0afb61b542a1936babef3f0e9efa5180ea2588b26e0a33aa08c3212918c044ef",
  "kind": "structure",
  "lexical_name": "ExprDag",
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
  "slug": "exprdag--e3ec3a1df2fd552411d54f00",
  "source": {
    "blob": "601248d91e368e43baec5a7440c301aba66765c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6,
    "line": 3,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/D64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377DagProbe/Variantd64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3ec3a1df2fd552411d54f009d876a25caff38b6590eb6c5b7625a450b32e2cb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/D64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377DagProbe/Variantd64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0afb61b542a1936babef3f0e9efa5180ea2588b26e0a33aa08c3212918c044ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3–6.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private structure ExprDag where
  seen : Std.HashMap Expr Nat := {}
  canonical : Std.HashMap String Nat := {}
  nodes : Array Json := #[]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/D64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377DagProbe/Variantd64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/D64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377DagProbe/Variantd64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377.lean#L3).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `601248d91e368e43baec5a7440c301aba66765c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
