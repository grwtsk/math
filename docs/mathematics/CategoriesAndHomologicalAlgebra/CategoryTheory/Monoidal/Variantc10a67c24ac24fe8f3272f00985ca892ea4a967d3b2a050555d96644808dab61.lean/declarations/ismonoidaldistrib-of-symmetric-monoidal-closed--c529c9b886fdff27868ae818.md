# isMonoidalDistrib.of_symmetric_monoidal_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b44d989778734087485f5f1b13edd27cec5fa8543d34cf6c4d7e29d5102d3a1",
  "kind": "instance",
  "lexical_name": "isMonoidalDistrib.of_symmetric_monoidal_closed",
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
  "slug": "ismonoidaldistrib-of-symmetric-monoidal-closed--c529c9b886fdff27868ae818",
  "source": {
    "blob": "25a05ea4ab1648b7d262c102e51884f23aef76e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 240,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc10a67c24ac24fe8f3272f00985ca892ea4a967d3b2a050555d96644808dab61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c529c9b886fdff27868ae8187a66ca8e788bb40ec03a3739f3c9055c3f2ca974",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc10a67c24ac24fe8f3272f00985ca892ea4a967d3b2a050555d96644808dab61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b44d989778734087485f5f1b13edd27cec5fa8543d34cf6c4d7e29d5102d3a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isMonoidalDistrib.of_symmetric_monoidal_closed [SymmetricCategory C] [MonoidalClosed C] :
    IsMonoidalDistrib C := by
  apply SymmetricCategory.isMonoidalDistrib_of_isMonoidalLeftDistrib

/-- The inverse of distributivity isomorphism from the closed monoidal strurcture -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc10a67c24ac24fe8f3272f00985ca892ea4a967d3b2a050555d96644808dab61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc10a67c24ac24fe8f3272f00985ca892ea4a967d3b2a050555d96644808dab61.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25a05ea4ab1648b7d262c102e51884f23aef76e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
