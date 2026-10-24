# observe_run_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6bb8248560a1e4ba40bc95ca89164b2072f9eaa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac347cf3-0d70-66a9-e2d6-2f14256025e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e83768df-5c96-700e-5860-b4e7d3d6d6bb",
  "kind": "theorem",
  "lexical_name": "observe_run_sound",
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
  "slug": "observe-run-sound--4725c5ee366fa4e1c157c696",
  "source": {
    "blob": "a6bb8248560a1e4ba40bc95ca89164b2072f9eaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 76,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Refinement/Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4725c5ee366fa4e1c157c696d1a18e32d47f61e7059a8402807012f4411ab8bf",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Refinement/Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e83768df-5c96-700e-5860-b4e7d3d6d6bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem observe_run_sound
    (R : Refinement Spec Impl)
    (inputs : List Spec.Input)
    (r : Spec.Resolution)
    {x : Impl.State}
    (hx : R.Valid x) :
    R.mapObservation r
        (Impl.observe (R.mapResolution r)
          (Impl.run (inputs.map R.mapInput) x)) =
      Spec.observe r (Spec.run inputs (R.abstract x)) := by
  rw [R.observe_sound r _ (R.valid_run inputs hx), R.abstract_run inputs hx]

end Refinement

/-- A refinement with a canonical representation of every specification state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Refinement/Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Refinement/Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6bb8248560a1e4ba40bc95ca89164b2072f9eaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
