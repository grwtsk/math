# reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84385ac1-f6a7-bb4d-ee61-388f6a317b40",
  "kind": "theorem",
  "lexical_name": "reconstruction",
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
  "slug": "reconstruction--6b267c136a2293a063c8f1d4",
  "source": {
    "blob": "1c4793e962c5016e025716f988c87e323e04e013",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 182,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DevelopmentCertificate/Variantc39c3c0fd81a7f41cb57089a8aa88d0b361931a57c96b8e8f422e972be0413c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b267c136a2293a063c8f1d4c52000fc4763da29ccfb129e09be43d2cd984359",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DevelopmentCertificate/Variantc39c3c0fd81a7f41cb57089a8aa88d0b361931a57c96b8e8f422e972be0413c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84385ac1-f6a7-bb4d-ee61-388f6a317b40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reconstruction : ([2,4,3,5,4,6,5,7,6,8,7,9,8,10,9,11,10,12,11,13,12,14,13,15,14,16,15,17,16,18,17,19,18,20,19,21,20,22,21,23,22,24,23,25,24,26,25,27,26,28,27,29,28,30,29,31,30,32,31,33,32,34,33,35,34,36,35,37,36,38,37,39,38,40,39,41,40,42,41,43,42,44,43,45,44,46,45,47,46,48] : List ℕ).map (fun z => z / 900 * 900 + z % 900) = [2,4,3,5,4,6,5,7,6,8,7,9,8,10,9,11,10,12,11,13,12,14,13,15,14,16,15,17,16,18,17,19,18,20,19,21,20,22,21,23,22,24,23,25,24,26,25,27,26,28,27,29,28,30,29,31,30,32,31,33,32,34,33,35,34,36,35,37,36,38,37,39,38,40,39,41,40,42,41,43,42,44,43,45,44,46,45,47,46,48] := by decide
end PackingReplay
#print axioms PackingReplay.proper_survivors
#print axioms PackingReplay.signatures
#print axioms PackingReplay.reconstruction
#print axioms PackingReplay.prime_support
#print axioms PackingReplay.raw_count
#print axioms PackingReplay.candidate_coverage
#print axioms PackingReplay.exclusions
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DevelopmentCertificate/Variantc39c3c0fd81a7f41cb57089a8aa88d0b361931a57c96b8e8f422e972be0413c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DevelopmentCertificate/Variantc39c3c0fd81a7f41cb57089a8aa88d0b361931a57c96b8e8f422e972be0413c3.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c4793e962c5016e025716f988c87e323e04e013` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
