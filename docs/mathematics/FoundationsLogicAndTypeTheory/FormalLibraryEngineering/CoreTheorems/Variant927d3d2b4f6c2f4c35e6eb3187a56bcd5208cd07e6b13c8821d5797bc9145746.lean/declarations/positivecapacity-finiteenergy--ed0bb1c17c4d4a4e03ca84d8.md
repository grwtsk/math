# positiveCapacity_finiteEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "208ba165381b72d2e6492d97583db3938acb3eca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/927d3d2b4f6c2f4c35e6eb3187a56bcd5208cd07e6b13c8821d5797bc9145746.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dacd8496-02f1-fd2a-1f83-af5a0f43786c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ec35647-0e87-1630-70c0-675ff3af68a6",
  "kind": "theorem",
  "lexical_name": "positiveCapacity_finiteEnergy",
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
  "slug": "positivecapacity-finiteenergy--ed0bb1c17c4d4a4e03ca84d8",
  "source": {
    "blob": "208ba165381b72d2e6492d97583db3938acb3eca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreTheorems/Variant927d3d2b4f6c2f4c35e6eb3187a56bcd5208cd07e6b13c8821d5797bc9145746.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed0bb1c17c4d4a4e03ca84d875e042eefe0ee68e1b676252565359db07f4c0cb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreTheorems/Variant927d3d2b4f6c2f4c35e6eb3187a56bcd5208cd07e6b13c8821d5797bc9145746.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ec35647-0e87-1630-70c0-675ff3af68a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveCapacity_finiteEnergy
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet :
      Trace.DefectPacket model Test) :
    FinitePacketEnergyBound capacity packet where
  nonnegative :=
    Trace.packetEnergy_nonnegative
      capacity packet
  bounded :=
    Trace.packetEnergy_bounded_by_packetNorm
      capacity packet

end Mathematics.SemiLocalDefect
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreTheorems/Variant927d3d2b4f6c2f4c35e6eb3187a56bcd5208cd07e6b13c8821d5797bc9145746.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreTheorems/Variant927d3d2b4f6c2f4c35e6eb3187a56bcd5208cd07e6b13c8821d5797bc9145746.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `208ba165381b72d2e6492d97583db3938acb3eca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
