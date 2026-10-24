# finite_const_le_meas_of_disjoint_iUnion₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e52564f699c2fd2232ea0b53d1b60a7ae64e203a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01fea05375b1019c66ea3a3fe0e7461ef0effb8954674a52d36050f7447be6f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc9f1e04-3d35-d495-b638-62ab62bcb5d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f29008d7-e3a6-6132-9e9f-f66caf9733ba",
  "kind": "theorem",
  "lexical_name": "finite_const_le_meas_of_disjoint_iUnion₀",
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
  "slug": "finite-const-le-meas-of-disjoint-iunion--9865109e3e2e53115c0db007",
  "source": {
    "blob": "e52564f699c2fd2232ea0b53d1b60a7ae64e203a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 222,
    "path": "GRWTSK/Analysis/MeasureTheory/SFinite/Variant01fea05375b1019c66ea3a3fe0e7461ef0effb8954674a52d36050f7447be6f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9865109e3e2e53115c0db007819a19b54d69072dbf50ea9c8cb55defb0ec86bf",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SFinite/Variant01fea05375b1019c66ea3a3fe0e7461ef0effb8954674a52d36050f7447be6f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f29008d7-e3a6-6132-9e9f-f66caf9733ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_const_le_meas_of_disjoint_iUnion₀ {ι : Type*} [MeasurableSpace α] (μ : Measure α)
    {ε : ℝ≥0∞} (ε_pos : 0 < ε) {As : ι → Set α} (As_mble : ∀ i : ι, NullMeasurableSet (As i) μ)
    (As_disj : Pairwise (AEDisjoint μ on As)) (Union_As_finite : μ (⋃ i, As i) ≠ ∞) :
    Set.Finite { i : ι | ε ≤ μ (As i) } :=
  ENNReal.finite_const_le_of_tsum_ne_top
    (ne_top_of_le_ne_top Union_As_finite (tsum_meas_le_meas_iUnion_of_disjoint₀ μ As_mble As_disj))
    ε_pos.ne'

/-- If the union of disjoint measurable sets has finite measure, then there are only
finitely many members of the union whose measure exceeds any given positive number. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SFinite/Variant01fea05375b1019c66ea3a3fe0e7461ef0effb8954674a52d36050f7447be6f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SFinite/Variant01fea05375b1019c66ea3a3fe0e7461ef0effb8954674a52d36050f7447be6f8.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e52564f699c2fd2232ea0b53d1b60a7ae64e203a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
