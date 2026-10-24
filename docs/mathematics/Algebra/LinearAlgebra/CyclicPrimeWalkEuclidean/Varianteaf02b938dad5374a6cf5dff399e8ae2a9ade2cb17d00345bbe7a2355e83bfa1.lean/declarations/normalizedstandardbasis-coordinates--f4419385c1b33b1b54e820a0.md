# normalizedStandardBasis_coordinates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c10dbae-4d89-9e4e-25f8-5a1951ac0f14",
  "kind": "theorem",
  "lexical_name": "normalizedStandardBasis_coordinates",
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
  "slug": "normalizedstandardbasis-coordinates--f4419385c1b33b1b54e820a0",
  "source": {
    "blob": "ee7924ad44e7118788480b2cbb10d71642141361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 162,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Varianteaf02b938dad5374a6cf5dff399e8ae2a9ade2cb17d00345bbe7a2355e83bfa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4419385c1b33b1b54e820a0eefb7988922424d67d5de215a1c4b93596cd819b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Varianteaf02b938dad5374a6cf5dff399e8ae2a9ade2cb17d00345bbe7a2355e83bfa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c10dbae-4d89-9e4e-25f8-5a1951ac0f14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedStandardBasis_coordinates (x : euclideanZeroSumSubspace) :
    x = (-x.1 2 * sqrtSix / 2 : ℝ) • normalizedStandardBasis 0 +
      ((x.1 0 - x.1 1) * sqrtTwo / 2 : ℝ) • normalizedStandardBasis 1 := by
  have hx : x.1 0 + x.1 1 + x.1 2 = 0 := by
    have hxmem := x.2
    change euclideanCoordinateSum x.1 = 0 at hxmem
    simpa [euclideanCoordinateSum, Fin.sum_univ_three] using hxmem
  apply Subtype.ext
  apply WithLp.ofLp_injective 2
  funext i
  fin_cases i <;>
    simp [normalizedStandardBasis, normalizedBasisZeroVector,
      normalizedBasisOneVector] <;>
    field_simp [sqrtTwo_ne_zero, sqrtSix_ne_zero] <;>
    nlinarith [sqrtTwo_sq, sqrtSix_sq]

/-- The normalized pair spans the entire Euclidean zero-sum plane. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Varianteaf02b938dad5374a6cf5dff399e8ae2a9ade2cb17d00345bbe7a2355e83bfa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Varianteaf02b938dad5374a6cf5dff399e8ae2a9ade2cb17d00345bbe7a2355e83bfa1.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee7924ad44e7118788480b2cbb10d71642141361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
