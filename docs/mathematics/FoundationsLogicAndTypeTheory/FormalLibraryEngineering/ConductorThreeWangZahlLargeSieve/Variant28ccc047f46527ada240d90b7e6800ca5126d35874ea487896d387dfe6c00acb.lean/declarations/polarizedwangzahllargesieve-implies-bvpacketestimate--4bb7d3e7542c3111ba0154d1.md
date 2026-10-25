# polarizedWangZahlLargeSieve_implies_bvPacketEstimate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a0b4d0b99d07a86cff0846d1bcb099e6350d09f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28ccc047f46527ada240d90b7e6800ca5126d35874ea487896d387dfe6c00acb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1c54445-d34b-6f41-c2dd-162af882e4c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22fd55c0-447e-55a8-c045-59f88282becb",
  "kind": "theorem",
  "lexical_name": "polarizedWangZahlLargeSieve_implies_bvPacketEstimate",
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
  "slug": "polarizedwangzahllargesieve-implies-bvpacketestimate--4bb7d3e7542c3111ba0154d1",
  "source": {
    "blob": "5a0b4d0b99d07a86cff0846d1bcb099e6350d09f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlLargeSieve/Variant28ccc047f46527ada240d90b7e6800ca5126d35874ea487896d387dfe6c00acb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bb7d3e7542c3111ba0154d1fbb250218c5faa3adb25e8054381ee22068b4afa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlLargeSieve/Variant28ccc047f46527ada240d90b7e6800ca5126d35874ea487896d387dfe6c00acb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22fd55c0-447e-55a8-c045-59f88282becb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polarizedWangZahlLargeSieve_implies_bvPacketEstimate
    (route : ConductorThreePolarizedPacketRoute)
    (hLargeSieve : PolarizedWangZahlLargeSieve route) :
    ConductorThreeBVPacketEstimate := by
  intro epsilon hepsilon
  obtain ⟨C, hC, hbound⟩ := hLargeSieve epsilon hepsilon
  refine ⟨C, hC, ?_⟩
  intro N weight hN hcost
  have h := hbound N weight hN hcost
  rw [route.readout_recovers_weightedSum] at h
  simpa using h

/-- The full unresolved packet program has precisely the arithmetic strength
needed by the already-checked BV unsmoothing theorem. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlLargeSieve/Variant28ccc047f46527ada240d90b7e6800ca5126d35874ea487896d387dfe6c00acb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlLargeSieve/Variant28ccc047f46527ada240d90b7e6800ca5126d35874ea487896d387dfe6c00acb.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a0b4d0b99d07a86cff0846d1bcb099e6350d09f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
