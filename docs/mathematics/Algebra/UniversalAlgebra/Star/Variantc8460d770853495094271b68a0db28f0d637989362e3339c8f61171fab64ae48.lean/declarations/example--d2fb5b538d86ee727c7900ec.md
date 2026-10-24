# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c83df08467c968f66e346cd48db9fa5acdce829d737d88044ac56e35720ae6c8",
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
  "slug": "example--d2fb5b538d86ee727c7900ec",
  "source": {
    "blob": "814867ed44a23634381ded3c04f086b7d6eb0b24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 36,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Star/Variantc8460d770853495094271b68a0db28f0d637989362e3339c8f61171fab64ae48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2fb5b538d86ee727c7900ec02274761f0fc6da3af9e99bab5d0612a0d4243e2",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Star/Variantc8460d770853495094271b68a0db28f0d637989362e3339c8f61171fab64ae48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c83df08467c968f66e346cd48db9fa5acdce829d737d88044ac56e35720ae6c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {R : Type*} [Semiring R] [PartialOrder R] [IsOrderedRing R]
    [StarRing R] [StarOrderedRing R] {x y : R} (hx : 0 ≤ x)
    (hy : 0 ≤ y) : x * y = y * x := by
  rw [← IsSelfAdjoint.of_nonneg (mul_nonneg hy hx), star_mul, IsSelfAdjoint.of_nonneg hx,
    IsSelfAdjoint.of_nonneg hy]

/- This will be implied by the instance below, we only prove it to avoid duplicating the
argument in the instance below for `mul_le_mul_of_nonneg_right`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Star/Variantc8460d770853495094271b68a0db28f0d637989362e3339c8f61171fab64ae48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Star/Variantc8460d770853495094271b68a0db28f0d637989362e3339c8f61171fab64ae48.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `814867ed44a23634381ded3c04f086b7d6eb0b24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
