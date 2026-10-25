# isRelevantPred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2ee2ad96b60ef6af03980ffff953f5ae7a4fe5e481903c9ae846df847030d92",
  "kind": "def",
  "lexical_name": "isRelevantPred",
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
  "slug": "isrelevantpred--c04325d60116c4c9205a3f20",
  "source": {
    "blob": "3649c763afb71986e9b08b6c4b816198e7a3dbe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsRelevant/Variant85fd0ce64664c3f77f7cc3e3e7434831fc78ea7782e788a1e8eb344e515e58f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c04325d60116c4c9205a3f20f59793be96b7df1cff5bbe56d496fd6318f8dd98",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsRelevant/Variant85fd0ce64664c3f77f7cc3e3e7434831fc78ea7782e788a1e8eb344e515e58f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2ee2ad96b60ef6af03980ffff953f5ae7a4fe5e481903c9ae846df847030d92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def isRelevantPred (e : Expr) : GoalM Bool :=
  match_expr e with
  | Not p => isRelevantPred p
  | And p q => isRelevantPred p <||> isRelevantPred q
  | Or p q => isRelevantPred p <||> isRelevantPred q
  | LE.le α _ _ _ => isSupportedType α
  | LT.lt α _ _ _ => isSupportedType α
  | Eq α _ _ => isSupportedType α
  | Dvd.dvd α _ _ _ => isSupportedType α
  | _ => return false

end Lean.Meta.Grind.Arith
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsRelevant/Variant85fd0ce64664c3f77f7cc3e3e7434831fc78ea7782e788a1e8eb344e515e58f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsRelevant/Variant85fd0ce64664c3f77f7cc3e3e7434831fc78ea7782e788a1e8eb344e515e58f8.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3649c763afb71986e9b08b6c4b816198e7a3dbe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
