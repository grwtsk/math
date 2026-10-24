# actualOddNegativeEdgeComplement_eventually_above_oddMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc3440df-1a03-78ce-c256-fd0782b16494",
  "kind": "theorem",
  "lexical_name": "actualOddNegativeEdgeComplement_eventually_above_oddMoment",
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
  "slug": "actualoddnegativeedgecomplement-eventually-above-oddmoment--4cc833e4fd1e1c857b0654ce",
  "source": {
    "blob": "7dbca816f9901d63e1fd52d413978dac3e2f4e2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 248,
    "path": "GRWTSK/Topology/GeneralTopology/ActualSourceNegativeOddWindowAndFullPositiveOddComplement/Variantb6a02554a9b6952610e4d64a4a8a1328e1d91dba1c4e2c1ec4d655bffc0eda25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cc833e4fd1e1c857b0654cee195ffe1a4c30cc26118113e345253efad31e97f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualSourceNegativeOddWindowAndFullPositiveOddComplement/Variantb6a02554a9b6952610e4d64a4a8a1328e1d91dba1c4e2c1ec4d655bffc0eda25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc3440df-1a03-78ce-c256-fd0782b16494`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualOddNegativeEdgeComplement_eventually_above_oddMoment :
    ∃ R : ℝ, 20000000000000 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      actualOddProductMoment A + (actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9 ≤
        actualOddNegativeEdgeComplement A := by
  obtain ⟨R, hR, hnegative⟩ := actualOddNegativeEdgeBlock_eventually_negative
  refine ⟨R, hR, ?_⟩
  intro A hA
  have hn := hnegative A hA
  have hid := actualOddProductMoment_eq_edge_add_complement (hR.trans hA)
  rw [neg_mul, neg_div] at hn
  linarith

/-- The entire even part of the full remaining original inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualSourceNegativeOddWindowAndFullPositiveOddComplement/Variantb6a02554a9b6952610e4d64a4a8a1328e1d91dba1c4e2c1ec4d655bffc0eda25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualSourceNegativeOddWindowAndFullPositiveOddComplement/Variantb6a02554a9b6952610e4d64a4a8a1328e1d91dba1c4e2c1ec4d655bffc0eda25.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7dbca816f9901d63e1fd52d413978dac3e2f4e2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
