# substDiscrEqs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3843b42041ed8cf4914dff3c05d89436f765e18ea59a4ce8330d8800b3a0c69",
  "kind": "def",
  "lexical_name": "substDiscrEqs",
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
  "slug": "substdiscreqs--9cbef0de16756b63725f50f7",
  "source": {
    "blob": "926a29ced11c22889cd09f9306b3e4f9a7fe054d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 238,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant5b7ae69ba28b9b3a3c8f6e4e0a854f8f8de258ec6fb06565a7461835553d160f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cbef0de16756b63725f50f7921495aca3225a17dd1dc8c64f46f95fb36ffd9a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant5b7ae69ba28b9b3a3c8f6e4e0a854f8f8de258ec6fb06565a7461835553d160f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3843b42041ed8cf4914dff3c05d89436f765e18ea59a4ce8330d8800b3a0c69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def substDiscrEqs (mvarId : MVarId) (fvarSubst : FVarSubst) (discrEqs : Array FVarId) : MetaM MVarId := mvarId.withContext do
  let mut mvarId := mvarId
  let mut fvarSubst := fvarSubst
  for fvarId in discrEqs do
    if let .fvar fvarId := fvarSubst.apply (mkFVar fvarId) then
      let (fvarId, mvarId') ← heqToEq mvarId fvarId
      match (← substCore? mvarId' fvarId (symm := false) fvarSubst) with
      | some (fvarSubst', mvarId') => mvarId := mvarId'; fvarSubst := fvarSubst'
      | none =>
      match (← substCore? mvarId' fvarId (symm := true) fvarSubst) with
      | some (fvarSubst', mvarId') => mvarId := mvarId'; fvarSubst := fvarSubst'
      | none => mvarId := mvarId'
  return mvarId

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant5b7ae69ba28b9b3a3c8f6e4e0a854f8f8de258ec6fb06565a7461835553d160f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant5b7ae69ba28b9b3a3c8f6e4e0a854f8f8de258ec6fb06565a7461835553d160f.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `926a29ced11c22889cd09f9306b3e4f9a7fe054d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
