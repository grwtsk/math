# searchPProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4823359bcaeeb5afa4b62edc4776785dc7e00cbb25cf27ccd85b50fc4ecb2392",
  "kind": "def",
  "lexical_name": "searchPProd",
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
  "slug": "searchpprod--5ccf522af5c128923483cc83",
  "source": {
    "blob": "dc394837112c226eb56a74fa2977fa6eb6134a9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3eb2f211a9ef7d5e7ed176ae1b7e396e57aa45910dae46e19e4ed8747411f09a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ccf522af5c128923483cc83e63a5d6b11b741279eb026d3e9cfcad3b71843bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3eb2f211a9ef7d5e7ed176ae1b7e396e57aa45910dae46e19e4ed8747411f09a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4823359bcaeeb5afa4b62edc4776785dc7e00cbb25cf27ccd85b50fc4ecb2392`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def searchPProd (e : Expr) (F : Expr) (k : Expr → Expr → MetaM α) : MetaM α := do
  match (← whnf e) with
  | .app (.app (.const `PProd _) d1) d2 =>
        (do searchPProd d1 (.proj ``PProd 0 F) k)
    <|> (do searchPProd d2 (.proj ``PProd 1 F) k)
  | .app (.app (.const `And _) d1) d2 =>
        (do searchPProd d1 (.proj `And 0 F) k)
    <|> (do searchPProd d2 (.proj `And 1 F) k)
  | .const `PUnit _
  | .const `True _ => throwToBelowFailed
  | _ => k e F

/-- See `toBelow` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3eb2f211a9ef7d5e7ed176ae1b7e396e57aa45910dae46e19e4ed8747411f09a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3eb2f211a9ef7d5e7ed176ae1b7e396e57aa45910dae46e19e4ed8747411f09a.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc394837112c226eb56a74fa2977fa6eb6134a9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
