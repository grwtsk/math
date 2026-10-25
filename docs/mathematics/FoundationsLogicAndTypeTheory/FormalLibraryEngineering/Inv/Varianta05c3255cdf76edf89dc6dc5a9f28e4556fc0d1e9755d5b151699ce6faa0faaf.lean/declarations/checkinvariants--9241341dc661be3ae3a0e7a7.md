# checkInvariants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b89166c235b49e45f871f2ea0330d8e1692eabf54c9d996415b4bb74f078ab64",
  "kind": "def",
  "lexical_name": "checkInvariants",
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
  "slug": "checkinvariants--9241341dc661be3ae3a0e7a7",
  "source": {
    "blob": "c3fbd1f32fea23627163e6c5e23b6097dcf80637",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta05c3255cdf76edf89dc6dc5a9f28e4556fc0d1e9755d5b151699ce6faa0faaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9241341dc661be3ae3a0e7a72a7b308db1a04fd4eee41760bb2c22dcc8f922ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta05c3255cdf76edf89dc6dc5a9f28e4556fc0d1e9755d5b151699ce6faa0faaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b89166c235b49e45f871f2ea0330d8e1692eabf54c9d996415b4bb74f078ab64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def checkInvariants (expensive := false) : GoalM Unit := do
  if (← isDebugEnabled) then
    for e in (← getExprs) do
      let node ← getENode e
      checkParents node.self
      if node.isRoot then
        checkEqc node
    if expensive then
      checkPtrEqImpliesStructEq
    Solvers.checkInvariants
  if expensive && grind.debug.proofs.get (← getOptions) then
    checkProofs

@[inherit_doc Grind.checkInvariants]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta05c3255cdf76edf89dc6dc5a9f28e4556fc0d1e9755d5b151699ce6faa0faaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta05c3255cdf76edf89dc6dc5a9f28e4556fc0d1e9755d5b151699ce6faa0faaf.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3fbd1f32fea23627163e6c5e23b6097dcf80637` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
