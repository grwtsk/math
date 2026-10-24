# involutionProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68ac7f6083156f02b41d3865614fb60ee5f619d51bf9d7c3c04ab5dedd25389f",
  "kind": "def",
  "lexical_name": "involutionProjection",
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
  "slug": "involutionprojection--d32d0f8b18b80459816df7c9",
  "source": {
    "blob": "b4d035c5b8aff4629e939c73c649ec64a4b817cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 143,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d32d0f8b18b80459816df7c9f94e5d91eda1e34f8190ca0e50a6db95f27964cd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68ac7f6083156f02b41d3865614fb60ee5f619d51bf9d7c3c04ab5dedd25389f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def involutionProjection
    (C : Signal →ₗ[ℝ] Signal) : Signal →ₗ[ℝ] Signal :=
  ((1 : ℝ) / 2) • (LinearMap.id + C)

/-- A certified involution makes `(I + C) / 2` idempotent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d035c5b8aff4629e939c73c649ec64a4b817cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
