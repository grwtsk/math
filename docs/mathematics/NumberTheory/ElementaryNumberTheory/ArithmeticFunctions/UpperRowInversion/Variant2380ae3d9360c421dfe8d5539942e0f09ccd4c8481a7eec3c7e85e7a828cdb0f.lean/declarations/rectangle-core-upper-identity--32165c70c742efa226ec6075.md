# rectangle_core_upper_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f83c4bc1-cf16-3e3f-60b6-2c9e753cc595",
  "kind": "theorem",
  "lexical_name": "rectangle_core_upper_identity",
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
  "slug": "rectangle-core-upper-identity--32165c70c742efa226ec6075",
  "source": {
    "blob": "97594ead3b30a81da7361a0e0a5ee94e89fd0033",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 149,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversion/Variant2380ae3d9360c421dfe8d5539942e0f09ccd4c8481a7eec3c7e85e7a828cdb0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32165c70c742efa226ec60756043d9fd42f723df3900b8680a33894739c76e2d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversion/Variant2380ae3d9360c421dfe8d5539942e0f09ccd4c8481a7eec3c7e85e7a828cdb0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f83c4bc1-cf16-3e3f-60b6-2c9e753cc595`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangle_core_upper_identity (N M : ℕ) (F : ℕ → ℝ) (hMN : M ≤ N) :
    JointBoundaryTransport.rectangle (Icc 1 N) (Icc 1 N) F =
      JointBoundaryTransport.rectangle (Icc 1 M) (Icc 1 M) F +
      2 * JointBoundaryTransport.rectangle (Ioc M N) (Icc 1 N) F -
      JointBoundaryTransport.rectangle (Ioc M N) (Ioc M N) F := by
  have h1 := rectangle_cutoff_split N M (Icc 1 N) F hMN
  have h2 := rectangle_cutoff_split N M (Icc 1 M) F hMN
  have h3 := rectangle_cutoff_split N M (Ioc M N) F hMN
  rw [JointBoundaryTransport.rectangle_symm (Icc 1 N) (Icc 1 M)] at h2
  rw [JointBoundaryTransport.rectangle_symm (Icc 1 N) (Ioc M N),
    JointBoundaryTransport.rectangle_symm (Icc 1 M) (Ioc M N)] at h3
  linarith

/-- Summing the checked complete upper-row inversion retains every original outer Möbius sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversion/Variant2380ae3d9360c421dfe8d5539942e0f09ccd4c8481a7eec3c7e85e7a828cdb0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversion/Variant2380ae3d9360c421dfe8d5539942e0f09ccd4c8481a7eec3c7e85e7a828cdb0f.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97594ead3b30a81da7361a0e0a5ee94e89fd0033` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
