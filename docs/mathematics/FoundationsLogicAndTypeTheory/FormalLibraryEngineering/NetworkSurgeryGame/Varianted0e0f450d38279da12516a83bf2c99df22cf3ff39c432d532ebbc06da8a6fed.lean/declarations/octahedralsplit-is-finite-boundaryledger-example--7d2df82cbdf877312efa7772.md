# octahedralSplit_is_finite_boundaryLedger_example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f04600f2db7b758740afabad8403b22d3cf5cfda",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed0e0f450d38279da12516a83bf2c99df22cf3ff39c432d532ebbc06da8a6fed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2367c49-5ab1-107d-6bfe-dd0650fe731c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db25e4f0-b46a-e5a1-1470-86d684d83957",
  "kind": "theorem",
  "lexical_name": "octahedralSplit_is_finite_boundaryLedger_example",
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
  "slug": "octahedralsplit-is-finite-boundaryledger-example--7d2df82cbdf877312efa7772",
  "source": {
    "blob": "f04600f2db7b758740afabad8403b22d3cf5cfda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NetworkSurgeryGame/Varianted0e0f450d38279da12516a83bf2c99df22cf3ff39c432d532ebbc06da8a6fed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d2df82cbdf877312efa77724a02c75d8f6b2962ef397283e8d6c003a2eb40f9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NetworkSurgeryGame/Varianted0e0f450d38279da12516a83bf2c99df22cf3ff39c432d532ebbc06da8a6fed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db25e4f0-b46a-e5a1-1470-86d684d83957`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem octahedralSplit_is_finite_boundaryLedger_example (cut : Nat)
    (_sound : Generated.TopologySurgeryGame.OctahedralCapSurgerySound cut) :
    BoundaryBalanced (dischargedOctahedralLedger cut) := by
  simp [BoundaryBalanced, PreparedBoundaryLedger.totalBoundary,
    BoundaryLedger.IsZero, BoundaryLedger.coefficient, BoundaryLedger.add,
    dischargedOctahedralLedger]

end Generated.NetworkSurgeryGame
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NetworkSurgeryGame/Varianted0e0f450d38279da12516a83bf2c99df22cf3ff39c432d532ebbc06da8a6fed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NetworkSurgeryGame/Varianted0e0f450d38279da12516a83bf2c99df22cf3ff39c432d532ebbc06da8a6fed.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f04600f2db7b758740afabad8403b22d3cf5cfda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
