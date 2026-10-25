# positive_normalized_recognition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d6b2b03e043514cf9e31b6ad17feeec4c9d244e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5314f111-a649-f18c-8df1-04ef75125299",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef9b714d-222c-8d5c-b3e5-ebc3cd31c01f",
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
  "slug": "positive-normalized-recognition--26fefe38eeb2e7ec5b39567b",
  "source": {
    "blob": "7d6b2b03e043514cf9e31b6ad17feeec4c9d244e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 202,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeacPlucker24/Variant0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26fefe38eeb2e7ec5b39567b0042435dddafb1ca38c1240f9e21e2cfb2b36291",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeacPlucker24/Variant0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef9b714d-222c-8d5c-b3e5-ebc3cd31c01f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–227.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeacPlucker24/Variant0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeacPlucker24/Variant0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeac.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d6b2b03e043514cf9e31b6ad17feeec4c9d244e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
