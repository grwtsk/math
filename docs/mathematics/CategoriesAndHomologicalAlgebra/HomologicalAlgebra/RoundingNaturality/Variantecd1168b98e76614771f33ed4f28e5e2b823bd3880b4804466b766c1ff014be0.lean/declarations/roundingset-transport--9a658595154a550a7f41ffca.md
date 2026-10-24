# roundingSet_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce831a1565b37abe81e99d9051881aabedb3d6eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ecd1168b98e76614771f33ed4f28e5e2b823bd3880b4804466b766c1ff014be0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c975624-2f7a-508e-1f82-f254ec1cc9fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d3c0f57-9c0c-1307-e09f-2aeff2453b14",
  "kind": "theorem",
  "lexical_name": "roundingSet_transport",
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
  "slug": "roundingset-transport--9a658595154a550a7f41ffca",
  "source": {
    "blob": "ce831a1565b37abe81e99d9051881aabedb3d6eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/RoundingNaturality/Variantecd1168b98e76614771f33ed4f28e5e2b823bd3880b4804466b766c1ff014be0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a658595154a550a7f41ffca8d528052ee48ca5a712f192751ba9cb606cee23f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/RoundingNaturality/Variantecd1168b98e76614771f33ed4f28e5e2b823bd3880b4804466b766c1ff014be0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d3c0f57-9c0c-1307-e09f-2aeff2453b14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem roundingSet_transport
    (sourceLattice :
      FreeCohomologyLattice SourceIntegral SourceReal)
    (targetLattice :
      FreeCohomologyLattice TargetIntegral TargetReal)
    (sourceGram : PositiveGram SourceReal)
    (targetGram : PositiveGram TargetReal)
    (pointTransport : SourceReal → TargetReal)
    (latticeTransport :
      sourceLattice.lattice ≃ targetLattice.lattice)
    (costPreserving :
      ∀ point integral,
        targetGram.squaredDistance
            (pointTransport point) (latticeTransport integral) =
          sourceGram.squaredDistance point integral)
    (point : SourceReal) :
    latticeTransport ''
        RoundingSet sourceLattice sourceGram point =
      RoundingSet targetLattice targetGram (pointTransport point) := by
  ext targetIntegral
  constructor
  · rintro ⟨sourceIntegral, sourceMinimal, rfl⟩
    exact (roundingSet_transport_iff
      sourceLattice targetLattice sourceGram targetGram
      pointTransport latticeTransport costPreserving
      point sourceIntegral).2 sourceMinimal
  · intro targetMinimal
    refine ⟨latticeTransport.symm targetIntegral, ?_, by simp⟩
    exact (roundingSet_transport_iff
      sourceLattice targetLattice sourceGram targetGram
      pointTransport latticeTransport costPreserving
      point (latticeTransport.symm targetIntegral)).1
      (by simpa using targetMinimal)

end

end Mathematics.Homology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/RoundingNaturality/Variantecd1168b98e76614771f33ed4f28e5e2b823bd3880b4804466b766c1ff014be0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/RoundingNaturality/Variantecd1168b98e76614771f33ed4f28e5e2b823bd3880b4804466b766c1ff014be0.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce831a1565b37abe81e99d9051881aabedb3d6eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
