# hostile_vector_not_admissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4e1817d4a9ca33fdea39e1e53366ba638618d9a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88f0b3ed-e9c0-1178-b19c-af4c06b59f10",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:960d454a-b71e-8250-e0ee-fe717b5bbfb5",
  "kind": "theorem",
  "lexical_name": "hostile_vector_not_admissible",
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
  "slug": "hostile-vector-not-admissible--18c29ec65d9286af2d2c462d",
  "source": {
    "blob": "d4e1817d4a9ca33fdea39e1e53366ba638618d9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 127,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18c29ec65d9286af2d2c462d87876583f658e8ad7b2cddc36912a81ae7a3059d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:960d454a-b71e-8250-e0ee-fe717b5bbfb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hostile_vector_not_admissible : ¬constrainedProblem.Admissible (fun _ => 2) := by
  norm_num [Problem.Admissible, quadratic, constrainedProblem, Matrix.mulVec, dotProduct]

#eval [check gramProblem gramCertificate, check negativeProblem gramCertificate,
  check constrainedProblem constrainedCertificate, check inequalityProblem inequalityCertificate,
  check negativeMultiplierProblem negativeMultiplierCertificate,
  check (inequalityProblem.pullback (fun _ _ : Unit => (3 : ℚ)))
    (inequalityCertificate.pullback (fun _ _ : Unit => (3 : ℚ)))]

end FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e1817d4a9ca33fdea39e1e53366ba638618d9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
