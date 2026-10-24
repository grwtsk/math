# protected_null

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3eadc7a-231f-8e09-8420-2cb9ae648903",
  "kind": "theorem",
  "lexical_name": "protected_null",
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
  "slug": "protected-null--86b17bb3a676be95152e073c",
  "source": {
    "blob": "16c314c860147449a1a8e8384e01a6c17a68f3cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 48,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFiniteFeatureGeometry/Variant3b05a67020b9c251eae7812edf24439d818588e7669e5c88ed3ed6ce76175da9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86b17bb3a676be95152e073c5fdeeca8d22f9b1b28648073d91a7b5a62ff6f86",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveAtlasFiniteFeatureGeometry/Variant3b05a67020b9c251eae7812edf24439d818588e7669e5c88ed3ed6ce76175da9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3eadc7a-231f-8e09-8420-2cb9ae648903`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem protected_null :
    ((0, 1) : ℝ × ℝ) ≠ 0 ∧
      (featureForm twoCoordinateFeature rationalWeight
        (fun i => (rationalWeight_pos i).le)).IsNull (0, 1) := by
  constructor
  · norm_num
  · rw [featureForm_isNull_iff twoCoordinateFeature rationalWeight rationalWeight_pos]
    ext i
    simp [twoCoordinateFeature]

/-- Quotient equality retains the measured coordinate while removing the
declared feature kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveAtlasFiniteFeatureGeometry/Variant3b05a67020b9c251eae7812edf24439d818588e7669e5c88ed3ed6ce76175da9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFiniteFeatureGeometry/Variant3b05a67020b9c251eae7812edf24439d818588e7669e5c88ed3ed6ce76175da9.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16c314c860147449a1a8e8384e01a6c17a68f3cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
