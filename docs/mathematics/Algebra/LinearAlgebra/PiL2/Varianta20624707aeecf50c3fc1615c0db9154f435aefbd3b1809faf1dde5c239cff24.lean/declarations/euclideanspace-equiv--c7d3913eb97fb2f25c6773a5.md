# EuclideanSpace.equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44123caae5060556b4d6edbb8d584eb46b0663913c07b3dedb0ef222b61f86e6",
  "kind": "abbrev",
  "lexical_name": "EuclideanSpace.equiv",
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
  "slug": "euclideanspace-equiv--c7d3913eb97fb2f25c6773a5",
  "source": {
    "blob": "57463a57a0146b280f4f9c4e879c298497f2d4ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 224,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiL2/Varianta20624707aeecf50c3fc1615c0db9154f435aefbd3b1809faf1dde5c239cff24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7d3913eb97fb2f25c6773a5b1d0258fc1ec8b7c1fc5186958bff2f353c000ee",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiL2/Varianta20624707aeecf50c3fc1615c0db9154f435aefbd3b1809faf1dde5c239cff24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44123caae5060556b4d6edbb8d584eb46b0663913c07b3dedb0ef222b61f86e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev EuclideanSpace.equiv : EuclideanSpace 𝕜 ι ≃L[𝕜] ι → 𝕜 :=
  PiLp.continuousLinearEquiv 2 𝕜 _
#align euclidean_space.equiv EuclideanSpace.equiv
#noalign euclidean_space.equiv_to_linear_equiv_apply
#noalign euclidean_space.equiv_apply
#noalign euclidean_space.equiv_to_linear_equiv_symm_apply
#noalign euclidean_space.equiv_symm_apply

variable {ι 𝕜}

-- TODO : This should be generalized to `PiLp`.
/-- The projection on the `i`-th coordinate of `EuclideanSpace 𝕜 ι`, as a linear map. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiL2/Varianta20624707aeecf50c3fc1615c0db9154f435aefbd3b1809faf1dde5c239cff24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiL2/Varianta20624707aeecf50c3fc1615c0db9154f435aefbd3b1809faf1dde5c239cff24.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57463a57a0146b280f4f9c4e879c298497f2d4ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
