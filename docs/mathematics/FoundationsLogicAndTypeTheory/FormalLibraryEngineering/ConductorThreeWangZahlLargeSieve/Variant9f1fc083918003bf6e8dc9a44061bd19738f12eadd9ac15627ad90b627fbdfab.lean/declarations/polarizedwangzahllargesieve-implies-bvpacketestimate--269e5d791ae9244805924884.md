# polarizedWangZahlLargeSieve_implies_bvPacketEstimate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4071812724cdf82984db0ba021378beeaa932676",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f1fc083918003bf6e8dc9a44061bd19738f12eadd9ac15627ad90b627fbdfab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efc5d525-1da8-6e80-e0e1-4f6aa49a31a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7527ee2d-0175-d4f0-4a19-865848473c35",
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
  "slug": "polarizedwangzahllargesieve-implies-bvpacketestimate--269e5d791ae9244805924884",
  "source": {
    "blob": "4071812724cdf82984db0ba021378beeaa932676",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlLargeSieve/Variant9f1fc083918003bf6e8dc9a44061bd19738f12eadd9ac15627ad90b627fbdfab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:269e5d791ae92448059248848bc73deccc95fdcafc6419aaf4434ddafc41ec26",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlLargeSieve/Variant9f1fc083918003bf6e8dc9a44061bd19738f12eadd9ac15627ad90b627fbdfab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7527ee2d-0175-d4f0-4a19-865848473c35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–115.

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
  rw [route.readout_recovers_weightedSum epsilon hepsilon] at h
  simpa using h

/-- The full unresolved packet program has precisely the arithmetic strength
needed by the already-checked BV unsmoothing theorem. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlLargeSieve/Variant9f1fc083918003bf6e8dc9a44061bd19738f12eadd9ac15627ad90b627fbdfab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeWangZahlLargeSieve/Variant9f1fc083918003bf6e8dc9a44061bd19738f12eadd9ac15627ad90b627fbdfab.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4071812724cdf82984db0ba021378beeaa932676` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
