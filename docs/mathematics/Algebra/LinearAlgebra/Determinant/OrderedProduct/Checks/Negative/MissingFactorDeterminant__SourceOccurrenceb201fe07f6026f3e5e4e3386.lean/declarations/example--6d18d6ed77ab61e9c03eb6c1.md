# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4996fbb06424bc632a739f0c36d4b058dd5436400a2b7802cf637bc466f63d36",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--6d18d6ed77ab61e9c03eb6c1",
  "source": {
    "blob": "16175c5f65b45597221981c9e9bac9dd5ae3dea8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5,
    "line": 4,
    "path": "GRWTSK/LinearAlgebra/Determinant/OrderedProduct/Checks/Negative/MissingFactorDeterminant.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d18d6ed77ab61e9c03eb6c103412615b5edc76727e5b164a3b72698531b816e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Determinant/OrderedProduct/Checks/Negative/MissingFactorDeterminant__SourceOccurrenceb201fe07f6026f3e5e4e3386.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4996fbb06424bc632a739f0c36d4b058dd5436400a2b7802cf637bc466f63d36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4–5.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : (orderedProduct (fun _ => !![(2 : ℚ), 0; 0, 1]) 0 1).det = 1 := by
  norm_num [orderedProduct, Matrix.det_fin_two]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/Algebra/LinearAlgebra/Determinant/OrderedProduct/Checks/Negative/MissingFactorDeterminant__SourceOccurrenceb201fe07f6026f3e5e4e3386.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/Determinant/OrderedProduct/Checks/Negative/MissingFactorDeterminant.lean#L4).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16175c5f65b45597221981c9e9bac9dd5ae3dea8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
