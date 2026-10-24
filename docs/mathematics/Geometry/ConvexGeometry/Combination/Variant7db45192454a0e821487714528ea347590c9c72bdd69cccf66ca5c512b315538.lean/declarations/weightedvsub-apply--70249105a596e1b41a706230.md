# weightedVSub_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6940ca1-440c-db96-de57-b7e358ec5c60",
  "kind": "theorem",
  "lexical_name": "weightedVSub_apply",
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
  "slug": "weightedvsub-apply--70249105a596e1b41a706230",
  "source": {
    "blob": "9e798f2a5c14388cabd43258ee0338100eccf051",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 249,
    "path": "GRWTSK/Geometry/ConvexGeometry/Combination/Variant7db45192454a0e821487714528ea347590c9c72bdd69cccf66ca5c512b315538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70249105a596e1b41a7062307a7bab4ec3b7fe5f83dc2cc76ae1fbd69bdc7f34",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Combination/Variant7db45192454a0e821487714528ea347590c9c72bdd69cccf66ca5c512b315538.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6940ca1-440c-db96-de57-b7e358ec5c60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedVSub_apply (w : ι → k) (p : ι → P) :
    s.weightedVSub p w = ∑ i ∈ s, w i • (p i -ᵥ Classical.choice S.nonempty) := by
  simp [weightedVSub, LinearMap.sum_apply]

/-- `weightedVSub` gives the sum of the results of subtracting any
base point, when the sum of the weights is 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Combination/Variant7db45192454a0e821487714528ea347590c9c72bdd69cccf66ca5c512b315538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Combination/Variant7db45192454a0e821487714528ea347590c9c72bdd69cccf66ca5c512b315538.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e798f2a5c14388cabd43258ee0338100eccf051` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
