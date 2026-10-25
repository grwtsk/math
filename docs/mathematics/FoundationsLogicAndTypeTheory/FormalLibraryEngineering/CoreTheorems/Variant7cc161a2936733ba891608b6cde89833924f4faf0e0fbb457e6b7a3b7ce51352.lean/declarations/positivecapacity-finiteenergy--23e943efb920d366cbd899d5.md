# positiveCapacity_finiteEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05547af0-aff2-f484-fd07-77f62873be99",
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
  "slug": "positivecapacity-finiteenergy--23e943efb920d366cbd899d5",
  "source": {
    "blob": "4b205f2b5d18a259be0239dec44e845640e160fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreTheorems/Variant7cc161a2936733ba891608b6cde89833924f4faf0e0fbb457e6b7a3b7ce51352.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23e943efb920d366cbd899d535f4c9e55b22f15b1ccd5f82bf00eb6c094076ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreTheorems/Variant7cc161a2936733ba891608b6cde89833924f4faf0e0fbb457e6b7a3b7ce51352.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05547af0-aff2-f484-fd07-77f62873be99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–83.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreTheorems/Variant7cc161a2936733ba891608b6cde89833924f4faf0e0fbb457e6b7a3b7ce51352.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreTheorems/Variant7cc161a2936733ba891608b6cde89833924f4faf0e0fbb457e6b7a3b7ce51352.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b205f2b5d18a259be0239dec44e845640e160fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
