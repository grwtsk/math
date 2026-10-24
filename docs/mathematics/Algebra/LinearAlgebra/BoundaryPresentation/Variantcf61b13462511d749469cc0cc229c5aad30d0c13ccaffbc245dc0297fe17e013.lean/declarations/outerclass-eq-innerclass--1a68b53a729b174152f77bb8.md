# outerClass_eq_innerClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:661a2e93-45b6-42c9-6aec-382c07a4cb9e",
  "kind": "theorem",
  "lexical_name": "outerClass_eq_innerClass",
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
  "slug": "outerclass-eq-innerclass--1a68b53a729b174152f77bb8",
  "source": {
    "blob": "679da569a78bd14dee7a2c58d8b61e7c73f3999b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 75,
    "path": "GRWTSK/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a68b53a729b174152f77bb83394720d05d00b89dc77bfbcf1d86cb31323a863",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:661a2e93-45b6-42c9-6aec-382c07a4cb9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem outerClass_eq_innerClass :
    outerClass = innerClass := by
  apply QuotientAddGroup.eq_iff_sub_mem.mpr
  refine ⟨1, ?_⟩
  norm_num [boundary2, outerChain, innerChain]

/-- Sum of outer and inner coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679da569a78bd14dee7a2c58d8b61e7c73f3999b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
