# hostile_vector_not_admissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a0e61c7-20eb-3baf-9102-6e3a56ca6393",
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
  "slug": "hostile-vector-not-admissible--0193c9534a0b3d51d01c1ef6",
  "source": {
    "blob": "851cef2501abe7f5d3b70ae4c938524188d7f67c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 135,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant8616527fd8b350e6f35a2005d46f540375b3c0f9de1d9c2c9075982097dbfb47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0193c9534a0b3d51d01c1ef61bf81256072296768d6d1efcb5f0fd7eb8545394",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant8616527fd8b350e6f35a2005d46f540375b3c0f9de1d9c2c9075982097dbfb47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a0e61c7-20eb-3baf-9102-6e3a56ca6393`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–144.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant8616527fd8b350e6f35a2005d46f540375b3c0f9de1d9c2c9075982097dbfb47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant8616527fd8b350e6f35a2005d46f540375b3c0f9de1d9c2c9075982097dbfb47.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `851cef2501abe7f5d3b70ae4c938524188d7f67c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
