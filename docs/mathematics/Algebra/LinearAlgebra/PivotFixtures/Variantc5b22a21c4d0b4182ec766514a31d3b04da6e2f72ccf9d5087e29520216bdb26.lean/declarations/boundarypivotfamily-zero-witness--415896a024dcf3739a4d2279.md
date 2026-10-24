# boundaryPivotFamily_zero_witness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e8c8dbc576a45ca0d595a7dc44ca0421b530b68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6cc380d4-569a-a175-229f-8b8b4cf3b4dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81ad363a-e3ca-d673-f5ca-8dc2a8317a94",
  "kind": "theorem",
  "lexical_name": "boundaryPivotFamily_zero_witness",
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
  "slug": "boundarypivotfamily-zero-witness--415896a024dcf3739a4d2279",
  "source": {
    "blob": "8e8c8dbc576a45ca0d595a7dc44ca0421b530b68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 95,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:415896a024dcf3739a4d2279debee2e8ad2149d83d8b8d39d0becfe15648c6e9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81ad363a-e3ca-d673-f5ca-8dc2a8317a94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryPivotFamily_zero_witness :
    columnMinor (boundaryPivotFamily 0) ![0, 1] = 0 ∧
      columnMinor (boundaryPivotFamily 0) ![0, 2] = 1 ∧
      (boundaryPivotFamily 0).rank = 2 ∧
      AllOrderedMinorsNonneg (boundaryPivotFamily 0) := by
  exact ⟨boundaryPivotFamily_firstPivot 0, boundaryPivotFamily_secondPivot 0,
    boundaryPivotFamily_rank 0, boundaryPivotFamily_nonnegative 0 (le_refl 0)⟩

/-- The singular-looking coordinate is an exact reciprocal of the vanishing pivot. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e8c8dbc576a45ca0d595a7dc44ca0421b530b68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
