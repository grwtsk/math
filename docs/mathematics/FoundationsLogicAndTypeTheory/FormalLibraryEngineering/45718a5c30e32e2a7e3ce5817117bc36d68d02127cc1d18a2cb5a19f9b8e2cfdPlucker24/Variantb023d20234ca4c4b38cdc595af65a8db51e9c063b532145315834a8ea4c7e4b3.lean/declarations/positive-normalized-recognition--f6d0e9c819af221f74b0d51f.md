# positive_normalized_recognition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:458db1b4-3328-f568-9f79-6fc9c4c76eb2",
  "kind": "theorem",
  "lexical_name": "positive_normalized_recognition",
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
  "slug": "positive-normalized-recognition--f6d0e9c819af221f74b0d51f",
  "source": {
    "blob": "201f3cf409d2f3a02f32e27720bb2bd7d22a1aad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/45718a5c30e32e2a7e3ce5817117bc36d68d02127cc1d18a2cb5a19f9b8e2cfdPlucker24/Variantb023d20234ca4c4b38cdc595af65a8db51e9c063b532145315834a8ea4c7e4b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6d0e9c819af221f74b0d51f2b0358d8bedd175bc5bb297567cd9be1df00c865",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/45718a5c30e32e2a7e3ce5817117bc36d68d02127cc1d18a2cb5a19f9b8e2cfdPlucker24/Variantb023d20234ca4c4b38cdc595af65a8db51e9c063b532145315834a8ea4c7e4b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:458db1b4-3328-f568-9f79-6fc9c4c76eb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_normalized_recognition (p : PluckerCoordinates24) (hn : p.p12 = 1) :
    p.Compatible ∧ p.StrictlyPositive ↔
      ∃! x : Chart24, x.Positive ∧ x.coordinates = p := by
  constructor
  · rintro ⟨hp, hpos⟩
    have hx := coordinates_fromCoordinates p hn hp
    have hxp : (fromCoordinates p).Positive := by
      apply (coordinates_strictlyPositive_iff _).mp
      rw [hx]
      exact hpos
    refine ⟨fromCoordinates p, ⟨hxp, hx⟩, ?_⟩
    intro y hy
    apply coordinates_injective
    exact hy.2.trans hx.symm
  · rintro ⟨x, ⟨hxpos, hx⟩, _⟩
    constructor
    · rw [← hx]
      exact PluckerCoordinates24.ofMatrix_compatible x.matrix
    · rw [← hx]
      exact (coordinates_strictlyPositive_iff x).mpr hxpos

end Chart24

end

end FormalResearch.PositiveAtlas.Grassmannian
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/45718a5c30e32e2a7e3ce5817117bc36d68d02127cc1d18a2cb5a19f9b8e2cfdPlucker24/Variantb023d20234ca4c4b38cdc595af65a8db51e9c063b532145315834a8ea4c7e4b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/45718a5c30e32e2a7e3ce5817117bc36d68d02127cc1d18a2cb5a19f9b8e2cfdPlucker24/Variantb023d20234ca4c4b38cdc595af65a8db51e9c063b532145315834a8ea4c7e4b3.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `201f3cf409d2f3a02f32e27720bb2bd7d22a1aad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
