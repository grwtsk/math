# saturate1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:666cb53f1325afb2ea799b4c5ea1ab0d9f1e414e949cb2abb5bc4bcc0c60c1d9",
  "kind": "def",
  "lexical_name": "saturate1",
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
  "slug": "saturate1--aee19dfbd651e697fdab0e86",
  "source": {
    "blob": "a242928968c88303295a7974cd080eca723a6b0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 154,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aee19dfbd651e697fdab0e8643c82f61c2bf872904dcf48c1b0f062893a8ba6a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:666cb53f1325afb2ea799b4c5ea1ab0d9f1e414e949cb2abb5bc4bcc0c60c1d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def saturate1 [Monad m] [MonadError m] [MonadRecDepth m] [MonadLiftT (ST IO.RealWorld) m]
    (goal : MVarId) (tac : MVarId → m (Option (Array MVarId))) : m (Option (Array MVarId)) := do
  let some goals ← tac goal | return none
  let acc ← ST.mkRef #[]
  goals.forM (go acc)
  return some (← acc.get)
where
  /-- Auxiliary definition for `saturate1`. -/
  go (acc : IO.Ref (Array MVarId)) (goal : MVarId) : m Unit :=
    withIncRecDepth do
      match ← tac goal with
      | none => acc.modify fun s => s.push goal
      | some goals => goals.forM (go acc)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a242928968c88303295a7974cd080eca723a6b0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
